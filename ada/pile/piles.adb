with Text_Io;
use Text_Io;

package body Piles is
      

   procedure Vider is 
   begin
      Nb := 0;
   end Vider;

   function Est_Vide return Boolean is 
   begin
      return Nb = 0;
   end Est_Vide;

   function Sommet return Element is 
   begin
      if Nb = 0 then
         raise Pile_Vide;
      end if;
      return Donnees(Nb);
   end Sommet;

   procedure Empiler (
         V : in     Element ) is 
   begin
      if Nb = Taille then
         raise Pile_Pleine;
      end if;
      Nb := Nb + 1;
      Donnees(Nb) := V;
   end Empiler;

   procedure Depiler is 
   begin
      if Nb = 0 then
         raise Pile_Vide;
      end if;
      Nb:= Nb - 1;
   end Depiler;


   procedure Inverser is 
   tmp: Element;
   n : Natural;
   begin
   n:=Nb;
      for i in 1..Nb/2 loop
         tmp:=Donnees(i);
         Donnees(i):=Donnees(n);
         Donnees(n):=tmp;
      end loop;
   end Inverser;

   procedure Afficher is 
   e : Element;
   begin
      for i in 1..Nb loop      
         e:=Donnees(i);
         Put(String(e));
      end loop;
   end Afficher;
   
   package Element_io is new Text_Io(Element);
   use Element_io;

end Piles;

