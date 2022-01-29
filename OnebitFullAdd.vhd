library ieee;
use ieee.std_logic_1164.all;

entity OnebitFullAdd is
	port ( a, b, cin : in std_logic;
	sum, cout: out std_logic);
end entity;


architecture full_add_arch of  OnebitFullAdd is
	signal p,q,r,s : std_logic;
	component half_adder
		port(a,b: in std_logic; halfadd: out std_logic_vector(1 downto 0));
	end component;

	component gate_and
		port(a,b: in std_logic; c: out std_logic);
	end component;
begin

	full_adder_inst0: half_adder port map(a=>a,b=>b,halfadd(0)=>q,halfadd(1)=>p);
	full_adder_inst1: half_adder port map(a=>q,b=>cin,halfadd(0)=>sum,halfadd(1)=>r);
	full_adder_inst2: half_adder port map(a=>p,b=>r,halfadd(0)=>cout,halfadd(1)=>s);
	
	
end architecture;