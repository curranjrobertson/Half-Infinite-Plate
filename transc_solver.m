format long
dydx = 1
func = @(a) tan(a)*(sec(a)^2) + dydx
dfunc = @(a) (sec(a)^2)+3*(tan(a)^2)*(sec(a)^2) + dydx
xr = 0

[root,ea,iter] = newtraph(func,dfunc,xr) % 

rad2deg(root)
