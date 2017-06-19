from tkinter import *
import webbrowser # to open the browser and pdf files

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
