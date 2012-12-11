<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="data(3:0)" />
        <signal name="xmt" />
        <signal name="sendDone" />
        <signal name="clk" />
        <signal name="getRand" />
        <signal name="sendEnable" />
        <signal name="lowClk" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="rst" />
        <port polarity="Output" name="data(3:0)" />
        <port polarity="Output" name="xmt" />
        <port polarity="Output" name="sendDone" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="getRand" />
        <port polarity="Input" name="sendEnable" />
        <port polarity="Output" name="lowClk" />
        <port polarity="Input" name="rst" />
        <blockdef name="counter">
            <timestamp>2012-12-10T9:47:27</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="sender">
            <timestamp>2012-12-9T18:20:50</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="rand">
            <timestamp>2012-12-10T9:48:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
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
        <block symbolname="sender" name="XLXI_2">
            <blockpin signalname="sendEnable" name="sendEnable" />
            <blockpin signalname="lowClk" name="lowClk" />
            <blockpin signalname="data(3:0)" name="data(3:0)" />
            <blockpin signalname="sendDone" name="sendDone" />
            <blockpin signalname="xmt" name="transmitter" />
        </block>
        <block symbolname="counter" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_20" name="reset" />
            <blockpin signalname="lowClk" name="done" />
        </block>
        <block symbolname="rand" name="XLXI_3">
            <blockpin signalname="XLXN_20" name="rst" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="getRand" name="getrand" />
            <blockpin signalname="data(3:0)" name="chall(3:0)" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="rst" name="I" />
            <blockpin signalname="XLXN_20" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1232" y="816" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1232" y="1120" name="XLXI_3" orien="R0">
        </instance>
        <branch name="data(3:0)">
            <wire x2="1760" y1="960" y2="960" x1="1616" />
            <wire x2="2544" y1="960" y2="960" x1="1760" />
            <wire x2="1920" y1="784" y2="784" x1="1760" />
            <wire x2="1760" y1="784" y2="960" x1="1760" />
        </branch>
        <branch name="xmt">
            <wire x2="2544" y1="784" y2="784" x1="2304" />
        </branch>
        <branch name="sendDone">
            <wire x2="2544" y1="656" y2="656" x1="2304" />
        </branch>
        <branch name="clk">
            <wire x2="1200" y1="720" y2="720" x1="752" />
            <wire x2="1232" y1="720" y2="720" x1="1200" />
            <wire x2="1200" y1="720" y2="1024" x1="1200" />
            <wire x2="1232" y1="1024" y2="1024" x1="1200" />
        </branch>
        <branch name="getRand">
            <wire x2="1232" y1="1088" y2="1088" x1="768" />
        </branch>
        <branch name="sendEnable">
            <wire x2="1168" y1="928" y2="928" x1="768" />
            <wire x2="1168" y1="848" y2="928" x1="1168" />
            <wire x2="1712" y1="848" y2="848" x1="1168" />
            <wire x2="1712" y1="656" y2="848" x1="1712" />
            <wire x2="1920" y1="656" y2="656" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="752" y="720" name="clk" orien="R180" />
        <iomarker fontsize="28" x="768" y="1088" name="getRand" orien="R180" />
        <branch name="lowClk">
            <wire x2="1648" y1="720" y2="720" x1="1616" />
            <wire x2="1920" y1="720" y2="720" x1="1648" />
            <wire x2="2544" y1="544" y2="544" x1="1648" />
            <wire x2="1648" y1="544" y2="720" x1="1648" />
        </branch>
        <instance x="1920" y="816" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="768" y="928" name="sendEnable" orien="R180" />
        <iomarker fontsize="28" x="2544" y="784" name="xmt" orien="R0" />
        <iomarker fontsize="28" x="2544" y="544" name="lowClk" orien="R0" />
        <iomarker fontsize="28" x="2544" y="960" name="data(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2544" y="656" name="sendDone" orien="R0" />
        <instance x="864" y="816" name="XLXI_4" orien="R0" />
        <branch name="XLXN_20">
            <wire x2="1120" y1="784" y2="784" x1="1088" />
            <wire x2="1232" y1="784" y2="784" x1="1120" />
            <wire x2="1120" y1="784" y2="960" x1="1120" />
            <wire x2="1232" y1="960" y2="960" x1="1120" />
        </branch>
        <branch name="rst">
            <wire x2="864" y1="784" y2="784" x1="752" />
        </branch>
        <iomarker fontsize="28" x="752" y="784" name="rst" orien="R180" />
    </sheet>
</drawing>