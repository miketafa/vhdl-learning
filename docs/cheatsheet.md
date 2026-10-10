# VHDL Beginner Cheat Sheet

## 1. Basic entity and architecture

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity my_entity is
    port (
        a : in std_logic;
        b : in std_logic;
        y : out std_logic
    );
end entity my_entity;

architecture rtl of my_entity is
begin
    y <= a and b;
end architecture rtl;
```

## 2. Common types

```vhdl
signal bit_sig : std_logic;
signal bus : std_logic_vector(7 downto 0);
signal count : unsigned(3 downto 0);
signal signed_count : signed(3 downto 0);
```

- `std_logic` = one bit
- `std_logic_vector` = multiple bits, mostly bit-level operations
- `unsigned` = numeric bit vector treated as unsigned number
- `signed` = numeric bit vector treated as signed number

## 3. If / else

```vhdl
process(a, b)
begin
    if a = '1' then
        y <= b;
    else
        y <= '0';
    end if;
end process;
```

## 4. Case statement

```vhdl
case sel is
    when "00" => y <= a;
    when "01" => y <= b;
    when others => y <= '0';
end case;
```

## 5. Clocked process

```vhdl
process(clk)
begin
    if rising_edge(clk) then
        q <= d;
    end if;
end process;
```

This is the standard pattern for flip-flops and counters.

## 6. Testbench skeleton

```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity tb_example is
end entity;

architecture sim of tb_example is
    signal a, b, y : std_logic;
begin
    uut: entity work.my_entity
        port map (
            a => a,
            b => b,
            y => y
        );

    process
    begin
        a <= '0'; b <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; wait for 10 ns;
        wait;
    end process;
end architecture sim;
```

## 7. Basic simulation commands

```bash
ghdl -a file.vhd
ghdl -a tb_file.vhd
ghdl -e tb_file
ghdl -r tb_file --wave=wave.ghw
gtkwave wave.ghw
```

## 8. Common beginner mistakes

- Forgetting `library ieee;` and `use ieee.std_logic_1164.all;`
- Using `=` and `<=` incorrectly
- Mixing bit vectors and integer logic too early
- Writing large projects before learning clocked logic

## 9. Beginner learning priorities

Learn these first:

1. entity / architecture
2. std_logic / std_logic_vector
3. process
4. rising_edge(clk)
5. if / else
6. case
7. testbenches
8. counters

## 10. Best beginner projects

- AND gate
- OR gate
- 2-to-1 multiplexer
- 4-bit counter
- D flip-flop
- 7-segment decoder
- traffic light state machine
