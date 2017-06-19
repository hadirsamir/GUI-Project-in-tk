from tkinter import *

if sys.version_info[0] < 3:
    import Tkinter as tkinter
else:
    import tkinter
import gi

file_name = None

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