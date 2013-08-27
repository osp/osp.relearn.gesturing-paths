prologues := 3;     % sortie EPS, prologues c'est des variables

color red;
red = (1,0,0);

beginfig(1)
fill (-3,-3) -- (-3,13) -- (13,13) -- (13,-3) -- cycle withcolor(red);
pickup pencircle scaled .25
draw (8,8) .. (2,8) ... (2,2) .. (8,2) -- (1,5) -- cycle;
%draw (8,8) -- (2,8) -- (2,2) -- (8,2) -- (8,5) -- (5,5);
endfig;

color grey;
grey = (.8,.8,.8);

beginfig(2)
fill (-3,-3) -- (-3,13) -- (13,13) -- (13,-3) -- cycle withcolor(grey);
pickup pencircle scaled .25
draw (8,8) .. (2,8) ... (2,2) .. (8,2) -- (8,5) -- (5,5);
draw (8,8) -- (2,8) -- (2,2) -- (8,2) -- (8,5) -- (5,5);
endfig;

color yellow;
yellow = (1,1,0);   % RGB couleur, 1 correspond à 100%, ici nuance de gris

beginfig(3)
%fill (-3,-3) -- (-3,13) -- (13,13) -- (13,-3) -- cycle withcolor(yellow); % background ?
pickup pencircle scaled .25   % Faire un point de stylo et changement d'échelle

%draw (8,8) .. (2,8) ... (2,2) .. (8,2) -- (8,5) -- (5,5);
draw (8,8) -- (2,8) -- (2,2) -- (8,2) -- (8,5) -- (5,5) withcolor yellow;
% we didnt manage to make transparancy to work, we tried: withcolor transparent(1,0.1,yellow) ; 

endfig

end

%drawit( yscaled -1)  xscaled -1
