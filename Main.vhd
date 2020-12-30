LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY Main IS
	PORT (	
	        inputt	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0) ;
		      sel	: IN 	STD_LOGIC;
		      result : OUT 	STD_LOGIC
		       );
END Main ;

ARCHITECTURE ds_Main OF Main IS
	SIGNAL Decoder_res:STD_LOGIC_VECTOR(3 DOWNTO 0);
	
	SIGNAL ml1_res:STD_LOGIC;
	SIGNAL ml2_res:STD_LOGIC;
	
BEGIN
     
     d:entity work.Docoder2to4(df_Docoder2to4)
          PORT MAP(
              input=>inputt,
              result=>Decoder_res
                  );
      m1:entity work.multi2to1_Onebit(df_multi2to1_Onebit)
          PORT MAP(
                  input0=>Decoder_res(0),
                  input1=>Decoder_res(1),
                  s=>sel,
                  f=>ml1_res
          );
          
      m2:entity work.multi2to1_Onebit(df_multi2to1_Onebit)
          PORT MAP(
                  input0=>Decoder_res(2),
                  input1=>Decoder_res(3),
                  s=>sel,
                  f=>ml2_res
          );
          
    result <= ml1_res OR ml2_res;
      
END ds_Main ;