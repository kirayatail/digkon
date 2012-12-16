<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="nextKey" />
        <signal name="resetChecker" />
        <signal name="XLXN_30" />
        <signal name="sendDone" />
        <signal name="data(3:0)" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="trig" />
        <signal name="lastkey" />
        <signal name="getRand" />
        <signal name="sendEnable" />
        <signal name="larm" />
        <signal name="lowClk" />
        <signal name="Timeout" />
        <signal name="resp(3:0)" />
        <signal name="XLXN_84" />
        <signal name="XLXN_85" />
        <signal name="rcv" />
        <signal name="okLmp" />
        <signal name="XLXN_106" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="found" />
        <signal name="XLXN_111" />
        <port polarity="Output" name="nextKey" />
        <port polarity="Output" name="resetChecker" />
        <port polarity="Input" name="sendDone" />
        <port polarity="Input" name="data(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="Input" name="trig" />
        <port polarity="Output" name="lastkey" />
        <port polarity="Output" name="getRand" />
        <port polarity="Output" name="sendEnable" />
        <port polarity="Output" name="larm" />
        <port polarity="Input" name="lowClk" />
        <port polarity="Output" name="resp(3:0)" />
        <port polarity="Input" name="rcv" />
        <port polarity="Output" name="okLmp" />
        <port polarity="Output" name="found" />
        <blockdef name="ctrl">
            <timestamp>2012-12-11T13:56:33</timestamp>
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
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
            <rect width="256" x="64" y="-512" height="704" />
        </blockdef>
        <blockdef name="checker">
            <timestamp>2012-12-14T12:48:12</timestamp>
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
        <blockdef name="receiver">
            <timestamp>2012-12-9T12:48:46</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="lev2puls">
            <timestamp>2012-12-15T15:5:37</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="ctrl" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_109" name="reset" />
            <blockpin signalname="XLXN_110" name="trig" />
            <blockpin signalname="Timeout" name="timeout" />
            <blockpin signalname="XLXN_84" name="rcvDone" />
            <blockpin signalname="sendDone" name="sendDone" />
            <blockpin signalname="found" name="checkOK" />
            <blockpin signalname="lastkey" name="lastKey" />
            <blockpin signalname="getRand" name="rand" />
            <blockpin signalname="sendEnable" name="send" />
            <blockpin signalname="XLXN_85" name="rcvEnable" />
            <blockpin signalname="XLXN_30" name="timerstart" />
            <blockpin signalname="nextKey" name="nextKey" />
            <blockpin signalname="resetChecker" name="checkRst" />
            <blockpin signalname="larm" name="larmOut" />
            <blockpin signalname="okLmp" name="okOut" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="rst" name="I" />
            <blockpin signalname="XLXN_109" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_11">
            <blockpin signalname="trig" name="I" />
            <blockpin signalname="XLXN_106" name="O" />
        </block>
        <block symbolname="checker" name="XLXI_2">
            <blockpin signalname="resp(3:0)" name="resp(3:0)" />
            <blockpin signalname="data(3:0)" name="chall(3:0)" />
            <blockpin signalname="nextKey" name="nextKey" />
            <blockpin signalname="resetChecker" name="reset" />
            <blockpin signalname="lastkey" name="lastKey" />
            <blockpin signalname="found" name="found" />
        </block>
        <block symbolname="timer" name="XLXI_9">
            <blockpin signalname="XLXN_30" name="restart" />
            <blockpin signalname="lowClk" name="lowclk" />
            <blockpin signalname="Timeout" name="timeout" />
        </block>
        <block symbolname="receiver" name="XLXI_12">
            <blockpin signalname="XLXN_109" name="reset" />
            <blockpin signalname="lowClk" name="lowClk" />
            <blockpin signalname="rcv" name="receiver" />
            <blockpin signalname="XLXN_85" name="enable" />
            <blockpin signalname="XLXN_84" name="rcvDone" />
            <blockpin signalname="resp(3:0)" name="rcvData(3:0)" />
        </block>
        <block symbolname="lev2puls" name="XLXI_13">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="XLXN_109" name="reset" />
            <blockpin signalname="XLXN_106" name="levin" />
            <blockpin signalname="XLXN_110" name="pulson" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="nextKey">
            <wire x2="1632" y1="496" y2="496" x1="1536" />
            <wire x2="1632" y1="496" y2="1360" x1="1632" />
            <wire x2="1648" y1="1360" y2="1360" x1="1632" />
            <wire x2="1728" y1="1360" y2="1360" x1="1648" />
            <wire x2="1648" y1="1360" y2="1728" x1="1648" />
        </branch>
        <branch name="data(3:0)">
            <wire x2="304" y1="960" y2="960" x1="288" />
            <wire x2="304" y1="960" y2="1296" x1="304" />
            <wire x2="1504" y1="1296" y2="1296" x1="304" />
            <wire x2="1728" y1="1296" y2="1296" x1="1504" />
            <wire x2="1504" y1="1296" y2="1744" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="240" y="320" name="rst" orien="R180" />
        <iomarker fontsize="28" x="288" y="880" name="sendDone" orien="R180" />
        <branch name="sendDone">
            <wire x2="416" y1="880" y2="880" x1="288" />
            <wire x2="1152" y1="576" y2="576" x1="416" />
            <wire x2="416" y1="576" y2="880" x1="416" />
        </branch>
        <iomarker fontsize="28" x="288" y="960" name="data(3:0)" orien="R180" />
        <iomarker fontsize="28" x="240" y="384" name="trig" orien="R180" />
        <iomarker fontsize="28" x="240" y="256" name="clk" orien="R180" />
        <branch name="clk">
            <wire x2="640" y1="256" y2="256" x1="240" />
            <wire x2="1152" y1="256" y2="256" x1="640" />
            <wire x2="640" y1="256" y2="384" x1="640" />
            <wire x2="672" y1="384" y2="384" x1="640" />
        </branch>
        <branch name="rst">
            <wire x2="288" y1="320" y2="320" x1="240" />
        </branch>
        <branch name="trig">
            <wire x2="288" y1="384" y2="384" x1="240" />
        </branch>
        <branch name="getRand">
            <wire x2="2016" y1="256" y2="256" x1="1536" />
        </branch>
        <branch name="sendEnable">
            <wire x2="2016" y1="336" y2="336" x1="1536" />
        </branch>
        <branch name="larm">
            <wire x2="2016" y1="656" y2="656" x1="1536" />
        </branch>
        <instance x="1152" y="736" name="XLXI_1" orien="R0">
        </instance>
        <branch name="lastkey">
            <wire x2="1152" y1="704" y2="704" x1="1136" />
            <wire x2="1136" y1="704" y2="912" x1="1136" />
            <wire x2="2176" y1="912" y2="912" x1="1136" />
            <wire x2="2176" y1="912" y2="1120" x1="2176" />
            <wire x2="2176" y1="1120" y2="1232" x1="2176" />
            <wire x2="2400" y1="1120" y2="1120" x1="2176" />
            <wire x2="2176" y1="1232" y2="1232" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2016" y="656" name="larm" orien="R0" />
        <iomarker fontsize="28" x="2016" y="336" name="sendEnable" orien="R0" />
        <iomarker fontsize="28" x="2016" y="256" name="getRand" orien="R0" />
        <branch name="lowClk">
            <wire x2="752" y1="800" y2="800" x1="288" />
            <wire x2="752" y1="800" y2="1040" x1="752" />
            <wire x2="752" y1="1040" y2="1616" x1="752" />
            <wire x2="1072" y1="1616" y2="1616" x1="752" />
            <wire x2="944" y1="1040" y2="1040" x1="752" />
            <wire x2="944" y1="1040" y2="1104" x1="944" />
            <wire x2="1136" y1="1104" y2="1104" x1="944" />
        </branch>
        <iomarker fontsize="28" x="288" y="800" name="lowClk" orien="R180" />
        <branch name="Timeout">
            <wire x2="1136" y1="144" y2="448" x1="1136" />
            <wire x2="1152" y1="448" y2="448" x1="1136" />
            <wire x2="1584" y1="144" y2="144" x1="1136" />
            <wire x2="1584" y1="144" y2="1552" x1="1584" />
            <wire x2="1584" y1="1552" y2="1552" x1="1456" />
        </branch>
        <branch name="resp(3:0)">
            <wire x2="1696" y1="1232" y2="1232" x1="1520" />
            <wire x2="1728" y1="1232" y2="1232" x1="1696" />
            <wire x2="1728" y1="1104" y2="1104" x1="1696" />
            <wire x2="1696" y1="1104" y2="1232" x1="1696" />
        </branch>
        <branch name="XLXN_84">
            <wire x2="1024" y1="160" y2="512" x1="1024" />
            <wire x2="1152" y1="512" y2="512" x1="1024" />
            <wire x2="1600" y1="160" y2="160" x1="1024" />
            <wire x2="1600" y1="160" y2="1040" x1="1600" />
            <wire x2="1600" y1="1040" y2="1040" x1="1520" />
        </branch>
        <branch name="XLXN_85">
            <wire x2="1136" y1="1232" y2="1232" x1="1056" />
            <wire x2="1056" y1="1232" y2="1328" x1="1056" />
            <wire x2="1616" y1="1328" y2="1328" x1="1056" />
            <wire x2="1616" y1="768" y2="768" x1="1536" />
            <wire x2="1616" y1="768" y2="1328" x1="1616" />
        </branch>
        <branch name="rcv">
            <wire x2="368" y1="464" y2="464" x1="240" />
            <wire x2="368" y1="464" y2="1168" x1="368" />
            <wire x2="1136" y1="1168" y2="1168" x1="368" />
        </branch>
        <iomarker fontsize="28" x="240" y="464" name="rcv" orien="R180" />
        <instance x="1072" y="1648" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_30">
            <wire x2="80" y1="176" y2="1552" x1="80" />
            <wire x2="1072" y1="1552" y2="1552" x1="80" />
            <wire x2="1552" y1="176" y2="176" x1="80" />
            <wire x2="1552" y1="176" y2="416" x1="1552" />
            <wire x2="1552" y1="416" y2="416" x1="1536" />
        </branch>
        <instance x="1136" y="1264" name="XLXI_12" orien="R0">
        </instance>
        <instance x="1728" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <branch name="resetChecker">
            <wire x2="1552" y1="576" y2="576" x1="1536" />
            <wire x2="1552" y1="576" y2="1424" x1="1552" />
            <wire x2="1680" y1="1424" y2="1424" x1="1552" />
            <wire x2="1728" y1="1424" y2="1424" x1="1680" />
            <wire x2="1680" y1="1424" y2="1600" x1="1680" />
            <wire x2="1808" y1="1600" y2="1600" x1="1680" />
        </branch>
        <branch name="okLmp">
            <wire x2="1808" y1="896" y2="896" x1="1536" />
            <wire x2="1808" y1="720" y2="896" x1="1808" />
            <wire x2="2016" y1="720" y2="720" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="2016" y="720" name="okLmp" orien="R0" />
        <instance x="672" y="544" name="XLXI_13" orien="R0">
        </instance>
        <instance x="288" y="416" name="XLXI_11" orien="R0" />
        <branch name="XLXN_106">
            <wire x2="592" y1="384" y2="384" x1="512" />
            <wire x2="592" y1="384" y2="512" x1="592" />
            <wire x2="672" y1="512" y2="512" x1="592" />
        </branch>
        <instance x="288" y="352" name="XLXI_10" orien="R0" />
        <branch name="XLXN_109">
            <wire x2="592" y1="320" y2="320" x1="512" />
            <wire x2="608" y1="320" y2="320" x1="592" />
            <wire x2="1104" y1="320" y2="320" x1="608" />
            <wire x2="1152" y1="320" y2="320" x1="1104" />
            <wire x2="1104" y1="320" y2="1040" x1="1104" />
            <wire x2="1136" y1="1040" y2="1040" x1="1104" />
            <wire x2="608" y1="320" y2="448" x1="608" />
            <wire x2="672" y1="448" y2="448" x1="608" />
        </branch>
        <branch name="XLXN_110">
            <wire x2="1152" y1="384" y2="384" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="2400" y="1120" name="lastkey" orien="R0" />
        <branch name="found">
            <wire x2="1072" y1="192" y2="640" x1="1072" />
            <wire x2="1152" y1="640" y2="640" x1="1072" />
            <wire x2="2240" y1="192" y2="192" x1="1072" />
            <wire x2="2240" y1="192" y2="1200" x1="2240" />
            <wire x2="2240" y1="1200" y2="1424" x1="2240" />
            <wire x2="2352" y1="1200" y2="1200" x1="2240" />
            <wire x2="2240" y1="1424" y2="1424" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="1728" y="1104" name="resp(3:0)" orien="R0" />
        <iomarker fontsize="28" x="1504" y="1744" name="data(3:0)" orien="R90" />
        <iomarker fontsize="28" x="1808" y="1600" name="resetChecker" orien="R0" />
        <iomarker fontsize="28" x="2352" y="1200" name="found" orien="R0" />
        <iomarker fontsize="28" x="1648" y="1728" name="nextKey" orien="R90" />
    </sheet>
</drawing>