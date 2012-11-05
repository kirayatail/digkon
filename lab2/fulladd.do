-- fulladd.do
-- 121102 wmax
restart -f
view signals wave
add wave a b cin s cut
force a 0
force b 0
force cin 0
force b 1 10, 0 30 -repeat 40
force a 1 20, 0 60 -repeat 80
force cin 0 0, 1 40 -repeat 80
run 80