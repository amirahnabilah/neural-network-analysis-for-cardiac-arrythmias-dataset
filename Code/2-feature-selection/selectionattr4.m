clear all
close all
data1 = readtable('a_data.xlsx');
data1.diagnosis = categorical(data1.diagnosis);

y=data1.diagnosis;

%ATTRIBUTES FROM 221-240

%NOMINAL( CATEGORICAL ) ATTRIBUTES


%LINEAR(CONTINOUS) ATTRIBUTES
[table,chi2,p] = crosstab(data1.IS,y);
[table,chi2,p1] = crosstab(data1.IT,y);
[table,chi2,p2] = crosstab(data1.IU,y);
[table,chi2,p3] = crosstab(data1.IV,y);
[table,chi2,p4] = crosstab(data1.IY,y);
[table,chi2,p5] = crosstab(data1.IZ,y);
[table,chi2,p6] = crosstab(data1.JA,y);
[table,chi2,p7] = crosstab(data1.JB,y);
[table,chi2,p8] = crosstab(data1.JC,y);
[table,chi2,p9] = crosstab(data1.JD,y);
[table,chi2,p10] = crosstab(data1.JE,y);
[table,chi2,p11] = crosstab(data1.JF,y);
[table,chi2,p12] = crosstab(data1.JG,y);
[table,chi2,p13] = crosstab(data1.JH,y);
[table,chi2,p14] = crosstab(data1.JI,y);
[table,chi2,p15] = crosstab(data1.JJ,y);
[table,chi2,p16] = crosstab(data1.JK,y);
[table,chi2,p17] = crosstab(data1.JL,y);
[table,chi2,p18] = crosstab(data1.JM,y);
[table,chi2,p19] = crosstab(data1.JN,y);
