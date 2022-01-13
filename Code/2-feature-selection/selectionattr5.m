clear all
close all
data1 = readtable('a_data.xlsx');
data1.diagnosis = categorical(data1.diagnosis);

y=data1.diagnosis;

%ATTRIBUTES FROM 241-260

%NOMINAL( CATEGORICAL ) ATTRIBUTES
pk = kruskalwallis(data1.KF,y,'off');

%LINEAR(CONTINOUS) ATTRIBUTES
[table,chi2,p] = crosstab(data1.JO,y);
[table,chi2,p1] = crosstab(data1.JP,y);
[table,chi2,p2] = crosstab(data1.JR,y);
[table,chi2,p3] = crosstab(data1.JS,y);
[table,chi2,p4] = crosstab(data1.JT,y);
[table,chi2,p5] = crosstab(data1.JU,y);
[table,chi2,p6] = crosstab(data1.JV,y);
[table,chi2,p7] = crosstab(data1.JY,y);
[table,chi2,p8] = crosstab(data1.JZ,y);
[table,chi2,p9] = crosstab(data1.KA,y);
[table,chi2,p10] = crosstab(data1.KB,y);
[table,chi2,p11] = crosstab(data1.KC,y);
[table,chi2,p12] = crosstab(data1.KD,y);
[table,chi2,p13] = crosstab(data1.KE,y);
[table,chi2,p14] = crosstab(data1.KG,y);
[table,chi2,p15] = crosstab(data1.KH,y);
[table,chi2,p16] = crosstab(data1.KI,y);
[table,chi2,p17] = crosstab(data1.KJ,y);
[table,chi2,p18] = crosstab(data1.KK,y);


