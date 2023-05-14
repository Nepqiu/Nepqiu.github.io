%% 一阶卡尔曼滤波与低通滤波器对比
% 初始化参数
ts = 0.001;                 % 采样时间
delta_t = 0.02;             % 实际信号帧率
noise_mag = 1;              % 设置噪声幅度为1
t = 0:ts:2-ts;
t2 = 0:delta_t:2-delta_t;
N = length(t);              % 序列的长度
sz = [1,N];                 % 信号需开辟的内存空间大小 
x = 20*sin(2*pi*t);         % 真实位置
noise = noise_mag*randn(1,N*ts/delta_t);              % 测量白噪声   randn- 正态分布的随机数
z = interp1(t2,20*sin(2*pi*t2)+noise,t,'previous');   % 信号叠加噪声后重新采样   interp1- 一维数据插值(样本点，样本值，查询点，插值方法（上一个邻点插值，在查询点插入的值是上一个抽样网格点的值）)
Q = 1;                      % 假设建立的模型噪声方差
R = 2000;                   % 位置测量方差估计

Q_matrix = [0.1  0;
            0    0.1];
R_matrix = [1  0;
            0  1];

A = 1;
B = 0;
H = 1;

n = size(Q);  
m = size(R);

% 分配空间
xhat = zeros(sz);         % 后验估计
P = 0;                    % 后验方差估计  
xhatminus = zeros(sz);    % 先验估计
Pminus = zeros(n);        % 先验方差估计
K = zeros(n(1),m(1));     % Kalman增益
I = eye(n);


N = length(z);
Y = zeros(N, 2);
Y = KF_2D_example(z, Q_matrix, R_matrix);


% 估计的初始值都为默认的0，即P=[0 0;0 0],xhat=0
for k = 2:N
    % 时间更新过程
    xhatminus(:,k) = A*xhat(:,k-1)+B;
    Pminus = A*P*A'+Q;
    
    % 测量更新过程
    K = Pminus*H'/( H*Pminus*H'+R );
    xhat(:,k) = xhatminus(:,k) + K*(z(k) - H*xhatminus(:,k));
    P = (I-K*H)*Pminus;
end
F = filter_custom;
z_lp = filter(F,z);
x_k = cat(1,x(1:1950),xhat(1:1950));
distance_k = pdist(x_k);    % 计算两个向量的欧氏距离作为偏差的判定 klaman滤波器
x_lp = cat(1,x(1:1950),z_lp(1:1950));
distance_lp = pdist(x_lp);  % 计算两个向量的欧氏距离作为偏差的判定 低通滤波器
x_z = cat(1,x(1:1950),z(1:1950));
distance_z = pdist(x_z);    % 计算两个向量的欧氏距离作为偏差的判定 测量值

figure;                % 创建图窗窗口
plot(t,x(1,:),'g-');   % 绘制真实值
hold on   
plot(t,z);             % 绘制测量值
plot(t,xhat(1,:),'r-') % 绘制kalman滤波后的数值
plot(t,z_lp,'k-');     % 绘制低通滤波后的数值
legend('真实值',['测量 ',num2str(distance_z)], ['kalman 滤波 ',num2str(distance_k)], ['低通滤波器 ',num2str(distance_lp)]);
xlabel('time(s)');

function Hd = filter_custom
% Chebyshev Type II Lowpass filter designed using FDESIGN.LOWPASS.

% 所有频率值都以Hz为单位
Fs = 1000;  % Sampling Frequency 采样频率

N     = 10;  % Order 数量
Fstop = 20;  % Stopband Frequency 阻带频率
Astop = 80;  % Stopband Attenuation (dB) 阻带衰减(dB)

% Construct an FDESIGN object and call its CHEBY2 method.
% 构造一个FDESIGN对象并调用其CHEBY2方法。
h  = fdesign.lowpass('N,Fst,Ast', N, Fstop, Astop, Fs);
Hd = design(h, 'cheby2');
end