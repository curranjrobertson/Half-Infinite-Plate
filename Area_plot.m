clear all; clc; close all

alpha = [-90:1:90];

dx = 0.01
dy = 0.6784*dx

A = dx.*(dy+(dx/2).*tand(alpha));

plot(alpha,A);
legend


fzero(@(a) dx*(dy+(dx)*tand(a)),0)