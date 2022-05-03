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

polyp0a = table2array(polyp0);
polyp1a = table2array(polyp1);
polyp2a = table2array(polyp2);
polyp3a = table2array(polyp3);
polyp4a = table2array(polyp4);
polyp5a = table2array(polyp5);
polyp6a = table2array(polyp6);
polyp7a = table2array(polyp7);
polyp8a = table2array(polyp8);
polyp9a = table2array(polyp9);
polyp10a = table2array(polyp10);
polyp11a = table2array(polyp11);
polyp12a = table2array(polyp12);
polyp13a = table2array(polyp13);
polyp14a = table2array(polyp14);
polyp15a = table2array(polyp15);
polyp16a = table2array(polyp16);
polyp17a = table2array(polyp17);
polyp18a = table2array(polyp18);
polyp19a = table2array(polyp19);
polyp20a = table2array(polyp20);
polyp21a = table2array(polyp21);
polyp22a = table2array(polyp22);
polyp23a = table2array(polyp23);
polyp24a = table2array(polyp24);
polyp25a = table2array(polyp25);
polyp26a = table2array(polyp26);
polyp27a = table2array(polyp27);

polypA = [polyp7a(:,2) polyp8a(:,2) polyp9a(:,2) polyp10a(:,2) polyp11a(:,2) polyp12a(:,2) polyp13a(:,2) polyp14a(:,2) polyp15a(:,2) polyp16a(:,2) polyp17a(:,2) polyp18a(:,2) polyp20a(:,2) polyp21a(:,2) polyp22a(:,2) polyp23a(:,2) polyp24a(:,2) polyp25a(:,2) polyp26a(:,2) polyp27a(:,2)];
[coeff, score, latent, tsquared, explained] = pca(polypA');
explained
score
tsquared
g = kmeans(score(:,1:2),2);
Xcentred = score*coeff';

h = 0.02;
[X1,X2] = meshgrid(min(score(:,1)):h:max(score(:,2)),(min(score(:,2)):h:max(score(:,2))));
%[~,SVMscore] = predict(mdl,[X1(:),X2(:)]);
%scoreGrid = reshape(SVMscore(:,2),size(X1));
[idx,C, sumd, D] = kmeans(score,2,'replicates',5);

hold on
gscatter(score(:,1),score(:,2),idx, 'rb');
%{plot(C(:,1),C(:,2),'kx',...'MarkerSize',15,'LineWidth',1)
%}

sumd