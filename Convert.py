from tkinter import *
from tkinter import filedialog, ttk, messagebox
import os, shutil, base64, icone, win32com.client

def pic():
	destino = str(formato.get())
	if destino == "Binário(base64)":
		with open(diretorio, 'rb') as image:
			f = image.read()
			b = str(bytearray(f))
		with open(str(diretorio[:-4])+"_Binario.txt", "w") as arquivo:
			arquivo.write(b[10:-1])
			arquivo.close()
		messagebox.showinfo("Formato convertido", "Formato de figura convertido com sucesso.\n\n" + file_extension.upper() + " para " + destino.upper() + "\n\nSalvo em: " + diretorio[:-4] + "_Binario.txt")
		root.destroy()

	if destino != "Binário(base64)":
		im = Image.open(diretorio)
		im = im.convert('RGB')
		im.save(diretorio[:-3] + destino.lower())
		messagebox.showinfo("Formato convertido", "Formato de figura convertido com sucesso.\n\n" + file_extension.upper() + " para " + destino.upper() + "\n\nSalvo em: " + diretorio[:-3] + destino.lower())
		root.destroy()

def arc():
	destino = str(formato.get())
	if destino == "Arquivo do Word": destino = "docx"
	if destino == "Arquivo do Power-Point": destino = "ppt"
	if destino == "Arquivo do Excel": destino = "xlsx"
	if destino == "Arquivo de Texto": destino = "txt"
	import win32com.client as win32
	from os import path
	in_file = path.abspath(diretorio)
	out_file = path.abspath(filename)

	if destino == "docx":
		if file_extension in ArqDOCX or file_extension.lower() == ".pdf" or file_extension.lower() == ".txt":
			word = win32.DispatchEx("Word.Application")
			word.Visible = 0
			word.DisplayAlerts = 0
			doc  = word.Documents.Open(in_file)
			doc.SaveAs(out_file, FileFormat=16)
			doc.Close()
			word.Quit()
		
	elif destino.lower() == "pdf":
		if file_extension.lower() in ArqPPT:
			word = win32.DispatchEx("PowerPoint.Application")
			word.Visible = 0
			word.DisplayAlerts = 0
			doc = word.Presentations.Open(in_file)
			doc.SaveAs(out_file, FileFormat=32)
			doc.Close()
			word.Quit()	
		elif file_extension.lower() in ArqXLSX:
			word = win32.DispatchEx("Excel.Application")
			word.Visible = 0
			word.DisplayAlerts = 0
			doc = word.Workbooks.Open(in_file)
			doc.ExportAsFixedFormat(0, out_file)
			doc.Close()
			word.Quit()			
		elif file_extension.lower() in ArqDOCX or file_extension.lower() == ".txt":
			word = win32com.client.Dispatch('Word.Application')
			word.Visible = 0
			word.DisplayAlerts = 0
			doc = word.Documents.Open(in_file)
			doc.SaveAs(in_file, FileFormat=17)
			doc.Close()
			word.Quit()
			
	elif destino.lower() == "xlsx":
		if file_extension.lower() == ".pdf":
			import pdftables_api
			c = pdftables_api.Client('to7jluln0hvr')
			c.xlsx(diretorio, filename + '.xlsx')
		elif file_extension.lower() == ".txt" or file_extension.lower() in ArqDOCX:
			import pandas as pd
			df = pd.read_csv(diretorio, header=None, delim_whitespace=True)
			df.to_excel(filename + '.xlsx', index=False, header=None)
		
	elif destino.lower() == "txt":
		if file_extension in ArqDOCX:
			import docx2txt
			text = docx2txt.process(diretorio)
			with open(filename + ".txt", "w") as file:
				print(text, file=file)
		elif file_extension.lower() == ".pdf":
			from io import StringIO
			from pdfminer.pdfparser import PDFParser
			from pdfminer.pdfdocument import PDFDocument
			from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
			from pdfminer.converter import TextConverter
			from pdfminer.layout import LAParams
			from pdfminer.pdfpage import PDFPage
			output_string = StringIO()
			with open(diretorio, 'rb') as in_file:
			    parser = PDFParser(in_file)
			    doc = PDFDocument(parser)
			    rsrcmgr = PDFResourceManager()
			    device = TextConverter(rsrcmgr, output_string, laparams=LAParams())
			    interpreter = PDFPageInterpreter(rsrcmgr, device)
			    for page in PDFPage.create_pages(doc):
			        interpreter.process_page(page)
			with open(filename + ".txt", "w") as final:
				final.write(output_string.getvalue())
		elif file_extension.lower() in ArqXLSX:
			import pandas as pd
			read_file = pd.read_excel (diretorio, header=None)
			read_file.to_csv (filename + ".txt", index = None, header=True)
	
	messagebox.showinfo("Formato convertido", "Formato de ficheiro convertido com sucesso.\n\n" + file_extension[1:].upper() + " para " + destino.upper() + "\n\nSalvo em: " + out_file + "." + destino)
	root.destroy()



def buscar():
	global formato, diretorio, filename, file_extension, lista
	diretorio = filedialog.askopenfilename(filetypes=(("All files", "*.*"), ("All files", "")))
	filename, file_extension = os.path.splitext(diretorio)
	btn1 = Button(root, font=('Arial Narrow', '13'), text='Converter', state='disable')
	btn1.grid(row=6, columnspan=7, padx=15, pady=10, sticky='we')


	if file_extension.lower() == ".txt":
		lista = ["PDF", "Arquivo do Word", "Arquivo do Excel", "Binário(base64)"]
		btn1.config(command=arc)
		btn1.config(state='normal')
		go()
	elif file_extension.upper() in ListaFiguras:
		lista = ListaFiguras
		btn1.config(command=pic)
		btn1.config(state='normal')
		go()
	elif file_extension.lower() in ArqPPT:
		lista = ["PDF"]
		btn1.config(command=arc)
		btn1.config(state='normal')
		go()
	elif file_extension.lower() in ArqDOCX:
		lista = ListaArquivo
		btn1.config(command=arc)
		btn1.config(state='normal')
		go()
	elif file_extension.lower() in ArqXLSX:
		lista = ["PDF", "Arquivo de Texto"]
		btn1.config(command=arc)
		btn1.config(state='normal')
		go()
	elif file_extension.lower() == '.pdf':
		lista = ["Arquivo do Excel", "Arquivo do Word", "Arquivo de Texto"]
		btn1.config(command=arc)
		btn1.config(state='normal')
		go()
	else: 
		messagebox.showerror('Error', 'Este aplicativo não da suporte para o tipo de extensão desejada ('+file_extension+')')
		print(ListaFiguras)
		root.destroy()
		return 0

def go():
	global formato
	btn.grid_forget()
	titulo = Label(frame, font=('Arial Narrow', '13'), fg='gray34', text=diretorio)
	titulo.grid(row=4, padx=10, pady=5, columnspan=7, sticky='we')
	titulo = Label(frame, font=('Arial Narrow', '13'), text='Para:')
	titulo.grid(row=5, padx=10, pady=5, column=0, sticky='w')
	combostyle = ttk.Style()
	combostyle.theme_create('combostyle', parent='alt', settings = {'TCombobox':{'configure':{'fieldbackground': '#f0f0f0','background': '#f0f0f0'}}})
	combostyle.theme_use('combostyle') 
	formato = ttk.Combobox(frame, font=('Arial Narrow', '13'), values=lista)
	formato.grid(row=5, padx=10, pady=5,column=1)


root = Tk()

ArqDOCX = [".docx", ".doc", ".docm", ".dotx", ".dotm", ".odt", ".dot"]
ArqPPT = ['.pptx', ".ppt", ".pptm", ".potx", ".ppsx", ".ppsm", ".pps", ".ppam", ".ppa"]
ArqXLSX = [".xlsx", ".xlsm ", ".xls", ".xlsb", ".xltm", ".xlt"]
ListaFiguras = ["Binário(base64)", ".PNG", ".ICO", ".JPG", ".JPEG", ".WEBP", ".BMP", ".GIF", ".TIFF", ".RGB", ".JP2", ".TGA", ".JPE", ".JFIF"]
ListaArquivo = ["PDF", "Arquivo do Word", "Arquivo do Excel", "Arquivo de Texto"]


root.title('Conversor de ficheiro')
root.geometry('')
root.iconbitmap(icone.tempfile)

titulo = Label(root, font=('Arial Narrow', '20'), fg='black', text='Conversor de Ficheiro')
titulo.grid(row=1, columnspan=7, padx=15, sticky='WE')
subtitulo = Label(root, font=('Arial Narrow', '16'), fg='gray34', text='Converta ficheiro para o formato dejado')
subtitulo.grid(row=2, padx=15, sticky='WE')

frame = LabelFrame(root, font=('Arial Narrow', '13'), fg='gray34', text='')
frame.grid(row=3, columnspan=7, pady=10, padx=15, sticky='WE')

btn = Button(root, font=('Arial Narrow', '13'), text='Buscar ficheiro', command=buscar)
btn.grid(row=6, columnspan=7, padx=15, pady=10, sticky='we')

root.mainloop()
