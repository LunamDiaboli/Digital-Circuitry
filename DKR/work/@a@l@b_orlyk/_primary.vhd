library verilog;
use verilog.vl_types.all;
entity ALB_orlyk is
    generic(
        W               : integer := 10
    );
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        A_ALB           : in     vl_logic_vector;
        B_ALB           : in     vl_logic_vector;
        CI              : in     vl_logic;
        ALB_MI          : in     vl_logic_vector(1 downto 0);
        F_ALB           : out    vl_logic_vector;
        CO              : out    vl_logic;
        VO              : out    vl_logic;
        NO              : out    vl_logic;
        ZO              : out    vl_logic
    );
end ALB_orlyk;
