with Text_IO; 
use Text_IO;

procedure Tictac is
   task Tic;
   task Tac;

   
   compteur : Integer :=0;
   
   package Integer_io is new Text_Io.Integer_Io(Integer);
    use Integer_io;
   
   task body Tic is
   begin
      Put_Line ("tache tic");
      compteur:=compteur+1;
      Put_Line ("tic valeur du compteur: " & Integer'image(compteur));
   end Tic;
   
   task body Tac is
   begin
      Put_Line ("tache tac");
      compteur:=compteur+1;
      Put_Line ("tac valeur du compteur: " & Integer'image(compteur));
   end Tac;
   
begin
  null;
end Tictac;
