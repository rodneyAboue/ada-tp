with Text_Io;
use Text_Io;

procedure Lire is 
    type note is new Float range 0.0..20.0;
    note1 : note ;  
    i : integer := 0;
    somme : float :=0.0;
    
    package integer_io is new text_io.Integer_io(integer);
    use note_io ;
	package   float_io is new   text_io.Float_io(float;
    use note_io ;
    package   note_io   is   new   text_io.Float_io(angle);
    use note_io ; 
begin

   Put("saisir une angle : ");
   Get(monangle);
   Put(monangle);
end Lire;

