import graph3;
size(200);
currentprojection=perspective(8,2,4);
real rho=1.5;
pen bg=gray+opacity(0.2);
draw(surface((2,0,0)--(2,0,2)--(0,0,2)--(0,0,0)--cycle),bg,bg);
draw(surface((0,2,0)--(0,2,2)--(0,0,2)--(0,0,0)--cycle),bg,bg);
draw(surface((2,0,0)--(2,2,0)--(0,2,0)--(0,0,0)--cycle),bg,bg);
real theta=30;
real phi=60;
draw(arc(O,rho,0,phi,90,phi),dashed);
draw(O--rho*dir(90,phi),dashed);
draw("$\rho$",O--rho*dir(theta,phi),Arrow3);
dot(rho*dir(theta,phi),red+2);
draw("$\theta$",arc(O,rho/3,0,0,theta,phi),N+0.3E,Arrow3(HookHead2));
draw("$\phi$",arc(O,rho/2,90,0,90,phi),Arrow3(HookHead2));
arrow("$(\rho,\theta,\phi)$",rho*dir(theta,phi),20,E);
axes3("$x$","$y$","$z$",Arrow3);