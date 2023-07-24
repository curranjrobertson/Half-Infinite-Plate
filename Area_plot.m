clear all; clc; close all

alpha = [-90:1:90]; % angle alpha

dx = 0.01 % arbitrary side length
dy = 0.6784*dx % vertical side length

A = dx.*(dy+(dx/2).*tand(alpha)); % Equation for area

plot(alpha,A); % plot the area wrt alpha
legend

fzero(@(a) dx*(dy+(dx)*tand(a)),0) % find where the area is zero
C = dy/dx % print the coefficient