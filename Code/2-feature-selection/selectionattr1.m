clear all
close all
data1 = readtable('a_data.xlsx');
data1.diagnosis = categorical(data1.diagnosis);

y=data1.diagnosis;

%ATTRIBUTES FROM 161-180

%NOMINAL( CATEGORICAL ) ATTRIBUTES
pk = kruskalwallis(data1.GH,y,'off');

%LINEAR(CONTINOUS) ATTRIBUTES
[table,chi2,p] = crosstab(data1.GD,y);
[table,chi2,p1] = crosstab(data1.GE,y);
[table,chi2,p2] = crosstab(data1.GF,y);
[table,chi2,p3] = crosstab(data1.GG,y);
[table,chi2,p4] = crosstab(data1.GI,y);
[table,chi2,p5] = crosstab(data1.GK,y);
[table,chi2,p6] = crosstab(data1.GL,y);
[table,chi2,p7] = crosstab(data1.GM,y);
[table,chi2,p8] = crosstab(data1.GN,y);
[table,chi2,p9] = crosstab(data1.GO,y);
[table,chi2,p10] = crosstab(data1.GP,y);
[table,chi2,p11] = crosstab(data1.GR,y);
[table,chi2,p12] = crosstab(data1.GS,y);
[table,chi2,p13] = crosstab(data1.GT,y);
[table,chi2,p14] = crosstab(data1.GU,y);
[table,chi2,p15] = crosstab(data1.GV,y);
[table,chi2,p16] = crosstab(data1.GY,y);
[table,chi2,p17] = crosstab(data1.GZ,y);
[table,chi2,p18] = crosstab(data1.GJ,y);