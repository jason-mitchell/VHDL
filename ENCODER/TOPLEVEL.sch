<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PHA" />
        <signal name="PHB" />
        <signal name="XLXN_6" />
        <signal name="XLXN_11" />
        <signal name="count_out(0)" />
        <signal name="count_out(1)" />
        <signal name="count_out(2)" />
        <signal name="count_out(3)" />
        <signal name="count_out(3:0)" />
        <signal name="XLXN_18" />
        <signal name="PULSE_OUT" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="SYSCLK" />
        <signal name="XLXN_29" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="DIR" />
        <signal name="XLXN_37" />
        <port polarity="Input" name="PHA" />
        <port polarity="Input" name="PHB" />
        <port polarity="Output" name="count_out(0)" />
        <port polarity="Output" name="count_out(1)" />
        <port polarity="Output" name="count_out(2)" />
        <port polarity="Output" name="count_out(3)" />
        <port polarity="Output" name="PULSE_OUT" />
        <port polarity="Input" name="SYSCLK" />
        <port polarity="Output" name="DIR" />
        <blockdef name="encoder">
            <timestamp>2016-4-9T20:13:44</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-192" height="320" />
        </blockdef>
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="UpDownCounter4Bit">
            <timestamp>2016-4-12T18:49:13</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="encoder" name="XLXI_1">
            <blockpin signalname="PHA" name="rotary_a" />
            <blockpin signalname="PHB" name="rotary_b" />
            <blockpin signalname="SYSCLK" name="clk" />
            <blockpin signalname="XLXN_33" name="detent" />
            <blockpin signalname="DIR" name="dir" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="XLXN_33" name="C" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="PULSE_OUT" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="PULSE_OUT" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="UpDownCounter4Bit" name="XLXI_10">
            <blockpin signalname="DIR" name="dir" />
            <blockpin signalname="XLXN_33" name="count_in" />
            <blockpin signalname="count_out(3:0)" name="count_out(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="PHA">
            <wire x2="912" y1="592" y2="592" x1="576" />
        </branch>
        <branch name="PHB">
            <wire x2="912" y1="656" y2="656" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="592" name="PHA" orien="R180" />
        <iomarker fontsize="28" x="576" y="656" name="PHB" orien="R180" />
        <iomarker fontsize="28" x="576" y="720" name="SYSCLK" orien="R180" />
        <instance x="912" y="752" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1504" y="688" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="2192" y="432" name="PULSE_OUT" orien="R0" />
        <instance x="1936" y="320" name="XLXI_3" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="1440" y1="224" y2="224" x1="1424" />
            <wire x2="2160" y1="224" y2="224" x1="1440" />
            <wire x2="2176" y1="224" y2="224" x1="2160" />
            <wire x2="2176" y1="224" y2="288" x1="2176" />
            <wire x2="1424" y1="224" y2="448" x1="1424" />
            <wire x2="1440" y1="448" y2="448" x1="1424" />
            <wire x2="1504" y1="432" y2="432" x1="1440" />
            <wire x2="1440" y1="432" y2="448" x1="1440" />
            <wire x2="2176" y1="288" y2="288" x1="2160" />
        </branch>
        <branch name="count_out(0)">
            <wire x2="2832" y1="928" y2="928" x1="2736" />
            <wire x2="3120" y1="928" y2="928" x1="2832" />
        </branch>
        <branch name="count_out(1)">
            <wire x2="2832" y1="992" y2="992" x1="2736" />
            <wire x2="3120" y1="992" y2="992" x1="2832" />
        </branch>
        <branch name="count_out(2)">
            <wire x2="2832" y1="1056" y2="1056" x1="2736" />
            <wire x2="3120" y1="1056" y2="1056" x1="2832" />
        </branch>
        <branch name="count_out(3)">
            <wire x2="2816" y1="1120" y2="1120" x1="2736" />
            <wire x2="2832" y1="1120" y2="1120" x1="2816" />
            <wire x2="3120" y1="1120" y2="1120" x1="2832" />
        </branch>
        <iomarker fontsize="28" x="3120" y="928" name="count_out(0)" orien="R0" />
        <iomarker fontsize="28" x="3120" y="992" name="count_out(1)" orien="R0" />
        <iomarker fontsize="28" x="3120" y="1056" name="count_out(2)" orien="R0" />
        <iomarker fontsize="28" x="3120" y="1120" name="count_out(3)" orien="R0" />
        <branch name="count_out(3:0)">
            <wire x2="2368" y1="1056" y2="1056" x1="2240" />
            <wire x2="2368" y1="816" y2="1056" x1="2368" />
            <wire x2="2640" y1="816" y2="816" x1="2368" />
            <wire x2="2640" y1="816" y2="928" x1="2640" />
            <wire x2="2640" y1="928" y2="992" x1="2640" />
            <wire x2="2640" y1="992" y2="1056" x1="2640" />
            <wire x2="2640" y1="1056" y2="1120" x1="2640" />
            <wire x2="2640" y1="1120" y2="1344" x1="2640" />
        </branch>
        <bustap x2="2736" y1="928" y2="928" x1="2640" />
        <bustap x2="2736" y1="992" y2="992" x1="2640" />
        <bustap x2="2736" y1="1056" y2="1056" x1="2640" />
        <bustap x2="2736" y1="1120" y2="1120" x1="2640" />
        <instance x="1856" y="1152" name="XLXI_10" orien="R0">
        </instance>
        <branch name="PULSE_OUT">
            <wire x2="1936" y1="288" y2="288" x1="1872" />
            <wire x2="1872" y1="288" y2="336" x1="1872" />
            <wire x2="1936" y1="336" y2="336" x1="1872" />
            <wire x2="1936" y1="336" y2="432" x1="1936" />
            <wire x2="2192" y1="432" y2="432" x1="1936" />
            <wire x2="1936" y1="432" y2="432" x1="1888" />
        </branch>
        <branch name="SYSCLK">
            <wire x2="912" y1="720" y2="720" x1="576" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="1392" y1="784" y2="784" x1="1296" />
            <wire x2="1392" y1="784" y2="1120" x1="1392" />
            <wire x2="1856" y1="1120" y2="1120" x1="1392" />
            <wire x2="1392" y1="560" y2="784" x1="1392" />
            <wire x2="1504" y1="560" y2="560" x1="1392" />
        </branch>
        <iomarker fontsize="28" x="1568" y="752" name="DIR" orien="R0" />
        <branch name="DIR">
            <wire x2="1424" y1="848" y2="848" x1="1296" />
            <wire x2="1424" y1="848" y2="1056" x1="1424" />
            <wire x2="1856" y1="1056" y2="1056" x1="1424" />
            <wire x2="1424" y1="752" y2="848" x1="1424" />
            <wire x2="1568" y1="752" y2="752" x1="1424" />
        </branch>
    </sheet>
</drawing>