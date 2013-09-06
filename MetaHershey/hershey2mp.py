import re
from sys import argv
import hersheydata as fonts

fontname = argv[1]
exportname = argv[2]

font = eval ('fonts.{0}'.format (fontname))
filename = '{0}.mp'.format (exportname)
chars = [[re.findall ('\s*(\-*\d+)\s*(\-*\d+)\s*', line) for line in char.split ('M')[1:]] for char in font]

k = 1
f = open (filename, 'w')

f.write ('outputformat := "svg";\n')
f.write ('outputtemplate := "%c.svg";\n')

for char in chars:
	f.write ('beginfig ({0});\n'.format (ord (unicode (chr (k + 31)))))
	f.write ('\tpickup pencircle scaled .2\n')
	#for line in char:
		#f.write ('\tdraw {0} withcolor red;\n'.format (' -- '.join (['({0},{1})'.format (coord[0], int (coord[1]) * -1) for coord in line])))
	
	for line in char:
		f.write ('\tdraw {0};\n'.format (' -- '.join (['({0},{1})'.format (coord[0], int (coord[1]) * -1) for coord in line])))
	
	f.write ('endfig;\n\n')
	k += 1
f.write ('end;\n')

f.close ()