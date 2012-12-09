<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_6" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_4(3:0)" />
        <signal name="XLXN_5(3:0)" />
        <signal name="XLXN_8" />
        <signal name="xmt" />
        <signal name="key(3:0)" />
        <signal name="rcv" />
        <signal name="XLXN_34" />
        <signal name="XLXN_3" />
        <signal name="XLXN_20" />
        <signal name="XLXN_2" />
        <signal name="XLXN_19" />
        <signal name="XLXN_42" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="XLXN_45" />
        <port polarity="Output" name="xmt" />
        <port polarity="Input" name="key(3:0)" />
        <port polarity="Input" name="rcv" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <blockdef name="ctrl">
            <timestamp>2012-12-9T18:20:31</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="receiver">
            <timestamp>2012-12-9T15:7:38</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="crypto">
            <timestamp>2012-12-9T15:7:55</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
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
        <blockdef name="counter">
            <timestamp>2012-12-9T18:25:3</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
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
        <block symbolname="sender" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="sendEnable" />
            <blockpin signalname="XLXN_20" name="lowClk" />
            <blockpin signalname="XLXN_5(3:0)" name="data(3:0)" />
            <blockpin signalname="XLXN_2" name="sendDone" />
            <blockpin signalname="xmt" name="transmitter" />
        </block>
        <block symbolname="crypto" name="XLXI_3">
            <blockpin signalname="XLXN_4(3:0)" name="plain(3:0)" />
            <blockpin signalname="key(3:0)" name="key(3:0)" />
            <blockpin signalname="XLXN_5(3:0)" name="enc(3:0)" />
        </block>
        <block symbolname="receiver" name="XLXI_2">
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_20" name="lowClk" />
            <blockpin signalname="rcv" name="receiver" />
            <blockpin signalname="XLXN_3" name="enable" />
            <blockpin signalname="XLXN_45" name="rcvDone" />
            <blockpin signalname="XLXN_4(3:0)" name="rcvData(3:0)" />
        </block>
        <block symbolname="counter" name="XLXI_8">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_42" name="reset" />
            <blockpin signalname="XLXN_20" name="done" />
        </block>
        <block symbolname="ctrl" name="XLXI_1">
            <blockpin signalname="XLXN_45" name="rcvDone" />
            <blockpin signalname="XLXN_2" name="sendDone" />
            <blockpin signalname="XLXN_20" name="lowClk" />
            <blockpin signalname="XLXN_3" name="rcvEnable" />
            <blockpin signalname="XLXN_8" name="sendEnable" />
            <blockpin signalname="XLXN_42" name="reset" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="rst" name="I" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2192" y="1088" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_4(3:0)">
            <wire x2="1744" y1="1056" y2="1056" x1="1632" />
        </branch>
        <branch name="XLXN_5(3:0)">
            <wire x2="2192" y1="1056" y2="1056" x1="2128" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2176" y1="576" y2="576" x1="2080" />
            <wire x2="2176" y1="576" y2="928" x1="2176" />
            <wire x2="2192" y1="928" y2="928" x1="2176" />
        </branch>
        <branch name="xmt">
            <wire x2="2784" y1="1056" y2="1056" x1="2576" />
        </branch>
        <instance x="1248" y="1088" name="XLXI_2" orien="R0">
        </instance>
        <branch name="rcv">
            <wire x2="1248" y1="992" y2="992" x1="384" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1248" y1="1056" y2="1056" x1="1232" />
            <wire x2="1232" y1="1056" y2="1232" x1="1232" />
            <wire x2="2160" y1="1232" y2="1232" x1="1232" />
            <wire x2="2160" y1="448" y2="448" x1="2080" />
            <wire x2="2160" y1="448" y2="1232" x1="2160" />
        </branch>
        <instance x="784" y="672" name="XLXI_8" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="1200" y1="576" y2="576" x1="1168" />
            <wire x2="1200" y1="576" y2="928" x1="1200" />
            <wire x2="1248" y1="928" y2="928" x1="1200" />
            <wire x2="1344" y1="576" y2="576" x1="1200" />
            <wire x2="1344" y1="576" y2="752" x1="1344" />
            <wire x2="2144" y1="752" y2="752" x1="1344" />
            <wire x2="2144" y1="752" y2="992" x1="2144" />
            <wire x2="2192" y1="992" y2="992" x1="2144" />
            <wire x2="1696" y1="576" y2="576" x1="1344" />
        </branch>
        <instance x="1696" y="608" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1632" y1="336" y2="512" x1="1632" />
            <wire x2="1696" y1="512" y2="512" x1="1632" />
            <wire x2="2592" y1="336" y2="336" x1="1632" />
            <wire x2="2592" y1="336" y2="928" x1="2592" />
            <wire x2="2592" y1="928" y2="928" x1="2576" />
        </branch>
        <instance x="1744" y="1152" name="XLXI_3" orien="R0">
        </instance>
        <branch name="key(3:0)">
            <wire x2="1744" y1="1120" y2="1120" x1="384" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="720" y1="864" y2="864" x1="688" />
            <wire x2="1248" y1="864" y2="864" x1="720" />
            <wire x2="784" y1="640" y2="640" x1="720" />
            <wire x2="720" y1="640" y2="752" x1="720" />
            <wire x2="1232" y1="752" y2="752" x1="720" />
            <wire x2="720" y1="752" y2="864" x1="720" />
            <wire x2="1696" y1="640" y2="640" x1="1232" />
            <wire x2="1232" y1="640" y2="752" x1="1232" />
        </branch>
        <instance x="464" y="896" name="XLXI_14" orien="R0" />
        <branch name="clk">
            <wire x2="784" y1="576" y2="576" x1="384" />
        </branch>
        <branch name="rst">
            <wire x2="464" y1="864" y2="864" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="864" name="rst" orien="R180" />
        <iomarker fontsize="28" x="384" y="576" name="clk" orien="R180" />
        <iomarker fontsize="28" x="384" y="992" name="rcv" orien="R180" />
        <iomarker fontsize="28" x="384" y="1120" name="key(3:0)" orien="R180" />
        <iomarker fontsize="28" x="2784" y="1056" name="xmt" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="1664" y1="864" y2="864" x1="1632" />
            <wire x2="1664" y1="448" y2="864" x1="1664" />
            <wire x2="1696" y1="448" y2="448" x1="1664" />
        </branch>
    </sheet>
</drawing>