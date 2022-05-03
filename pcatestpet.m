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

pet0a = table2array(polyet0);
pet1a = table2array(polyet1);
pet2a = table2array(polyet2);
pet3a = table2array(polyet3);
pet4a = table2array(polyet4);
pet5a = table2array(polyet5);
pet6a = table2array(polyet6);
pet7a = table2array(polyet7);
pet8a = table2array(polyet8);
pet9a = table2array(polyet9);
pet10a = table2array(polyet10);
pet11a = table2array(polyet11);
pet12a = table2array(polyet12);
pet13a = table2array(polyet13);
pet14a = table2array(polyet14);
pet15a = table2array(polyet15);
pet16a = table2array(polyet16);
pet17a = table2array(polyet17);
pet18a = table2array(polyet18);
pet19a = table2array(polyet19);
pet20a = table2array(polyet20);
pet21a = table2array(polyet21);
pet22a = table2array(polyet22);
pet23a = table2array(polyet23);
pet24a = table2array(polyet24);
pet25a = table2array(polyet25);
pet26a = table2array(polyet26);
pet27a = table2array(polyet27);

polypA = [pet0a(:,2) pet1a(:,2) pet2a(:,2) pet3a(:,2) pet4a(:,2) pet5a(:,2) pet6a(:,2) pet7a(:,2) pet8a(:,2) pet9a(:,2) pet10a(:,2) pet11a(:,2) pet12a(:,2) pet13a(:,2) pet14a(:,2) pet15a(:,2) pet16a(:,2) pet17a(:,2) pet18a(:,2) pet19a(:,2) pet20a(:,2) pet21a(:,2) pet22a(:,2) pet23a(:,2) pet24a(:,2) pet25a(:,2) pet26a(:,2) pet27a(:,2)];
[coeff, score, latent, tsquared, explained] = pca(polypA');
explained
score
tsquared
g = kmeans(score(:,1:2),2);
Xcentred = score*coeff';

[idx,C, dsum] = kmeans(score,2,'replicates',5);

gscatter(score(:,1),score(:,2),idx, 'rb');