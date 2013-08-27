prologues := 3;     % sortie EPS
color red;
red = (1,0,0);
beginfig(1)
%fill (-3,-3) -- (-3,13) -- (13,13) -- (13,-3) -- cycle withcolor(red);

increase = 7/4.5;
cone = 4;

pickup pencircle scaled .1

draw (0,14) -- (0, -14);

pickup pencircle scaled 2
draw 
(2.7 * cone, 1 * cone * -increase) ---
(1.5 * cone, 1.75 * cone *  -increase) ..
(-2.25, -2.25 * cone * increase) ..
(-1.25 * cone, -1.25 * cone * increase * .6) ---
(cone, cone * increase) ..
(0, 14) .. 
(-1 * cone, cone * increase) --- (cone * 1.8, cone * -1.8 * increase) ..
(cone * 2.7, cone * -2.2 * increase)
;

%draw (0,0) --- (4,7) .. (-4,7) --- cycle ;
%draw (0,0) --- (5,7) .. (-5,7) --- cycle ;

endfig
end
