;FLAVOR:Marlin
;TIME:1231
;Filament used: 6.64536m
;Layer height: 2
;MINX:10.2
;MINY:110
;MINZ:0.2
;MAXX:209.8
;MAXY:110.865
;MAXZ:200.2
;Generated with Cura_SteamEngine 5.2.1
M82 ;absolute extrusion mode
; Ender 3 Custom Start G-code
; G92 E0 ; Reset Extruder
; G28 ; Home all axes
M104 S0 ; Start heating up the nozzle most of the way
M190 S0 ; Start heating the bed, wait until target temperature reached
M109 S0 ; Finish heating the nozzle
M107
M220 S800

G0 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed

G0 X0 Y10 Z0.2
G0 X205 Y10
G0 X205 Y10 Z4.2
G0 X0 Y10
G0 X0 Y10 Z8.2
G0 X205 Y10
G0 X205 Y10 Z12.2
G0 X0 Y10
G0 X0 Y10 Z16.2
G0 X205 Y10
G0 X205 Y10 Z20.2
G0 X0 Y10
G0 X0 Y10 Z24.2
G0 X205 Y10
G0 X205 Y10 Z28.2
G0 X0 Y10
G0 X0 Y10 Z32.2
G0 X205 Y10
G0 X205 Y10 Z36.2
G0 X0 Y10
G0 X0 Y10 Z40.2
G0 X205 Y10
G0 X205 Y10 Z44.2
G0 X0 Y10
G0 X0 Y10 Z48.2
G0 X205 Y10
G0 X205 Y10 Z52.2
G0 X0 Y10
G0 X0 Y10 Z56.2
G0 X205 Y10
G0 X205 Y10 Z60.2
G0 X0 Y10
G0 X0 Y10 Z64.2
G0 X205 Y10
G0 X205 Y10 Z68.2
G0 X0 Y10
G0 X0 Y10 Z72.2
G0 X205 Y10
G0 X205 Y10 Z76.2
G0 X0 Y10
G0 X0 Y10 Z80.2
G0 X205 Y10
G0 X205 Y10 Z84.2
G0 X0 Y10
G0 X0 Y10 Z88.2
G0 X205 Y10
G0 X205 Y10 Z92.2
G0 X0 Y10
G0 X0 Y10 Z96.2
G0 X205 Y10
G0 X205 Y10 Z100.2
G0 X0 Y10
G0 X0 Y10 Z104.2
G0 X205 Y10
G0 X205 Y10 Z108.2
G0 X0 Y10
G0 X0 Y10 Z112.2
G0 X205 Y10
G0 X205 Y10 Z116.2
G0 X0 Y10
G0 X0 Y10 Z120.2
G0 X205 Y10
G0 X205 Y10 Z124.2
G0 X0 Y10
G0 X0 Y10 Z128.2
G0 X205 Y10
G0 X205 Y10 Z132.2
G0 X0 Y10
G0 X0 Y10 Z136.2
G0 X205 Y10
G0 X205 Y10 Z140.2
G0 X0 Y10
G0 X0 Y10 Z144.2
G0 X205 Y10
G0 X205 Y10 Z148.2
G0 X0 Y10
G0 X0 Y10 Z152.2
G0 X205 Y10
G0 X205 Y10 Z156.2
G0 X0 Y10
G0 X0 Y10 Z160.2
G0 X205 Y10
G0 X205 Y10 Z164.2
G0 X0 Y10
G0 X0 Y10 Z168.2
G0 X205 Y10
G0 X205 Y10 Z172.2
G0 X0 Y10
G0 X0 Y10 Z176.2
G0 X205 Y10
G0 X205 Y10 Z180.2
G0 X0 Y10
G0 X0 Y10 Z184.2
G0 X205 Y10
G0 X205 Y10 Z188.2
G0 X0 Y10
G0 X0 Y10 Z192.2
G0 X205 Y10
G0 X205 Y10 Z196.2
G0 X0 Y10
G0 X0 Y10 Z200.2
G0 X205 Y10


; G28 ; Home all axes
M106 S0 ;Turn-off fan
M104 S0 ;Turn-off hotend
M140 S0 ;Turn-off bed

M84 X Y E ;Disable all steppers but Z

M82 ;absolute extrusion mode
M104 S0
;End of Gcode
;SETTING_3 {"global_quality": "[general]\\nversion = 4\\nname = Standard Quality
;SETTING_3  #2\\ndefinition = creality_ender3pro\\n\\n[metadata]\\ntype = qualit
;SETTING_3 y_changes\\nquality_type = standard\\nsetting_version = 20\\n\\n[valu
;SETTING_3 es]\\nadhesion_type = none\\nlayer_height = 2.0\\nmaterial_bed_temper
;SETTING_3 ature = 40\\nsupport_structure = tree\\n\\n", "extruder_quality": ["[
;SETTING_3 general]\\nversion = 4\\nname = Standard Quality #2\\ndefinition = cr
;SETTING_3 eality_ender3pro\\n\\n[metadata]\\ntype = quality_changes\\nquality_t
;SETTING_3 ype = standard\\nsetting_version = 20\\nposition = 0\\n\\n[values]\\n
;SETTING_3 infill_pattern = quarter_cubic\\ninfill_sparse_density = 0\\nmaterial
;SETTING_3 _print_temperature = 40\\nspeed_layer_0 = 150\\nspeed_print = 150\\ns
;SETTING_3 peed_print_layer_0 = 150\\nspeed_topbottom = 150\\nspeed_wall = 150\\
;SETTING_3 n\\n"]}
