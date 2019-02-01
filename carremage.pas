program carremage;
uses crt;

CONST	TAILLE=5;
VAR		i,j, xcourant, ycourant,numerocase: INTEGER;
		T:ARRAY[1..TAILLE,1..TAILLE] of INTEGER;
BEGIN
	clrscr;
	FOR i:=1 TO TAILLE DO
	BEGIN
		FOR j:=1 TO TAILLE DO
		BEGIN
			T[i,j]:=0;
		END;
	END;

	xcourant:=(TAILLE div 2)+1;
	ycourant:=(TAILLE div 2);
	T[xcourant,ycourant]:=1;
	FOR numerocase:=2 TO TAILLE*TAILLE DO
	BEGIN
		ycourant:=ycourant-1;
		xcourant:=xcourant+1;
		IF ycourant<1 THEN
		BEGIN
			ycourant:=TAILLE;
		END;
		IF xcourant>TAILLE THEN
		BEGIN
			xcourant:=1;
		END;

		WHILE T[xcourant,ycourant]<>0 DO
		BEGIN
			ycourant:=ycourant-1;
			xcourant:=xcourant-1;
			IF ycourant<1 THEN
			BEGIN
				ycourant:=TAILLE;
			END;
			IF xcourant<1 THEN
			BEGIN
				xcourant:=TAILLE;
			END;
		END;
		T[xcourant,ycourant]:=numerocase;
	END;

	FOR i:=1 TO TAILLE DO
	BEGIN
		FOR j:=1 TO TAILLE DO
		BEGIN
			write('(',T[j,i],')');
		END;
		writeln();
	END;

	readln;
END.
