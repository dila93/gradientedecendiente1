x=load('ex2x.dat');
y=load('ex2y.dat');



m=length(x);

tmp0=0;
tmp1=0;

i=0;
sum0=0;
tetha0=0;
tetha1=0.5;
alpha=0.01;


while (i <= 1500)
  j=1;
  sum0=0;
  while(j<=m)
    sum0=sum0+((tetha0+tetha1*x(j))-y(j));
    j=j+1;
  endwhile
tempTetha0=tetha0-(alpha/m)*sum0;

  j=1;
  sum1=0;
  while(j<=m)
    sum1=sum1+(((tetha0+tetha1*x(j))-y(j))*x(j));
    j=j+1;
  endwhile
tempTetha1=tetha1-(alpha/m)*sum1;
  
  tetha0 = tempTetha0;
  tetha1 = tempTetha1;
  i=i+1;
  
 disp(tetha0)
 disp(tetha1)
endwhile
hold on;
plot(x,y,'x');
disp(tetha0);
disp(tetha1);
disp(m);
hold on;
plot(x,tetha0+tetha1*x);

figure











