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
        <signal name="XLXN_4" />
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
        <instance x="976" y="960" name="XLXI_1" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1392" y1="704" y2="704" x1="1360" />
        </branch>
        <branch name="asynk">
            <wire x2="976" y1="704" y2="704" x1="960" />
        </branch>
        <branch name="clk">
            <wire x2="960" y1="832" y2="832" x1="928" />
            <wire x2="976" y1="832" y2="832" x1="960" />
            <wire x2="960" y1="832" y2="976" x1="960" />
            <wire x2="1376" y1="976" y2="976" x1="960" />
            <wire x2="1376" y1="832" y2="976" x1="1376" />
            <wire x2="1392" y1="832" y2="832" x1="1376" />
        </branch>
        <instance x="1392" y="960" name="XLXI_2" orien="R0" />
        <iomarker fontsize="28" x="928" y="832" name="clk" orien="R180" />
        <iomarker fontsize="28" x="960" y="704" name="asynk" orien="R180" />
        <branch name="synksig">
            <wire x2="1808" y1="704" y2="704" x1="1776" />
        </branch>
        <iomarker fontsize="28" x="1808" y="704" name="synksig" orien="R0" />
    </sheet>
</drawing>