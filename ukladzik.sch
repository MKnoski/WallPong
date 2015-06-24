<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="VGA_G" />
        <signal name="VGA_B" />
        <signal name="VGA_HS" />
        <signal name="VGA_VS" />
        <signal name="VGA_R" />
        <signal name="XLXN_20(2:0)" />
        <signal name="XLXN_26(9:0)" />
        <signal name="XLXN_27(8:0)" />
        <signal name="PS2_Clk" />
        <signal name="PS2_Data" />
        <signal name="XLXN_47(7:0)" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="LCD_D(3:0)" />
        <signal name="LCD_RW" />
        <signal name="LCD_RS" />
        <signal name="LCD_E" />
        <signal name="SF_CE" />
        <signal name="Clk_50MHz" />
        <signal name="XLXN_82(63:0)" />
        <port polarity="Output" name="VGA_G" />
        <port polarity="Output" name="VGA_B" />
        <port polarity="Output" name="VGA_HS" />
        <port polarity="Output" name="VGA_VS" />
        <port polarity="Output" name="VGA_R" />
        <port polarity="Input" name="PS2_Clk" />
        <port polarity="Input" name="PS2_Data" />
        <port polarity="BiDirectional" name="LCD_D(3:0)" />
        <port polarity="Output" name="LCD_RW" />
        <port polarity="Output" name="LCD_RS" />
        <port polarity="Output" name="LCD_E" />
        <port polarity="Output" name="SF_CE" />
        <port polarity="Input" name="Clk_50MHz" />
        <blockdef name="obraz">
            <timestamp>2015-5-19T6:52:49</timestamp>
            <rect width="64" x="320" y="276" height="24" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-428" height="24" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="256" x="64" y="-448" height="832" />
        </blockdef>
        <blockdef name="VGA_driver">
            <timestamp>2015-3-10T7:58:56</timestamp>
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-448" height="768" />
        </blockdef>
        <blockdef name="PS2_Kbd">
            <timestamp>2015-3-10T7:33:30</timestamp>
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="KBD_driver">
            <timestamp>2015-3-24T7:11:40</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="LCD1x64">
            <timestamp>2015-5-19T6:18:58</timestamp>
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-224" y2="-224" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
            <rect width="288" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="obraz" name="XLXI_3">
            <blockpin signalname="XLXN_50" name="right" />
            <blockpin signalname="XLXN_49" name="left" />
            <blockpin signalname="Clk_50MHz" name="Clk50MHz" />
            <blockpin signalname="XLXN_26(9:0)" name="pix_x(9:0)" />
            <blockpin signalname="XLXN_27(8:0)" name="pix_y(8:0)" />
            <blockpin signalname="XLXN_20(2:0)" name="kolor(2:0)" />
            <blockpin signalname="XLXN_82(63:0)" name="score(63:0)" />
        </block>
        <block symbolname="VGA_driver" name="XLXI_4">
            <blockpin signalname="Clk_50MHz" name="Clk50MHz" />
            <blockpin signalname="XLXN_20(2:0)" name="kolor(2:0)" />
            <blockpin signalname="VGA_R" name="red_out" />
            <blockpin signalname="VGA_G" name="green_out" />
            <blockpin signalname="VGA_B" name="blue_out" />
            <blockpin signalname="VGA_HS" name="hs_out" />
            <blockpin signalname="VGA_VS" name="vs_out" />
            <blockpin signalname="XLXN_26(9:0)" name="pix_x(9:0)" />
            <blockpin signalname="XLXN_27(8:0)" name="pix_y(8:0)" />
        </block>
        <block symbolname="PS2_Kbd" name="XLXI_5">
            <blockpin signalname="PS2_Clk" name="PS2_Clk" />
            <blockpin signalname="PS2_Data" name="PS2_Data" />
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin signalname="XLXN_52" name="E0" />
            <blockpin signalname="XLXN_53" name="F0" />
            <blockpin signalname="XLXN_48" name="DO_Rdy" />
            <blockpin signalname="XLXN_47(7:0)" name="DO(7:0)" />
            <blockpin signalname="Clk_50MHz" name="Clk_Sys" />
        </block>
        <block symbolname="KBD_driver" name="XLXI_7">
            <blockpin signalname="XLXN_48" name="D0_Rdy" />
            <blockpin signalname="XLXN_54" name="E0" />
            <blockpin signalname="XLXN_47(7:0)" name="D0(7:0)" />
            <blockpin signalname="XLXN_50" name="right" />
            <blockpin signalname="XLXN_49" name="left" />
        </block>
        <block symbolname="and2b1" name="XLXI_9">
            <blockpin signalname="XLXN_53" name="I0" />
            <blockpin signalname="XLXN_52" name="I1" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="LCD1x64" name="XLXI_13">
            <blockpin signalname="Clk_50MHz" name="Clk_50MHz" />
            <blockpin name="Reset" />
            <blockpin signalname="XLXN_82(63:0)" name="Line(63:0)" />
            <blockpin name="Blank(15:0)" />
            <blockpin signalname="LCD_D(3:0)" name="LCD_D(3:0)" />
            <blockpin signalname="LCD_E" name="LCD_E" />
            <blockpin signalname="LCD_RW" name="LCD_RW" />
            <blockpin signalname="LCD_RS" name="LCD_RS" />
            <blockpin signalname="SF_CE" name="SF_CE" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="VGA_G">
            <wire x2="2432" y1="896" y2="896" x1="2400" />
        </branch>
        <branch name="VGA_B">
            <wire x2="2432" y1="960" y2="960" x1="2400" />
        </branch>
        <branch name="VGA_HS">
            <wire x2="2432" y1="1024" y2="1024" x1="2400" />
        </branch>
        <branch name="VGA_VS">
            <wire x2="2432" y1="1088" y2="1088" x1="2400" />
        </branch>
        <branch name="VGA_R">
            <wire x2="2432" y1="832" y2="832" x1="2400" />
        </branch>
        <iomarker fontsize="28" x="2432" y="896" name="VGA_G" orien="R0" />
        <iomarker fontsize="28" x="2432" y="960" name="VGA_B" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1024" name="VGA_HS" orien="R0" />
        <iomarker fontsize="28" x="2432" y="1088" name="VGA_VS" orien="R0" />
        <iomarker fontsize="28" x="2432" y="832" name="VGA_R" orien="R0" />
        <instance x="2016" y="1248" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_20(2:0)">
            <wire x2="1776" y1="800" y2="800" x1="1728" />
            <wire x2="1776" y1="800" y2="1216" x1="1776" />
            <wire x2="2016" y1="1216" y2="1216" x1="1776" />
        </branch>
        <branch name="PS2_Clk">
            <wire x2="368" y1="720" y2="720" x1="256" />
        </branch>
        <branch name="PS2_Data">
            <wire x2="368" y1="784" y2="784" x1="272" />
        </branch>
        <instance x="368" y="944" name="XLXI_5" orien="R0">
        </instance>
        <iomarker fontsize="28" x="272" y="784" name="PS2_Data" orien="R180" />
        <iomarker fontsize="28" x="256" y="720" name="PS2_Clk" orien="R180" />
        <iomarker fontsize="28" x="592" y="1248" name="Clk_50MHz" orien="R180" />
        <branch name="XLXN_27(8:0)">
            <wire x2="1344" y1="1184" y2="1184" x1="1264" />
            <wire x2="1264" y1="1184" y2="1648" x1="1264" />
            <wire x2="2592" y1="1648" y2="1648" x1="1264" />
            <wire x2="2592" y1="1216" y2="1216" x1="2400" />
            <wire x2="2592" y1="1216" y2="1648" x1="2592" />
        </branch>
        <branch name="XLXN_26(9:0)">
            <wire x2="1264" y1="688" y2="1120" x1="1264" />
            <wire x2="1344" y1="1120" y2="1120" x1="1264" />
            <wire x2="2592" y1="688" y2="688" x1="1264" />
            <wire x2="2592" y1="688" y2="1152" x1="2592" />
            <wire x2="2592" y1="1152" y2="1152" x1="2400" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1168" y1="1600" y2="1600" x1="800" />
            <wire x2="1344" y1="1376" y2="1376" x1="1168" />
            <wire x2="1168" y1="1376" y2="1600" x1="1168" />
        </branch>
        <branch name="XLXN_47(7:0)">
            <wire x2="64" y1="608" y2="1600" x1="64" />
            <wire x2="416" y1="1600" y2="1600" x1="64" />
            <wire x2="768" y1="608" y2="608" x1="64" />
            <wire x2="768" y1="608" y2="720" x1="768" />
            <wire x2="768" y1="720" y2="720" x1="752" />
        </branch>
        <branch name="XLXN_52">
            <wire x2="768" y1="784" y2="784" x1="752" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="768" y1="848" y2="848" x1="752" />
        </branch>
        <instance x="416" y="1632" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_48">
            <wire x2="768" y1="1392" y2="1392" x1="336" />
            <wire x2="336" y1="1392" y2="1536" x1="336" />
            <wire x2="416" y1="1536" y2="1536" x1="336" />
            <wire x2="768" y1="912" y2="912" x1="752" />
            <wire x2="768" y1="912" y2="1392" x1="768" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="400" y1="1424" y2="1664" x1="400" />
            <wire x2="416" y1="1664" y2="1664" x1="400" />
            <wire x2="1088" y1="1424" y2="1424" x1="400" />
            <wire x2="1088" y1="816" y2="816" x1="1024" />
            <wire x2="1088" y1="816" y2="1424" x1="1088" />
        </branch>
        <instance x="768" y="912" name="XLXI_9" orien="R0" />
        <instance x="1344" y="1216" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_50">
            <wire x2="816" y1="1536" y2="1536" x1="800" />
            <wire x2="1344" y1="1312" y2="1312" x1="816" />
            <wire x2="816" y1="1312" y2="1536" x1="816" />
        </branch>
        <branch name="SF_CE">
            <wire x2="2560" y1="400" y2="400" x1="2432" />
        </branch>
        <iomarker fontsize="28" x="2560" y="336" name="LCD_D(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2560" y="400" name="SF_CE" orien="R0" />
        <iomarker fontsize="28" x="2560" y="144" name="LCD_E" orien="R0" />
        <iomarker fontsize="28" x="2560" y="208" name="LCD_RS" orien="R0" />
        <iomarker fontsize="28" x="2560" y="272" name="LCD_RW" orien="R0" />
        <branch name="LCD_D(3:0)">
            <wire x2="2560" y1="336" y2="336" x1="2432" />
        </branch>
        <branch name="LCD_RW">
            <wire x2="2560" y1="272" y2="272" x1="2432" />
        </branch>
        <branch name="LCD_RS">
            <wire x2="2560" y1="208" y2="208" x1="2432" />
        </branch>
        <branch name="LCD_E">
            <wire x2="2560" y1="144" y2="144" x1="2432" />
        </branch>
        <branch name="Clk_50MHz">
            <wire x2="368" y1="912" y2="912" x1="288" />
            <wire x2="288" y1="912" y2="1104" x1="288" />
            <wire x2="1168" y1="1104" y2="1104" x1="288" />
            <wire x2="1168" y1="1104" y2="1248" x1="1168" />
            <wire x2="1344" y1="1248" y2="1248" x1="1168" />
            <wire x2="368" y1="848" y2="848" x1="320" />
            <wire x2="320" y1="848" y2="1056" x1="320" />
            <wire x2="1168" y1="1056" y2="1056" x1="320" />
            <wire x2="1168" y1="1056" y2="1104" x1="1168" />
            <wire x2="1168" y1="1248" y2="1248" x1="592" />
            <wire x2="1168" y1="624" y2="1056" x1="1168" />
            <wire x2="1872" y1="624" y2="624" x1="1168" />
            <wire x2="1904" y1="624" y2="624" x1="1872" />
            <wire x2="1904" y1="624" y2="832" x1="1904" />
            <wire x2="2016" y1="832" y2="832" x1="1904" />
            <wire x2="2016" y1="400" y2="400" x1="1872" />
            <wire x2="1872" y1="400" y2="624" x1="1872" />
        </branch>
        <instance x="2016" y="432" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_82(63:0)">
            <wire x2="1856" y1="1504" y2="1504" x1="1728" />
            <wire x2="1856" y1="144" y2="1504" x1="1856" />
            <wire x2="2016" y1="144" y2="144" x1="1856" />
        </branch>
    </sheet>
</drawing>