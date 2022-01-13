clear all
close all
data1 = readtable('a_data.xlsx');
data1.diagnosis = categorical(data1.diagnosis);

y=data1.diagnosis;

%ATTRIBUTES FROM 181-200

%NOMINAL( CATEGORICAL ) ATTRIBUTES
pk = kruskalwallis(data1.HO,y,'off');

%LINEAR(CONTINOUS) ATTRIBUTES
[table,chi2,p] = crosstab(data1.HA,y);
[table,chi2,p1] = crosstab(data1.HB,y);
[table,chi2,p2] = crosstab(data1.HC,y);
[table,chi2,p3] = crosstab(data1.HD,y);
[table,chi2,p4] = crosstab(data1.HE,y);
[table,chi2,p5] = crosstab(data1.HF,y);
[table,chi2,p6] = crosstab(data1.HG,y);
[table,chi2,p7] = crosstab(data1.HH,y);
[table,chi2,p8] = crosstab(data1.HI,y);
[table,chi2,p9] = crosstab(data1.HJ,y);
[table,chi2,p10] = crosstab(data1.HK,y);
[table,chi2,p11] = crosstab(data1.HL,y);
[table,chi2,p12] = crosstab(data1.HM,y);
[table,chi2,p13] = crosstab(data1.HN,y);
[table,chi2,p14] = crosstab(data1.HP,y);
[table,chi2,p15] = crosstab(data1.HR,y);
[table,chi2,p16] = crosstab(data1.HS,y);
[table,chi2,p17] = crosstab(data1.HT,y);
[table,chi2,p18] = crosstab(data1.HU,y);
