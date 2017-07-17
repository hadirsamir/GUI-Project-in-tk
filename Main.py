from MainWindow import *

def main():
    root=Tk()

    w, h = root.winfo_screenwidth(), root.winfo_screenheight()
    root.geometry("%dx%d+0+0" % (w, h))

    # root.configure(background='#FFFFFF')

    mybuttons=Mainwindow(root)
    root.mainloop()
if '__name__' "" '__main__':
    main()





