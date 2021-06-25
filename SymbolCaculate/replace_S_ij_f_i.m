xi = 1;
xj = 1;
ui = 1;
uj = 1;

%% 体积力
delta_ij = (lambda/2+B/2)*( diff(ux,y)*diff(ux,y)+diff(uy,x)*diff(uy,x) ) +...
    C*2*diff(ux,x)*diff(uy,y) + ...
    B/2*( diff(ux,y)*diff(uy,x)+diff(uy,x)*diff(ux,y) );
S_ij = B*( diff(ux,x)+diff(uy,y) )*diff(uj,xi) + ...
    A/4*( diff(uj,x)*diff(ux,xi) +diff(uj,y)*diff(uy,xi) ) + ...
    (lambda+B)*( diff(ux,x)+diff(uy,y) )*diff(ui,xj) + ...
    (mu+A/4)*( diff(ui,x)*diff(uj,x) + diff(ui,y)*diff(uj,y) ...
        + diff(ux,xi)*diff(ux,xj) + diff(uy,xi)*diff(uy,xj) ...
        + diff(ui,x)*diff(ux,xj) + diff(ui,y)*diff(uy,xj));

f_i = (mu+A/4)*( diff(diff(ux,y),y)*diff(ux,xi) + diff(diff(uy,x),x)*diff(uy,xi)...
        + diff(diff(ux,y),y)*diff(ui,x) + diff(diff(uy,x),x)*diff(ui,y) ...
        + 2*diff(diff(ui,x),y)*diff(ux,y) + 2*diff(diff(ui,y),x)*diff(uy,x)) + ...
	(lambda+mu+A/4+B)*( diff(diff(ux,xi),y)*diff(ux,y) + diff(diff(uy,xi),x)*diff(uy,x) ...
        + diff(diff(ux,y),x)*diff(ui,y) + diff(diff(uy,x),y)*diff(ui,x) ) + ...
    (lambda+B)*( diff(diff(ui,x),x)*diff(uy,y) + diff(diff(ui,y),y)*diff(ux,x) ) + ...
    (A/4+B)*( diff(diff(ux,y),x)*diff(uy,xi) + diff(diff(uy,x),y)*diff(ux,xi)...
        + diff(diff(ux,xi),x)*diff(ux,y) + diff(diff(uy,xi),y)*diff(uy,x) ) + ...
    (B+2*C)*( diff(diff(ux,xi),x)*diff(uy,y)+ diff(diff(uy,xi),y)*diff(ux,x) );