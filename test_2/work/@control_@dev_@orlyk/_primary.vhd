library verilog;
use verilog.vl_types.all;
entity Control_Dev_Orlyk is
    generic(
        a1              : integer := 0;
        a2              : integer := 1;
        a3              : integer := 2
    );
    port(
        x               : in     vl_logic;
        mi              : out    vl_logic_vector(2 downto 0)
    );
end Control_Dev_Orlyk;
