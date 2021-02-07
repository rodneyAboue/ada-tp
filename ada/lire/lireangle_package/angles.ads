with Text_Io;
use Text_Io;

package angles is 
    PI : constant Float :=3.1456;
    type angle_degre is new Integer range 0..360;
    type angle_radian is new Float range 0.0..2.0*PI;
    
    package   angle_degre_io   is   new   text_io.Integer_io(angle_degre);
    package   angle_radian_io   is   new   text_io.Float_io(angle_radian);
end angles ;

