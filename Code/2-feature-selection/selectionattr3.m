clear all
close all
data1 = readtable('a_data.xlsx');
data1.diagnosis = categorical(data1.diagnosis);

y=data1.diagnosis;

%ATTRIBUTES FROM 201-220

%NOMINAL( CATEGORICAL ) ATTRIBUTES
pk = kruskalwallis(data1.IB,y,'off');

%LINEAR(CONTINOUS) ATTRIBUTES
[table,chi2,p] = crosstab(data1.HV,y);
[table,chi2,p1] = crosstab(data1.HY,y);
[table,chi2,p2] = crosstab(data1.HZ,y);
[table,chi2,p3] = crosstab(data1.IA,y);
[table,chi2,p4] = crosstab(data1.IC,y);
[table,chi2,p5] = crosstab(data1.ID,y);
[table,chi2,p6] = crosstab(data1.IE,y);
[table,chi2,p7] = crosstab(data1.IF,y);
[table,chi2,p8] = crosstab(data1.IG,y);
[table,chi2,p9] = crosstab(data1.IH,y);
[table,chi2,p10] = crosstab(data1.II,y);
[table,chi2,p11] = crosstab(data1.IJ,y);
[table,chi2,p12] = crosstab(data1.IK,y);
[table,chi2,p13] = crosstab(data1.IL,y);
[table,chi2,p14] = crosstab(data1.IM,y);
[table,chi2,p15] = crosstab(data1.IN,y);
[table,chi2,p16] = crosstab(data1.IO,y);
[table,chi2,p17] = crosstab(data1.IP,y);
[table,chi2,p18] = crosstab(data1.IR,y);
