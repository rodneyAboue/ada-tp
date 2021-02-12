with Text_Io;
use Text_Io;

procedure elements_dynamique is 

   task type element;

   task body element is
   begin
      loop
         Put_Line("Une tache ...");
         delay 1.0;
      end loop;
   end element;

   type element_ptr is access element;
   Taches : array (1 .. 10) of element_ptr;  

begin
	for i in 1..10 loop	
		Taches(i):=new element;
	end loop;
end elements_dynamique;
