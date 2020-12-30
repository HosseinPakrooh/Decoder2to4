LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Docoder2to4 IS
	PORT (	
	        input	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		      
		      result 	: OUT 	STD_LOGIC_VECTOR(3 DOWNTO 0) ) ;
END Docoder2to4 ;

ARCHITECTURE df_Docoder2to4 OF Docoder2to4 IS
	SIGNAL Enw : STD_LOGIC_VECTOR(2 DOWNTO 0) ;
BEGIN
	Enw <= '1' & input ;
	WITH Enw SELECT
		result <= "0001" WHEN "100",
		 	   "0010" WHEN "101",
			   "0100" WHEN "110",
			   "1000" WHEN "111",
			   "0000" WHEN OTHERS ;
END df_Docoder2to4 ;

