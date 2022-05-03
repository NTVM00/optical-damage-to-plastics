%{
pvc0 = readtable("PVC_1_.0.txt");
pvc1 = readtable("PVC_1_.1.txt");
pvc2 = readtable("PVC_1_.2.txt");
pvc3 = readtable("PVC_1_.3.txt");
pvc4 = readtable("PVC_1_.4.txt");
pvc5 = readtable("PVC_2_.0.txt");
pvc6 = readtable("PVC_2_.1.txt");
pvc7 = readtable("PVC_2_.3.txt");
pvc8 = readtable("PVC_3_.0.txt");
pvc9 = readtable("PVC_3_.1.txt");
pvc10 = readtable("PVC_3_.2.txt");
pvc11 = readtable("PVC_3_.3.txt");
pvc12 = readtable("PVC_3_.4.txt");
pvc13 = readtable("PVC_2_.2.txt");
%}
%{
polyp0 = readtable("POLYP_1_.0.txt");
polyp1 = readtable("POLYP_1_.1.txt");
polyp2 = readtable("POLYP_1_.2.txt");
polyp3 = readtable("POLYP_1_.3.txt");
polyp4 = readtable("POLYP_1_.4.txt");
polyp5 = readtable("POLYP_1_.5.txt");
polyp6 = readtable("POLYP_1_.6.txt");
polyp7 = readtable("POLYP_2_.0.txt");
polyp8 = readtable("POLYP_2_.1.txt");
polyp9 = readtable("POLYP_2_.2.txt");
polyp10 = readtable("POLYP_2_.3.txt");
polyp11 = readtable("POLYP_2_.4.txt");
polyp12 = readtable("POLYP_2_.5.txt");
polyp13 = readtable("POLYP_2_.6.txt");
polyp14 = readtable("POLYP_2_.7.txt");
polyp15 = readtable("POLYP_2_.8.txt");
polyp16 = readtable("POLYP_2_.9.txt");
polyp17 = readtable("POLYP_2_.10.txt");
polyp18 = readtable("POLYP_2_.11.txt");
polyp19 = readtable("POLYP_2_.12.txt");
polyp20 = readtable("POLYP_2_.13.txt");
polyp21 = readtable("POLYP_2_.14.txt");
polyp22 = readtable("POLYP_2_.15.txt");
polyp23 = readtable("POLYP_3_.0.txt");
polyp24 = readtable("POLYP_3_.1.txt");
polyp25 = readtable("POLYP_3_.2.txt");
polyp26 = readtable("POLYP_3_.3.txt");
polyp27 = readtable("POLYP_3_.4.txt");
%}

polyet0 = readtable("POLYET_1_.0.txt");
polyet1 = readtable("POLYET_1_.1.txt");
polyet2 = readtable("POLYET_1_.2.txt");
polyet3 = readtable("POLYET_1_.3.txt");
polyet4 = readtable("POLYET_1_.4.txt");
polyet5 = readtable("POLYET_1_.5.txt");
polyet6 = readtable("POLYET_2_.0.txt");
polyet7 = readtable("POLYET_2_.1.txt");
polyet8 = readtable("POLYET_2_.2.txt");
polyet9 = readtable("POLYET_2_.3.txt");
polyet10 = readtable("POLYET_2_.4.txt");
polyet11 = readtable("POLYET_2_.5.txt");
polyet12 = readtable("POLYET_2_.6.txt");
polyet13 = readtable("POLYET_2_.7.txt");
polyet14 = readtable("POLYET_2_.8.txt");
polyet15 = readtable("POLYET_2_.9.txt");
polyet16 = readtable("POLYET_2_.10.txt");
polyet17 = readtable("POLYET_2_.11.txt");
polyet18 = readtable("POLYET_2_.12.txt");
polyet19 = readtable("POLYET_2_.13.txt");
polyet20 = readtable("POLYET_2_.14.txt");
polyet21 = readtable("POLYET_2_.15.txt");
polyet22 = readtable("POLYET_2_.16.txt");
polyet23 = readtable("POLYET_3_.0.txt");
polyet24 = readtable("POLYET_3_.1.txt");
polyet25 = readtable("POLYET_3_.2.txt");
polyet26 = readtable("POLYET_3_.3.txt");
polyet27 = readtable("POLYET_3_.4.txt");

hold on

%%plot(pvc0.Var1,pvc0.Var2)
%%plot(pvc1.Var1,pvc1.Var2)
%%plot(pvc2.Var1,pvc2.Var2)
%%%plot(pvc3.Var1,pvc3.Var2)
%%plot(pvc4.Var1,pvc4.Var2)
%plot(pvc0.Var1, coeff(:,1))
%plot(pvc0.Var1, coeff(:,2))

%{
% *useful data*
plot(pvc5.Var1,pvc5.Var2)
plot(pvc6.Var1,pvc6.Var2)
plot(pvc7.Var1,pvc7.Var2)
plot(pvc8.Var1,pvc8.Var2)
plot(pvc9.Var1,pvc9.Var2)
 plot(pvc10.Var1,pvc10.Var2)
plot(pvc11.Var1,pvc11.Var2)
plot(pvc12.Var1,pvc12.Var2)
 plot(pvc13.Var1,pvc13.Var2)


pvcTest = pvc13(625:775,1);
pvcStdDiff = table2array(pvc13(625:775,2))-table2array(pvc10(625:775,2));
pvcR1 = table2array(pvc13(300:450,2))-table2array(pvc10(300:450,2));
pvcR1 = pvcR1-mean(pvcStdDiff);
pvcR1 = pvcR1.*pvcR1;
pvcR1 = pvcR1./mean(pvcStdDiff);
%}


% sum(pvc0.Var2)
% sum(pvc1.Var2)
% sum(pvc2.Var2)
% sum(pvc3.Var2)
% sum(pvc4.Var2)
% sum(coeff(:,1))

%{
plot(polyp0.Var1,polyp0.Var2)
%plot(polyp1.Var1,polyp1.Var2)
%plot(polyp2.Var1,polyp2.Var2,'x')
plot(polyp3.Var1,polyp3.Var2)
plot(polyp4.Var1,polyp4.Var2)
plot(polyp5.Var1,polyp5.Var2)
plot(polyp6.Var1,polyp6.Var2)
plot(polyp7.Var1,polyp7.Var2)
plot(polyp8.Var1,polyp8.Var2)
plot(polyp9.Var1,polyp9.Var2)
plot(polyp10.Var1,polyp10.Var2)
plot(polyp11.Var1,polyp11.Var2)
plot(polyp12.Var1,polyp12.Var2)
plot(polyp13.Var1,polyp13.Var2)
plot(polyp14.Var1,polyp14.Var2)
plot(polyp15.Var1,polyp15.Var2)
plot(polyp16.Var1,polyp16.Var2)
plot(polyp17.Var1,polyp17.Var2)
plot(polyp18.Var1,polyp18.Var2)
%plot(polyp19.Var1,polyp19.Var2,'x')
plot(polyp20.Var1,polyp20.Var2)
plot(polyp21.Var1,polyp21.Var2)
plot(polyp22.Var1,polyp22.Var2)

plot(polyp23.Var1,polyp23.Var2)
%plot(polyp24.Var1,polyp24.Var2,'x')
%plot(polyp25.Var1,polyp25.Var2,'x')
%plot(polyp26.Var1,polyp26.Var2,'x')
%plot(polyp27.Var1,polyp27.Var2,'x')
%}



%plot(polyet0.Var1,polyet0.Var2)
%plot(polyet1.Var1,polyet1.Var2)
%plot(polyet3.Var1,polyet3.Var2)
%plot(polyet4.Var1,polyet4.Var2)
%plot(polyet5.Var1,polyet5.Var2)
%plot(polyet5.Var1,polyet6.Var2)
plot(polyet5.Var1,polyet7.Var2)
plot(polyet5.Var1,polyet8.Var2)
plot(polyet5.Var1,polyet9.Var2)
plot(polyet5.Var1,polyet10.Var2)
plot(polyet5.Var1,polyet11.Var2)
plot(polyet5.Var1,polyet12.Var2)
plot(polyet5.Var1,polyet13.Var2)
plot(polyet5.Var1,polyet14.Var2)
plot(polyet5.Var1,polyet15.Var2)
plot(polyet5.Var1,polyet16.Var2)
plot(polyet5.Var1,polyet17.Var2)
plot(polyet5.Var1,polyet18.Var2)
plot(polyet5.Var1,polyet19.Var2)
plot(polyet5.Var1,polyet20.Var2)
plot(polyet5.Var1,polyet21.Var2)
plot(polyet5.Var1,polyet22.Var2)
plot(polyet5.Var1,polyet23.Var2)
plot(polyet5.Var1,polyet24.Var2)
plot(polyet5.Var1,polyet25.Var2)
plot(polyet5.Var1,polyet26.Var2)
plot(polyet5.Var1,polyet27.Var2)


%legend
xlabel('wavenumber/cm-1');
ylabel('absorption ratio');