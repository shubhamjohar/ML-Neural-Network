input = temp3
fs= 50
N=length(input);
figure(1)
plot(time,input)
title('unfiltered Signal');
xlabel('Time [sec]');
ylabel('Amplitude');
[b,a] = butter(5,0.04);
x = filter(b,a,temp3);
figure;
plot(time,x);
title('butterworth filtered Signal');
xlabel('Time [sec]');
ylabel('Amplitude');
[c,d] = cheby1(5,10,0.04);
y = filter(c,d,temp3);
figure;
plot(time,y);
title('chebysev filtered Signal');
xlabel('Time [sec]');
ylabel('Amplitude');

[e,f] = ellip(5,10,20,0.04);
z = filter(e,f,temp3);
figure;
plot(time,z);
title('elliptic filtered Signal');
xlabel('Time [sec]');
ylabel('Amplitude');

