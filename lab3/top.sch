<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="xc9500xl" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="lev2puls">
            <timestamp>2012-11-7T9:37:9</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="puls2lev">
            <timestamp>2012-11-7T8:56:24</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="lev2puls" name="XLXI_8">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin name="levin" />
            <blockpin name="pulson" />
        </block>
        <block symbolname="puls2lev" name="XLXI_9">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin name="seton" />
            <blockpin name="setoff" />
            <blockpin name="levout" />
        </block>
        <block symbolname="puls2lev" name="XLXI_10">
            <blockpin name="clk" />
            <blockpin name="reset" />
            <blockpin name="seton" />
            <blockpin name="setoff" />
            <blockpin name="levout" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="1040" name="XLXI_8" orien="R0">
        </instance>
        <instance x="2288" y="1392" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2288" y="1760" name="XLXI_10" orien="R0">
        </instance>
    </sheet>
</drawing>