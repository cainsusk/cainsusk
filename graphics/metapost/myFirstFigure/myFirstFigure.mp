prologues := 3;
outputtemplate := "%c-%j.svg";
outputformat := "svg";

beginfig(1);
draw (20,20)--(0,0)--(0,30)--(30,0)--(0,0);
endfig;

beginfig(2);
u=1cm;
draw (2u,2u)--(0,0)--(0,3u)--(3u,0)--(0,0);
pickup pencircle scaled 4pt;
for i=0 upto 2:
        for j=0 upto 2: drawdot (i*u,j*u); endfor
endfor
endfig;

beginfig(3)
for a=0 upto 7:
        draw (0,0){dir 45}..{dir 10a}(6cm,0);
endfor
endfig;

end
