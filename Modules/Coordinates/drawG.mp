prologues := 3;     % sortie EPS, prologues c'est des variables

color yellow;
yellow = (1,1,0);   % RGB couleur, 1 correspond à 100%, ici nuance de gris

beginfig(3)
%fill (-3,-3) -- (-3,13) -- (13,13) -- (13,-3) -- cycle withcolor(yellow); background ?

pickup pencircle scaled .25   % Faire un point de stylo et changement d'échelle

%draw (8,8) .. (2,8) ... (2,2) .. (8,2) -- (8,5) -- (5,5);

draw (8,8) -- (2,8) -- (2,2) -- (8,2) -- (8,5) -- (5,5) withcolor transparent(1,0.1,yellow) ; 


endfig;
end

%drawit( yscaled -1)  xscaled -1
