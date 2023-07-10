-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu May 11 01:03:40 2023
-- Host        : SUSANT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               E:/RESEARCH/NidhiProject_Work/FPGAcode/vhdlByExample/comb_ckt/comb_ckt.sim/sim_1/synth/func/xsim/TestComb_ckt_func_synth.vhd
-- Design      : combCkt
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity combCkt is
  port (
    input1 : in STD_LOGIC;
    input2 : in STD_LOGIC;
    input3 : in STD_LOGIC;
    output1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of combCkt : entity is true;
end combCkt;

architecture STRUCTURE of combCkt is
  signal input1_IBUF : STD_LOGIC;
  signal input2_IBUF : STD_LOGIC;
  signal input3_IBUF : STD_LOGIC;
  signal output1_OBUF : STD_LOGIC;
begin
input1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => input1,
      O => input1_IBUF
    );
input2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => input2,
      O => input2_IBUF
    );
input3_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => input3,
      O => input3_IBUF
    );
output1_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => output1_OBUF,
      O => output1
    );
output1_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => input2_IBUF,
      I1 => input1_IBUF,
      I2 => input3_IBUF,
      O => output1_OBUF
    );
end STRUCTURE;
