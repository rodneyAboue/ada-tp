with Text_IO; 
use Text_IO;

procedure Tictac is
   task Tic;
   task Tac;

   task Mutex is
      entry P; 
      entry V; 
   end Mutex;	
   
   Cpt : Integer := 0; 
   
   package Integerio is new Text_Io.Integer_Io(Integer);
   use Integerio;
   
   task body Tic is
   begin
    loop
   	     Mutex.P;
         Cpt:=Cpt+1;
         Put("tic ");
         Put(Cpt);
         New_Line;
         delay 1.0;
         Mutex.V;
         
     end loop;   
    end Tic;
   
   task body Tac is
   begin
    loop
      	 Mutex.P;
         Cpt:=Cpt+1;
         Put("tac ");
         Put(Cpt);
         New_Line;
         delay 1.0;
         Mutex.V;
   
    end loop;
   end Tac;
   
   task body Mutex is
   begin
      loop
         accept P;  
            
         accept V; 
      end loop;
   end Mutex;
  
   
begin
loop 
   Put_line ("main");
    delay 1.0;
end loop;
end Tictac;
