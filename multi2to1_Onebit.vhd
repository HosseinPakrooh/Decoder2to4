LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY multi2to1_Onebit IS
	PORT (
	       input0:IN STD_LOGIC ;
         input1:IN STD_LOGIC ;
         s:IN STD_LOGIC;
		     f: OUT STD_LOGIC   
		     );
END multi2to1_Onebit ;

ARCHITECTURE df_multi2to1_Onebit OF multi2to1_Onebit IS	
BEGIN
        f <= input0 WHEN s = '0' ELSE input1 ;

		     
END df_multi2to1_Onebit ;
