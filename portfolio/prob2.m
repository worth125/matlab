%housecleaning
clc;
clear all;

%keep track of output
diary prob2output

%define matrices
mat = [0.85 0.1 0.05; 0.2 0.8 0; 0.1 0 0.9];
pop = [1000 0 0];

%print title and column headers
fprintf('Prison Population over time\n\n');
fprintf('%12s%12s%12s%12s\n','Period','Inmates','Released','Escaped',...
                          '------','-------','--------','--------');

%drive loops
for i = 1:100
    pop = pop*mat; %calculate next iteration of population
    
    %print every 5 iterations
    if mod(i,5) == 0
        fprintf('%12i%12.0f%12.0f%12.0f\n',i,pop(1),pop(2),pop(3));
    end
end

%define matrices again
mat = [0.85 0.1 0.05; 0.2 0.8 0; 0.1 0 0.9];
pop = [1000 0 0];

eq = 0; %flag boolean
k = 0; % counter

% drive while loop with eq flag
while eq==0
    
    k = k+1; %counter
    
    lastpop = pop(1); % keep track of last population value
    pop = pop*mat; %calculate new population values
    currentpop = pop(1); 
    
    %test for equality
    if abs(lastpop-currentpop) <= .01
        eq = 1;
    end
        
    
    
end

% ouptput
fprintf('%s%0.0f\n','Stable Population: ',pop(1));
fprintf('%s%0.0f\n','# of Escaped: ',pop(2));
fprintf('%s%0.f\n','# of Relapsed: ',pop(3));
fprintf('%s%d\n','# of iterations to stability: ',k);


diary %diary off
