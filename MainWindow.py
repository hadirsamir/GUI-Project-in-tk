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

        # Add main Frame.
        currentFrame = Frame(self.currentTopLevel)
        currentFrame.pack()

        # Add menu buttons.
        textEditorButton = addButtonToFrame(currentFrame, "My Board", X, self.geteditor, imagePaths["editorImg"], 17, 17)
        videoListButton = addButtonToFrame(currentFrame, "My Video List", X, self.getVideo, imagePaths["videoList"], 6, 6)
        videoSearchButton = addButtonToFrame(currentFrame, "Search Video", X, self.SearchOne, imagePaths["videoSearchImg"], 6, 6)
        refernceButton = addButtonToFrame(currentFrame, "My References ", X, self.openpdf, imagePaths["referenceImg"], 6, 6)
        browserButton = addButtonToFrame(currentFrame, "My Browser", X, self.browse, imagePaths["browserImg"], 5, 5)
        gradesButton = addButtonToFrame(currentFrame, "Grades", X, self.getgrade, imagePaths["gradesImg"], 6, 6)
        fileSendButton = addButtonToFrame(currentFrame, "Send Files", X, self.sendfile, imagePaths["sendFilesImg"], 6, 6)
        drawingButton = addButtonToFrame(currentFrame, "Draw", X, self.getframework, imagePaths["drawingImg"], 6, 6)

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

