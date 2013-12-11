function montyplot(w)
figure
stayed = w(1,:);
switched = w(2,:);
plot(stayed,'r.')
hold on
plot(switched,'k.')
title('Monty Hall Simulations (N = 1000)','fontsize',16)
xlabel('Run Number','fontsize',16)
ylabel('Number of Wins','fontsize',16)
legend('Stayed','Switched','location','east')
[y str] = bestfit(stayed);
plot(y,'r--')
[val ind] = max(stayed);
text(10,val+15,str,'fontsize',16,'color','red')
[y str] = bestfit(switched);
plot(y,'k--')
val = min(switched);
text(30,val-15,str,'fontsize',16)

