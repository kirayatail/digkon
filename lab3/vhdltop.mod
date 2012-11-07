MODEL
MODEL_VERSION "v1998.8";
DESIGN "vhdltop";

/* port names and type */
INPUT S:PIN25 = din<2>;
INPUT S:PIN27 = din<1>;
INPUT S:PIN37 = din<0>;
INPUT S:PIN5 = clk;
INPUT S:PIN39 = resin;
INPUT S:PIN34 = dav;
OUTPUT S:PIN1 = borrmotor;
OUTPUT S:PIN11 = solenoid;

/* timing arc definitions */
clk_borrmotor_delay: DELAY clk borrmotor;
clk_solenoid_delay: DELAY clk solenoid;

/* timing check arc definitions */
dav_clk_setup: SETUP(POSEDGE) dav clk;
din<0>_clk_setup: SETUP(POSEDGE) din<0> clk;
din<1>_clk_setup: SETUP(POSEDGE) din<1> clk;
din<2>_clk_setup: SETUP(POSEDGE) din<2> clk;
resin_clk_setup: SETUP(POSEDGE) resin clk;
dav_clk_hold: HOLD(POSEDGE) dav clk;
din<0>_clk_hold: HOLD(POSEDGE) din<0> clk;
din<1>_clk_hold: HOLD(POSEDGE) din<1> clk;
din<2>_clk_hold: HOLD(POSEDGE) din<2> clk;
resin_clk_hold: HOLD(POSEDGE) resin clk;

ENDMODEL
