clear all
close all
data1 = readtable('a_data.xlsx');
data1.diagnosis = categorical(data1.diagnosis);

y=data1.diagnosis;

%ATTRIBUTES FROM 261-279

%NOMINAL( CATEGORICAL ) ATTRIBUTES
pk = kruskalwallis(data1.KP,y,'off');
pk1 = kruskalwallis(data1.LC,y,'off');

%LINEAR(CONTINOUS) ATTRIBUTES
[table,chi2,p] = crosstab(data1.KL,y);
[table,chi2,p1] = crosstab(data1.KM,y);
[table,chi2,p2] = crosstab(data1.KN,y);
[table,chi2,p3] = crosstab(data1.KO,y);
[table,chi2,p4] = crosstab(data1.KR,y);
[table,chi2,p5] = crosstab(data1.KS,y);
[table,chi2,p6] = crosstab(data1.KT,y);
[table,chi2,p7] = crosstab(data1.KU,y);
[table,chi2,p8] = crosstab(data1.KV,y);
[table,chi2,p9] = crosstab(data1.KY,y);
[table,chi2,p10] = crosstab(data1.KZ,y);
[table,chi2,p11] = crosstab(data1.LA,y);
[table,chi2,p12] = crosstab(data1.LB,y);
[table,chi2,p13] = crosstab(data1.LD,y);
[table,chi2,p14] = crosstab(data1.LE,y);
[table,chi2,p15] = crosstab(data1.LF,y);
[table,chi2,p16] = crosstab(data1.LG,y);



