library(readxl)

pathfile <- 'datos.xls'

sheets <- excel_sheets(pathfile)
print(sheets)

file <- read_excel(pathfile, sheet='Hoja1', range='A1:B4')
print(file)

Nombre <- file$Nombre
print(Nombre)