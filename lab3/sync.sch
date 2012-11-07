<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="asynk" />
        <signal name="clk" />
        <signal name="synksig" />
        <port polarity="Input" name="asynk" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="synksig" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="asynk" name="D" />
            <blockpin signalname="XLXN_1" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_1" name="D" />
            <blockpin signalname="synksig" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="176" y="384" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="592" y1="128" y2="128" x1="560" />
        </branch>
        <branch name="asynk">
            <wire x2="176" y1="128" y2="128" x1="160" />
        </branch>
        <branch name="clk">
            <wire x2="160" y1="256" y2="256" x1="128" />
            <wire x2="176" y1="256" y2="256" x1="160" />
            <wire x2="160" y1="256" y2="400" x1="160" />
            <wire x2="576" y1="400" y2="400" x1="160" />
            <wire x2="576" y1="256" y2="400" x1="576" />
            <wire x2="592" y1="256" y2="256" x1="576" />
        </branch>
        <instance x="592" y="384" name="XLXI_2" orien="R0" />
        <branch name="synksig">
            <wire x2="1008" y1="128" y2="128" x1="976" />
        </branch>
        <iomarker fontsize="28" x="128" y="256" name="clk" orien="R180" />
        <iomarker fontsize="28" x="160" y="128" name="asynk" orien="R180" />
        <iomarker fontsize="28" x="1008" y="128" name="synksig" orien="R0" />
    </sheet>
</drawing>