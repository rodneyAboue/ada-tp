with Text_Io;
use Text_Io;

procedure Lire is 
    type angle is new Integer range 0..360;
    monangle : angle ;  
    package   angle_io   is   new   text_io.Integer_io(angle);
    use angle_io ; 
begin

   Put("saisir une angle : ");
   Get(monangle);
   Put(monangle);
end Lire;

