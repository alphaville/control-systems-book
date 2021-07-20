s = zpk('s');
G1 = 1 / (s+1);
G2 = 5 / (s+1) / (s+3)^4;
G3 = 1 + s + 0.1/s;
G4 = 1 + s/2;
G5 = s + 2;

G12 = series(G1, G2);
G45 = series(G4, G5);
G123 = parallel(G12, G3);
Gtotal = feedback(G123, G45);
Gtotal = tf(Gtotal);