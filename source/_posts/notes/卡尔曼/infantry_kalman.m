%% һ�׿������˲����ͨ�˲����Ա�
% ��ʼ������
ts = 0.001;                 % ����ʱ��
delta_t = 0.02;             % ʵ���ź�֡��
noise_mag = 1;              % ������������Ϊ1
t = 0:ts:2-ts;
t2 = 0:delta_t:2-delta_t;
N = length(t);              % ���еĳ���
sz = [1,N];                 % �ź��迪�ٵ��ڴ�ռ��С 
x = 20*sin(2*pi*t);         % ��ʵλ��
noise = noise_mag*randn(1,N*ts/delta_t);              % ����������   randn- ��̬�ֲ��������
z = interp1(t2,20*sin(2*pi*t2)+noise,t,'previous');   % �źŵ������������²���   interp1- һά���ݲ�ֵ(�����㣬����ֵ����ѯ�㣬��ֵ��������һ���ڵ��ֵ���ڲ�ѯ������ֵ����һ������������ֵ��)
Q = 1;                      % ���轨����ģ����������
R = 2000;                   % λ�ò����������

Q_matrix = [0.1  0;
            0    0.1];
R_matrix = [1  0;
            0  1];

A = 1;
B = 0;
H = 1;

n = size(Q);  
m = size(R);

% ����ռ�
xhat = zeros(sz);         % �������
P = 0;                    % ���鷽�����  
xhatminus = zeros(sz);    % �������
Pminus = zeros(n);        % ���鷽�����
K = zeros(n(1),m(1));     % Kalman����
I = eye(n);


N = length(z);
Y = zeros(N, 2);
Y = KF_2D_example(z, Q_matrix, R_matrix);


% ���Ƶĳ�ʼֵ��ΪĬ�ϵ�0����P=[0 0;0 0],xhat=0
for k = 2:N
    % ʱ����¹���
    xhatminus(:,k) = A*xhat(:,k-1)+B;
    Pminus = A*P*A'+Q;
    
    % �������¹���
    K = Pminus*H'/( H*Pminus*H'+R );
    xhat(:,k) = xhatminus(:,k) + K*(z(k) - H*xhatminus(:,k));
    P = (I-K*H)*Pminus;
end
F = filter_custom;
z_lp = filter(F,z);
x_k = cat(1,x(1:1950),xhat(1:1950));
distance_k = pdist(x_k);    % ��������������ŷ�Ͼ�����Ϊƫ����ж� klaman�˲���
x_lp = cat(1,x(1:1950),z_lp(1:1950));
distance_lp = pdist(x_lp);  % ��������������ŷ�Ͼ�����Ϊƫ����ж� ��ͨ�˲���
x_z = cat(1,x(1:1950),z(1:1950));
distance_z = pdist(x_z);    % ��������������ŷ�Ͼ�����Ϊƫ����ж� ����ֵ

figure;                % ����ͼ������
plot(t,x(1,:),'g-');   % ������ʵֵ
hold on   
plot(t,z);             % ���Ʋ���ֵ
plot(t,xhat(1,:),'r-') % ����kalman�˲������ֵ
plot(t,z_lp,'k-');     % ���Ƶ�ͨ�˲������ֵ
legend('��ʵֵ',['���� ',num2str(distance_z)], ['kalman �˲� ',num2str(distance_k)], ['��ͨ�˲��� ',num2str(distance_lp)]);
xlabel('time(s)');

function Hd = filter_custom
% Chebyshev Type II Lowpass filter designed using FDESIGN.LOWPASS.

% ����Ƶ��ֵ����HzΪ��λ
Fs = 1000;  % Sampling Frequency ����Ƶ��

N     = 10;  % Order ����
Fstop = 20;  % Stopband Frequency ���Ƶ��
Astop = 80;  % Stopband Attenuation (dB) ���˥��(dB)

% Construct an FDESIGN object and call its CHEBY2 method.
% ����һ��FDESIGN���󲢵�����CHEBY2������
h  = fdesign.lowpass('N,Fst,Ast', N, Fstop, Astop, Fs);
Hd = design(h, 'cheby2');
end