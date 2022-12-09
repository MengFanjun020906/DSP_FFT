clear
close all
clc

fs=800;%采样频率
n=0:99;%采样点100个
y=sin(0.0625*2*pi*n)+sin(0.625*pi*2*n)+sin(1.25*2*pi*n);%采样后的信号 0.00625=50/8000
subplot(2,1,1);
stem(n,y)
title('抽样后信号的时域图像')
xlabel('n');ylabel('幅值');

Y = fft(y);%进行fft变换
f=(0:length(Y)-1)*fs/length(Y);%在频域，转换坐标为f，f= n*(fs/N)=Y的长度*采样频率,还是8k，但是在Matlab需要经过这样的运算
subplot(2,1,2)
stem(f,abs(Y));
title('信号频谱图')
xlabel('f/Hz')
ylabel('幅度')
