; Ender 3 Custom Start G-code
G92 E0 ; Reset Extruder
G28 ; Home all axes
G1 Z5.0 F3000 ; Move Z Axis up a bit during heating to not damage bed
M104 S{material_print_temperature_layer_0} ; Start heating up the nozzle to printing temperature
M140 S{material_bed_temperature_layer_0} ; Start heating the bed to target temperature
M190 S{material_bed_temperature_layer_0} ; Wait for the bed to reach the target temperature
M109 S{material_print_temperature_layer_0} ; Wait for the nozzle to reach the printing temperature
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position
;G1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line
;G1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little
;G1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line
G92 E0 ; Reset Extruder
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish
