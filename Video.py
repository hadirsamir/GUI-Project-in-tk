from tkinter import *
from tkinter import filedialog
import tkinter
import os
import gi

# Import DBManager
from DBManager import *

if sys.version_info[0] < 3:
    import Tkinter as tkinter
else:
    import tkinter
import gi
gi.require_version('Gst', '1.0')
from gi.repository import Gst, GObject

# Needed for set_window_handle():
gi.require_version('GstVideo', '1.0')
from gi.repository import GstVideo


class VideoPlayer:
    def __init__(self, videoPath, parent = None):
        relative_height = 1

        Gst.init()
        GObject.threads_init()

        display_frame = Frame(parent,bg='')
        relative_y = 0 * relative_height
        display_frame.place(relx=0, rely=relative_y,
                            anchor=tkinter.NW, relwidth=1, relheight=relative_height)
        frame_id = display_frame.winfo_id()
        player = Gst.ElementFactory.make('playbin', None)
        fullname = os.path.abspath(videoPath)
        player.set_property('uri', 'file://%s' % fullname)

        player.set_state(Gst.State.PLAYING)  # function that plays a video

        bus = player.get_bus()
        bus.enable_sync_message_emission()
        bus.connect('sync-message::element', self.set_frame_handle, frame_id)

    def set_frame_handle(bus, message, frame_id):
        if not message.get_structure() is None:
            if message.get_structure().get_name() == 'prepare-window-handle':
                display_frame = message.src
                display_frame.set_property('force-aspect-ratio', True)
                display_frame.set_window_handle(frame_id)

class openVideosearch:
    def __init__(self,master):
        input_file_name = filedialog.askopenfilename(defaultextension=".mp4",
                                                             filetypes=[("video", "*.mp4")])
        if input_file_name:
            videoPath = input_file_name
            videoPlayerObject = VideoPlayer(videoPath)

class Display:
    def __init__(self,master):
        self.sub_Name={}
        self.subjectVideolist={}
        #ToDo: (1) Fill Subject List from the data base in a dictionary where key is the subject name and
        # the value is the subject id in the database
        self.subjectQuery()
        #ToDo: (2) when the user presses a button the program should open a new window contains buttons
        # Representing the selected subject videos from the database saved in a dictionary where the key of
        # the dictionary is the video name and the value is the video path
        #ToDo: (3) when a user selects a video from the window the video display window shall be opened playing the Video
        #In other words you need 2 different callback functions for the Subject select button and the video select Button
        # and for the first function you should pass the subject id to the first callbackfunction and this function do the following
        # It should do what is mentioned in ToDo 2
        #The Second Function should do the following
        self.master = master
        self.master.wm_title("Choose Subject")
        self.master.maxsize(100, 200)
        self.topframe = Frame(self.master)

        self.topframe.pack()
        bottomframe = Frame(self.master)
        bottomframe.pack(side=BOTTOM)

        # Home Buttons
        self.drawButtons(self.topframe, self.sub_Name,self.openvideoWindow)

    def subjectQuery(self):
        rows.execute("SELECT _id,NAME from subjects ")
        for index, subjectTuple in enumerate(rows):
            self.sub_Name[subjectTuple[1]]= subjectTuple[0]


        #subjectData = sendquery("select name, id from subjects")
        #for name,id in enumerate(subjectData):
           #self.sub_Name[name]=id

    def videoQuery(self, subjectID):
        self.subjectVideolist ={}
        rows.execute("SELECT Name,Path FROM  videos WHERE subject_id = %s",(subjectID,))
        c = enumerate(rows)
        for  index,videoTuple in enumerate(rows):
            self.subjectVideolist[videoTuple[0]]=videoTuple[1]

       # videoData = sendquery("SELECT NAME, PATH FROM VIDEOS WHERE SUBJECT_ID = %d" , subjectID)
        #for name, path in enumerate(videoData):
         #   self.subjectVideolist[name] = path

    def openvideoWindow(self, event, name):
        subjectId = self.sub_Name[name]
        self.videoQuery(subjectId)
        # Create a new window
        self.newFrame = Toplevel(self.topframe)
        self.newFrame.title(name)
        bottomframe = Frame( self.newFrame)
        bottomframe.pack(side=BOTTOM)
            # ToDo Add TopFrame
        self.drawButtons( self.newFrame, self.subjectVideolist, self.displayVideo)

    def fetchubjectNamesFromDB(self):
        return

    def drawButtons(self, topframe, dictionary, function):
        i = 0
        for name in dictionary:
            button1 = Button(topframe, text=name, fg="black")
            button1.pack(fill=X)
            button1.bind("<Button-1>", lambda event, arg=name: function(event, arg))
            i = i + 1

    def displayVideo(self, event, name):
        videoPath = self.subjectVideolist[name]
        videoPlayerObject = VideoPlayer(videoPath, self.newFrame)
