prologues := 3;     % sortie EPS
color myred ;
myred = (.9,0,0) ;
color myblue ;
myblue = (0,.9,.7) ;
beginfig(1)
draw (30,30) -- (30,70) -- (40,70) .. (48,65) .. (40,50) -- (33,50) withcolor myblue dashed dashpattern(on 1bp off 2bp on 3bp off 2bp);
draw (33,30) -- (33,70) -- (42,70) .. (50,65) .. (42,50) -- (33,50) withcolor myred
      dashed dashpattern(on 1bp off 2bp);
endfig;
end
