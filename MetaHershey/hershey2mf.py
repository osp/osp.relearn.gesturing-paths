import re

import hersheydata as fonts

font = fonts.timesrb

chars = [[re.findall ('\s*(\-*\d+)\s*(\-*\d+)\s*', line) for line in char.split ('M')[1:]] for char in font]

k = 1
f = open ('timesrb.mf', 'w')

f.write ('mode=luxo;\n')
f.write ('mode_setup; q:=savepen;\n')
f.write ('w#:=2.5pt#; font_quad:=w#; designsize:=8w#;  % global dimension definitions\n')


for char in chars:
	f.write ('beginchar (ASCII"{0}", w#, w#, 0);\n'.format (chr (k + 31)))
	f.write ('\tpickup pencircle\n')
	#for line in char:
		#f.write ('\tdraw {0} withcolor red;\n'.format (' -- '.join (['({0},{1})'.format (coord[0], int (coord[1]) * -1) for coord in line])))
	
	for line in char:
		f.write ('\tdraw {0};\n'.format (' .. '.join (['({0},{1})'.format (coord[0], int (coord[1]) * -1) for coord in line])))
	
	f.write ('endchar;\n\n')
	k += 1
f.write ('end;\n')

f.close ()