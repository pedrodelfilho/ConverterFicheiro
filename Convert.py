from tkinter import *
from tkinter import filedialog, ttk, messagebox
import os, shutil, base64, icone

def pic():
	destino = str(formato.get())
	if destino == "Binário(base64)":
		with open(diretorio, 'rb') as image:
			f = image.read()
			b = str(bytearray(f))
		with open(str(diretorio[:-4])+"_Binario.txt", "w") as arquivo:
			arquivo.write(b[10:-1])
			arquivo.close()
		messagebox.showinfo("Formato convertido", "Formato de figura convertido com sucesso.\n\n" + origem.upper() + " para " + destino.upper() + "\n\nSalvo em: " + diretorio[:-4] + "_Binario.txt")
		root.destroy()

	if destino != "Binário(base64)":
		im = Image.open(diretorio)
		im = im.convert('RGB')
		im.save(diretorio[:-3] + destino.lower())
		messagebox.showinfo("Formato convertido", "Formato de figura convertido com sucesso.\n\n" + origem.upper() + " para " + destino.upper() + "\n\nSalvo em: " + diretorio[:-3] + destino.lower())
		root.destroy()

def arc():
	destino = str(formato.get())
	if destino == "Arquivo do Word": destino = "docx"
	if destino == "Arquivo do Power-Point": destino = "ppt"
	if destino == "Arquivo do Excel": destino = "xlsx"
	if destino == "Arquivo de Texto": destino = "docx"

	if destino == "PDF" or destino == "docx":
		import win32com.client as win32
		from os import path
		word = win32.DispatchEx("Word.Application")
		in_file = path.abspath(diretorio)
		if origem.lower() == 'ocx':
			diret = diretorio[:-4]
			orig = "docx"
			f = 17
		else:
			diret = diretorio[:-3]
			orig = origem
			f = 16
		out_file = path.abspath(diret + destino.upper())
		doc = word.Documents.Open(in_file)
		doc.SaveAs(out_file, FileFormat=f)
		doc.Close()
		word.Quit()
		messagebox.showinfo("Formato convertido", "Formato de ficheiro convertido com sucesso.\n\n" + origem.upper() + " para " + destino.upper() + "\n\nSalvo em: " + diret + destino.lower())
		root.destroy()




def buscar():
	global formato, diretorio, origem
	diretorio = filedialog.askopenfilename(filetypes=(("All files", "*.*"), ("All files", "")))
	origem = str(diretorio[-3:])
	print(origem)
	btn.grid_forget()
	titulo = Label(frame, font=('Arial Narrow', '13'), fg='gray34', text=diretorio)
	titulo.grid(row=4, padx=10, pady=5, columnspan=7, sticky='we')
	titulo = Label(frame, font=('Arial Narrow', '13'), text='Para:')
	titulo.grid(row=5, padx=10, pady=5, column=0, sticky='w')
	btn1 = Button(root, font=('Arial Narrow', '13'), text='Converter')
	btn1.grid(row=6, columnspan=7, padx=15, pady=10, sticky='we')
	for i in ListaFiguras:
		if(i.lower() == origem):
			lista = ListaFiguras
			btn1.config(command=pic)
			break
		else:
			lista = ListaArquivo
			btn1.config(command=arc)
			print('nao')
	combostyle = ttk.Style()
	combostyle.theme_create('combostyle', parent='alt', settings = {'TCombobox':{'configure':{'fieldbackground': '#f0f0f0','background': '#f0f0f0'}}})
	combostyle.theme_use('combostyle') 
	formato = ttk.Combobox(frame, font=('Arial Narrow', '13'), values=lista)
	formato.grid(row=5, padx=10, pady=5,column=1)


root = Tk()

root.title('Conversor de ficheiro')
root.geometry('')
root.iconbitmap(icone.tempfile)

ListaFiguras = ["Binário(base64)", "PNG", "ICO", "JPG", "JPEG", "WEBP", "BMP", "GIF", "TIFF", "RGB", "JP2", "TGA", "JPE", "JFIF"]
ListaArquivo = ["Arquivo do Word", "PDF", "Arquivo do Power-Point", "Arquivo do Excel", "Arquivo de Texto"]

titulo = Label(root, font=('Arial Narrow', '20'), fg='black', text='Conversor de Ficheiro')
titulo.grid(row=1, columnspan=7, padx=15, sticky='WE')
subtitulo = Label(root, font=('Arial Narrow', '16'), fg='gray34', text='Converta ficheiro para o formato dejado')
subtitulo.grid(row=2, padx=15, sticky='WE')

frame = LabelFrame(root, font=('Arial Narrow', '13'), fg='gray34', text='')
frame.grid(row=3, columnspan=7, pady=10, padx=15, sticky='WE')

btn = Button(root, font=('Arial Narrow', '13'), text='Buscar ficheiro', command=buscar)
btn.grid(row=6, columnspan=7, padx=15, pady=10, sticky='we')

root.mainloop()
