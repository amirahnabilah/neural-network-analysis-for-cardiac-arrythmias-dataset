clear all
close all
data1 = readtable('a_data.xlsx');
data1.diagnosis = categorical(data1.diagnosis);

y=data1.diagnosis;

%ATTRIBUTES FROM 141-160

%NOMIAL( CATEGORICAL ) ATTRIBUTES
pk = kruskalwallis(data1.FH,y,'off');
pk1 = kruskalwallis(data1.FI,y,'off');
pk2 = kruskalwallis(data1.FJ,y,'off');
pk3 = kruskalwallis(data1.FK,y,'off');
pk4 = kruskalwallis(data1.FL,y,'off');
pk5 = kruskalwallis(data1.FM,y,'off');
pk6 = kruskalwallis(data1.FS,y,'off');
pk7 = kruskalwallis(data1.FU,y,'off');
pk8 = kruskalwallis(data1.FV,y,'off');
pk9 = kruskalwallis(data1.FY,y,'off');
pk10 = kruskalwallis(data1.FZ,y,'off');
pk11 = kruskalwallis(data1.GA,y,'off');
pk12 = kruskalwallis(data1.GB,y,'off');

%LINEAR(CONTINOUS) ATTRIBUTES
[table,chi2,p] = crosstab(data1.FG,y);
[table,chi2,p1] = crosstab(data1.FN,y);
[table,chi2,p2] = crosstab(data1.FO,y);
[table,chi2,p3] = crosstab(data1.FP,y);
[table,chi2,p4] = crosstab(data1.FR,y);
[table,chi2,p5] = crosstab(data1.FT,y);
[table,chi2,p6] = crosstab(data1.GC,y);