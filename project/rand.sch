<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_25" />
        <signal name="XLXN_35(7:0)" />
        <signal name="rand(7:0)" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="rst" />
        <signal name="clk" />
        <signal name="getrand" />
        <port polarity="Output" name="rand(7:0)" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="getrand" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="32" y1="-64" y2="-64" x1="96" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="64" />
        </blockdef>
        <blockdef name="fd8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="cr8ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_25" name="P" />
        </block>
        <block symbolname="fd8ce" name="XLXI_7">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="getrand" name="CE" />
            <blockpin signalname="XLXN_62" name="CLR" />
            <blockpin signalname="XLXN_35(7:0)" name="D(7:0)" />
            <blockpin signalname="rand(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="cr8ce" name="XLXI_11">
            <blockpin signalname="XLXN_61" name="C" />
            <blockpin signalname="XLXN_25" name="CE" />
            <blockpin signalname="XLXN_62" name="CLR" />
            <blockpin signalname="XLXN_35(7:0)" name="Q(7:0)" />
        </block>
        <block symbolname="inv" name="XLXI_12">
            <blockpin signalname="clk" name="I" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="rst" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1584" y="1024" name="XLXI_6" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="1648" y1="1024" y2="1264" x1="1648" />
        </branch>
        <branch name="XLXN_35(7:0)">
            <wire x2="2160" y1="1200" y2="1200" x1="2032" />
        </branch>
        <branch name="rand(7:0)">
            <wire x2="2784" y1="1200" y2="1200" x1="2544" />
        </branch>
        <iomarker fontsize="28" x="2784" y="1200" name="rand(7:0)" orien="R0" />
        <instance x="1648" y="1456" name="XLXI_11" orien="R0" />
        <branch name="XLXN_61">
            <wire x2="1648" y1="1328" y2="1328" x1="1616" />
        </branch>
        <instance x="1392" y="1360" name="XLXI_12" orien="R0" />
        <branch name="XLXN_62">
            <wire x2="1440" y1="1424" y2="1424" x1="1344" />
            <wire x2="1648" y1="1424" y2="1424" x1="1440" />
            <wire x2="1440" y1="1424" y2="1504" x1="1440" />
            <wire x2="2160" y1="1504" y2="1504" x1="1440" />
            <wire x2="2160" y1="1424" y2="1504" x1="2160" />
        </branch>
        <branch name="rst">
            <wire x2="1120" y1="1424" y2="1424" x1="1072" />
        </branch>
        <instance x="1120" y="1456" name="XLXI_4" orien="R0" />
        <iomarker fontsize="28" x="1072" y="1424" name="rst" orien="R180" />
        <branch name="clk">
            <wire x2="1376" y1="1328" y2="1328" x1="1200" />
            <wire x2="1392" y1="1328" y2="1328" x1="1376" />
            <wire x2="1376" y1="1328" y2="1456" x1="1376" />
            <wire x2="2096" y1="1456" y2="1456" x1="1376" />
            <wire x2="2160" y1="1328" y2="1328" x1="2096" />
            <wire x2="2096" y1="1328" y2="1456" x1="2096" />
        </branch>
        <instance x="2160" y="1456" name="XLXI_7" orien="R0" />
        <branch name="getrand">
            <wire x2="2096" y1="1088" y2="1088" x1="1280" />
            <wire x2="2096" y1="1088" y2="1264" x1="2096" />
            <wire x2="2160" y1="1264" y2="1264" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="1280" y="1088" name="getrand" orien="R180" />
        <iomarker fontsize="28" x="1200" y="1328" name="clk" orien="R180" />
    </sheet>
</drawing>