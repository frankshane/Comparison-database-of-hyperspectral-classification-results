clc
clear
cd 'E:\#lts ��ѧ��\������\��Ŀ12 �߹��׷�����������\'
load('C:\Users\lts129\Desktop\�߹��׷������ݽ����.mat')
%���躯��WritetoDatabase��ReturntoDBM��AllocateData��GettheOrder
%%
%�������ұ�
%��һ����ͼ���ƣ���ѡӡ�ڰ���'IP',��ά�Ǵ�ѧ'UP',������˹ɽ��'SV',��˹�ٴ�ѧ'HST',����Ϻ�������'KSC',��������'BSW',��ʢ�ٹ�������'DC',��ά������'CP'
%�ڶ�����������С��1����ÿ��ٷֱȣ�����1����ÿ�������0����̶���
%������Ϊ�Ƿ�̳���һ��̳�Ϊ1���̳�ʱ��������һ������š����š��еȡ��ϲ�ˮ׼����һ������ֽ�������
%������Ϊ�Ƚ��ѡ�е�С��������Ϊ1������������Ϊ3
clc
clear

load('C:\Users\lts129\Desktop\�߹��׷������ݽ����.mat')
FindingTable(1:10,1)={'IP'};
FindingTable(1:10,2)=[{0.01},   {0.03}, {0.05}, {0.1},  {0.15}, {5},    {10},   {15},   {50},   {200}];
FindingTable(1:10,3)=[{0},      {1},    {1},    {1},    {1},    {0},    {1},    {1},    {1},    {1}];
FindingTable(1:10,4)=[{1},      {0},    {0},    {3},    {0},    {1},    {1},    {0},    {3},    {3}];
FindingTable(11:12,1)={'HST'};
FindingTable(11:12,2)=[{0}, {50}];
FindingTable(11:12,3)=[{0}, {0}];
FindingTable(11:12,4)=[{0}, {0}];
FindingTable(13:25,1)={'UP'};
FindingTable(13:25,2)=[{0.01},  {0.05}, {0.1},  {0},    {5},    {10},   {15},   {20},   {30},   {40},   {50},   {100},  {200}];
FindingTable(13:25,3)=[{0},     {1},    {1},    {0},    {0},    {1},    {1},    {1},    {1},    {1},    {1},    {1},    {1}];
FindingTable(13:25,4)=[{1},     {0},    {3},    {3},    {1},    {1},    {0},    {0},    {0},    {0},    {3},    {0},    {3}];
FindingTable(26:34,1)={'SV'};
FindingTable(26:34,2)=[{0.01},  {0.05}, {0.1},  {5},    {10},   {20},   {30},   {50},   {200}];
FindingTable(26:34,3)=[{0},     {1},    {1},    {0},    {1},    {1},    {1},    {1},    {1}];
FindingTable(26:34,4)=[{1},     {3},    {3},    {1},    {1},    {0},    {0},    {0},    {3}];
[Database,Order]=GettheOrder(Database,FindingTable);
[DBofMethod] = ReturntoDBM(Database);
save('C:\Users\lts129\Desktop\�߹��׷������ݽ����.mat')
%%
%�������������ݼ�
%����˳��ΪDataBase����ţ�ͼ���ƣ��������������־���ƣ��������ƣ���ע
%����ע������ʱ�Զ�����Ϊ'��'
%������������ʱ�Զ�����Ϊ'δ����'
%�����ݿ����иñ������ʱ���ɲ�������־���ơ���������
%Database=WritetoDatabase(Database,'7533438','IP',40,83.28,'JSTARS','BDM-LCMV','��');
%%
%�����ұ�Ҫ��Ϊÿ�������½�����д�֣�Order���г�ÿ�������ıȽϽ�������š����š��еȡ��ϲ�ˮ׼
[Database,Order]=GettheOrder(Database,FindingTable);
%�������������ݿ⣬���������ֽ�������
clearvars DBofMethod
[DBofMethod] = ReturntoDBM(Database);
clearvars -except Database FindingTable Order DBofMethod
save('C:\Users\lts129\Desktop\�߹��׷������ݽ����.mat')

%%
%��һ���·����Ľ���ڲ��������ݿ���������бȽ�
clc
clear

load('C:\Users\lts129\Desktop\�߹��׷������ݽ����.mat')
% TempDatabase=StartDatabase('XXX','IP',0.01,79.32);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',0.05,91.96);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',5,66.75);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',10,77.31);
% 
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',50,90.57);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',200,95.09);
TempDatabase=StartDatabase('XXX','IP',0.01,81.95);
TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',0.05,92.69);
TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',0.1,95.06);
TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',5,71);
TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',10,82.25);
TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',15,85.88);
TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',50,93.02);
TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',200,97.27);
% TempDatabase=WritetoDatabase(TempDatabase,'XXX','UP',0.05,99.55);
% TempDatabase=WritetoDatabase(TempDatabase,'XXX','UP',5,86.77);
% TempDatabase=WritetoDatabase(TempDatabase,'XXX','UP',10,91.41);
% TempDatabase=WritetoDatabase(TempDatabase,'XXX','UP',50,98.92);
% TempDatabase=WritetoDatabase(TempDatabase,'XXX','UP',200,99.52);
% TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',5,91.08);
% TempDatabase=WritetoDatabase(TempDatabase,'XXX','IP',10,90.38);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','SV',0.01,95.21);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','SV',0.05,99.3);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','SV',5,87.77);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','SV',10,91.83);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','SV',50,96.27);
% % TempDatabase=WritetoDatabase(TempDatabase,'XXX','SV',200,98.61);
[Score,SmallScore,LargeScore] = ContrastwithDataBase(TempDatabase,FindingTable,Order)
%%
%��һ���·�������ڼ������ݿ���������бȽ�
clc
clear
cd 'E:\#lts ��ѧ��\������\��Ŀ12 �߹��׷�����������\'
load('C:\Users\lts129\Desktop\�߹��׷������ݽ����.mat')
%ԭʼ���
% Database=WritetoDatabase(Database,'XXX','UP',0.01,98.44);
% Database=WritetoDatabase(Database,'XXX','UP',0.05,99.55);
Database=WritetoDatabase(Database,'XXX','UP',5,90.02);
Database=WritetoDatabase(Database,'XXX','UP',10,94.45);
Database=WritetoDatabase(Database,'XXX','UP',0.01,98.77);
Database=WritetoDatabase(Database,'XXX','UP',50,99.11);
Database=WritetoDatabase(Database,'XXX','UP',200,99.7);
% Database=WritetoDatabase(Database,'XXX','UP',0.1,99.08);
% Database=WritetoDatabase(Database,'XXX','UP',50,98.92);
% Database=WritetoDatabase(Database,'XXX','UP',200,99.53);
%�½��
% Database=WritetoDatabase(Database,'XXX1','UP',0.01,98.44);
% Database=WritetoDatabase(Database,'XXX1','UP',0.05,99.55);
% % Database=WritetoDatabase(Database,'XXX1','UP',5,87.);
% % Database=WritetoDatabase(Database,'XXX1','UP',10,93.13);
% % Database=WritetoDatabase(Database,'XXX1','UP',20,96.38);
% % Database=WritetoDatabase(Database,'XXX1','UP',50,98.06);
% Database=WritetoDatabase(Database,'XXX1','UP',200,99.53);
%����
% Database=WritetoDatabase(Database,'XXX2','UP',0.01,98.44);
% Database=WritetoDatabase(Database,'XXX2','UP',0.05,99.55);
% % Database=WritetoDatabase(Database,'XXX2','UP',5,92.07);
% % Database=WritetoDatabase(Database,'XXX2','UP',10,95.23);
% % Database=WritetoDatabase(Database,'XXX3','UP',5,96.6);
% % Database=WritetoDatabase(Database,'XXX3','UP',10,97.45);
% % Database=WritetoDatabase(Database,'XXX2','UP',20,97.78);
% % Database=WritetoDatabase(Database,'XXX2','UP',50,99.04);
% Database=WritetoDatabase(Database,'XXX2','UP',200,99.53);

[Database,Order]=GettheOrder(Database,FindingTable);
[DBofMethod] = ReturntoDBM(Database);
NumofDBM = find(strcmp({DBofMethod.Num},'XXX')==1);
Score=DBofMethod(NumofDBM).Score
SmallScore=DBofMethod(NumofDBM).SmallScore
LargeScore=DBofMethod(NumofDBM).LargeScore
% % % NumofDBM = find(strcmp({DBofMethod.Num},'XXX1')==1);
% % % Score=DBofMethod(NumofDBM).Score
% % % SmallScore=DBofMethod(NumofDBM).SmallScore
% % % LargeScore=DBofMethod(NumofDBM).LargeScore
% % % NumofDBM = find(strcmp({DBofMethod.Num},'XXX2')==1);
% % % Score=DBofMethod(NumofDBM).Score
% % % SmallScore=DBofMethod(NumofDBM).SmallScore
% % % LargeScore=DBofMethod(NumofDBM).LargeScore
% % % NumofDBM = find(strcmp({DBofMethod.Num},'XXX3')==1);
% % % Score=DBofMethod(NumofDBM).Score
% % % SmallScore=DBofMethod(NumofDBM).SmallScore
% % % LargeScore=DBofMethod(NumofDBM).LargeScore
