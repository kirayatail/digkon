<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_25" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="rst" />
        <signal name="clk" />
        <signal name="getrand" />
        <signal name="XLXN_63" />
        <signal name="XLXN_65" />
        <signal name="XLXN_76" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="chall(3:0)" />
        <signal name="chall(0)" />
        <signal name="chall(1)" />
        <signal name="chall(2)" />
        <signal name="chall(3)" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="getrand" />
        <port polarity="Output" name="chall(3:0)" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="fd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="cj4re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_25" name="P" />
        </block>
        <block symbolname="cj4re" name="XLXI_18">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_25" name="CE" />
            <blockpin signalname="rst" name="R" />
            <blockpin signalname="XLXN_66" name="Q0" />
            <blockpin signalname="XLXN_67" name="Q1" />
            <blockpin signalname="XLXN_68" name="Q2" />
            <blockpin signalname="XLXN_69" name="Q3" />
        </block>
        <block symbolname="fd4ce" name="XLXI_16">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="getrand" name="CE" />
            <blockpin signalname="rst" name="CLR" />
            <blockpin signalname="XLXN_66" name="D0" />
            <blockpin signalname="XLXN_67" name="D1" />
            <blockpin signalname="XLXN_68" name="D2" />
            <blockpin signalname="XLXN_69" name="D3" />
            <blockpin signalname="chall(0)" name="Q0" />
            <blockpin signalname="chall(1)" name="Q1" />
            <blockpin signalname="chall(2)" name="Q2" />
            <blockpin signalname="chall(3)" name="Q3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1024" name="XLXI_6" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="1648" y1="1024" y2="1136" x1="1648" />
            <wire x2="1712" y1="1136" y2="1136" x1="1648" />
        </branch>
        <branch name="rst">
            <wire x2="1712" y1="1424" y2="1424" x1="1072" />
            <wire x2="2256" y1="1424" y2="1424" x1="1712" />
            <wire x2="1712" y1="1296" y2="1424" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1072" y="1424" name="rst" orien="R180" />
        <branch name="clk">
            <wire x2="1616" y1="1328" y2="1328" x1="1200" />
            <wire x2="2256" y1="1328" y2="1328" x1="1616" />
            <wire x2="1712" y1="1200" y2="1200" x1="1616" />
            <wire x2="1616" y1="1200" y2="1328" x1="1616" />
        </branch>
        <branch name="getrand">
            <wire x2="1296" y1="1264" y2="1264" x1="1184" />
            <wire x2="1296" y1="1264" y2="1488" x1="1296" />
            <wire x2="2160" y1="1488" y2="1488" x1="1296" />
            <wire x2="2256" y1="1264" y2="1264" x1="2160" />
            <wire x2="2160" y1="1264" y2="1488" x1="2160" />
        </branch>
        <iomarker fontsize="28" x="1200" y="1328" name="clk" orien="R180" />
        <instance x="1712" y="1328" name="XLXI_18" orien="R0" />
        <iomarker fontsize="28" x="1184" y="1264" name="getrand" orien="R180" />
        <instance x="2256" y="1456" name="XLXI_16" orien="R0" />
        <branch name="XLXN_66">
            <wire x2="2192" y1="1008" y2="1008" x1="2096" />
            <wire x2="2208" y1="1008" y2="1008" x1="2192" />
            <wire x2="2256" y1="1008" y2="1008" x1="2208" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="2192" y1="1072" y2="1072" x1="2096" />
            <wire x2="2208" y1="1072" y2="1072" x1="2192" />
            <wire x2="2256" y1="1072" y2="1072" x1="2208" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="2192" y1="1136" y2="1136" x1="2096" />
            <wire x2="2208" y1="1136" y2="1136" x1="2192" />
            <wire x2="2256" y1="1136" y2="1136" x1="2208" />
        </branch>
        <branch name="XLXN_69">
            <wire x2="2192" y1="1200" y2="1200" x1="2096" />
            <wire x2="2208" y1="1200" y2="1200" x1="2192" />
            <wire x2="2256" y1="1200" y2="1200" x1="2208" />
        </branch>
        <branch name="chall(3:0)">
            <wire x2="2784" y1="976" y2="1008" x1="2784" />
            <wire x2="2784" y1="1008" y2="1072" x1="2784" />
            <wire x2="2784" y1="1072" y2="1136" x1="2784" />
            <wire x2="2784" y1="1136" y2="1200" x1="2784" />
            <wire x2="2784" y1="1200" y2="1232" x1="2784" />
            <wire x2="2912" y1="1232" y2="1232" x1="2784" />
        </branch>
        <bustap x2="2688" y1="1008" y2="1008" x1="2784" />
        <branch name="chall(0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1008" type="branch" />
            <wire x2="2672" y1="1008" y2="1008" x1="2640" />
            <wire x2="2688" y1="1008" y2="1008" x1="2672" />
        </branch>
        <bustap x2="2688" y1="1072" y2="1072" x1="2784" />
        <branch name="chall(1)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1072" type="branch" />
            <wire x2="2672" y1="1072" y2="1072" x1="2640" />
            <wire x2="2688" y1="1072" y2="1072" x1="2672" />
        </branch>
        <bustap x2="2688" y1="1136" y2="1136" x1="2784" />
        <branch name="chall(2)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1136" type="branch" />
            <wire x2="2672" y1="1136" y2="1136" x1="2640" />
            <wire x2="2688" y1="1136" y2="1136" x1="2672" />
        </branch>
        <bustap x2="2688" y1="1200" y2="1200" x1="2784" />
        <branch name="chall(3)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="2672" y="1200" type="branch" />
            <wire x2="2672" y1="1200" y2="1200" x1="2640" />
            <wire x2="2688" y1="1200" y2="1200" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2912" y="1232" name="chall(3:0)" orien="R0" />
    </sheet>
</drawing>