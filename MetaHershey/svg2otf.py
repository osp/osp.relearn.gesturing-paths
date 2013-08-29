# Transforms a collection of SVG-files to an OTF-font

import fontforge
import glob
import string
from sys import argv

name = argv[1] # Retreive fontname from the stdin
svgdir = argv[2] # Retreive the path to the directory with SVG-files

# Create a new font in fontforge
font = fontforge.font()
font.fontname = name
font.fondname = name
font.fullname = name
font.familyname = name

# Walk through all the SVG-files, retreive their unicodepoint
# and import them
for svgFilePath in glob.glob ('{0}/*.svg'.format (svgdir)):
	unicodeMatch = re.search ('(\d+)\.svg', svgFilePath)
	
	if unicodeMatch <> None:
		unicodePoint = unicodeMatch.group (1)
		glyph = font.createChar (unicodePoint)
		glyph.importOutlines(svgFilePath)

font.save ("{0}.sfd".format (name))
font.generate ("{0}.otf".format (name)) 