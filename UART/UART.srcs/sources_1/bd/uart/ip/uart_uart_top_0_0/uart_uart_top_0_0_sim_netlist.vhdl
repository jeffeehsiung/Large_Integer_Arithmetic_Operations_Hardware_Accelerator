-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Thu Mar 23 10:35:42 2023
-- Host        : ubuntu running 64-bit Ubuntu 18.04.6 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /media/jeffee/T7/vivado/UART/UART.srcs/sources_1/bd/uart/ip/uart_uart_top_0_0/uart_uart_top_0_0_sim_netlist.vhdl
-- Design      : uart_uart_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_uart_top_0_0_uart_rx is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_rFSM_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rFSM_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_rFSM_reg[1]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    iClk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_rFSM_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rBuffer_reg[0]\ : in STD_LOGIC;
    \rCnt_reg[4]\ : in STD_LOGIC;
    \rCnt_reg[4]_0\ : in STD_LOGIC;
    \rCnt_reg[0]\ : in STD_LOGIC;
    \rCnt_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_rFSM_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_uart_top_0_0_uart_rx : entity is "uart_rx";
end uart_uart_top_0_0_uart_rx;

architecture STRUCTURE of uart_uart_top_0_0_uart_rx is
  signal \rBit_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[3]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rBit_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt[4]_i_4_n_0\ : STD_LOGIC;
  signal rCnt_Current : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \rCnt_Current[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[11]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1__0_n_0\ : STD_LOGIC;
  signal rFSM_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rFSM_Current[0]_i_2_n_0\ : STD_LOGIC;
  signal \rFSM_Current[0]_i_3_n_0\ : STD_LOGIC;
  signal \rFSM_Current[0]_i_4_n_0\ : STD_LOGIC;
  signal \rFSM_Current[0]_i_5_n_0\ : STD_LOGIC;
  signal \rFSM_Current[2]_i_2_n_0\ : STD_LOGIC;
  signal \rFSM_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rFSM_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal rRx1 : STD_LOGIC;
  signal rRx2 : STD_LOGIC;
  signal rRxData_Current : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rRxData_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rRxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wCnt_Next0_carry__0_n_0\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_1\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_2\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_3\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_4\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_5\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_6\ : STD_LOGIC;
  signal \wCnt_Next0_carry__0_n_7\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_2\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_3\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_5\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_6\ : STD_LOGIC;
  signal \wCnt_Next0_carry__1_n_7\ : STD_LOGIC;
  signal wCnt_Next0_carry_n_0 : STD_LOGIC;
  signal wCnt_Next0_carry_n_1 : STD_LOGIC;
  signal wCnt_Next0_carry_n_2 : STD_LOGIC;
  signal wCnt_Next0_carry_n_3 : STD_LOGIC;
  signal wCnt_Next0_carry_n_4 : STD_LOGIC;
  signal wCnt_Next0_carry_n_5 : STD_LOGIC;
  signal wCnt_Next0_carry_n_6 : STD_LOGIC;
  signal wCnt_Next0_carry_n_7 : STD_LOGIC;
  signal wFSM_Next : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wRxData_Next : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wRxDone : STD_LOGIC;
  signal \NLW_wCnt_Next0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_wCnt_Next0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rBit_Current[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rBuffer[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rBuffer[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rBuffer[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rBuffer[5]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rBuffer[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rBuffer[7]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \rCnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rCnt[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rFSM_Current[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rFSM_Current[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rFSM_Current[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rRxData_Current[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rRxData_Current[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rRxData_Current[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rRxData_Current[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rRxData_Current[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rRxData_Current[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rRxData_Current[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \rRxData_Current[7]_i_2\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of wCnt_Next0_carry : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \wCnt_Next0_carry__1\ : label is 35;
begin
\FSM_onehot_rFSM[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => wRxDone,
      I2 => \FSM_onehot_rFSM_reg[0]\(2),
      I3 => \FSM_onehot_rFSM_reg[0]\(0),
      I4 => \FSM_onehot_rFSM_reg[0]\(3),
      I5 => \FSM_onehot_rFSM_reg[0]_0\,
      O => \FSM_onehot_rFSM_reg[1]\(0)
    );
\FSM_onehot_rFSM[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      O => wRxDone
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0070"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[0]\,
      I1 => \rRxData_Current[7]_i_3_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(2),
      I4 => rFSM_Current(0),
      O => wBit_Next(0)
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000014"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[3]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[0]\,
      I3 => rFSM_Current(0),
      I4 => \rBit_Current[3]_i_3_n_0\,
      O => wBit_Next(1)
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001444"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[3]\,
      I1 => \rBit_Current_reg_n_0_[2]\,
      I2 => \rBit_Current_reg_n_0_[1]\,
      I3 => \rBit_Current_reg_n_0_[0]\,
      I4 => rFSM_Current(0),
      I5 => \rBit_Current[3]_i_3_n_0\,
      O => wBit_Next(2)
    );
\rBit_Current[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => rFSM_Current(2),
      I2 => rFSM_Current(1),
      I3 => \rFSM_Current[0]_i_4_n_0\,
      O => \rBit_Current[3]_i_1_n_0\
    );
\rBit_Current[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111110000000"
    )
        port map (
      I0 => \rBit_Current[3]_i_3_n_0\,
      I1 => rFSM_Current(0),
      I2 => \rBit_Current_reg_n_0_[2]\,
      I3 => \rBit_Current_reg_n_0_[0]\,
      I4 => \rBit_Current_reg_n_0_[1]\,
      I5 => \rBit_Current_reg_n_0_[3]\,
      O => wBit_Next(3)
    );
\rBit_Current[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      O => \rBit_Current[3]_i_3_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rBit_Current[3]_i_1_n_0\,
      D => wBit_Next(0),
      Q => \rBit_Current_reg_n_0_[0]\,
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rBit_Current[3]_i_1_n_0\,
      D => wBit_Next(1),
      Q => \rBit_Current_reg_n_0_[1]\,
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rBit_Current[3]_i_1_n_0\,
      D => wBit_Next(2),
      Q => \rBit_Current_reg_n_0_[2]\,
      R => iRst
    );
\rBit_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rBit_Current[3]_i_1_n_0\,
      D => wBit_Next(3),
      Q => \rBit_Current_reg_n_0_[3]\,
      R => iRst
    );
\rBuffer[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(0),
      O => \FSM_onehot_rFSM_reg[1]_0\(0)
    );
\rBuffer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(1),
      O => \FSM_onehot_rFSM_reg[1]_0\(1)
    );
\rBuffer[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(2),
      O => \FSM_onehot_rFSM_reg[1]_0\(2)
    );
\rBuffer[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(3),
      O => \FSM_onehot_rFSM_reg[1]_0\(3)
    );
\rBuffer[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(4),
      O => \FSM_onehot_rFSM_reg[1]_0\(4)
    );
\rBuffer[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(5),
      O => \FSM_onehot_rFSM_reg[1]_0\(5)
    );
\rBuffer[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(6),
      O => \FSM_onehot_rFSM_reg[1]_0\(6)
    );
\rBuffer[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(1),
      I1 => rRxData_Current(7),
      O => \FSM_onehot_rFSM_reg[1]_0\(7)
    );
\rBuffer[95]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00202020"
    )
        port map (
      I0 => wRxDone,
      I1 => Q(4),
      I2 => \FSM_onehot_rFSM_reg[0]\(1),
      I3 => Q(3),
      I4 => Q(2),
      I5 => \rBuffer_reg[0]\,
      O => E(0)
    );
\rCnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Q(0),
      I1 => \rCnt[4]_i_4_n_0\,
      I2 => \FSM_onehot_rFSM_reg[0]\(0),
      O => D(0)
    );
\rCnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(0),
      I1 => \rCnt[4]_i_4_n_0\,
      I2 => Q(1),
      I3 => Q(0),
      O => D(1)
    );
\rCnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEEAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(0),
      I1 => \rCnt[4]_i_4_n_0\,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => D(2)
    );
\rCnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEEAEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(0),
      I1 => \rCnt[4]_i_4_n_0\,
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => D(3)
    );
\rCnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEAAAFAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(2),
      I1 => wRxDone,
      I2 => Q(0),
      I3 => Q(1),
      I4 => \rCnt_reg[0]\,
      I5 => \rCnt_reg[0]_0\,
      O => \FSM_onehot_rFSM_reg[2]\(0)
    );
\rCnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEEEEAAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[0]\(0),
      I1 => \rCnt[4]_i_4_n_0\,
      I2 => Q(3),
      I3 => \rCnt_reg[4]\,
      I4 => Q(4),
      O => D(4)
    );
\rCnt[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02000000"
    )
        port map (
      I0 => \rCnt_reg[4]_0\,
      I1 => rFSM_Current(0),
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(2),
      I4 => \FSM_onehot_rFSM_reg[0]\(1),
      I5 => \rBuffer_reg[0]\,
      O => \rCnt[4]_i_4_n_0\
    );
\rCnt_Current[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055400040"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => rCnt_Current(0),
      O => \rCnt_Current[0]_i_1__0_n_0\
    );
\rCnt_Current[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__1_n_6\,
      O => \rCnt_Current[10]_i_1__0_n_0\
    );
\rCnt_Current[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__1_n_5\,
      O => \rCnt_Current[11]_i_1_n_0\
    );
\rCnt_Current[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => wCnt_Next0_carry_n_7,
      O => \rCnt_Current[1]_i_1__0_n_0\
    );
\rCnt_Current[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => wCnt_Next0_carry_n_6,
      O => \rCnt_Current[2]_i_1__0_n_0\
    );
\rCnt_Current[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => wCnt_Next0_carry_n_5,
      O => \rCnt_Current[3]_i_1__0_n_0\
    );
\rCnt_Current[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => wCnt_Next0_carry_n_4,
      O => \rCnt_Current[4]_i_1__0_n_0\
    );
\rCnt_Current[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_7\,
      O => \rCnt_Current[5]_i_1__0_n_0\
    );
\rCnt_Current[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_6\,
      O => \rCnt_Current[6]_i_1__0_n_0\
    );
\rCnt_Current[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_5\,
      O => \rCnt_Current[7]_i_1__0_n_0\
    );
\rCnt_Current[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__0_n_4\,
      O => \rCnt_Current[8]_i_1__0_n_0\
    );
\rCnt_Current[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540004000000000"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => \rFSM_Current[0]_i_4_n_0\,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      I4 => \rFSM_Current[2]_i_2_n_0\,
      I5 => \wCnt_Next0_carry__1_n_7\,
      O => \rCnt_Current[9]_i_1__0_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1__0_n_0\,
      Q => rCnt_Current(0),
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1__0_n_0\,
      Q => rCnt_Current(10),
      R => iRst
    );
\rCnt_Current_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[11]_i_1_n_0\,
      Q => rCnt_Current(11),
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1__0_n_0\,
      Q => rCnt_Current(1),
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1__0_n_0\,
      Q => rCnt_Current(2),
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1__0_n_0\,
      Q => rCnt_Current(3),
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1__0_n_0\,
      Q => rCnt_Current(4),
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1__0_n_0\,
      Q => rCnt_Current(5),
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1__0_n_0\,
      Q => rCnt_Current(6),
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1__0_n_0\,
      Q => rCnt_Current(7),
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1__0_n_0\,
      Q => rCnt_Current(8),
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1__0_n_0\,
      Q => rCnt_Current(9),
      R => iRst
    );
\rFSM_Current[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEFFAEAEAE"
    )
        port map (
      I0 => \rFSM_Current[0]_i_2_n_0\,
      I1 => \rFSM_Current[0]_i_3_n_0\,
      I2 => \rFSM_Current[0]_i_4_n_0\,
      I3 => \rFSM_Current[2]_i_2_n_0\,
      I4 => rFSM_Current(0),
      I5 => rFSM_Current(2),
      O => wFSM_Next(0)
    );
\rFSM_Current[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => iRx,
      I1 => rFSM_Current(2),
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(0),
      O => \rFSM_Current[0]_i_2_n_0\
    );
\rFSM_Current[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAA8"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[3]\,
      I1 => \rBit_Current_reg_n_0_[2]\,
      I2 => \rBit_Current_reg_n_0_[1]\,
      I3 => \rBit_Current_reg_n_0_[0]\,
      I4 => rFSM_Current(0),
      I5 => \rBit_Current[3]_i_3_n_0\,
      O => \rFSM_Current[0]_i_3_n_0\
    );
\rFSM_Current[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0B0B0FF"
    )
        port map (
      I0 => \rFSM_Current[2]_i_4_n_0\,
      I1 => rCnt_Current(5),
      I2 => \rFSM_Current[0]_i_5_n_0\,
      I3 => rCnt_Current(10),
      I4 => rCnt_Current(11),
      O => \rFSM_Current[0]_i_4_n_0\
    );
\rFSM_Current[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => rCnt_Current(11),
      I1 => rCnt_Current(6),
      I2 => rCnt_Current(7),
      I3 => rCnt_Current(9),
      I4 => rCnt_Current(8),
      O => \rFSM_Current[0]_i_5_n_0\
    );
\rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3012"
    )
        port map (
      I0 => rFSM_Current(0),
      I1 => rFSM_Current(2),
      I2 => rFSM_Current(1),
      I3 => \rFSM_Current[2]_i_2_n_0\,
      O => wFSM_Next(1)
    );
\rFSM_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => rFSM_Current(2),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(0),
      I3 => \rFSM_Current[2]_i_2_n_0\,
      O => wFSM_Next(2)
    );
\rFSM_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101110101011101"
    )
        port map (
      I0 => rCnt_Current(11),
      I1 => rCnt_Current(10),
      I2 => rCnt_Current(9),
      I3 => \rFSM_Current[2]_i_3_n_0\,
      I4 => rCnt_Current(1),
      I5 => \rFSM_Current[2]_i_4_n_0\,
      O => \rFSM_Current[2]_i_2_n_0\
    );
\rFSM_Current[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => rCnt_Current(6),
      I1 => rCnt_Current(5),
      I2 => rCnt_Current(8),
      I3 => rCnt_Current(7),
      O => \rFSM_Current[2]_i_3_n_0\
    );
\rFSM_Current[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => rCnt_Current(3),
      I1 => rCnt_Current(2),
      I2 => rCnt_Current(4),
      O => \rFSM_Current[2]_i_4_n_0\
    );
\rFSM_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_Next(0),
      Q => rFSM_Current(0),
      R => iRst
    );
\rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_Next(1),
      Q => rFSM_Current(1),
      R => iRst
    );
\rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => wFSM_Next(2),
      Q => rFSM_Current(2),
      R => iRst
    );
rRx1_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => iRx,
      Q => rRx1,
      R => iRst
    );
rRx2_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => rRx1,
      Q => rRx2,
      R => iRst
    );
\rRxData_Current[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => rRxData_Current(1),
      I1 => rRx2,
      I2 => rFSM_Current(1),
      I3 => rFSM_Current(2),
      O => wRxData_Next(0)
    );
\rRxData_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rRxData_Current(2),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => wRxData_Next(1)
    );
\rRxData_Current[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rRxData_Current(3),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => wRxData_Next(2)
    );
\rRxData_Current[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rRxData_Current(4),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => wRxData_Next(3)
    );
\rRxData_Current[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rRxData_Current(5),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => wRxData_Next(4)
    );
\rRxData_Current[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rRxData_Current(6),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => wRxData_Next(5)
    );
\rRxData_Current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rRxData_Current(7),
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => wRxData_Next(6)
    );
\rRxData_Current[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCFCC11CCCCCC11"
    )
        port map (
      I0 => iRx,
      I1 => rFSM_Current(2),
      I2 => \rFSM_Current[0]_i_4_n_0\,
      I3 => rFSM_Current(0),
      I4 => rFSM_Current(1),
      I5 => \rRxData_Current[7]_i_3_n_0\,
      O => \rRxData_Current[7]_i_1_n_0\
    );
\rRxData_Current[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => rRx2,
      I1 => rFSM_Current(1),
      I2 => rFSM_Current(2),
      O => wRxData_Next(7)
    );
\rRxData_Current[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \rBit_Current_reg_n_0_[0]\,
      I1 => \rBit_Current_reg_n_0_[1]\,
      I2 => \rBit_Current_reg_n_0_[2]\,
      I3 => \rBit_Current_reg_n_0_[3]\,
      O => \rRxData_Current[7]_i_3_n_0\
    );
\rRxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(0),
      Q => rRxData_Current(0),
      R => iRst
    );
\rRxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(1),
      Q => rRxData_Current(1),
      R => iRst
    );
\rRxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(2),
      Q => rRxData_Current(2),
      R => iRst
    );
\rRxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(3),
      Q => rRxData_Current(3),
      R => iRst
    );
\rRxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(4),
      Q => rRxData_Current(4),
      R => iRst
    );
\rRxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(5),
      Q => rRxData_Current(5),
      R => iRst
    );
\rRxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(6),
      Q => rRxData_Current(6),
      R => iRst
    );
\rRxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => \rRxData_Current[7]_i_1_n_0\,
      D => wRxData_Next(7),
      Q => rRxData_Current(7),
      R => iRst
    );
wCnt_Next0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => wCnt_Next0_carry_n_0,
      CO(2) => wCnt_Next0_carry_n_1,
      CO(1) => wCnt_Next0_carry_n_2,
      CO(0) => wCnt_Next0_carry_n_3,
      CYINIT => rCnt_Current(0),
      DI(3 downto 0) => B"0000",
      O(3) => wCnt_Next0_carry_n_4,
      O(2) => wCnt_Next0_carry_n_5,
      O(1) => wCnt_Next0_carry_n_6,
      O(0) => wCnt_Next0_carry_n_7,
      S(3 downto 0) => rCnt_Current(4 downto 1)
    );
\wCnt_Next0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => wCnt_Next0_carry_n_0,
      CO(3) => \wCnt_Next0_carry__0_n_0\,
      CO(2) => \wCnt_Next0_carry__0_n_1\,
      CO(1) => \wCnt_Next0_carry__0_n_2\,
      CO(0) => \wCnt_Next0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wCnt_Next0_carry__0_n_4\,
      O(2) => \wCnt_Next0_carry__0_n_5\,
      O(1) => \wCnt_Next0_carry__0_n_6\,
      O(0) => \wCnt_Next0_carry__0_n_7\,
      S(3 downto 0) => rCnt_Current(8 downto 5)
    );
\wCnt_Next0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wCnt_Next0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_wCnt_Next0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \wCnt_Next0_carry__1_n_2\,
      CO(0) => \wCnt_Next0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_wCnt_Next0_carry__1_O_UNCONNECTED\(3),
      O(2) => \wCnt_Next0_carry__1_n_5\,
      O(1) => \wCnt_Next0_carry__1_n_6\,
      O(0) => \wCnt_Next0_carry__1_n_7\,
      S(3) => '0',
      S(2 downto 0) => rCnt_Current(11 downto 9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_uart_top_0_0_uart_tx is
  port (
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \FSM_onehot_rFSM_Current_reg[4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_onehot_rFSM_reg[2]\ : out STD_LOGIC;
    oTx : out STD_LOGIC;
    \FSM_onehot_rFSM_Current_reg[4]_1\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \rTxByte_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rTxStart_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_rFSM_reg[2]_0\ : in STD_LOGIC;
    rTxStart_reg_0 : in STD_LOGIC;
    \rTxData_Current_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_uart_top_0_0_uart_tx : entity is "uart_tx";
end uart_uart_top_0_0_uart_tx;

architecture STRUCTURE of uart_uart_top_0_0_uart_tx is
  signal \FSM_onehot_rFSM_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal rBit_Current : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \rBit_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_3_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_4_n_0\ : STD_LOGIC;
  signal \rBit_Current[2]_i_5_n_0\ : STD_LOGIC;
  signal \rCnt_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[10]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[5]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[7]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[8]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_1_n_0\ : STD_LOGIC;
  signal \rCnt_Current[9]_i_2_n_0\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[10]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[4]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[5]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[6]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[7]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[8]\ : STD_LOGIC;
  signal \rCnt_Current_reg_n_0_[9]\ : STD_LOGIC;
  signal \rTxData_Current[0]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[1]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[2]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[3]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[4]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[5]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[6]_i_1_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_2_n_0\ : STD_LOGIC;
  signal \rTxData_Current[7]_i_3_n_0\ : STD_LOGIC;
  signal \rTxData_Current_reg_n_0_[0]\ : STD_LOGIC;
  signal wBit_Next : STD_LOGIC;
  signal wTxData_Next : STD_LOGIC;
  signal wTxDone : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_rFSM_Current[4]_i_3\ : label is "soft_lutpair18";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[0]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[1]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[2]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[3]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_Current_reg[4]\ : label is "sIDLE:00001,sTX_START:00010,sTX_DATA:00100,sDONE:10000,sTX_STOP:01000";
  attribute SOFT_HLUTNM of \rBit_Current[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \rBit_Current[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \rBit_Current[2]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \rCnt_Current[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rCnt_Current[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rCnt_Current[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rCnt_Current[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \rCnt_Current[5]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \rCnt_Current[6]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \rCnt_Current[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rCnt_Current[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \rTxData_Current[7]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of rTxStart_i_1 : label is "soft_lutpair14";
begin
\FSM_onehot_rFSM[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA020202"
    )
        port map (
      I0 => rTxStart_reg(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \FSM_onehot_rFSM_Current_reg[4]_0\(0)
    );
\FSM_onehot_rFSM[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg[2]_0\,
      I1 => wTxDone,
      I2 => rTxStart_reg(1),
      O => \FSM_onehot_rFSM_Current_reg[4]_0\(1)
    );
\FSM_onehot_rFSM[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => wTxDone,
      I1 => rTxStart_reg(1),
      I2 => p_1_in,
      I3 => rTxStart_reg(0),
      O => \FSM_onehot_rFSM_Current_reg[4]_0\(2)
    );
\FSM_onehot_rFSM[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15151500"
    )
        port map (
      I0 => Q(2),
      I1 => Q(0),
      I2 => Q(1),
      I3 => wTxDone,
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      O => p_1_in
    );
\FSM_onehot_rFSM_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => rTxStart_reg_0,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      O => \FSM_onehot_rFSM_Current[0]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => rTxStart_reg_0,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \FSM_onehot_rFSM_Current[1]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F0000FF00"
    )
        port map (
      I0 => rBit_Current(2),
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I4 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \FSM_onehot_rFSM_Current[2]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888888888888888"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I3 => rBit_Current(2),
      I4 => rBit_Current(1),
      I5 => rBit_Current(0),
      O => \FSM_onehot_rFSM_Current[3]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I1 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      O => \FSM_onehot_rFSM_Current[4]_i_1_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[7]\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \FSM_onehot_rFSM_Current[4]_i_2_n_0\
    );
\FSM_onehot_rFSM_Current[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[4]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[5]\,
      O => \FSM_onehot_rFSM_Current[4]_i_3_n_0\
    );
\FSM_onehot_rFSM_Current_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[0]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_Current_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[2]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[3]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      R => iRst
    );
\FSM_onehot_rFSM_Current_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => '1',
      D => \FSM_onehot_rFSM_Current[4]_i_1_n_0\,
      Q => wTxDone,
      R => iRst
    );
oTx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \rTxData_Current_reg_n_0_[0]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => oTx
    );
\rBit_Current[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"38"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => wBit_Next,
      I2 => rBit_Current(0),
      O => \rBit_Current[0]_i_1_n_0\
    );
\rBit_Current[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F80"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(0),
      I2 => wBit_Next,
      I3 => rBit_Current(1),
      O => \rBit_Current[1]_i_1_n_0\
    );
\rBit_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF8000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(1),
      I2 => rBit_Current(0),
      I3 => wBit_Next,
      I4 => rBit_Current(2),
      O => \rBit_Current[2]_i_1_n_0\
    );
\rBit_Current[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFFAAAAAAAAAAAA"
    )
        port map (
      I0 => \rBit_Current[2]_i_3_n_0\,
      I1 => \rBit_Current[2]_i_4_n_0\,
      I2 => \rCnt_Current_reg_n_0_[5]\,
      I3 => \rBit_Current[2]_i_5_n_0\,
      I4 => \rCnt_Current_reg_n_0_[10]\,
      I5 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => wBit_Next
    );
\rBit_Current[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I3 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      O => \rBit_Current[2]_i_3_n_0\
    );
\rBit_Current[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[3]\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      O => \rBit_Current[2]_i_4_n_0\
    );
\rBit_Current[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[9]\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      O => \rBit_Current[2]_i_5_n_0\
    );
\rBit_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[0]_i_1_n_0\,
      Q => rBit_Current(0),
      R => iRst
    );
\rBit_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[1]_i_1_n_0\,
      Q => rBit_Current(1),
      R => iRst
    );
\rBit_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rBit_Current[2]_i_1_n_0\,
      Q => rBit_Current(2),
      R => iRst
    );
\rBuffer[95]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000A8A8A8"
    )
        port map (
      I0 => rTxStart_reg(0),
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => wTxDone,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => \FSM_onehot_rFSM_reg[2]\
    );
\rCnt_Current[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[0]_i_1_n_0\
    );
\rCnt_Current[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[8]\,
      I1 => \rCnt_Current[10]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current_reg_n_0_[9]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[10]\,
      O => \rCnt_Current[10]_i_1_n_0\
    );
\rCnt_Current[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current_reg_n_0_[5]\,
      I2 => \rCnt_Current_reg_n_0_[4]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current[5]_i_2_n_0\,
      O => \rCnt_Current[10]_i_2_n_0\
    );
\rCnt_Current[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE00FE00FE00FE"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[3]\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[10]\,
      I4 => \rBit_Current[2]_i_5_n_0\,
      I5 => \FSM_onehot_rFSM_Current[4]_i_3_n_0\,
      O => \rCnt_Current[10]_i_3_n_0\
    );
\rCnt_Current[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      O => \rCnt_Current[1]_i_1_n_0\
    );
\rCnt_Current[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      O => \rCnt_Current[2]_i_1_n_0\
    );
\rCnt_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[2]\,
      I2 => \rCnt_Current_reg_n_0_[1]\,
      I3 => \rCnt_Current_reg_n_0_[0]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      O => \rCnt_Current[3]_i_1_n_0\
    );
\rCnt_Current[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current_reg_n_0_[1]\,
      I2 => \rCnt_Current_reg_n_0_[0]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[3]\,
      I5 => \rCnt_Current_reg_n_0_[4]\,
      O => \rCnt_Current[4]_i_1_n_0\
    );
\rCnt_Current[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAA20000000"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current[5]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[5]_i_1_n_0\
    );
\rCnt_Current[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      O => \rCnt_Current[5]_i_2_n_0\
    );
\rCnt_Current[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \rCnt_Current[10]_i_3_n_0\,
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => \rCnt_Current_reg_n_0_[6]\,
      O => \rCnt_Current[6]_i_1_n_0\
    );
\rCnt_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D020"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[6]\,
      I1 => \rCnt_Current[9]_i_2_n_0\,
      I2 => \rCnt_Current[10]_i_3_n_0\,
      I3 => \rCnt_Current_reg_n_0_[7]\,
      O => \rCnt_Current[7]_i_1_n_0\
    );
\rCnt_Current[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BF004000"
    )
        port map (
      I0 => \rCnt_Current[9]_i_2_n_0\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current_reg_n_0_[7]\,
      I3 => \rCnt_Current[10]_i_3_n_0\,
      I4 => \rCnt_Current_reg_n_0_[8]\,
      O => \rCnt_Current[8]_i_1_n_0\
    );
\rCnt_Current[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FF000008000000"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[7]\,
      I1 => \rCnt_Current_reg_n_0_[6]\,
      I2 => \rCnt_Current[9]_i_2_n_0\,
      I3 => \rCnt_Current_reg_n_0_[8]\,
      I4 => \rCnt_Current[10]_i_3_n_0\,
      I5 => \rCnt_Current_reg_n_0_[9]\,
      O => \rCnt_Current[9]_i_1_n_0\
    );
\rCnt_Current[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \rCnt_Current_reg_n_0_[1]\,
      I1 => \rCnt_Current_reg_n_0_[0]\,
      I2 => \rCnt_Current_reg_n_0_[3]\,
      I3 => \rCnt_Current_reg_n_0_[2]\,
      I4 => \rCnt_Current_reg_n_0_[4]\,
      I5 => \rCnt_Current_reg_n_0_[5]\,
      O => \rCnt_Current[9]_i_2_n_0\
    );
\rCnt_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[0]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_Current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[10]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[10]\,
      R => iRst
    );
\rCnt_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[1]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[2]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[3]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[4]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[4]\,
      R => iRst
    );
\rCnt_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[5]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[5]\,
      R => iRst
    );
\rCnt_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[6]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[6]\,
      R => iRst
    );
\rCnt_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[7]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[7]\,
      R => iRst
    );
\rCnt_Current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[8]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[8]\,
      R => iRst
    );
\rCnt_Current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => \rCnt_Current[9]_i_1_n_0\,
      Q => \rCnt_Current_reg_n_0_[9]\,
      R => iRst
    );
\rTxByte[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(0),
      O => D(0)
    );
\rTxByte[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(1),
      O => D(1)
    );
\rTxByte[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(2),
      O => D(2)
    );
\rTxByte[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(3),
      O => D(3)
    );
\rTxByte[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(4),
      O => D(4)
    );
\rTxByte[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(5),
      O => D(5)
    );
\rTxByte[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(6),
      O => D(6)
    );
\rTxByte[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => wTxDone,
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => \rTxByte_reg[7]\(7),
      O => D(7)
    );
\rTxData_Current[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(0),
      I3 => in7(0),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[0]_i_1_n_0\
    );
\rTxData_Current[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(1),
      I3 => in7(1),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[1]_i_1_n_0\
    );
\rTxData_Current[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(2),
      I3 => in7(2),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[2]_i_1_n_0\
    );
\rTxData_Current[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(3),
      I3 => in7(3),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[3]_i_1_n_0\
    );
\rTxData_Current[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(4),
      I3 => in7(4),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[4]_i_1_n_0\
    );
\rTxData_Current[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(5),
      I3 => in7(5),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[5]_i_1_n_0\
    );
\rTxData_Current[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEAEAEA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[1]\,
      I1 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I2 => \rTxData_Current_reg[7]_0\(6),
      I3 => in7(6),
      I4 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      O => \rTxData_Current[6]_i_1_n_0\
    );
\rTxData_Current[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current[4]_i_2_n_0\,
      I1 => \rTxData_Current[7]_i_3_n_0\,
      I2 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I3 => rTxStart_reg_0,
      O => wTxData_Next
    );
\rTxData_Current[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[0]\,
      I1 => \rTxData_Current_reg[7]_0\(7),
      O => \rTxData_Current[7]_i_2_n_0\
    );
\rTxData_Current[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \FSM_onehot_rFSM_Current_reg_n_0_[2]\,
      I1 => rBit_Current(2),
      I2 => rBit_Current(1),
      I3 => rBit_Current(0),
      O => \rTxData_Current[7]_i_3_n_0\
    );
\rTxData_Current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[0]_i_1_n_0\,
      Q => \rTxData_Current_reg_n_0_[0]\,
      R => iRst
    );
\rTxData_Current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[1]_i_1_n_0\,
      Q => in7(0),
      R => iRst
    );
\rTxData_Current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[2]_i_1_n_0\,
      Q => in7(1),
      R => iRst
    );
\rTxData_Current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[3]_i_1_n_0\,
      Q => in7(2),
      R => iRst
    );
\rTxData_Current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[4]_i_1_n_0\,
      Q => in7(3),
      R => iRst
    );
\rTxData_Current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[5]_i_1_n_0\,
      Q => in7(4),
      R => iRst
    );
\rTxData_Current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[6]_i_1_n_0\,
      Q => in7(5),
      R => iRst
    );
\rTxData_Current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => wTxData_Next,
      D => \rTxData_Current[7]_i_2_n_0\,
      Q => in7(6),
      R => iRst
    );
rTxStart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAA00"
    )
        port map (
      I0 => p_1_in,
      I1 => wTxDone,
      I2 => rTxStart_reg(1),
      I3 => rTxStart_reg(0),
      I4 => rTxStart_reg_0,
      O => \FSM_onehot_rFSM_Current_reg[4]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_uart_top_0_0_uart_top is
  port (
    oTx : out STD_LOGIC;
    iRst : in STD_LOGIC;
    iClk : in STD_LOGIC;
    iRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of uart_uart_top_0_0_uart_top : entity is "uart_top";
end uart_uart_top_0_0_uart_top;

architecture STRUCTURE of uart_uart_top_0_0_uart_top is
  signal \FSM_onehot_rFSM[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_rFSM_reg_n_0_[3]\ : STD_LOGIC;
  signal UART_RX_INST_n_1 : STD_LOGIC;
  signal UART_RX_INST_n_10 : STD_LOGIC;
  signal UART_RX_INST_n_11 : STD_LOGIC;
  signal UART_RX_INST_n_12 : STD_LOGIC;
  signal UART_RX_INST_n_13 : STD_LOGIC;
  signal UART_RX_INST_n_14 : STD_LOGIC;
  signal UART_RX_INST_n_15 : STD_LOGIC;
  signal UART_RX_INST_n_2 : STD_LOGIC;
  signal UART_RX_INST_n_3 : STD_LOGIC;
  signal UART_RX_INST_n_4 : STD_LOGIC;
  signal UART_RX_INST_n_5 : STD_LOGIC;
  signal UART_RX_INST_n_7 : STD_LOGIC;
  signal UART_RX_INST_n_8 : STD_LOGIC;
  signal UART_RX_INST_n_9 : STD_LOGIC;
  signal UART_TX_INST_n_0 : STD_LOGIC;
  signal UART_TX_INST_n_1 : STD_LOGIC;
  signal UART_TX_INST_n_10 : STD_LOGIC;
  signal UART_TX_INST_n_11 : STD_LOGIC;
  signal UART_TX_INST_n_13 : STD_LOGIC;
  signal UART_TX_INST_n_2 : STD_LOGIC;
  signal UART_TX_INST_n_3 : STD_LOGIC;
  signal UART_TX_INST_n_4 : STD_LOGIC;
  signal UART_TX_INST_n_5 : STD_LOGIC;
  signal UART_TX_INST_n_6 : STD_LOGIC;
  signal UART_TX_INST_n_7 : STD_LOGIC;
  signal UART_TX_INST_n_8 : STD_LOGIC;
  signal UART_TX_INST_n_9 : STD_LOGIC;
  signal in8 : STD_LOGIC_VECTOR ( 95 downto 8 );
  signal rBuffer : STD_LOGIC;
  signal \rBuffer[10]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[11]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[12]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[13]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[14]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[16]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[17]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[18]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[19]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[20]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[21]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[22]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[23]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[24]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[25]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[26]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[27]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[28]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[29]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[30]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[32]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[33]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[34]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[35]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[36]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[37]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[38]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[39]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[40]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[41]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[42]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[43]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[44]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[45]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[46]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[47]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[48]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[49]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[50]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[51]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[52]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[53]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[54]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[55]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[56]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[57]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[58]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[59]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[60]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[61]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[62]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[63]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[64]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[65]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[66]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[67]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[68]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[69]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[70]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[71]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[72]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[73]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[74]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[75]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[76]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[77]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[78]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[79]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[80]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[81]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[82]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[83]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[84]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[85]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[86]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[87]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[88]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[89]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[8]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[90]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[91]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[92]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[93]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[94]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer[95]_i_2_n_0\ : STD_LOGIC;
  signal \rBuffer[9]_i_1_n_0\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[88]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[89]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[90]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[91]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[92]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[93]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[94]\ : STD_LOGIC;
  signal \rBuffer_reg_n_0_[95]\ : STD_LOGIC;
  signal rCnt : STD_LOGIC;
  signal \rCnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \rCnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \rCnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \rCnt_reg_n_0_[4]\ : STD_LOGIC;
  signal rTxByte : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rTxByte_0 : STD_LOGIC;
  signal rTxStart_reg_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[0]\ : label is "s_DONE:100,s_WAIT_RX:0010,s_IDLE:0001,s_WAIT_TX:1000,s_TX:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[1]\ : label is "s_DONE:100,s_WAIT_RX:0010,s_IDLE:0001,s_WAIT_TX:1000,s_TX:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[2]\ : label is "s_DONE:100,s_WAIT_RX:0010,s_IDLE:0001,s_WAIT_TX:1000,s_TX:0100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rFSM_reg[3]\ : label is "s_DONE:100,s_WAIT_RX:0010,s_IDLE:0001,s_WAIT_TX:1000,s_TX:0100";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rBuffer[10]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBuffer[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \rBuffer[12]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer[13]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \rBuffer[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer[15]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rBuffer[16]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer[17]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \rBuffer[18]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[19]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \rBuffer[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[21]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \rBuffer[22]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[23]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \rBuffer[24]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[25]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \rBuffer[26]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[27]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \rBuffer[28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBuffer[29]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \rBuffer[30]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rBuffer[31]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \rBuffer[32]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rBuffer[33]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rBuffer[34]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rBuffer[35]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \rBuffer[36]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rBuffer[37]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \rBuffer[38]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rBuffer[39]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \rBuffer[40]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rBuffer[41]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \rBuffer[42]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rBuffer[43]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rBuffer[44]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rBuffer[45]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \rBuffer[46]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rBuffer[47]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rBuffer[48]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rBuffer[49]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rBuffer[50]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[51]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rBuffer[52]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[53]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rBuffer[54]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[55]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \rBuffer[56]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rBuffer[57]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \rBuffer[58]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rBuffer[59]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rBuffer[60]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rBuffer[61]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \rBuffer[62]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rBuffer[63]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \rBuffer[64]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rBuffer[65]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rBuffer[66]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rBuffer[67]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rBuffer[68]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rBuffer[69]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rBuffer[70]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rBuffer[71]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rBuffer[72]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rBuffer[73]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rBuffer[74]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rBuffer[75]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rBuffer[76]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rBuffer[77]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rBuffer[78]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rBuffer[79]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rBuffer[80]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rBuffer[81]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rBuffer[82]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rBuffer[83]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rBuffer[84]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rBuffer[85]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rBuffer[86]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rBuffer[87]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rBuffer[88]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rBuffer[89]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rBuffer[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rBuffer[90]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rBuffer[91]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rBuffer[92]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rBuffer[93]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rBuffer[94]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rBuffer[95]_i_2\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rBuffer[9]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \rCnt[4]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \rCnt[4]_i_6\ : label is "soft_lutpair22";
begin
\FSM_onehot_rFSM[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \FSM_onehot_rFSM[1]_i_2_n_0\,
      I1 => \rCnt_reg_n_0_[1]\,
      I2 => \rCnt_reg_n_0_[0]\,
      I3 => \rCnt_reg_n_0_[4]\,
      I4 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I5 => \FSM_onehot_rFSM_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM[1]_i_1_n_0\
    );
\FSM_onehot_rFSM[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \rCnt_reg_n_0_[2]\,
      I1 => \rCnt_reg_n_0_[3]\,
      O => \FSM_onehot_rFSM[1]_i_2_n_0\
    );
\FSM_onehot_rFSM[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \rCnt_reg_n_0_[4]\,
      I1 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I2 => \rCnt_reg_n_0_[2]\,
      I3 => \rCnt_reg_n_0_[3]\,
      I4 => \rCnt_reg_n_0_[1]\,
      I5 => \rCnt_reg_n_0_[0]\,
      O => \FSM_onehot_rFSM[2]_i_2_n_0\
    );
\FSM_onehot_rFSM[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001FFF0000"
    )
        port map (
      I0 => \rCnt_reg_n_0_[1]\,
      I1 => \rCnt_reg_n_0_[0]\,
      I2 => \rCnt_reg_n_0_[2]\,
      I3 => \rCnt_reg_n_0_[3]\,
      I4 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I5 => \rCnt_reg_n_0_[4]\,
      O => \FSM_onehot_rFSM[3]_i_4_n_0\
    );
\FSM_onehot_rFSM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_7,
      D => UART_TX_INST_n_10,
      Q => \FSM_onehot_rFSM_reg_n_0_[0]\,
      S => iRst
    );
\FSM_onehot_rFSM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_7,
      D => \FSM_onehot_rFSM[1]_i_1_n_0\,
      Q => \FSM_onehot_rFSM_reg_n_0_[1]\,
      R => iRst
    );
\FSM_onehot_rFSM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_7,
      D => UART_TX_INST_n_9,
      Q => rTxByte_0,
      R => iRst
    );
\FSM_onehot_rFSM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => iClk,
      CE => UART_RX_INST_n_7,
      D => UART_TX_INST_n_8,
      Q => \FSM_onehot_rFSM_reg_n_0_[3]\,
      R => iRst
    );
UART_RX_INST: entity work.uart_uart_top_0_0_uart_rx
     port map (
      D(4) => UART_RX_INST_n_1,
      D(3) => UART_RX_INST_n_2,
      D(2) => UART_RX_INST_n_3,
      D(1) => UART_RX_INST_n_4,
      D(0) => UART_RX_INST_n_5,
      E(0) => rBuffer,
      \FSM_onehot_rFSM_reg[0]\(3) => \FSM_onehot_rFSM_reg_n_0_[3]\,
      \FSM_onehot_rFSM_reg[0]\(2) => rTxByte_0,
      \FSM_onehot_rFSM_reg[0]\(1) => \FSM_onehot_rFSM_reg_n_0_[1]\,
      \FSM_onehot_rFSM_reg[0]\(0) => \FSM_onehot_rFSM_reg_n_0_[0]\,
      \FSM_onehot_rFSM_reg[0]_0\ => \FSM_onehot_rFSM[3]_i_4_n_0\,
      \FSM_onehot_rFSM_reg[1]\(0) => UART_RX_INST_n_7,
      \FSM_onehot_rFSM_reg[1]_0\(7) => UART_RX_INST_n_8,
      \FSM_onehot_rFSM_reg[1]_0\(6) => UART_RX_INST_n_9,
      \FSM_onehot_rFSM_reg[1]_0\(5) => UART_RX_INST_n_10,
      \FSM_onehot_rFSM_reg[1]_0\(4) => UART_RX_INST_n_11,
      \FSM_onehot_rFSM_reg[1]_0\(3) => UART_RX_INST_n_12,
      \FSM_onehot_rFSM_reg[1]_0\(2) => UART_RX_INST_n_13,
      \FSM_onehot_rFSM_reg[1]_0\(1) => UART_RX_INST_n_14,
      \FSM_onehot_rFSM_reg[1]_0\(0) => UART_RX_INST_n_15,
      \FSM_onehot_rFSM_reg[2]\(0) => rCnt,
      Q(4) => \rCnt_reg_n_0_[4]\,
      Q(3) => \rCnt_reg_n_0_[3]\,
      Q(2) => \rCnt_reg_n_0_[2]\,
      Q(1) => \rCnt_reg_n_0_[1]\,
      Q(0) => \rCnt_reg_n_0_[0]\,
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      \rBuffer_reg[0]\ => UART_TX_INST_n_11,
      \rCnt_reg[0]\ => \FSM_onehot_rFSM[1]_i_2_n_0\,
      \rCnt_reg[0]_0\ => \rCnt[4]_i_3_n_0\,
      \rCnt_reg[4]\ => \rCnt[4]_i_5_n_0\,
      \rCnt_reg[4]_0\ => \rCnt[4]_i_6_n_0\
    );
UART_TX_INST: entity work.uart_uart_top_0_0_uart_tx
     port map (
      D(7) => UART_TX_INST_n_0,
      D(6) => UART_TX_INST_n_1,
      D(5) => UART_TX_INST_n_2,
      D(4) => UART_TX_INST_n_3,
      D(3) => UART_TX_INST_n_4,
      D(2) => UART_TX_INST_n_5,
      D(1) => UART_TX_INST_n_6,
      D(0) => UART_TX_INST_n_7,
      \FSM_onehot_rFSM_Current_reg[4]_0\(2) => UART_TX_INST_n_8,
      \FSM_onehot_rFSM_Current_reg[4]_0\(1) => UART_TX_INST_n_9,
      \FSM_onehot_rFSM_Current_reg[4]_0\(0) => UART_TX_INST_n_10,
      \FSM_onehot_rFSM_Current_reg[4]_1\ => UART_TX_INST_n_13,
      \FSM_onehot_rFSM_reg[2]\ => UART_TX_INST_n_11,
      \FSM_onehot_rFSM_reg[2]_0\ => \FSM_onehot_rFSM[2]_i_2_n_0\,
      Q(2) => \rCnt_reg_n_0_[4]\,
      Q(1) => \rCnt_reg_n_0_[3]\,
      Q(0) => \rCnt_reg_n_0_[2]\,
      iClk => iClk,
      iRst => iRst,
      oTx => oTx,
      \rTxByte_reg[7]\(7) => \rBuffer_reg_n_0_[95]\,
      \rTxByte_reg[7]\(6) => \rBuffer_reg_n_0_[94]\,
      \rTxByte_reg[7]\(5) => \rBuffer_reg_n_0_[93]\,
      \rTxByte_reg[7]\(4) => \rBuffer_reg_n_0_[92]\,
      \rTxByte_reg[7]\(3) => \rBuffer_reg_n_0_[91]\,
      \rTxByte_reg[7]\(2) => \rBuffer_reg_n_0_[90]\,
      \rTxByte_reg[7]\(1) => \rBuffer_reg_n_0_[89]\,
      \rTxByte_reg[7]\(0) => \rBuffer_reg_n_0_[88]\,
      \rTxData_Current_reg[7]_0\(7 downto 0) => rTxByte(7 downto 0),
      rTxStart_reg(1) => \FSM_onehot_rFSM_reg_n_0_[3]\,
      rTxStart_reg(0) => rTxByte_0,
      rTxStart_reg_0 => rTxStart_reg_n_0
    );
\rBuffer[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(10),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[10]_i_1_n_0\
    );
\rBuffer[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(11),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[11]_i_1_n_0\
    );
\rBuffer[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(12),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[12]_i_1_n_0\
    );
\rBuffer[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(13),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[13]_i_1_n_0\
    );
\rBuffer[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(14),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[14]_i_1_n_0\
    );
\rBuffer[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(15),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[15]_i_1_n_0\
    );
\rBuffer[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(16),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[16]_i_1_n_0\
    );
\rBuffer[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(17),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[17]_i_1_n_0\
    );
\rBuffer[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(18),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[18]_i_1_n_0\
    );
\rBuffer[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(19),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[19]_i_1_n_0\
    );
\rBuffer[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(20),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[20]_i_1_n_0\
    );
\rBuffer[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(21),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[21]_i_1_n_0\
    );
\rBuffer[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(22),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[22]_i_1_n_0\
    );
\rBuffer[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(23),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[23]_i_1_n_0\
    );
\rBuffer[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(24),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[24]_i_1_n_0\
    );
\rBuffer[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(25),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[25]_i_1_n_0\
    );
\rBuffer[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(26),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[26]_i_1_n_0\
    );
\rBuffer[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(27),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[27]_i_1_n_0\
    );
\rBuffer[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(28),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[28]_i_1_n_0\
    );
\rBuffer[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(29),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[29]_i_1_n_0\
    );
\rBuffer[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(30),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[30]_i_1_n_0\
    );
\rBuffer[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(31),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[31]_i_1_n_0\
    );
\rBuffer[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(32),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[32]_i_1_n_0\
    );
\rBuffer[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(33),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[33]_i_1_n_0\
    );
\rBuffer[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(34),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[34]_i_1_n_0\
    );
\rBuffer[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(35),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[35]_i_1_n_0\
    );
\rBuffer[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(36),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[36]_i_1_n_0\
    );
\rBuffer[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(37),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[37]_i_1_n_0\
    );
\rBuffer[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(38),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[38]_i_1_n_0\
    );
\rBuffer[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(39),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[39]_i_1_n_0\
    );
\rBuffer[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(40),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[40]_i_1_n_0\
    );
\rBuffer[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(41),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[41]_i_1_n_0\
    );
\rBuffer[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(42),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[42]_i_1_n_0\
    );
\rBuffer[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(43),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[43]_i_1_n_0\
    );
\rBuffer[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(44),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[44]_i_1_n_0\
    );
\rBuffer[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(45),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[45]_i_1_n_0\
    );
\rBuffer[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(46),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[46]_i_1_n_0\
    );
\rBuffer[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(47),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[47]_i_1_n_0\
    );
\rBuffer[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(48),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[48]_i_1_n_0\
    );
\rBuffer[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(49),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[49]_i_1_n_0\
    );
\rBuffer[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(50),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[50]_i_1_n_0\
    );
\rBuffer[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(51),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[51]_i_1_n_0\
    );
\rBuffer[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(52),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[52]_i_1_n_0\
    );
\rBuffer[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(53),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[53]_i_1_n_0\
    );
\rBuffer[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(54),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[54]_i_1_n_0\
    );
\rBuffer[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(55),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[55]_i_1_n_0\
    );
\rBuffer[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(56),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[56]_i_1_n_0\
    );
\rBuffer[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(57),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[57]_i_1_n_0\
    );
\rBuffer[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(58),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[58]_i_1_n_0\
    );
\rBuffer[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(59),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[59]_i_1_n_0\
    );
\rBuffer[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(60),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[60]_i_1_n_0\
    );
\rBuffer[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(61),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[61]_i_1_n_0\
    );
\rBuffer[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(62),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[62]_i_1_n_0\
    );
\rBuffer[63]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(63),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[63]_i_1_n_0\
    );
\rBuffer[64]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(64),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[64]_i_1_n_0\
    );
\rBuffer[65]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(65),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[65]_i_1_n_0\
    );
\rBuffer[66]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(66),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[66]_i_1_n_0\
    );
\rBuffer[67]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(67),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[67]_i_1_n_0\
    );
\rBuffer[68]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(68),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[68]_i_1_n_0\
    );
\rBuffer[69]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(69),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[69]_i_1_n_0\
    );
\rBuffer[70]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(70),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[70]_i_1_n_0\
    );
\rBuffer[71]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(71),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[71]_i_1_n_0\
    );
\rBuffer[72]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(72),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[72]_i_1_n_0\
    );
\rBuffer[73]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(73),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[73]_i_1_n_0\
    );
\rBuffer[74]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(74),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[74]_i_1_n_0\
    );
\rBuffer[75]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(75),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[75]_i_1_n_0\
    );
\rBuffer[76]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(76),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[76]_i_1_n_0\
    );
\rBuffer[77]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(77),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[77]_i_1_n_0\
    );
\rBuffer[78]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(78),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[78]_i_1_n_0\
    );
\rBuffer[79]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(79),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[79]_i_1_n_0\
    );
\rBuffer[80]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(80),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[80]_i_1_n_0\
    );
\rBuffer[81]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(81),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[81]_i_1_n_0\
    );
\rBuffer[82]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(82),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[82]_i_1_n_0\
    );
\rBuffer[83]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(83),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[83]_i_1_n_0\
    );
\rBuffer[84]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(84),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[84]_i_1_n_0\
    );
\rBuffer[85]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(85),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[85]_i_1_n_0\
    );
\rBuffer[86]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(86),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[86]_i_1_n_0\
    );
\rBuffer[87]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(87),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[87]_i_1_n_0\
    );
\rBuffer[88]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(88),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[88]_i_1_n_0\
    );
\rBuffer[89]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(89),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[89]_i_1_n_0\
    );
\rBuffer[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(8),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[8]_i_1_n_0\
    );
\rBuffer[90]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(90),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[90]_i_1_n_0\
    );
\rBuffer[91]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(91),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[91]_i_1_n_0\
    );
\rBuffer[92]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(92),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[92]_i_1_n_0\
    );
\rBuffer[93]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(93),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[93]_i_1_n_0\
    );
\rBuffer[94]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(94),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[94]_i_1_n_0\
    );
\rBuffer[95]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(95),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[95]_i_2_n_0\
    );
\rBuffer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => in8(9),
      I1 => rTxByte_0,
      I2 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      O => \rBuffer[9]_i_1_n_0\
    );
\rBuffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_15,
      Q => in8(8),
      R => iRst
    );
\rBuffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[10]_i_1_n_0\,
      Q => in8(18),
      R => iRst
    );
\rBuffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[11]_i_1_n_0\,
      Q => in8(19),
      R => iRst
    );
\rBuffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[12]_i_1_n_0\,
      Q => in8(20),
      R => iRst
    );
\rBuffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[13]_i_1_n_0\,
      Q => in8(21),
      R => iRst
    );
\rBuffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[14]_i_1_n_0\,
      Q => in8(22),
      R => iRst
    );
\rBuffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[15]_i_1_n_0\,
      Q => in8(23),
      R => iRst
    );
\rBuffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[16]_i_1_n_0\,
      Q => in8(24),
      R => iRst
    );
\rBuffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[17]_i_1_n_0\,
      Q => in8(25),
      R => iRst
    );
\rBuffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[18]_i_1_n_0\,
      Q => in8(26),
      R => iRst
    );
\rBuffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[19]_i_1_n_0\,
      Q => in8(27),
      R => iRst
    );
\rBuffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_14,
      Q => in8(9),
      R => iRst
    );
\rBuffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[20]_i_1_n_0\,
      Q => in8(28),
      R => iRst
    );
\rBuffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[21]_i_1_n_0\,
      Q => in8(29),
      R => iRst
    );
\rBuffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[22]_i_1_n_0\,
      Q => in8(30),
      R => iRst
    );
\rBuffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[23]_i_1_n_0\,
      Q => in8(31),
      R => iRst
    );
\rBuffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[24]_i_1_n_0\,
      Q => in8(32),
      R => iRst
    );
\rBuffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[25]_i_1_n_0\,
      Q => in8(33),
      R => iRst
    );
\rBuffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[26]_i_1_n_0\,
      Q => in8(34),
      R => iRst
    );
\rBuffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[27]_i_1_n_0\,
      Q => in8(35),
      R => iRst
    );
\rBuffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[28]_i_1_n_0\,
      Q => in8(36),
      R => iRst
    );
\rBuffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[29]_i_1_n_0\,
      Q => in8(37),
      R => iRst
    );
\rBuffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_13,
      Q => in8(10),
      R => iRst
    );
\rBuffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[30]_i_1_n_0\,
      Q => in8(38),
      R => iRst
    );
\rBuffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[31]_i_1_n_0\,
      Q => in8(39),
      R => iRst
    );
\rBuffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[32]_i_1_n_0\,
      Q => in8(40),
      R => iRst
    );
\rBuffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[33]_i_1_n_0\,
      Q => in8(41),
      R => iRst
    );
\rBuffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[34]_i_1_n_0\,
      Q => in8(42),
      R => iRst
    );
\rBuffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[35]_i_1_n_0\,
      Q => in8(43),
      R => iRst
    );
\rBuffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[36]_i_1_n_0\,
      Q => in8(44),
      R => iRst
    );
\rBuffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[37]_i_1_n_0\,
      Q => in8(45),
      R => iRst
    );
\rBuffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[38]_i_1_n_0\,
      Q => in8(46),
      R => iRst
    );
\rBuffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[39]_i_1_n_0\,
      Q => in8(47),
      R => iRst
    );
\rBuffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_12,
      Q => in8(11),
      R => iRst
    );
\rBuffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[40]_i_1_n_0\,
      Q => in8(48),
      R => iRst
    );
\rBuffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[41]_i_1_n_0\,
      Q => in8(49),
      R => iRst
    );
\rBuffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[42]_i_1_n_0\,
      Q => in8(50),
      R => iRst
    );
\rBuffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[43]_i_1_n_0\,
      Q => in8(51),
      R => iRst
    );
\rBuffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[44]_i_1_n_0\,
      Q => in8(52),
      R => iRst
    );
\rBuffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[45]_i_1_n_0\,
      Q => in8(53),
      R => iRst
    );
\rBuffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[46]_i_1_n_0\,
      Q => in8(54),
      R => iRst
    );
\rBuffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[47]_i_1_n_0\,
      Q => in8(55),
      R => iRst
    );
\rBuffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[48]_i_1_n_0\,
      Q => in8(56),
      R => iRst
    );
\rBuffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[49]_i_1_n_0\,
      Q => in8(57),
      R => iRst
    );
\rBuffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_11,
      Q => in8(12),
      R => iRst
    );
\rBuffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[50]_i_1_n_0\,
      Q => in8(58),
      R => iRst
    );
\rBuffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[51]_i_1_n_0\,
      Q => in8(59),
      R => iRst
    );
\rBuffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[52]_i_1_n_0\,
      Q => in8(60),
      R => iRst
    );
\rBuffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[53]_i_1_n_0\,
      Q => in8(61),
      R => iRst
    );
\rBuffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[54]_i_1_n_0\,
      Q => in8(62),
      R => iRst
    );
\rBuffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[55]_i_1_n_0\,
      Q => in8(63),
      R => iRst
    );
\rBuffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[56]_i_1_n_0\,
      Q => in8(64),
      R => iRst
    );
\rBuffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[57]_i_1_n_0\,
      Q => in8(65),
      R => iRst
    );
\rBuffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[58]_i_1_n_0\,
      Q => in8(66),
      R => iRst
    );
\rBuffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[59]_i_1_n_0\,
      Q => in8(67),
      R => iRst
    );
\rBuffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_10,
      Q => in8(13),
      R => iRst
    );
\rBuffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[60]_i_1_n_0\,
      Q => in8(68),
      R => iRst
    );
\rBuffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[61]_i_1_n_0\,
      Q => in8(69),
      R => iRst
    );
\rBuffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[62]_i_1_n_0\,
      Q => in8(70),
      R => iRst
    );
\rBuffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[63]_i_1_n_0\,
      Q => in8(71),
      R => iRst
    );
\rBuffer_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[64]_i_1_n_0\,
      Q => in8(72),
      R => iRst
    );
\rBuffer_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[65]_i_1_n_0\,
      Q => in8(73),
      R => iRst
    );
\rBuffer_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[66]_i_1_n_0\,
      Q => in8(74),
      R => iRst
    );
\rBuffer_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[67]_i_1_n_0\,
      Q => in8(75),
      R => iRst
    );
\rBuffer_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[68]_i_1_n_0\,
      Q => in8(76),
      R => iRst
    );
\rBuffer_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[69]_i_1_n_0\,
      Q => in8(77),
      R => iRst
    );
\rBuffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_9,
      Q => in8(14),
      R => iRst
    );
\rBuffer_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[70]_i_1_n_0\,
      Q => in8(78),
      R => iRst
    );
\rBuffer_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[71]_i_1_n_0\,
      Q => in8(79),
      R => iRst
    );
\rBuffer_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[72]_i_1_n_0\,
      Q => in8(80),
      R => iRst
    );
\rBuffer_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[73]_i_1_n_0\,
      Q => in8(81),
      R => iRst
    );
\rBuffer_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[74]_i_1_n_0\,
      Q => in8(82),
      R => iRst
    );
\rBuffer_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[75]_i_1_n_0\,
      Q => in8(83),
      R => iRst
    );
\rBuffer_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[76]_i_1_n_0\,
      Q => in8(84),
      R => iRst
    );
\rBuffer_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[77]_i_1_n_0\,
      Q => in8(85),
      R => iRst
    );
\rBuffer_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[78]_i_1_n_0\,
      Q => in8(86),
      R => iRst
    );
\rBuffer_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[79]_i_1_n_0\,
      Q => in8(87),
      R => iRst
    );
\rBuffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => UART_RX_INST_n_8,
      Q => in8(15),
      R => iRst
    );
\rBuffer_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[80]_i_1_n_0\,
      Q => in8(88),
      R => iRst
    );
\rBuffer_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[81]_i_1_n_0\,
      Q => in8(89),
      R => iRst
    );
\rBuffer_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[82]_i_1_n_0\,
      Q => in8(90),
      R => iRst
    );
\rBuffer_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[83]_i_1_n_0\,
      Q => in8(91),
      R => iRst
    );
\rBuffer_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[84]_i_1_n_0\,
      Q => in8(92),
      R => iRst
    );
\rBuffer_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[85]_i_1_n_0\,
      Q => in8(93),
      R => iRst
    );
\rBuffer_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[86]_i_1_n_0\,
      Q => in8(94),
      R => iRst
    );
\rBuffer_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[87]_i_1_n_0\,
      Q => in8(95),
      R => iRst
    );
\rBuffer_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[88]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[88]\,
      R => iRst
    );
\rBuffer_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[89]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[89]\,
      R => iRst
    );
\rBuffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[8]_i_1_n_0\,
      Q => in8(16),
      R => iRst
    );
\rBuffer_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[90]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[90]\,
      R => iRst
    );
\rBuffer_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[91]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[91]\,
      R => iRst
    );
\rBuffer_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[92]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[92]\,
      R => iRst
    );
\rBuffer_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[93]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[93]\,
      R => iRst
    );
\rBuffer_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[94]_i_1_n_0\,
      Q => \rBuffer_reg_n_0_[94]\,
      R => iRst
    );
\rBuffer_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[95]_i_2_n_0\,
      Q => \rBuffer_reg_n_0_[95]\,
      R => iRst
    );
\rBuffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rBuffer,
      D => \rBuffer[9]_i_1_n_0\,
      Q => in8(17),
      R => iRst
    );
\rCnt[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_rFSM_reg_n_0_[1]\,
      I1 => \rCnt_reg_n_0_[4]\,
      O => \rCnt[4]_i_3_n_0\
    );
\rCnt[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \rCnt_reg_n_0_[2]\,
      I1 => \rCnt_reg_n_0_[0]\,
      I2 => \rCnt_reg_n_0_[1]\,
      O => \rCnt[4]_i_5_n_0\
    );
\rCnt[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF7"
    )
        port map (
      I0 => \rCnt_reg_n_0_[2]\,
      I1 => \rCnt_reg_n_0_[3]\,
      I2 => \rCnt_reg_n_0_[1]\,
      I3 => \rCnt_reg_n_0_[0]\,
      I4 => \rCnt_reg_n_0_[4]\,
      O => \rCnt[4]_i_6_n_0\
    );
\rCnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_5,
      Q => \rCnt_reg_n_0_[0]\,
      R => iRst
    );
\rCnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_4,
      Q => \rCnt_reg_n_0_[1]\,
      R => iRst
    );
\rCnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_3,
      Q => \rCnt_reg_n_0_[2]\,
      R => iRst
    );
\rCnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_2,
      Q => \rCnt_reg_n_0_[3]\,
      R => iRst
    );
\rCnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rCnt,
      D => UART_RX_INST_n_1,
      Q => \rCnt_reg_n_0_[4]\,
      R => iRst
    );
\rTxByte_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_7,
      Q => rTxByte(0),
      R => iRst
    );
\rTxByte_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_6,
      Q => rTxByte(1),
      R => iRst
    );
\rTxByte_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_5,
      Q => rTxByte(2),
      R => iRst
    );
\rTxByte_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_4,
      Q => rTxByte(3),
      R => iRst
    );
\rTxByte_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_3,
      Q => rTxByte(4),
      R => iRst
    );
\rTxByte_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_2,
      Q => rTxByte(5),
      R => iRst
    );
\rTxByte_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_1,
      Q => rTxByte(6),
      R => iRst
    );
\rTxByte_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => rTxByte_0,
      D => UART_TX_INST_n_0,
      Q => rTxByte(7),
      R => iRst
    );
rTxStart_reg: unisim.vcomponents.FDRE
     port map (
      C => iClk,
      CE => '1',
      D => UART_TX_INST_n_13,
      Q => rTxStart_reg_n_0,
      R => iRst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_uart_top_0_0 is
  port (
    iClk : in STD_LOGIC;
    iRst : in STD_LOGIC;
    iRx : in STD_LOGIC;
    oTx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of uart_uart_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of uart_uart_top_0_0 : entity is "uart_uart_top_0_0,uart_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of uart_uart_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of uart_uart_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of uart_uart_top_0_0 : entity is "uart_top,Vivado 2020.1";
end uart_uart_top_0_0;

architecture STRUCTURE of uart_uart_top_0_0 is
begin
inst: entity work.uart_uart_top_0_0_uart_top
     port map (
      iClk => iClk,
      iRst => iRst,
      iRx => iRx,
      oTx => oTx
    );
end STRUCTURE;
