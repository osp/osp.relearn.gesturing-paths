#!/usr/bin/python
#-*- coding:utf-8 -*-
 
import re, sys, os
from subprocess import call

 
# this script grabs all the co-ordinates from .mp files given as arguments, converting them to a drawing with a single co-ordinate.
# Usage: $ python reduce1.py *.mp


# TODO shell out to save new drawing as .mp file and compile into ps drawing
 
# create empty lists. we will put every x and y coordinate in them as we look through the drawings
everyx = []
everyy = []

# get the drawing filenames from arguments given on the commandline
arg = (sys.argv)
total = len(sys.argv)
if total < 2:
	print "Please specify an image file!"
else:
#	print "searching in total " + str(total) + " files: " + str(arg)
	for i in range (1,total): 
		text = open(arg[i]).read()
		if not text:
			print "Unable to open file " + arg[i]
		else:
			xmatch = re.findall(r"\s*\(\s*(\d+)\s*,", text)		# now we find the average x coordinate in the drawing:
			if not xmatch:
				continue
			else: 
				for x in xmatch: # finds every  x co-ordinate
    					everyx.append(int(x))                       
##		# and the average y coordinate:
#		ymatch = re.findall(r":\s*=\s*\(\s*\d+\s*\,\s*(\d+)\s*\)", text)
#(40,0)
		ymatch = re.findall(r",\s*(\d+)\s*\)", text)
		if not ymatch:
			continue
		else:
			for y in ymatch:  #finds every number preceeding a closing bracket (ie, all the y co-ordinates)
				everyy.append(int(y))



# find highest x and y values, to set canvas size
if not everyx:
	print "no x coordinates found"
else:
	highx = str(max(everyx))
if not everyy:
	print "no y coordinates found"
else:
	highy = str(max(everyy))

# calculate average x and y values from all the drawings
avex = sum(everyx)/ float(len(everyx))
avey = sum(everyy)/ float(len(everyy))


# if any of the vales we've found are bigger than 6000 they will crash mpost, so we divide them by 2
factor = 0.5
if avex > 6000 or avey > 6000 or highx > 6000 or highy > 6000:
	avex = str(int(avex * factor))
	avey = str(int(avey * factor))
	highx = str(int(float(highx) * factor))
	highy = str(int(float(highy) * factor))

avecoords = "(" + str(avex) + "," + str(avey) + ")"
newDrawing = """
prologues := 3; 

beginfig(1)
	""" + "fill (0,0) -- (" + highx + "," + "0) -- (" + highx + "," + highy +") -- (0," + highy + ") -- cycle withcolor white; " + """
    draw """ + avecoords + """ withpen pencircle scaled 4bp ; 
endfig;

end

"""
# save newDrawing as an .mp file
newfilename = date + "blahblah.mp"
f = open("reducedDrawing.mp", 'w')
f.write(newDrawing)
f.close()


# and shell out to convert it to an image
#call("cd ~/relearn/relearn.gesturing-paths/Modules/Coordinates; mpost reducedDrawing.mp", shell=True)
call("mpost" + newnamefile reducedDrawing.mp ", shell=True)  # << this works

print "		Success! An averaged drawing has been saved as reducedDrawing"



