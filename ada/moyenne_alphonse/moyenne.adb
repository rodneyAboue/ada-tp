with Text_Io;
use Text_Io;

procedure Moyenne is

    type chiffre is new Float range 0.0 .. 20.0;
    c : Float:= 0.0;
    somme : Float := 0.0;
    chiffreMax : chiffre := 0.0;
    chiffreMin : chiffre := 0.0;
    calcul: Float := 0.0;
    valeur : chiffre;

    package chiffre_Io  is new Text_Io.Float_Io(chiffre);
    use chiffre_Io;
    package float_io is new Text_Io.Float_Io(Float);
    use float_io;

    begin
        Put_Line("Saisissez un chiffre");
        new_line;
        Get(valeur);
        chiffreMin:=valeur;
        chiffreMax :=valeur;
        while valeur /= 0.0 loop  
            c:=c+1.0;
            somme := somme+Float(valeur);
            Put_Line("Saisissez un chiffre");
            new_line;
            Get(valeur);
            if valeur > chiffreMax 
                then chiffreMax :=valeur;
            end if;

            if valeur < chiffreMin and valeur > 0.0
                then chiffreMin :=valeur;
            end if;
        end loop;
        calcul:= somme/c;
        Put_Line("Resultat: " & Float'image(calcul));
        Put_Line("chiffreMax: " & chiffre'image(chiffreMax));
        Put_Line("chiffreMin: " & chiffre'image(chiffreMin));

end Moyenne;