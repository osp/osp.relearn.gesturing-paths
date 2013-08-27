prologues := 3;     % sortie EPS
color red;
red = (1,0,0);
beginfig(1)
fill (-3,-3) -- (-3,13) -- (13,13) -- (13,-3) -- cycle withcolor(red);
pickup pencircle scaled .25
draw (8,8) .. (2,8) ... (2,2) .. (8,2) -- (1,5);
%draw (8,8) -- (2,8) -- (2,2) -- (8,2) -- (8,5) -- (5,5);
endfig;
end
