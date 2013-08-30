#!/usr/bin/python
#-*- coding:utf-8 -*-

import urllib2

from subprocess import call
import datetime


today1 = datetime.date.today()

print "I will show you that there's nothing to see"

firstx = 20 + 15

SizeofDrawing = len("Draw&.mp")

Happydrawing =  """

beginfig(1)
draw (""" + str(SizeofDrawing) + """,20) -- (0,0) -- (0,30) -- (30,0) -- (0,0) ;
endfig;
end


"""

# print Happydrawing

website1 = urllib2.urlopen('http://relearn.be').read()


website1offgrid = urllib2.urlopen('http://relearn.be/r/off-grid').read()

website1gesturing = urllib2.urlopen('http://relearn.be/r/gesturing-paths').read()

website1scall = urllib2.urlopen('http://relearn.be/r/can-it-scale-to-the-universe').read()

website1scallNotes = urllib2.urlopen('http://relearn.be/r/notes::can-it-scale-to-the-univers').read()

website1offgridNotes = urllib2.urlopen('http://relearn.be/r/notes-off-grid').read()

scall = str((len(website1scall)) + (len(website1scallNotes)))
offgrid = str((len(website1offgrid)) + (len(website1offgridNotes)))



#print "relearn is " + str(len(website1) ) 
print "offgrid is " + offgrid
print "gesturing is " + str(len(website1gesturing))
print "scall is " + scall

#print "website1offgridNotes is " + str(len(website1offgridNotes) ) 
#print "website1offgrid is " + str(len(website1offgrid)) 

factor = .01


offgridSML = str(float(offgrid) * factor)
gesturingSML = str(float(len(website1gesturing) * factor))
scallSML = str(float(scall) * factor)


somuchtosay_Fri30 =  """

beginfig(1)
draw (0,100) -- (10,""" + offgridSML + """) -- (20,""" + gesturingSML + """) -- (30,""" + scallSML + """) -- (40,100);
endfig;
end"""


print somuchtosay_Fri30

#newnamefile = str(str(today1) + "somuchtosay")

#print today1
#print newnamefile

## save somuchtosay as an .mp file
f = open(somuchtosay_Fri30 + '.mp', 'w')
f.write(somuchtosay_Fri30)
f.close()

## and shell out to convert it to an image

#command = str("mpost " + newnamefile + ".mp") # << this doesn't work

#print command

call(somuchtosay_Fri30, shell=True)  # << this works

print "		Success! you can now open somuchtosay.1 in evince"

