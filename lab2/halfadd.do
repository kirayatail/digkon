-- halfadd.do
-- 121102 wmax
restart -f
view signals wave
add wave x y s cut
force x 0 0, 1 100 -repeat 200
force y 0 0, 1 200 -repeat 400
run 400