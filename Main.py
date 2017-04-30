import os
import tkinter
from tkinter import *
from tkinter import filedialog
from tkinter import messagebox
import webbrowser # to open the browser and pdf files
import scp    #to send file.txt
from random import randint   #for Drawing class


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


file_name = None
gif_dir="/home/hadir/PycharmProjects/TextEditor/gifs/"

#host=None
#user=None
#password=None

class Mainwindow():
    def __init__(self,master):
        self.master=master

        self.master.wm_title("My Widgets")
        frame = Frame(self.master)
        frame.pack()
        f1 = Frame(self.master, width=190, height=600)
        master.maxsize(width=190,height=600)
        topframe = Frame(self.master)
        topframe.pack()
        bottomframe = Frame(self.master)
        bottomframe.pack(side=BOTTOM)



        button1 = Button(topframe, text="MY board", fg="black")

        self.igm0 = PhotoImage(file=gif_dir + "pencil.gif")
        button1.config(image=self.igm0,compound=RIGHT)
        self.tigm0=self.igm0.subsample(17,17)
        button1.config(image=self.tigm0)

        button2 = Button(topframe, text="My videos list", fg="black")
        self.igm1 = PhotoImage(file=gif_dir + "images.gif")
        button2.config(image=self.igm1, compound=RIGHT)
        self.tigm1 = self.igm1.subsample(5, 5)
        button2.config(image=self.tigm1)


        button3 = Button(topframe, text="Search Videos", fg="black")
        self.igm2 = PhotoImage(file=gif_dir +"pogi.gif")
        button3.config(image=self.igm2, compound=RIGHT)
        self.tigm2 = self.igm2.subsample(5, 5)
        button3.config(image=self.tigm2)

        button4 = Button(topframe, text="My Browser" ,fg="black")
        self.igm4 = PhotoImage(file=gif_dir + "index.gif")
        button4.config(image=self.igm4, compound=RIGHT)
        self.tigm4 = self.igm4.subsample(6, 6)
        button4.config(image=self.tigm4)

        button5 = Button(topframe, text="MY Refrences" , fg="black")
        self.igm3 = PhotoImage(file=gif_dir + "mine.gif")
        button5.config(image=self.igm3, compound=RIGHT)
        self.tigm3 = self.igm3.subsample(5, 5)
        button5.config(image=self.tigm3)

        button6 =Button(topframe, text="Send Files" , fg="black")
        self.igm9 = PhotoImage(file=gif_dir + "send.gif")
        button6.config(image=self.igm9, compound=RIGHT)
        self.tigm9 = self.igm9.subsample(5, 5)
        button6.config(image=self.tigm9)

        button7 =Button(topframe, text="MY FrameWork", fg="black")
        self.igm8 = PhotoImage(file=gif_dir + "brush.gif")
        button7.config(image=self.igm8, compound=RIGHT)
        self.tigm8 = self.igm8.subsample(5, 5)
        button7.config(image=self.tigm8)

        button8 = Button(topframe, text="Grades", fg="black")
        self.igm11= PhotoImage(file=gif_dir + "grades.gif")
        button8.config(image=self.igm11, compound=RIGHT)
        self.tigm11= self.igm11.subsample(5,5)
        button8.config(image=self.tigm11)


        button1.pack(fill=X)
        button2.pack(fill=X)
        button3.pack(fill=X)
        button4.pack(fill=X)
        button5.pack(fill=X)
        button6.pack(fill=X)
        button7.pack(fill=X)
        button8.pack(fill=X)

        button1.bind("<Button-1>", self.geteditor)
        button2.bind("<Button-1>",self.getVideo)
        button3.bind("<Button-1>",self.SearchOne)
        button4.bind("<Button-1>",self.browse)
        button5.bind("<Button-1>", self.openpdf)
        button6.bind("<Button-1>",self.sendfile)
        button7.bind("<Button-1>",self.getframework)
        button8.bind("<Button-1>",self.getgrade)

    def sendfile(self,event):
        os.system("echo")           #takes terminal command

 #def sendfile(self,event):    #function to send files to remote machines
       #client = scp.Client(host=host, user=user, password=password)
       #client.transfer('/etc/local/filename', '/etc/remote/filename')



    def browse(self,event):
        webbrowser.open_new("https://www.google.com.eg/search")  # a link(Google search URL)

    #Top level functios

    def geteditor(self,event):
        root2=Toplevel(self.master)
        mygui=TextEditor(root2)

    def getVideo(self,event):
        root12 = Toplevel(self.master)
        myVideo = Display(root12)

    def getgrade(self,event):
        root3=Toplevel(self.master)
        mygrade=Grades(root3)

    def getframework(self,event):
        root4=Toplevel(self.master)
        mywork=Drawing(root4)

    def openpdf(self, event):
        root5=Toplevel(self.master)
        mypdf=pdflist(root5)

    # making an object of openseach class to avoid the closing bug

    def SearchOne(self,event):
        mylist=openVideosearch(self.master)


class pdflist:
    def __init__(self,master):
        self.subjectsNames = {"Maths": 1, "Science" : 2, "Arabic" :3}; #array fo subject names need a query
        self.pdfPathsList = {"Intoduction to alogrithm":"/home/hadir/Downloads/network-security.pdf",
                             "Programming C++" : "/home/hadir/Downloads/network-security.pdf"}; #dictionary for pdf paths and names of its subject
        #TODO: fill SubjectNames from data

        self.master = master
        self.master.wm_title("Choose Subject")
        self.master.maxsize(420,960)
        self.topframe = Frame(self.master)

        self.topframe.pack()
        bottomframe = Frame(self.master)
        bottomframe.pack(side=BOTTOM)

        #Home Buttons
        self.drawListButtons(self.topframe, self.subjectsNames, self.openPdfWindow);
       # self.drawSubjectListButtons(topframe);

    def openPdfFile(self, event, name):
        webbrowser.open_new(self.pdfPathsList[name]) # open pdf file

    def openPdfWindow(self, event, name):
        subjectId = self.subjectsNames[name]
        #query to populate  self.pdfPathsList
        #Create a new window
        newFrame = Toplevel(self.topframe)
        newFrame.title("Choose Reference")
        bottomframe = Frame(newFrame)
        bottomframe.pack(side=BOTTOM)
        #ToDo Add TopFrame
        self.drawListButtons(newFrame,self.pdfPathsList,self.openPdfFile);


        return

    def fetchubjectNamesFromDB(self):
        return

    def drawListButtons(self,topframe, dictionary,function):
        i = 0
        for name in dictionary:
            button1 = Button(topframe, text= name, fg="black")
            button1.pack(fill=X)
            button1.bind("<Button-1>", lambda event, arg= name: function(event, arg))
            i = i + 1


class openVideosearch:
    def __init__(self,master):
        input_file_name = tkinter.filedialog.askopenfilename(defaultextension=".mp4",
                                                             filetypes=[("video", "*.mp4")])
        if input_file_name:
            videoPath = input_file_name
            videoPlayerObject = VideoPlayer(videoPath)


class Drawing(Frame):
    def __init__(self, master):
        super().__init__(master)
        self.master=master
        master.title("My FrameWork")
        self.radiobuttonValue = IntVar()
        self.radiobuttonValue.set(1)
        self.toolsThickness = 2
        self.rgb = "#%02x%02x%02x" % (255, 255, 255)

        self.pack()
        self.createWidgets()

        master.bind('a', self.thicknessPlus)
        master.bind('s', self.thicknessMinus)

    def createWidgets(self):
        tk_rgb = "#%02x%02x%02x" % (128, 192, 200) # choose font colour

        self.leftFrame = Frame(self, bg=tk_rgb)
        self.leftFrame.pack(side=LEFT, fill=Y)

        self.label = Label(self.leftFrame, text="choose a RGB color: ")
        self.label.grid(row=0, column=0, sticky=NW, pady=2, padx=3)
        # -----------------------------------------------
        self.entryFrame = Frame(self.leftFrame)
        self.entryFrame.grid(row=1, column=0,
                             sticky=NW, pady=2, padx=3)

        self.myEntry1 = Entry(self.entryFrame, width=5, insertwidth=3)
        self.myEntry1.pack(side=LEFT, pady=2, padx=4)

        self.myEntry2 = Entry(self.entryFrame, width=5)
        self.myEntry2.pack(side=LEFT, pady=2, padx=4)

        self.myEntry3 = Entry(self.entryFrame, width=5)
        self.myEntry3.pack(side=LEFT, pady=2, padx=4)
        # ----------------------------------------------
        self.bttn1 = Button(self.leftFrame,
                            text="accept", command=self.setColor)
        self.bttn1.grid(row=2, column=0, pady=2, padx=3, sticky=NW)

        self.labelThickness = Label(
            self.leftFrame,
            text="drawing tools' thickness:")
        self.labelThickness.grid(row=3,
                                 column=0, pady=2, padx=3)

        self.myScale = Scale(
            self.leftFrame, from_=1, to=25,
            orient=HORIZONTAL,
            command=self.setThickness)

        self.myScale.set(2)
        self.toolsThickness = 2
        self.myScale.grid(
            row=4, column=0,
            pady=2, padx=3, sticky=S)

        self.labelTools = Label(
            self.leftFrame,
            text="chose a drawing tool:",
        )
        self.labelTools.grid(
            row=5, column=0,
            pady=2, padx=3,
            sticky=NW)


        Radiobutton(self.leftFrame,
                    text="line",
                    variable=self.radiobuttonValue,
                    value=1).grid(padx=3, pady=2,
                                  row=6, column=0,
                                  sticky=NW)

        Radiobutton(self.leftFrame,
                    text="line2",
                    variable=self.radiobuttonValue,
                    value=2).grid(padx=3, pady=2,
                                  row=7, column=0,
                                  sticky=NW)


        Radiobutton(self.leftFrame,
                    text="flowers tool",
                    variable=self.radiobuttonValue,
                    value=3).grid(padx=3, pady=2,
                                  row=8, column=0,
                                  sticky=NW)

        Radiobutton(self.leftFrame,
                    text="spray",
                    variable=self.radiobuttonValue,
                    value=4).grid(padx=3, pady=2,
                                  row=9, column=0,
                                  sticky=NW)

        Radiobutton(self.leftFrame,
                    text="cosmos",
                    variable=self.radiobuttonValue,
                    value=5).grid(padx=3, pady=2,
                                  row=10, column=0,
                                  sticky=NW)


        self.buttonDeleteAll = Button(self.leftFrame, text="clear paper",
                                      command=self.delteAll)
        self.buttonDeleteAll.grid(padx=3, pady=2,
                                  row=11, column=0,
                                  sticky=NW)
        # ----------------------------------------------------------------------
        self.myCanvas = Canvas(self, width=800,
                               height=500, relief=RAISED, borderwidth=5)
        self.myCanvas.pack(side=RIGHT)
        self.myCanvas.bind("<B1-Motion>", self.draw)
        self.myCanvas.bind("<Button-1>", self.setPreviousXY)

    def setThickness(self, event):
        print(self.myScale.get())
        self.toolsThickness = self.myScale.get()

    def setColor(self):
        try:
            val1 = int(self.myEntry1.get())
            val2 = int(self.myEntry2.get())
            val3 = int(self.myEntry3.get())
            if 0 <= (val1 and val2 and val3) <= 255:
                self.rgb = "#%02x%02x%02x" % (val1, val2, val3)
            self.myEntry1.delete(0, END)
            self.myEntry2.delete(0, END)
            self.myEntry3.delete(0, END)

        except ValueError:
            print("That's not an int!")
        # set focus to something else, not to mess with pressing keys: a,s
        self.focus()

    def setPreviousXY(self, event):
        print("now")
        self.previousX = event.x
        self.previousY = event.y

    def draw(self, event):
        # line 1
        if self.radiobuttonValue.get() == 1:
            self.myCanvas.create_oval(event.x - self.toolsThickness,
                                      event.y - self.toolsThickness,
                                      event.x + self.toolsThickness,
                                      event.y + self.toolsThickness,
                                      fill=self.rgb
                                      )
        # line 2
        elif self.radiobuttonValue.get() == 2:
            self.myCanvas.create_line(self.previousX, self.previousY,
                                      event.x, event.y,
                                      width=self.toolsThickness,
                                      fill=self.rgb)
            self.previousX = event.x
            self.previousY = event.y
            # flowers tool
        elif self.radiobuttonValue.get() == 3:
            tk_rgb = "#%02x%02x%02x" % (randint(140, 255), randint(140, 225), 40)
            self.myCanvas.create_line(self.previousX, self.previousY,
                                      event.x, event.y,
                                      width=self.toolsThickness,
                                      fill=tk_rgb)
        # spray tool
        elif self.radiobuttonValue.get() == 4:
            if self.toolsThickness < 5:
                multiplier = 6
            else:
                multiplier = 2
            xrand = randint(-self.toolsThickness * multiplier,
                            +self.toolsThickness * multiplier)
            yrand = randint(-self.toolsThickness * multiplier,
                            +self.toolsThickness * multiplier)

            self.myCanvas.create_oval(event.x + xrand, event.y + yrand,
                                      event.x + xrand + self.toolsThickness, event.y + yrand + self.toolsThickness,
                                      fill=self.rgb,
                                      width=0
                                      )
            # cosmos tool
        elif self.radiobuttonValue.get() == 5:
            if self.toolsThickness < 5:
                multiplier = 6
            else:
                multiplier = 2
            xrand = randint(-self.toolsThickness * multiplier,
                            +self.toolsThickness * multiplier)
            yrand = randint(-self.toolsThickness * multiplier,
                            +self.toolsThickness * multiplier)
            tk_rgb = "#%02x%02x%02x" % (randint(5, 255), randint(10, 150), randint(13, 255))
            self.myCanvas.create_oval(event.x + xrand, event.y + yrand,
                                      event.x + self.toolsThickness, event.y + self.toolsThickness,
                                      fill=tk_rgb
                                      )

    def delteAll(self):
        self.myCanvas.delete("all")

    def thicknessPlus(self, event):
        if self.toolsThickness < 25:
            self.toolsThickness += 1
            self.myScale.set(self.toolsThickness)

    def thicknessMinus(self, event):
        if 1 < self.toolsThickness:
            self.toolsThickness -= 1
            self.myScale.set(self.toolsThickness)


class VideoPlayer:
    def __init__(self, videoPath):
        relative_height = 1

        Gst.init(None)
        GObject.threads_init()

        display_frame = Frame(bg='')
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


class Display:
    def __init__(self,master):
        self.sub_Name={"Math":1,"science":2}
        self.subjectVideolist={"woirw": "TestVideo.mp4"}
        #ToDo: (1) Fill Subject List from the data base in a dictionary where key is the subject name and
        # the value is the subject id in the database
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
        self.master.maxsize(420, 960)
        self.topframe = Frame(self.master)

        self.topframe.pack()
        bottomframe = Frame(self.master)
        bottomframe.pack(side=BOTTOM)

        # Home Buttons
        self.drawButtons(self.topframe, self.sub_Name,self.openvideoWindow)

    def openvideoWindow(self, event, name):
        subjectId = self.sub_Name[name]
            # query to populate  self.subjectVideolist
            # Create a new window
        newFrame = Toplevel(self.topframe)
        newFrame.title(name)
        bottomframe = Frame( newFrame)
        bottomframe.pack(side=BOTTOM)
            # ToDo Add TopFrame
        self.drawButtons( newFrame, self.subjectVideolist, self.displayVideo)

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
        videoPlayerObject = VideoPlayer(videoPath)

class Grades:
    def __init__(self,master):
        self.master=master
        self.master.wm_title("")
        frame = Frame(self.master)
        frame.pack()
        f1 = Frame(self.master, width=200, height=100)
        topframe = Frame(self.master)
        topframe.pack()
        bottomframe = Frame(self.master)
        bottomframe.pack(side=BOTTOM)

        button1 = Button(topframe, text="Search", fg="black")
        button2 = Button(topframe, text="Insert", fg="black")
        button3 = Button(topframe, text="Delete", fg="black")


        button1.pack(fill=X)
        button2.pack(fill=X)
        button3.pack(fill=X)






class TextEditor:
    def __init__(self,master):
        PROGRAM_NAME = "insructor's editor"
        self.master=master
        self.open_file_icon = PhotoImage(file='icons/open_file.gif')
        self.new_file_icon = PhotoImage(file='icons/new_file.gif')
        self.save_file_icon = PhotoImage(file='icons/save.gif')
        self.cut_icon = PhotoImage(file='icons/cut.gif')
        self.copy_icon = PhotoImage(file='icons/copy.gif')
        self.paste_icon = PhotoImage(file='icons/paste.gif')
        self.undo_icon = PhotoImage(file='icons/undo.gif')
        self.redo_icon = PhotoImage(file='icons/redo.gif')
        # self.assignPaths(TextEditor.manager)
        self.master.geometry('350x350')
        self.master.title(PROGRAM_NAME)
        self.menu_bar = Menu(self.master)
        self.file_menu = Menu(self.menu_bar, tearoff=0)
        self.file_menu.add_command(label='New', accelerator='Ctrl+N', compound='left', underline=0, command=self.new_file)
        self.file_menu.add_command(label='Open', accelerator='Ctrl+O', compound='left', underline=0, command=self.open_file)
        self.file_menu.add_command(label='Save', accelerator='Ctrl+S',
                              compound='left', underline=0, command=self.save)
        self.file_menu.add_command(
            label='Save as', accelerator='Shift+Ctrl+S', command=self.save_as)
        self.file_menu.add_separator()
        self.file_menu.add_command(label='Exit', accelerator='Alt+F4', command=self.exit_editor)
        self.menu_bar.add_cascade(label='File', menu=self.file_menu)

        self.edit_menu = Menu(self.menu_bar, tearoff=0)
        self.edit_menu.add_command(label='Undo', accelerator='Ctrl+Z',
                              compound='left',  command=self.undo)
        self.edit_menu.add_command(label='Redo', accelerator='Ctrl+Y',
                              compound='left', command=self.redo)
        self.edit_menu.add_separator()
        self.edit_menu.add_command(label='Cut', accelerator='Ctrl+X',
                              compound='left',  command=self.cut)
        self.edit_menu.add_command(label='Copy', accelerator='Ctrl+C',
                              compound='left',  command=self.copy)
        self.edit_menu.add_command(label='Paste', accelerator='Ctrl+V',
                              compound='left', command=self.paste)
        self.edit_menu.add_separator()
        self.edit_menu.add_command(label='Find', underline=0,
                              accelerator='Ctrl+F', command=self.find_text)
        self.edit_menu.add_separator()
        self.edit_menu.add_command(label='Select All', underline=7,
                              accelerator='Ctrl+A', command=self.select_all)
        self.menu_bar.add_cascade(label='Edit', menu=self.edit_menu)

        self.view_menu = Menu(self.menu_bar, tearoff=0)
        self.show_line_number = IntVar()
        self.show_line_number.set(1)
        self.view_menu.add_checkbutton(label='Show Line Number', variable=self.show_line_number,
                                  command=self.update_line_numbers)
        self.show_cursor_info = IntVar()
        self.show_cursor_info.set(1)
        self.view_menu.add_checkbutton(
            label='Show Cursor Location at Bottom', variable=self.show_cursor_info, command=self.show_cursor_info_bar)
        to_highlight_line = BooleanVar()
        self.view_menu.add_checkbutton(label='Highlight Current Line', onvalue=1,
                                  offvalue=0, variable=to_highlight_line, command=self.toggle_highlight)
        self.themes_menu = Menu(self.menu_bar, tearoff=0)
        self.view_menu.add_cascade(label='Themes', menu=self.themes_menu)

        self.color_schemes = {
            'Default': '#000000.#FFFFFF',
            'Greygarious': '#83406A.#D1D4D1',
            'Aquamarine': '#5B8340.#D1E7E0',
            'Bold Beige': '#4B4620.#FFF0E1',
            'Cobalt Blue': '#ffffBB.#3333aa',
            'Olive Green': '#D1E7E0.#5B8340',
            'Night Mode': '#FFFFFF.#000000',
        }

        self.theme_choice = StringVar()
        self.theme_choice.set('Default')
        for k in sorted(self.color_schemes):
            self.themes_menu.add_radiobutton(
                label=k, variable=self.theme_choice, command=self.change_theme)
        self.menu_bar.add_cascade(label='View', menu=self.view_menu)

        self.about_menu = Menu(self.menu_bar, tearoff=0)
        self.about_menu.add_command(label='About', command=self.display_about_messagebox)
        self.about_menu.add_command(label='Help', command=self.display_help_messagebox)
        self.menu_bar.add_cascade(label='About', menu=self.about_menu)
        self.master.config(menu=self.menu_bar)

        self.shortcut_bar = Frame(self.master, height=25)
        self.shortcut_bar.pack(expand='no', fill='x')

        self.icons = ('new_file', 'open_file', 'save', 'cut', 'copy', 'paste',
                 'undo', 'redo', 'find_text')
        for i, icon in enumerate(self.icons):
            self.tool_bar_icon = PhotoImage(file='icons/{}.gif'.format(icon))
            if( icon == 'about'):
                Command = self.about_menu
            elif(icon == 'copy'):
                Command = self.copy
            elif(icon =='cut'):
                Command=self.cut_icon
            elif(icon == 'save'):
                Command=self.save_file_icon
            elif(icon =='paste'):
                Command=self.paste_icon
            elif(icon == 'undo'):
                Command=self.undo_icon
            elif(icon == 'new_file'):
                Command=self.new_file_icon
            elif(icon == 'open_file'):
                Command=self.open_file
            elif(icon=='find_text'):
                Command=self.find_text
            else:
                Command = self.about_menu
            self.tool_bar = Button(self.shortcut_bar, image = self.tool_bar_icon, command=Command)
            self.tool_bar.image = self.tool_bar_icon
            self.tool_bar.pack(side='left')

        self.line_number_bar = Text(self.master, width=4, padx=3, takefocus=0, border=0,
                               background='khaki', state='disabled', wrap='none')
        self.line_number_bar.pack(side='left', fill='y')

        self.content_text = Text(self.master, wrap='word', undo=1)
        self.content_text.pack(expand='yes', fill='both')
        self.scroll_bar = Scrollbar(self.content_text)
        self.content_text.configure(yscrollcommand=self.scroll_bar.set)
        self.scroll_bar.config(command=self.content_text.yview)
        self.scroll_bar.pack(side='right', fill='y')
        self.cursor_info_bar = Label(self.content_text, text='Line: 1 | Column: 1')
        self.cursor_info_bar.pack(expand='no', fill=None, side='right', anchor='se')

        self.content_text.bind('<KeyPress-F1>', self.display_help_messagebox)
        self.content_text.bind('<Control-N>', self.new_file)
        self.content_text.bind('<Control-n>', self.new_file)
        self.content_text.bind('<Control-O>', self.open_file)
        self.content_text.bind('<Control-o>', self.open_file)
        self.content_text.bind('<Control-S>', self.save)
        self.content_text.bind('<Control-s>', self.save)
        self.content_text.bind('<Control-f>', self.find_text)
        self.content_text.bind('<Control-F>', self.find_text)
        self.content_text.bind('<Control-A>', self.select_all)
        self.content_text.bind('<Control-a>', self.select_all)
        self.content_text.bind('<Control-y>', self.redo)
        self.content_text.bind('<Control-Y>', self.redo)
        self.content_text.bind('<Any-KeyPress>', self.on_content_changed)
        self.content_text.tag_configure('active_line', background='ivory2')
        # set up the pop-up menu
        self.popup_menu = Menu(self.content_text)
        for i in ('cut', 'copy', 'paste', 'undo', 'redo'):
            if (icon == 'paste'):
                Command = self.paste
            elif (icon == 'copy'):
                Command = self.copy
            elif(icon== 'cut'):
                Command = self.cut_icon
            elif(icon=='undo'):
                Command = self.undo_icon
            elif(icon=='redo'):
                Command = self.redo_icon
            else:
                Command = self.about_menu
            self.popup_menu.add_command(label=i, compound='left', command=Command)
            self.popup_menu.add_separator()
        self.popup_menu.add_command(label='Select All', underline=7, command=self.select_all)
        self.content_text.bind('<Button-3>', self.show_popup_menu)

        # bind right mouse click to show pop up and set focus to text widget on launch
        self.content_text.bind('<Button-3>', self.show_popup_menu)
        self.content_text.focus_set()
        self.master.protocol('WM_DELETE_WINDOW', self.exit_editor)
        self.master.mainloop()

    def show_popup_menu(self,event):
      self.popup_menu.tk_popup(event.x_root, event.y_root)

    def show_cursor_info_bar(self):
        show_cursor_info_checked =self.show_cursor_info.get()
        if show_cursor_info_checked:
            self.cursor_info_bar.pack(expand='no', fill=None, side='right', anchor='se')
        else:
            self.cursor_info_bar.pack_forget()

    def update_cursor_info_bar(self,event=None):
        row, col = self.content_text.index(INSERT).split('.')
        line_num, col_num = str(int(row)), str(int(col) + 1)  # col starts at 0
        infotext = "Line: {0} | Column: {1}".format(line_num, col_num)
        self.cursor_info_bar.config(text=infotext)

    def change_theme(self,event=None):
        selected_theme = self.theme_choice.get()
        fg_bg_colors = self.color_schemes.get(selected_theme)
        foreground_color, background_color = fg_bg_colors.split('.')
        self.content_text.config( background=background_color, fg=foreground_color)

    def update_line_numbers(self,event=None):
        line_numbers = self.get_line_numbers()
        self.line_number_bar.config(state='normal')
        self.line_number_bar.delete('1.0', 'end')
        self.line_number_bar.insert('1.0', line_numbers)
        self.line_number_bar.config(state='disabled')

    def highlight_line(self,interval=100):
        self.content_text.tag_remove("active_line", 1.0, "end")
        self. content_text.tag_add(
            "active_line", "insert linestart", "insert lineend+1c")
        self.content_text.after(interval, self.toggle_highlight)

    def undo_highlight(self):
        self.content_text.tag_remove("active_line", 1.0, "end")

    def toggle_highlight(self,event=None):
        if self.to_highlight_line.get():
            self.highlight_line()
        else:
            self.undo_highlight()

    def on_content_changed(self,event=None):
        self.update_line_numbers()
        self.update_cursor_info_bar()

    def get_line_numbers(self):
        output = ''
        if self.show_line_number.get():
            row, col = self.content_text.index("end").split('.')
            for i in range(1, int(row)):
                output += str(i) + '\n'
        return output

    def display_about_messagebox(self,event=None):
         tkinter.messagebox.showinfo("About", "{}{}".format("instructor's editor", "\nTkinter GUI Application\n by Jia"))

    def exit_editor(self,event=None):
        if tkinter.messagebox.askokcancel("Quit?", "Really quit?"):
            self.master.destroy()

    def display_help_messagebox(self,event=None):
        tkinter.messagebox.showinfo(
            "Help", "Help Book: \nTkinter GUI Application\n by Jia",
            icon='question')

    def new_file(self,event=None):
        self.master.title("Untitled")
        global file_name
        file_name = None
        self.content_text.delete(1.0, END)
        self.on_content_changed()

    def open_file(self,event=None):
        input_file_name = tkinter.filedialog.askopenfilename(defaultextension=".txt",
                                                             filetypes=[("All Files", "*.*"),
                                                                        ("Text Documents", "*.txt")])
        if input_file_name:
            global file_name
            file_name = input_file_name
            self.master.title('{} - {}'.format(os.path.basename(file_name), "instructor's editor"))
            self.content_text.delete(1.0, END)
            with open(file_name) as _file:
                self.content_text.insert(1.0, _file.read())
            self.on_content_changed()

    def write_to_file(self,file_name):
        try:
            content =self. content_text.get(1.0, 'end')
            with open(file_name, 'w') as the_file:
                the_file.write(content)
        except IOError:
            tkinter.messagebox.showwarning("Save", "Could not save the file.")

    def save_as(self,event=None):
        input_file_name = tkinter.filedialog.asksaveasfilename(defaultextension=".txt",
                                                               filetypes=[("All Files", "*.*"),
                                                                          ("Text Documents", "*.txt")])
        if input_file_name:
            global file_name
            file_name = input_file_name
            self.write_to_file(file_name)
            self.master.title('{} - {}'.format(os.path.basename(file_name), "instructor's editor"))
        return "break"

    def save(self,event=None):
        global file_name
        if not file_name:
           self.save_as()
        else:
            self.write_to_file(file_name)
        return "break"

    def select_all(self,event=None):
        self.content_text.tag_add('sel', '1.0', 'end')
        return "break"

    def find_text(self,event=None):
        search_toplevel = Toplevel(self.master)
        search_toplevel.title('Find Text')
        search_toplevel.transient(self.master)

        Label(search_toplevel, text="Find All:").grid(row=0, column=0, sticky='e')

        search_entry_widget = Entry(
            search_toplevel, width=25)
        search_entry_widget.grid(row=0, column=1, padx=2, pady=2, sticky='we')
        search_entry_widget.focus_set()
        ignore_case_value = IntVar()
        Checkbutton(search_toplevel, text='Ignore Case', variable=ignore_case_value).grid(
            row=1, column=1, sticky='e', padx=2, pady=2)
        Button(search_toplevel, text="Find All", underline=0,
               command=lambda: self.search_output(
                   search_entry_widget.get(), ignore_case_value.get(),
                   self.content_text, search_toplevel, search_entry_widget)
               ).grid(row=0, column=2, sticky='e' + 'w', padx=2, pady=2)

    def close_search_window(self):
        self.content_text.tag_remove('match', '1.0', END)
        self.search_toplevel.destroy()

        self.search_toplevel.protocol('WM_DELETE_WINDOW', self.close_search_window)

        return "break"

    def search_output(self,needle, if_ignore_case, content_text,
                  search_toplevel, search_box):
        content_text.tag_remove('match', '1.0', END)
        matches_found = 0
        if needle:
            start_pos = '1.0'
            while True:
                start_pos = content_text.search(needle, start_pos,
                                                nocase=if_ignore_case, stopindex=END)
                if not start_pos:
                    break
                end_pos = '{}+{}c'.format(start_pos, len(needle))
                content_text.tag_add('match', start_pos, end_pos)
                matches_found += 1
                start_pos = end_pos
            content_text.tag_config(
                'match', foreground='red', background='yellow')
        search_box.focus_set()
        search_toplevel.title('{} matches found'.format(matches_found))

    def cut(self):
        self.content_text.event_generate("<<Cut>>")
        self.on_content_changed()
        return "break"

    def copy(self):
        self.content_text.event_generate("<<Copy>>")
        return "break"

    def paste(self):
        self.content_text.event_generate("<<Paste>>")
        self.on_content_changed()
        return "break"

    def undo(self):
        self.content_text.event_generate("<<Undo>>")
        self.on_content_changed()
        return "break"

    def redo(self):
        self.content_text.event_generate("<<Redo>>")
        self.on_content_changed()

        return 'break'

def newTextEditorWindow():
    newWindow = TextEditor();




def main():
    root=Tk()
    mybuttons=Mainwindow(root)
    root.mainloop()
if '__name__' "" '__main__':
    main()





