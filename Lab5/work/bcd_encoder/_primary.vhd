library verilog;
use verilog.vl_types.all;
entity bcd_encoder is
    port(
        x               : in     vl_logic_vector(9 downto 0);
        q               : out    vl_logic_vector(3 downto 0)
    );
end bcd_encoder;
