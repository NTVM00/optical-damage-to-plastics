pvc5 = readtable("PVC_2_.0.txt");
pvc6 = readtable("PVC_2_.1.txt");
pvc7 = readtable("PVC_2_.3.txt");
pvc8 = readtable("PVC_3_.0.txt");
pvc9 = readtable("PVC_3_.1.txt");
pvc10 = readtable("PVC_3_.2.txt");
pvc11 = readtable("PVC_3_.3.txt");
pvc12 = readtable("PVC_3_.4.txt");
pvc13 = readtable("PVC_2_.2.txt");

pvc5a = table2array(pvc5);
pvc6a = table2array(pvc6);
pvc7a = table2array(pvc7);
pvc8a = table2array(pvc8);
pvc9a = table2array(pvc9);
pvc10a = table2array(pvc10);
pvc11a = table2array(pvc11);
pvc12a = table2array(pvc12);
pvc13a = table2array(pvc13);

pvcA = [pvc5a(:,2) pvc6a(:,2) pvc7a(:,2) pvc8a(:,2) pvc9a(:,2) pvc10a(:,2) pvc11a(:,2) pvc12a(:,2) pvc13a(:,2)];
[coeff, score, latent, tsquared, explained] = pca(pvcA');
explained;
score;
tsquared;
g = kmeans(score(:,1:2),2);
Xcentred = score*coeff';

irradiated = [true true false false false false false false false]';
svmdata = [score(:,1) score(:,2)];
mdl = fitcsvm(svmdata,irradiated,'KernelScale','auto','Standardize',true);
mdl;
%gscatter(score(:,1),score(:,2),irradiated);
h = 0.02;
[X1,X2] = meshgrid(min(score(:,1)):h:max(score(:,2)),(min(score(:,2)):h:max(score(:,2))));
[~,SVMscore] = predict(mdl,[X1(:),X2(:)]);
scoreGrid = reshape(SVMscore(:,2),size(X1));
[idx,C, sumd] = kmeans(score,2,'replicates',5);
C;

%plot(pvc5.Var1,pvcA(:,1))
%bar(explained)
%xlabel('principal component');
%ylabel('% explained');


hold on
%plot(score(:,1),score(:,2));
gscatter(score(:,1),score(:,2),idx, 'br');
%C = contour(X1,X2,scoreGrid,3);