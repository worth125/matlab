function [yfit eqnstr] = bestfit(data);
N = length(data);
P = polyfit(1:N,data,1);
yfit = polyval(P,1:N);
eqnstr = sprintf('y = %0.2fx + %0.0f',P);
end