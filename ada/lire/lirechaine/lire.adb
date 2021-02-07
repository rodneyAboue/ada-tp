with Text_Io;
use Text_Io;

procedure Lire is 
   S : String (1 .. 10);  

begin
   Put("saisir une chaine : ");
   Get(S);
   Put_Line(S);
end Lire;