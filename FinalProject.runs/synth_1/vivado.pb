
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:052default:default2
381.2542default:default2
68.9302default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/utils_1/imports/synth_1/vga_control.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2w
cC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/utils_1/imports/synth_1/vga_control.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
p
Command: %s
53*	vivadotcl2?
+synth_design -top top -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
_
#Helper process launched with PID %s4824*oasys2
71482default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
.redeclaration of ANSI port '%s' is not allowed7382*oasys2
clkDiv2default:default2j
TC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/clockDiv.v2default:default2
282default:default8@Z8-11121h px? 
?
.redeclaration of ANSI port '%s' is not allowed7382*oasys2
segments2default:default2o
YC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/hexTo7Segment.v2default:default2
282default:default8@Z8-11121h px? 
?
,literal value %s truncated to fit in %s bits7190*oasys2
'd10002default:default2
82default:default2i
SC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/uart_rx.v2default:default2
542default:default8@Z8-10929h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
video_on2default:default2
wire2default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
802default:default8@Z8-11241h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
x2default:default2
wire2default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
802default:default8@Z8-11241h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
y2default:default2
wire2default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
802default:default8@Z8-11241h px? 
?
.'%s' is already implicitly declared on line %s5153*oasys2
video_on2default:default2
802default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
862default:default8@Z8-8895h px? 
?
.'%s' is already implicitly declared on line %s5153*oasys2
x2default:default2
802default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
872default:default8@Z8-8895h px? 
?
.'%s' is already implicitly declared on line %s5153*oasys2
y2default:default2
802default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
872default:default8@Z8-8895h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1192.328 ; gain = 409.047
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2"
clockGenerator2default:default2
 2default:default2p
ZC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/clockGenerator.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
clockDiv2default:default2
 2default:default2j
TC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/clockDiv.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clockDiv2default:default2
 2default:default2
02default:default2
12default:default2j
TC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/clockDiv.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
clockGenerator2default:default2
 2default:default2
02default:default2
12default:default2p
ZC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/clockGenerator.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
quadSevenSeg2default:default2
 2default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/quadSevenSeg.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
hexTo7Segment2default:default2
 2default:default2o
YC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/hexTo7Segment.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
hexTo7Segment2default:default2
 2default:default2
02default:default2
12default:default2o
YC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/hexTo7Segment.v2default:default2
232default:default8@Z8-6155h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num02default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num12default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num22default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
num32default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/quadSevenSeg.v2default:default2
652default:default8@Z8-567h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
quadSevenSeg2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/quadSevenSeg.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart2default:default2
 2default:default2f
PC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/uart.v2default:default2
222default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
baudrate_gen2default:default2
 2default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/baudrate_gen.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
baudrate_gen2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/baudrate_gen.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2i
SC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/uart_rx.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2i
SC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/uart_rx.v2default:default2
452default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/uart_rx.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart2default:default2
 2default:default2
02default:default2
12default:default2f
PC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/uart.v2default:default2
222default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
singlePulser2default:default2
 2default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/singlePulser.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
singlePulser2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/singlePulser.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
inputControl2default:default2
 2default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/inputControl.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/inputControl.v2default:default2
512default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
inputControl2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/inputControl.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ALU2default:default2
 2default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/ALU.v2default:default2
232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/ALU.v2default:default2
372default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/ALU.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

binary2DIG2default:default2
 2default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/binary2DIG.v2default:default2
232default:default8@Z8-6157h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
state2default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/binary2DIG.v2default:default2
342default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
A2default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/binary2DIG.v2default:default2
342default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
B2default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/binary2DIG.v2default:default2
342default:default8@Z8-567h px? 
?
8referenced signal '%s' should be on the sensitivity list567*oasys2
data_in2default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/binary2DIG.v2default:default2
342default:default8@Z8-567h px? 
?
synthesizing module '%s'%s4497*oasys2!
numberCounter2default:default2
 2default:default2o
YC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/numberCounter.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
numberCounter2default:default2
 2default:default2
02default:default2
12default:default2o
YC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/numberCounter.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

binary2DIG2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/binary2DIG.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_control2default:default2
 2default:default2m
WC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/vga_control.v2default:default2
92default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

digits_rom2default:default2
 2default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/digits_rom.v2default:default2
102default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/digits_rom.v2default:default2
242default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

digits_rom2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/digits_rom.v2default:default2
102default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_control2default:default2
 2default:default2
02default:default2
12default:default2m
WC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/vga_control.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
vga_sync2default:default2
 2default:default2x
bC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/imports/sources_1/vga_sync.v2default:default2
262default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
vga_sync2default:default2
 2default:default2
02default:default2
12default:default2x
bC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/imports/sources_1/vga_sync.v2default:default2
262default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/top.v2default:default2
232default:default8@Z8-6155h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
video_on2default:default2
vga_control2default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1288.359 ; gain = 505.078
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1288.359 ; gain = 505.078
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1288.359 ; gain = 505.078
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
1288.3592default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2r
\C:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/constrs_1/new/Basys-3-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2r
\C:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/constrs_1/new/Basys-3-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2p
\C:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/constrs_1/new/Basys-3-Master.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1352.7972default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1352.7972default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1352.797 ; gain = 569.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1352.797 ; gain = 569.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:15 . Memory (MB): peak = 1352.797 ; gain = 569.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2
data_reg2default:default2l
VC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/digits_rom.v2default:default2
262default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
bit_addr_reg2default:default2m
WC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/vga_control.v2default:default2
1142default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2 
row_addr_reg2default:default2m
WC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/vga_control.v2default:default2
1132default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2!
char_addr_reg2default:default2m
WC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.srcs/sources_1/new/vga_control.v2default:default2
1122default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1352.797 ; gain = 569.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               16 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 28    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input   16 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   16 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   16 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	 209 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 31    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
q
%s
*synth2Y
EDSP Report: Generating DSP A_reg0, operation Mode is: A2*(B:0xffff).
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: register A_reg_reg is absorbed into DSP A_reg0.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator A_reg0 is absorbed into DSP A_reg0.
2default:defaulth p
x
? 
q
%s
*synth2Y
EDSP Report: Generating DSP B_reg0, operation Mode is: A2*(B:0xffff).
2default:defaulth p
x
? 
h
%s
*synth2P
<DSP Report: register B_reg_reg is absorbed into DSP B_reg0.
2default:defaulth p
x
? 
e
%s
*synth2M
9DSP Report: operator B_reg0 is absorbed into DSP B_reg0.
2default:defaulth p
x
? 
l
%s
*synth2T
@DSP Report: Generating DSP ALU_Result0, operation Mode is: A*B.
2default:defaulth p
x
? 
o
%s
*synth2W
CDSP Report: operator ALU_Result0 is absorbed into DSP ALU_Result0.
2default:defaulth p
x
? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
video_on2default:default2
vga_control2default:defaultZ8-7129h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2/
vga_control/cdr/data_reg[0]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
vga_control/char_addr_reg[6]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys20
vga_control/char_addr_reg[4]2default:default2
top2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 1352.797 ; gain = 569.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px? 
s
%s*synth2[
G+------------+----------------------+---------------+----------------+
2default:defaulth px? 
t
%s*synth2\
H|Module Name | RTL Object           | Depth x Width | Implemented As | 
2default:defaulth px? 
s
%s*synth2[
G+------------+----------------------+---------------+----------------+
2default:defaulth px? 
t
%s*synth2\
H|vga_control | cdr/addr_reg_reg_rep | 256x8         | Block RAM      | 
2default:defaulth px? 
t
%s*synth2\
H+------------+----------------------+---------------+----------------+

2default:defaulth px? 
?
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px? 
?
%s*synth2?
+-------------+---------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|Module Name  | DSP Mapping   | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px? 
?
%s*synth2?
+-------------+---------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px? 
?
%s*synth2?
?|inputControl | A2*(B:0xffff) | 16     | 16     | -      | -      | 32     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|inputControl | A2*(B:0xffff) | 16     | 16     | -      | -      | 32     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?|ALU          | A*B           | 16     | 16     | -      | -      | 32     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px? 
?
%s*synth2?
?+-------------+---------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:29 ; elapsed = 00:00:30 . Memory (MB): peak = 1352.797 ; gain = 569.516
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1398.875 ; gain = 615.594
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys24
 vga_control/cdr/addr_reg_reg_rep2default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:32 ; elapsed = 00:00:33 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
? 
?
%s
*synth2?
}+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
~|Module Name  | DSP Mapping | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
? 
?
%s
*synth2?
}+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
? 
?
%s
*synth2?
~|ALU          | A'*B'       | 16     | 16     | -      | -      | 32     | 1    | 1    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|inputControl | A'*B        | 16     | 16     | -      | -      | 32     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
? 
?
%s
*synth2?
~|inputControl | A'*B        | 16     | 16     | -      | -      | 32     | 1    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
? 
?
%s
*synth2?
~+-------------+-------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |CARRY4   |   192|
2default:defaulth px? 
F
%s*synth2.
|3     |DSP48E1  |     3|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT1     |   109|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT2     |   119|
2default:defaulth px? 
F
%s*synth2.
|7     |LUT3     |   283|
2default:defaulth px? 
F
%s*synth2.
|8     |LUT4     |    49|
2default:defaulth px? 
F
%s*synth2.
|9     |LUT5     |   122|
2default:defaulth px? 
F
%s*synth2.
|10    |LUT6     |   174|
2default:defaulth px? 
F
%s*synth2.
|11    |MUXF7    |     1|
2default:defaulth px? 
F
%s*synth2.
|12    |RAMB18E1 |     1|
2default:defaulth px? 
F
%s*synth2.
|13    |FDCE     |    24|
2default:defaulth px? 
F
%s*synth2.
|14    |FDRE     |   186|
2default:defaulth px? 
F
%s*synth2.
|15    |LD       |    18|
2default:defaulth px? 
F
%s*synth2.
|16    |IBUF     |     3|
2default:defaulth px? 
F
%s*synth2.
|17    |OBUF     |    28|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 9 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:28 ; elapsed = 00:00:36 . Memory (MB): peak = 1408.164 ; gain = 560.445
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:37 ; elapsed = 00:00:38 . Memory (MB): peak = 1408.164 ; gain = 624.883
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0302default:default2
1412.0312default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2152default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1415.6912default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 18 instances were transformed.
  LD => LDCE: 18 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
ad3dfe262default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
632default:default2
242default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:412default:default2
00:00:482default:default2
1415.6912default:default2
1010.5742default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2_
KC:/Users/6/workspace/vivado/HwSynLabFinal/FinalProject.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Dec  8 15:25:31 20222default:defaultZ17-206h px? 


End Record