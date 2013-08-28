#!/usr/bin/python
#-*- coding:utf-8 -*-

import urllib2

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


print "relearn is " + str(len(website1) ) 
print "offgrid is " + str(len(website1offgrid))
print "gesturing is " + str(len(website1gesturing))
print "scall is " + str(len(website1scall))

somuchtosay =  """

beginfig(1)
draw (""" + str(len(website1offgrid)) + """) -- (""" + str(len(website1gesturing)) + """) -- (""" + str(len(website1scall)) + """)
endfig;
end


"""

print somuchtosay

