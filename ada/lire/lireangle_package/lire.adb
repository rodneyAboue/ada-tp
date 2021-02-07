with Text_Io;
use Text_Io;

with angles;
use angles;
procedure Lire is 
    monangle : angle_degre ; 
begin

   Put("saisir une angle : ");
   angle_degre_io.Get(monangle);
   Put("Angle°:");
   angle_degre_io.Put(monangle);
end Lire;

