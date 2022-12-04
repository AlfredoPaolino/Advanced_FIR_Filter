library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FIR is
    port(
        din3k   : in std_logic_vector(7 downto 0);
        din3k1  : in std_logic_vector(7 downto 0);
        din3k2  : in std_logic_vector(7 downto 0);
        vin     : in std_logic;
        rst_n   : in std_logic;
        clk     : in std_logic;
        b0      : in std_logic_vector(7 downto 0);
        b1      : in std_logic_vector(7 downto 0);
        b2      : in std_logic_vector(7 downto 0);
        b3      : in std_logic_vector(7 downto 0);
        b4      : in std_logic_vector(7 downto 0);
        b5      : in std_logic_vector(7 downto 0);
        b6      : in std_logic_vector(7 downto 0);
        b7      : in std_logic_vector(7 downto 0);
        b8      : in std_logic_vector(7 downto 0);
        b9      : in std_logic_vector(7 downto 0);
        b10     : in std_logic_vector(7 downto 0); 
        dout3k  : out std_logic_vector(7 downto 0);
        dout3k1 : out std_logic_vector(7 downto 0);
        dout3k2 : out std_logic_vector(7 downto 0);
        vout : out std_logic
    );
end entity FIR;

architecture struct of FIR is 

    component DFF is
        port(
            din : in std_logic;
            clk : in std_logic;
            rst_n : in std_logic;
            dout : out std_logic
        );
    end component;

    component REG is
        generic(nb : integer := 8);
        port(
            din : in std_logic_vector(nb - 1 downto 0);
            clk : in std_logic;
            rst_n : in std_logic;
            en : in std_logic;
            dout : out std_logic_vector(nb - 1 downto 0)
        );
    end component; 
    
    
    type bit_array8 is array(0 to 10) of std_logic_vector(7 downto 0);
    type bit_array_add9 is array(1 to 10) of std_logic_vector(8 downto 0);
    type bit_array16 is array(0 to 10) of std_logic_vector(15 downto 0);

    type matrix_bit_array8 is array(0 to 2) of bit_array8;
    type matrix_bit_array_add9 is array(0 to 2) of bit_array_add9;
    type matrix_bit_array16 is array(0 to 2) of bit_array16;


    signal reg_to_mul : matrix_bit_array8;
    signal add_to_add : matrix_bit_array8;
    signal add_to_add_ext : matrix_bit_array_add9;
    signal mul_to_pipe : matrix_bit_array8;
    signal pipe_to_add : matrix_bit_array8;
    signal out_mul : matrix_bit_array16;

    signal coefficients : bit_array8;
    signal coefficients_reg : bit_array8;
    signal vin_to_pipe : std_logic;
    signal pipe_to_vout : std_logic;
    begin

        coefficients(0) <= b0;
        coefficients(1) <= b1;
        coefficients(2) <= b2;
        coefficients(3) <= b3;
        coefficients(4) <= b4;
        coefficients(5) <= b5;
        coefficients(6) <= b6;
        coefficients(7) <= b7;
        coefficients(8) <= b8;
        coefficients(9) <= b9;
        coefficients(10) <= b10;    

        load_coeff: for i in 0 to 10 generate
            reg_int: REG
            generic map(nb => 8)    
            port map(din => coefficients(i), clk => clk, en => vin, rst_n => rst_n, dout => coefficients_reg(i));
        end generate;
        
        reg_in3k: REG
        generic map(nb => 8)
        port map(din => din3k, clk => clk, en => vin, rst_n => rst_n, dout => reg_to_mul(0)(0));

        reg_in3k1: REG
        generic map(nb => 8)
        port map(din => din3k1, clk => clk, en => vin, rst_n => rst_n, dout => reg_to_mul(1)(0));

        reg_in3k2: REG
        generic map(nb => 8)
        port map(din => din3k2, clk => clk, en => vin, rst_n => rst_n, dout => reg_to_mul(2)(0));

        reg_vin: DFF
        port map(din => vin, clk => clk, rst_n => rst_n, dout => vin_to_pipe);

        reg_vin_delayed: DFF
        port map(din => vin_to_pipe, clk => clk, rst_n => rst_n, dout => pipe_to_vout);

        reg_vout: DFF
        port map(din => pipe_to_vout, clk => clk, rst_n => rst_n, dout => vout);

        

        unfold_gen: for j in 0 to 2 generate


            out_mul(j)(0) <= std_logic_vector(signed(reg_to_mul(j)(0)) * signed(coefficients_reg(0)));
            mul_to_pipe(j)(0)(7 downto 1) <= out_mul(j)(0)(14 downto 8);
            mul_to_pipe(j)(0)(0) <= '0';

            reg_mul_to_add_pipe0: REG
            generic map(nb => 8)
            port map(din => mul_to_pipe(j)(0), clk => clk, en => vin_to_pipe, rst_n => rst_n, dout => pipe_to_add(j)(0));
            
            add_to_add(j)(0) <= pipe_to_add(j)(0);

            fir_gen: for i in 1 to 10 generate

                reg_int: REG
                generic map(nb => 8)
                port map(din => reg_to_mul(j)(i - 1), clk => clk, en => vin, rst_n => rst_n, dout => reg_to_mul(j)(i));

        
                out_mul(j)(i) <= std_logic_vector(signed(reg_to_mul(j)((i + j) / 3)) * signed(coefficients_reg(i)));
                mul_to_pipe(j)(i)(7 downto 1) <= out_mul(j)(i)(14 downto 8);
                mul_to_pipe(j)(i)(0) <= '0';

            
                reg_mul_to_add_pipe: REG
                generic map(nb => 8)
                port map(din => mul_to_pipe(j)(i), clk => clk, en => vin_to_pipe, rst_n => rst_n, dout => pipe_to_add(j)(i));

                add_to_add_ext(j)(i) <= std_logic_vector(signed(add_to_add(j)(i-1)(7) & add_to_add(j)(i-1)) + signed(pipe_to_add((j - (i mod 3)) mod 3)(i)(7) & pipe_to_add((j - (i mod 3)) mod 3)(i)));
                add_to_add(j)(i) <= add_to_add_ext(j)(i)(7 downto 0);

            end generate;

        end generate;

        reg_out3k: REG
        generic map(nb => 8)
        port map(din => add_to_add(0)(10), clk => clk, en => pipe_to_vout, rst_n => rst_n, dout => dout3k);

        reg_out3k1: REG
        generic map(nb => 8)
        port map(din => add_to_add(1)(10), clk => clk, en => pipe_to_vout, rst_n => rst_n, dout => dout3k1);

        reg_out3k2: REG
        generic map(nb => 8)
        port map(din => add_to_add(2)(10), clk => clk, en => pipe_to_vout, rst_n => rst_n, dout => dout3k2);

end architecture;