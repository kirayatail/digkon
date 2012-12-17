<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_23(3:0)" />
        <signal name="resp(3:0)" />
        <signal name="chall(3:0)" />
        <signal name="nextKey" />
        <signal name="reset" />
        <signal name="lastKey" />
        <signal name="found" />
        <signal name="XLXN_31(3:0)" />
        <port polarity="Input" name="resp(3:0)" />
        <port polarity="Input" name="chall(3:0)" />
        <port polarity="Input" name="nextKey" />
        <port polarity="Input" name="reset" />
        <port polarity="Output" name="lastKey" />
        <port polarity="Output" name="found" />
        <blockdef name="keylookup">
            <timestamp>2012-12-5T9:53:54</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="crypto">
            <timestamp>2012-12-5T10:48:42</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="equals">
            <timestamp>2012-12-5T11:1:48</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="keylookup" name="XLXI_12">
            <blockpin signalname="nextKey" name="getNext" />
            <blockpin signalname="reset" name="reset" />
            <blockpin signalname="lastKey" name="isLast" />
            <blockpin signalname="XLXN_31(3:0)" name="key(3:0)" />
        </block>
        <block symbolname="crypto" name="XLXI_15">
            <blockpin signalname="chall(3:0)" name="plain(3:0)" />
            <blockpin signalname="XLXN_31(3:0)" name="key(3:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="enc(3:0)" />
        </block>
        <block symbolname="equals" name="XLXI_17">
            <blockpin signalname="XLXN_23(3:0)" name="A(3:0)" />
            <blockpin signalname="resp(3:0)" name="B(3:0)" />
            <blockpin signalname="found" name="result" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="848" y="1312" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_23(3:0)">
            <wire x2="1824" y1="1216" y2="1216" x1="1760" />
        </branch>
        <branch name="resp(3:0)">
            <wire x2="1808" y1="1360" y2="1360" x1="640" />
            <wire x2="1824" y1="1280" y2="1280" x1="1808" />
            <wire x2="1808" y1="1280" y2="1360" x1="1808" />
        </branch>
        <branch name="chall(3:0)">
            <wire x2="1360" y1="1088" y2="1088" x1="640" />
            <wire x2="1360" y1="1088" y2="1216" x1="1360" />
            <wire x2="1376" y1="1216" y2="1216" x1="1360" />
        </branch>
        <instance x="1376" y="1312" name="XLXI_15" orien="R0">
        </instance>
        <branch name="nextKey">
            <wire x2="848" y1="1216" y2="1216" x1="640" />
        </branch>
        <branch name="reset">
            <wire x2="848" y1="1280" y2="1280" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="1216" name="nextKey" orien="R180" />
        <iomarker fontsize="28" x="640" y="1280" name="reset" orien="R180" />
        <branch name="lastKey">
            <wire x2="1248" y1="1216" y2="1216" x1="1232" />
            <wire x2="2240" y1="1120" y2="1120" x1="1248" />
            <wire x2="1248" y1="1120" y2="1216" x1="1248" />
        </branch>
        <branch name="found">
            <wire x2="2224" y1="1216" y2="1216" x1="2208" />
            <wire x2="2240" y1="1216" y2="1216" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2240" y="1216" name="found" orien="R0" />
        <iomarker fontsize="28" x="2240" y="1120" name="lastKey" orien="R0" />
        <iomarker fontsize="28" x="640" y="1088" name="chall(3:0)" orien="R180" />
        <iomarker fontsize="28" x="640" y="1360" name="resp(3:0)" orien="R180" />
        <instance x="1824" y="1312" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_31(3:0)">
            <wire x2="1376" y1="1280" y2="1280" x1="1232" />
        </branch>
    </sheet>
</drawing>