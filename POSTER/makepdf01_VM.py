import os 
print " starting make pdf script "
print "------------------------------------------------------"
os.system("rm font.*pk font.*gf font.tfm font.dvi font.log ")
os.system("mf font.mf")
os.system("latex -output-format='pdf' testTex-multicol01_VM.tex")
print "Done! :-)"


