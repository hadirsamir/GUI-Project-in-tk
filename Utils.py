from tkinter import *

gif_dir="/home/hadir/PycharmProjects/TextEditor/gifs/" # path of GIFs directory

imagePaths = {
    "editorImg" : (gif_dir + "pencil.gif"),
    "videoList" : (gif_dir + "images.gif"),
    "videoSearchImg" : (gif_dir + "pogi.gif"),
    "browserImg" : (gif_dir + "index.gif"),
    "referenceImg" : (gif_dir + "mine.gif"),
    "sendFilesImg" : (gif_dir + "send.gif"),
    "drawingImg" : (gif_dir + "brush.gif"),
    "gradesImg" : (gif_dir + "grades.gif")
}

tableNames = {
    "studentsTable" : "students"
}

def addButtonToFrame(currentFrame, buttonName, place, bindedFunction = None, imagePath = None, imgLen = None, imgWid = None):
    # Create Button.
    b = Button(currentFrame, text= buttonName, fg="black")
    # Add Image if it's send.
    if(imagePath and imgLen and imgWid):
        # Read Image.
        img = PhotoImage(file= imagePath)
        img = img.subsample(imgWid, imgLen)
        # Add image to the button.
        b.config(image= img, compound=RIGHT)
        b.image = img
    # Show Button.
    b.pack(fill = place)
    # Bind Button if found.
    if(bindedFunction):
        b.bind("<Button-1>", bindedFunction)
    # Return Button
    return b

def addEntryTextToFrame(currentFrame, addFocus = False, placeHolderText = None):
    e = Entry(currentFrame)
    if(placeHolderText):
        e.insert(0, placeHolderText);
    e.pack()
    if(addFocus):
        e.focus()
    return e