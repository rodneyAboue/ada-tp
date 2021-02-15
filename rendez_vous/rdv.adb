with Text_IO; 
use Text_IO;

procedure rdv is
   task type memoire is 
        entry ajouter(num : in integer);
        entry soustraire(num : in integer);
        entry consulter(num : out integer);
   end memoire;

   
    
   
   task body memoire is
        Cpt : Integer := 0;
   begin
    loop
         select 
            accept ajouter(num : in integer) do
             Cpt:= Cpt + num;
            end ajouter;
         or   
            accept soustraire(num : in integer) do
             Cpt:= Cpt - num;
            end soustraire;
        or
            accept consulter(num : out integer) do
             num :=Cpt;
            end consulter;
        or terminate;
        
        end select;
 
     end loop;   
    end memoire; 
   Val : Integer;
   M : array (1 .. 10) of memoire;  
begin
 for i in 1..10 loop
   M(i).Ajouter(10);
   M(i).Soustraire(2);
   M(i).Consulter(Val);
   Put_Line("Val " & integer'image(val));
   New_Line; 
   end loop;
end rdv;
