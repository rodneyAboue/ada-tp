with Text_Io;
use Text_Io;

procedure Lire is 
   i : Integer;  
   package integer_io is new Text_Io.Integer_io(Integer);
   use integer_io;
begin
   Put("saisir un nombre : ");
   Get(i);
   Put(i);
end Lire;