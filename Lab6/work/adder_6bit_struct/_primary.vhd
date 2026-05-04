library verilog;
use verilog.vl_types.all;
entity adder_6bit_struct is
    port(
        Ain             : in     vl_logic_vector(5 downto 0);
        Bin             : in     vl_logic_vector(5 downto 0);
        Ci              : in     vl_logic;
        Sout            : out    vl_logic_vector(5 downto 0);
        Co              : out    vl_logic
    );
end adder_6bit_struct;
