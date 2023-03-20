-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Mar 20 05:08:49 2023
-- Host        : ubuntu running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ uart_Debounce_Switch_0_0_sim_netlist.vhdl
-- Design      : uart_Debounce_Switch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debounce_Switch is
  port (
    o_Switch : out STD_LOGIC;
    i_Clk : in STD_LOGIC;
    i_Switch : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debounce_Switch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debounce_Switch is
  signal \^o_switch\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \r_Count[0]_i_3_n_0\ : STD_LOGIC;
  signal \r_Count[0]_i_4_n_0\ : STD_LOGIC;
  signal \r_Count[0]_i_5_n_0\ : STD_LOGIC;
  signal r_Count_reg : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal \r_Count_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \r_Count_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \r_Count_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \r_Count_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \r_Count_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \r_Count_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \r_Count_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \r_Count_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r_Count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r_Count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \r_Count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \r_Count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r_Count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r_Count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r_State_i_1_n_0 : STD_LOGIC;
  signal r_State_i_2_n_0 : STD_LOGIC;
  signal r_State_i_3_n_0 : STD_LOGIC;
  signal r_State_i_4_n_0 : STD_LOGIC;
  signal r_State_i_5_n_0 : STD_LOGIC;
  signal \NLW_r_Count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_r_Count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \r_Count[0]_i_4\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r_Count_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \r_Count_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_Count_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_Count_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \r_Count_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM of r_State_i_3 : label is "soft_lutpair0";
begin
  o_Switch <= \^o_switch\;
\r_Count[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFAFFFFEAEAFF"
    )
        port map (
      I0 => \r_Count[0]_i_3_n_0\,
      I1 => r_State_i_4_n_0,
      I2 => r_State_i_2_n_0,
      I3 => i_Switch,
      I4 => \^o_switch\,
      I5 => \r_Count[0]_i_4_n_0\,
      O => p_0_in
    );
\r_Count[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r_Count_reg(14),
      I1 => r_Count_reg(15),
      I2 => r_Count_reg(16),
      I3 => r_Count_reg(17),
      I4 => r_Count_reg(13),
      O => \r_Count[0]_i_3_n_0\
    );
\r_Count[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => r_Count_reg(4),
      I1 => r_Count_reg(5),
      I2 => r_Count_reg(6),
      I3 => r_Count_reg(7),
      O => \r_Count[0]_i_4_n_0\
    );
\r_Count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_Count_reg(0),
      O => \r_Count[0]_i_5_n_0\
    );
\r_Count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[0]_i_2_n_7\,
      Q => r_Count_reg(0),
      R => p_0_in
    );
\r_Count_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r_Count_reg[0]_i_2_n_0\,
      CO(2) => \r_Count_reg[0]_i_2_n_1\,
      CO(1) => \r_Count_reg[0]_i_2_n_2\,
      CO(0) => \r_Count_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \r_Count_reg[0]_i_2_n_4\,
      O(2) => \r_Count_reg[0]_i_2_n_5\,
      O(1) => \r_Count_reg[0]_i_2_n_6\,
      O(0) => \r_Count_reg[0]_i_2_n_7\,
      S(3 downto 1) => r_Count_reg(3 downto 1),
      S(0) => \r_Count[0]_i_5_n_0\
    );
\r_Count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[8]_i_1_n_5\,
      Q => r_Count_reg(10),
      R => p_0_in
    );
\r_Count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[8]_i_1_n_4\,
      Q => r_Count_reg(11),
      R => p_0_in
    );
\r_Count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[12]_i_1_n_7\,
      Q => r_Count_reg(12),
      R => p_0_in
    );
\r_Count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[8]_i_1_n_0\,
      CO(3) => \r_Count_reg[12]_i_1_n_0\,
      CO(2) => \r_Count_reg[12]_i_1_n_1\,
      CO(1) => \r_Count_reg[12]_i_1_n_2\,
      CO(0) => \r_Count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Count_reg[12]_i_1_n_4\,
      O(2) => \r_Count_reg[12]_i_1_n_5\,
      O(1) => \r_Count_reg[12]_i_1_n_6\,
      O(0) => \r_Count_reg[12]_i_1_n_7\,
      S(3 downto 0) => r_Count_reg(15 downto 12)
    );
\r_Count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[12]_i_1_n_6\,
      Q => r_Count_reg(13),
      R => p_0_in
    );
\r_Count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[12]_i_1_n_5\,
      Q => r_Count_reg(14),
      R => p_0_in
    );
\r_Count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[12]_i_1_n_4\,
      Q => r_Count_reg(15),
      R => p_0_in
    );
\r_Count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[16]_i_1_n_7\,
      Q => r_Count_reg(16),
      R => p_0_in
    );
\r_Count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[12]_i_1_n_0\,
      CO(3 downto 1) => \NLW_r_Count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \r_Count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_r_Count_reg[16]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \r_Count_reg[16]_i_1_n_6\,
      O(0) => \r_Count_reg[16]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => r_Count_reg(17 downto 16)
    );
\r_Count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[16]_i_1_n_6\,
      Q => r_Count_reg(17),
      R => p_0_in
    );
\r_Count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[0]_i_2_n_6\,
      Q => r_Count_reg(1),
      R => p_0_in
    );
\r_Count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[0]_i_2_n_5\,
      Q => r_Count_reg(2),
      R => p_0_in
    );
\r_Count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[0]_i_2_n_4\,
      Q => r_Count_reg(3),
      R => p_0_in
    );
\r_Count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[4]_i_1_n_7\,
      Q => r_Count_reg(4),
      R => p_0_in
    );
\r_Count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[0]_i_2_n_0\,
      CO(3) => \r_Count_reg[4]_i_1_n_0\,
      CO(2) => \r_Count_reg[4]_i_1_n_1\,
      CO(1) => \r_Count_reg[4]_i_1_n_2\,
      CO(0) => \r_Count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Count_reg[4]_i_1_n_4\,
      O(2) => \r_Count_reg[4]_i_1_n_5\,
      O(1) => \r_Count_reg[4]_i_1_n_6\,
      O(0) => \r_Count_reg[4]_i_1_n_7\,
      S(3 downto 0) => r_Count_reg(7 downto 4)
    );
\r_Count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[4]_i_1_n_6\,
      Q => r_Count_reg(5),
      R => p_0_in
    );
\r_Count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[4]_i_1_n_5\,
      Q => r_Count_reg(6),
      R => p_0_in
    );
\r_Count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[4]_i_1_n_4\,
      Q => r_Count_reg(7),
      R => p_0_in
    );
\r_Count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[8]_i_1_n_7\,
      Q => r_Count_reg(8),
      R => p_0_in
    );
\r_Count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_Count_reg[4]_i_1_n_0\,
      CO(3) => \r_Count_reg[8]_i_1_n_0\,
      CO(2) => \r_Count_reg[8]_i_1_n_1\,
      CO(1) => \r_Count_reg[8]_i_1_n_2\,
      CO(0) => \r_Count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_Count_reg[8]_i_1_n_4\,
      O(2) => \r_Count_reg[8]_i_1_n_5\,
      O(1) => \r_Count_reg[8]_i_1_n_6\,
      O(0) => \r_Count_reg[8]_i_1_n_7\,
      S(3 downto 0) => r_Count_reg(11 downto 8)
    );
\r_Count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => \r_Count_reg[8]_i_1_n_6\,
      Q => r_Count_reg(9),
      R => p_0_in
    );
r_State_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => i_Switch,
      I1 => r_State_i_2_n_0,
      I2 => r_State_i_3_n_0,
      I3 => r_State_i_4_n_0,
      I4 => r_State_i_5_n_0,
      I5 => \^o_switch\,
      O => r_State_i_1_n_0
    );
r_State_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => r_Count_reg(14),
      I1 => r_Count_reg(15),
      I2 => r_Count_reg(16),
      I3 => r_Count_reg(17),
      I4 => r_Count_reg(12),
      O => r_State_i_2_n_0
    );
r_State_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => r_Count_reg(6),
      I1 => r_Count_reg(5),
      I2 => r_Count_reg(0),
      O => r_State_i_3_n_0
    );
r_State_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => r_Count_reg(9),
      I1 => r_Count_reg(8),
      I2 => r_Count_reg(11),
      I3 => r_Count_reg(10),
      O => r_State_i_4_n_0
    );
r_State_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => r_Count_reg(4),
      I1 => r_Count_reg(3),
      I2 => r_Count_reg(1),
      I3 => r_Count_reg(2),
      I4 => r_Count_reg(13),
      I5 => r_Count_reg(7),
      O => r_State_i_5_n_0
    );
r_State_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => '1',
      D => r_State_i_1_n_0,
      Q => \^o_switch\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    i_Clk : in STD_LOGIC;
    i_Switch : in STD_LOGIC;
    o_Switch : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "uart_Debounce_Switch_0_0,Debounce_Switch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Debounce_Switch,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of i_Clk : signal is "xilinx.com:signal:clock:1.0 i_Clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of i_Clk : signal is "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN uart_i_Clk_0, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Debounce_Switch
     port map (
      i_Clk => i_Clk,
      i_Switch => i_Switch,
      o_Switch => o_Switch
    );
end STRUCTURE;
