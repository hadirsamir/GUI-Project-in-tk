import scp    #to send file.txt

# Import Text Editor Module.
from TextEditor import *

# Import Video Module.
from Video import *

# Import Grades Module.
from Grades import *

# Import Drawing Module.
from Drawing import *

# Import Books
from Books import *

class Mainwindow():
    def __init__(self, parentTopLevel):
        # Assign the parent Tk window and window name.
        self.currentTopLevel = parentTopLevel
        self.currentTopLevel.wm_title("My Widgets")

        w, h = parentTopLevel.winfo_screenwidth(), parentTopLevel.winfo_screenheight()

        # Add main Frame.
        currentFrame = Frame(self.currentTopLevel, bg = "#FFFFFF", width = w, height = h)

        currentFrame.pack()

        # Add menu buttons.
        padX = 80
        padY = 35
        textEditorButton = addButtonToFrame(currentFrame, "My Board", -1, self.geteditor, imagePaths["editorImg"], 4, 4, 160, 70)
        textEditorButton.grid(row = 0, column = 0, pady = padY, padx = padX)
        videoListButton = addButtonToFrame(currentFrame, "My Video List", -1, self.getVideo, imagePaths["videoList"], 4, 4, 160, 70)
        videoListButton.grid(row = 1, column = 0, pady = padY, padx = padX)
        videoSearchButton = addButtonToFrame(currentFrame, "Search Video", -1, self.SearchOne, imagePaths["videoSearchImg"], 4, 4, 160, 70)
        videoSearchButton.grid(row = 2, column = 0, pady = padY, padx = padX)
        refernceButton = addButtonToFrame(currentFrame, "My References ", -1, self.openpdf, imagePaths["referenceImg"], 14, 14, 160, 70)
        refernceButton.grid(row = 3, column = 0, pady = padY, padx = padX)
        browserButton = addButtonToFrame(currentFrame, "My Browser", -1, self.browse, imagePaths["browserImg"], 7, 7, 160, 70)
        browserButton.grid(row = 0, column = 50, pady = padY, padx = padX)
        gradesButton = addButtonToFrame(currentFrame, "Grades", -1, self.getgrade, imagePaths["gradesImg"], 7, 7, 160, 70)
        gradesButton.grid(row = 1, column = 50, pady = padY, padx = padX)
        fileSendButton = addButtonToFrame(currentFrame, "Send Files", -1, self.sendfile, imagePaths["sendFilesImg"], 4, 4, 160, 70)
        fileSendButton.grid(row = 2, column = 50, pady = padY, padx = padX)
        drawingButton = addButtonToFrame(currentFrame, "Draw", -1, self.getframework, imagePaths["drawingImg"], 4, 4, 160, 70)
        drawingButton.grid(row = 3, column = 50, pady = padY, padx = padX)

    def sendfile(self,event):
        os.system("echo")           #takes terminal command

    #def sendfile(self,event):    #function to send files to remote machines
        #client = scp.Client(host=host, user=user, password=password)
        #client.transfer('/etc/local/filename', '/etc/remote/filename')

    def browse(self,event):
        webbrowser.open_new("https://www.google.com.eg/search")  # a link(Google search URL)

    #Top level functions
    def geteditor(self,event):
        root2=Toplevel(self.currentTopLevel)
        mygui=TextEditor(root2)

    def getVideo(self,event):
        root12 = Toplevel(self.currentTopLevel)
        myVideo = Display(root12)

    def getgrade(self,event):
        mygrade=Grades(self.currentTopLevel)

    def getframework(self,event):
        root4=Toplevel(self.currentTopLevel)
        mywork=Drawing(root4)

    def openpdf(self, event):
        root5=Toplevel(self.currentTopLevel)
        mypdf=pdflist(root5)

    # making an object of openseach class to avoid the closing bug
    def SearchOne(self,event):
        mylist=openVideosearch(self.currentTopLevel)

