library ieee;
use ieee.std_logic_1164.all;
entity half_adder is
	port(a,b: in std_logic; halfadd: out std_logic_vector(1 downto 0));
end entity;

architecture halfadder_arch of half_adder is
	signal p,q,r,s : std_logic;
	component gate_not
		port(a: in std_logic; b: out std_logic);
	end component;

	component gate_and
		port(a,b: in std_logic; c: out std_logic);
	end component;
	
	component gate_or
		port(a,b: in std_logic; c: out std_logic);
	end component;
begin

	halfadder_inst0: gate_and port map(a=>a,b=>b,c=>halfadd(1));
	halfadder_inst1: gate_not port map(a=>a,b=>p);
	halfadder_inst2: gate_not port map(a=>b,b=>q);
	halfadder_inst3: gate_and port map(a=>a,b=>q,c=>r);
	halfadder_inst4: gate_and port map(a=>b,b=>p,c=>s);
	halfadder_inst5: gate_or port map(a=>r,b=>s,c=>halfadd(0));
	
end architecture;