clear all; clc; close all
% Plot Area and derivative for mulitple angles

alpha = [-90:10:90]

f = 0.01;

i = 1;
j = 1;

for dx = f:f:1
    x(i) = dx;
    dy = dx;
        
    while j < (180)/10
%         alpha(j)
          A(i,j) = dx.*(dy+(dx/2).*tand(alpha(j)))
%           dA(i,j) = dx.*(dy+(dx/2).*secd(alpha(j)).^2);
%           ddA(i,j) = dx.*(dy+(dx).*tand(alpha(j)).*secd(alpha(j)).^2);
          j = j+1;
    end
    
    j = 1;
    i = i+1;
end

plot(x,A)
hold on
legend
title('Area as a function of dx for different angles alpha')
xlabel('dx')
ylabel('Area')

% figure
% plot(x,dA)
% hold on 
% legend
% title('Derivative of the area (wrt alpha)as a function of dx')
% xlabel('dx')
% ylabel('dA')

% figure
% plot(x,ddA)
% hold on 
% legend
% title('Second Derivative of the area (wrt alpha)as a function of dx')
% xlabel('dx')
% ylabel('ddA')

%%
% Plot Area for one angle with decreasing size
clear all; clc; close all

alpha = -63.5


f = 0.01;

i = 1;
j = 1;

for dx = 1:-f:f
    x(i) = dx;
    dy = dx;
    A(i) = dx.*(dy+(dx/2).*tand(alpha))
    %dA(i) = dx.*(dy+(dx/2).*secd(alpha).^2);
    i = i+1;
end

plot(x,A)
hold on
legend

% figure
% plot(x,dA)
% hold on 
% legend




