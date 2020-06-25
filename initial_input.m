xm=100;
ym=100;
 
%x and y Coordinates of the sink
sink.x=0.5*xm;
sink.y=0.5*ym;
 
%Number of Nodes in the Field
n=100;
 
%Probability of a node to become cluster head
%p=0.1;
Tc= 20;
 
Rmax = 30;
 
%Eelc=Etx=Erx
ETX=50* 10^-9;
ERX=50* 10^-9;
%Transmit Amplifier types
Efs=10* 10^-12;              
Emp=0.0013* 10^-12;            
%Data Aggregation Energy
EDA=5* 10^-9;
 
%maximum number of round 
rmax = 1000;
 
%Computation of do
d0 = sqrt(Efs/Emp);
 
bit = 4000;
fis1 = readfis('dis_Fuzzyfitness1');           
fis2 = readfis('dis_Fuzzyfitness2');               
fis3 = readfis('Cluster.radius');

%Creation of the random Sensor Network
% figure(1);
for i=1:1:n
    %Initial Energy
    S(i).Initial_energy = 0.5;
    S(i).RE = S(i).Initial_energy;
end
for i=1:1:10
 for j=1:1:10
     S((i-1)*10+j).xd= ((i-1) + rand(1))*10;
     XR((i-1)*10+j)=S((i-1)*10+j).xd;
     S((i-1)*10+j).yd=((j-1) + rand(1))*10;
     YR((i-1)*10+j)=S((i-1)*10+j).yd;
     S((i-1)*10+j).G=0;

     %initially there are no cluster heads only nodes
     S((i-1)*10+j).type='N';
     % Node identification
     S((i-1)*10+j).id=(i-1)*10+j;
     S((i-1)*10+j).state='Initial_State'

     %Random node distribution
     hold on;
 end
end
 
S(n+1).xd=sink.x;
S(n+1).yd=sink.y;

save('wsn.mat');