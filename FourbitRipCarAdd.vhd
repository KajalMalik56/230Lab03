library ieee;
use ieee.std_logic_1164.all;


entity FourbitRipCarAdd is
	port ( a, b : in std_logic_vector (3 downto 0);
		cin: in std_logic;
		sum : out std_logic_vector (3 downto 0);
		cout: out std_logic);
end entity;

architecture fourbitadd_arch of FourbitRipCarAdd is
	signal p ,cin1,cin2,cin3 : std_logic;
	component OnebitFullAdd
		port ( a, b, cin : in std_logic;
		sum, cout: out std_logic);
	end component;

	component gate_and
		port(a,b: in std_logic; c: out std_logic);
	end component;
begin

	fourbitaddinst0: OnebitFullAdd port map(a=>a(0),b=>b(0),cin=>cin,sum=>sum(0),cout=>cin1);
	fourbitaddinst1: OnebitFullAdd port map(a=>a(1),b=>b(1),cin=>cin1,sum=>sum(1),cout=>cin2);
	fourbitaddinst2: OnebitFullAdd port map(a=>a(2),b=>b(2),cin=>cin,sum=>sum(2),cout=>cin3);
	fourbitaddinst3: OnebitFullAdd port map(a=>a(3),b=>b(3),cin=>cin,sum=>sum(3),cout=>cout);
	
	
	
	
end architecture;