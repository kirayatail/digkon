
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name host_cpld2.1 -dir "Z:/DigKon/project/digkon/project/host_cpld2.1/planAhead_run_1" -part xc7a100tcsg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "Z:/DigKon/project/digkon/project/host_cpld2.1/top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {Z:/DigKon/project/digkon/project/host_cpld2.1} }
set_property target_constrs_file "top.ucf" [current_fileset -constrset]
add_files [list {top.ucf}] -fileset [get_property constrset [current_run]]
link_design
