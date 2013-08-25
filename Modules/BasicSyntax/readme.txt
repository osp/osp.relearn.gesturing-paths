To start off with, let's have a look at the basic syntax for a Metafont drawing.
Along with this text file you will see a file with a .mp extension.
Open it up with a text editor and have a look around.

Next, we're going to look at how to output a visual result to the .mp file.
This extension might look strange but it's actually just describing a MetaPost file.
Metapost is what we're going to be using to translate the syntax text you're looking at in the .mp.

Open a terminal shell and type 
$ mpost --help

You're now looking at all the variables that Metapost allows.
Move to the directory where you're file is saved, now tell Metapost what you've been working on and type:
$ mpost whateveryoucalledyourfile.mp

The program will return a message log to confirm that it has performed the translation action.
Now check the folder where your .mp file resides. 
