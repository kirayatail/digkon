<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_1" />
        <signal name="XLXN_5" />
        <signal name="XLXN_30" />
        <signal name="lowclk" />
        <signal name="senddone" />
        <signal name="data(3:0)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_56" />
        <signal name="clk" />
        <signal name="reset" />
        <signal name="trig" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="rand" />
        <signal name="send" />
        <signal name="larm" />
        <port polarity="Input" name="lowclk" />
        <port polarity="Input" name="senddone" />
        <port polarity="Input" name="data(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="reset" />
        <port polarity="Input" name="trig" />
        <port polarity="Output" name="rand" />
        <port polarity="Output" name="send" />
        <port polarity="Output" name="larm" />
        <blockdef name="ctrl">
            <timestamp>2012-12-5T12:45:12</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-400" y2="-400" x1="320" />
            <line x2="384" y1="-320" y2="-320" x1="320" />
            <line x2="384" y1="-240" y2="-240" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-80" y2="-80" x1="320" />
        </blockdef>
        <blockdef name="checker">
            <timestamp>2012-12-5T11:9:0</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="timer">
            <timestamp>2012-12-5T13:1:59</timestamp>
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
        <block symbolname="ctrl" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_51" name="reset" />
            <blockpin signalname="XLXN_56" name="trig" />
            <blockpin signalname="XLXN_61" name="timeout" />
            <blockpin name="rcvDone" />
            <blockpin signalname="senddone" name="sendDone" />
            <blockpin signalname="XLXN_62" name="checkOK" />
            <blockpin signalname="XLXN_1" name="lastKey" />
            <blockpin signalname="rand" name="rand" />
            <blockpin signalname="send" name="send" />
            <blockpin signalname="XLXN_30" name="timerstart" />
            <blockpin signalname="XLXN_4" name="nextKey" />
            <blockpin signalname="XLXN_5" name="checkRst" />
            <blockpin signalname="larm" name="larmOut" />
        </block>
        <block symbolname="checker" name="XLXI_2">
            <blockpin name="resp(3:0)" />
            <blockpin signalname="data(3:0)" name="chall(3:0)" />
            <blockpin signalname="XLXN_4" name="nextKey" />
            <blockpin signalname="XLXN_5" name="reset" />
            <blockpin signalname="XLXN_1" name="lastKey" />
            <blockpin signalname="XLXN_62" name="found" />
        </block>
        <block symbolname="timer" name="XLXI_9">
            <blockpin signalname="XLXN_30" name="restart" />
            <blockpin signalname="lowclk" name="lowclk" />
            <blockpin signalname="XLXN_61" name="timeout" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="reset" name="I" />
            <blockpin signalname="XLXN_51" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="trig" name="I" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="XLXN_4">
            <wire x2="1120" y1="1536" y2="1536" x1="1056" />
            <wire x2="1056" y1="1536" y2="1696" x1="1056" />
            <wire x2="1616" y1="1696" y2="1696" x1="1056" />
            <wire x2="1616" y1="928" y2="928" x1="1504" />
            <wire x2="1616" y1="928" y2="1696" x1="1616" />
        </branch>
        <instance x="1120" y="1168" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1120" y1="1136" y2="1136" x1="1104" />
            <wire x2="1104" y1="1136" y2="1248" x1="1104" />
            <wire x2="1552" y1="1248" y2="1248" x1="1104" />
            <wire x2="1552" y1="1248" y2="1408" x1="1552" />
            <wire x2="1552" y1="1408" y2="1408" x1="1504" />
        </branch>
        <instance x="1120" y="1632" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_5">
            <wire x2="1120" y1="1600" y2="1600" x1="1072" />
            <wire x2="1072" y1="1600" y2="1680" x1="1072" />
            <wire x2="1680" y1="1680" y2="1680" x1="1072" />
            <wire x2="1680" y1="1008" y2="1008" x1="1504" />
            <wire x2="1680" y1="1008" y2="1680" x1="1680" />
        </branch>
        <branch name="data(3:0)">
            <wire x2="656" y1="960" y2="960" x1="288" />
            <wire x2="656" y1="960" y2="1472" x1="656" />
            <wire x2="1120" y1="1472" y2="1472" x1="656" />
        </branch>
        <iomarker fontsize="28" x="240" y="320" name="reset" orien="R180" />
        <iomarker fontsize="28" x="288" y="752" name="lowclk" orien="R180" />
        <branch name="lowclk">
            <wire x2="304" y1="752" y2="752" x1="288" />
            <wire x2="1024" y1="416" y2="416" x1="304" />
            <wire x2="304" y1="416" y2="752" x1="304" />
        </branch>
        <iomarker fontsize="28" x="288" y="880" name="senddone" orien="R180" />
        <branch name="senddone">
            <wire x2="688" y1="880" y2="880" x1="288" />
            <wire x2="688" y1="880" y2="1008" x1="688" />
            <wire x2="1120" y1="1008" y2="1008" x1="688" />
        </branch>
        <iomarker fontsize="28" x="288" y="960" name="data(3:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="384" name="trig" orien="R180" />
        <instance x="1024" y="448" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_30">
            <wire x2="1024" y1="352" y2="352" x1="960" />
            <wire x2="960" y1="352" y2="528" x1="960" />
            <wire x2="1664" y1="528" y2="528" x1="960" />
            <wire x2="1664" y1="528" y2="848" x1="1664" />
            <wire x2="1664" y1="848" y2="848" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="240" y="256" name="clk" orien="R180" />
        <branch name="XLXN_51">
            <wire x2="1120" y1="752" y2="752" x1="1088" />
        </branch>
        <instance x="864" y="784" name="XLXI_10" orien="R0" />
        <branch name="XLXN_56">
            <wire x2="1120" y1="816" y2="816" x1="1088" />
        </branch>
        <instance x="864" y="848" name="XLXI_11" orien="R0" />
        <branch name="clk">
            <wire x2="672" y1="256" y2="256" x1="240" />
            <wire x2="672" y1="256" y2="688" x1="672" />
            <wire x2="1120" y1="688" y2="688" x1="672" />
        </branch>
        <branch name="reset">
            <wire x2="544" y1="320" y2="320" x1="240" />
            <wire x2="544" y1="320" y2="752" x1="544" />
            <wire x2="864" y1="752" y2="752" x1="544" />
        </branch>
        <branch name="trig">
            <wire x2="528" y1="384" y2="384" x1="240" />
            <wire x2="528" y1="384" y2="816" x1="528" />
            <wire x2="864" y1="816" y2="816" x1="528" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="1008" y1="880" y2="1184" x1="1008" />
            <wire x2="1728" y1="1184" y2="1184" x1="1008" />
            <wire x2="1120" y1="880" y2="880" x1="1008" />
            <wire x2="1728" y1="352" y2="352" x1="1408" />
            <wire x2="1728" y1="352" y2="1184" x1="1728" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="1120" y1="1072" y2="1072" x1="1056" />
            <wire x2="1056" y1="1072" y2="1232" x1="1056" />
            <wire x2="1584" y1="1232" y2="1232" x1="1056" />
            <wire x2="1584" y1="1232" y2="1600" x1="1584" />
            <wire x2="1584" y1="1600" y2="1600" x1="1504" />
        </branch>
        <branch name="rand">
            <wire x2="2192" y1="688" y2="688" x1="1504" />
        </branch>
        <branch name="send">
            <wire x2="2192" y1="768" y2="768" x1="1504" />
        </branch>
        <branch name="larm">
            <wire x2="2192" y1="1088" y2="1088" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="2192" y="1088" name="larm" orien="R0" />
        <iomarker fontsize="28" x="2192" y="768" name="send" orien="R0" />
        <iomarker fontsize="28" x="2192" y="688" name="rand" orien="R0" />
    </sheet>
</drawing>