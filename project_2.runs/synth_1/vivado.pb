
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/surya/Desktop/project_2/project_2.srcs/utils_1/imports/synth_1/bitcoin_miner.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2[
YC:/Users/surya/Desktop/project_2/project_2.srcs/utils_1/imports/synth_1/bitcoin_miner.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
i
Command: %s
53*	vivadotcl28
6synth_design -top bitcoin_miner -part xc7a200tfbg676-2Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a200tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a200tZ17-349h px� 
E
Loading part %s157*device2
xc7a200tfbg676-2Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
16376Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1078.965 ; gain = 469.258
h px� 
�
synthesizing module '%s'%s4497*oasys2
bitcoin_miner2
 2Q
MC:/Users/surya/Desktop/project_2/project_2.srcs/sources_1/new/bitcoin_miner.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
sha256_block2
 2P
LC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_block.v2
258@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
sha256_round2
 2P
LC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_round.v2
248@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
Ch2
 2F
BC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/Ch.v2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter WORDSIZE bound to: 32 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Ch2
 2
02
12F
BC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/Ch.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Maj2
 2G
CC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/Maj.v2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter WORDSIZE bound to: 32 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Maj2
 2
02
12G
CC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/Maj.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	sha256_S42
 2M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_S4.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	sha256_S42
 2
02
12M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_S4.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	sha256_S32
 2M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_S3.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	sha256_S32
 2
02
12M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_S3.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

sha2_round2
 2N
JC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha2_round.v2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter WORDSIZE bound to: 32 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

sha2_round2
 2
02
12N
JC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha2_round.v2
248@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sha256_round2
 2
02
12P
LC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_round.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	sha256_s02
 2M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_s0.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	sha256_s02
 2
02
12M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_s0.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	sha256_s12
 2M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_s1.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	sha256_s12
 2
02
12M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_s1.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	W_machine2
 2M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/W_machine.v2
248@Z8-6157h px� 
L
%s
*synth24
2	Parameter WORDSIZE bound to: 32 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	W_machine2
 2
02
12M
IC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/W_machine.v2
248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
sha256_K_machine2
 2T
PC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_K_machine.v2
248@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sha256_K_machine2
 2
02
12T
PC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_K_machine.v2
248@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
sha256_block2
 2
02
12P
LC:/Users/surya/Desktop/project_1/project_1.srcs/sources_1/new/sha256_block.v2
258@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bitcoin_miner2
 2
02
12Q
MC:/Users/surya/Desktop/project_2/project_2.srcs/sources_1/new/bitcoin_miner.v2
238@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
mined_hash_reg2
bitcoin_miner2Q
MC:/Users/surya/Desktop/project_2/project_2.srcs/sources_1/new/bitcoin_miner.v2
968@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
nonce_out_reg2
bitcoin_miner2Q
MC:/Users/surya/Desktop/project_2/project_2.srcs/sources_1/new/bitcoin_miner.v2
978@Z8-7137h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1194.027 ; gain = 584.320
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1194.027 ; gain = 584.320
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1194.027 ; gain = 584.320
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:022

00:00:022

1194.0272
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2S
OC:/Users/surya/Desktop/project_2/project_2.srcs/constrs_1/new/bitcoin_miner.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2S
OC:/Users/surya/Desktop/project_2/project_2.srcs/constrs_1/new/bitcoin_miner.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0262

1497.0272
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_xdc: 2

00:00:032

00:00:202

1540.2232
43.195Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:032

00:00:202

1540.2232
43.195Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:42 ; elapsed = 00:01:01 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a200tfbg676-2
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:42 ; elapsed = 00:01:01 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:43 ; elapsed = 00:01:01 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:44 ; elapsed = 00:01:02 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   5 Input   32 Bit       Adders := 40    
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 40    
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 399   
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit       Adders := 40    
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 40    
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 40    
h p
x
� 
H
%s
*synth20
.	   3 Input     32 Bit         XORs := 200   
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	             2048 Bit    Registers := 40    
h p
x
� 
H
%s
*synth20
.	              512 Bit    Registers := 40    
h p
x
� 
H
%s
*synth20
.	              256 Bit    Registers := 41    
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 321   
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 40    
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 43    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input  512 Bit        Muxes := 40    
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 320   
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 40    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 58    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
s
%s
*synth2[
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:51 ; elapsed = 00:01:10 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:01 ; elapsed = 00:01:20 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:01:04 ; elapsed = 00:01:24 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:01:06 ; elapsed = 00:01:25 . Memory (MB): peak = 1540.277 ; gain = 930.570
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:01:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:11 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:12 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:12 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+--------------+------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name   | RTL Name                                                         | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+--------------+------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[2009] | 5      | 34    | YES          | NO                 | YES               | 34     | 0       | 
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[1946] | 7      | 8     | YES          | NO                 | YES               | 8      | 0       | 
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[1759] | 4      | 54    | YES          | NO                 | YES               | 54     | 0       | 
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[1508] | 6      | 24    | YES          | NO                 | YES               | 24     | 0       | 
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[1087] | 8      | 3     | YES          | NO                 | YES               | 3      | 0       | 
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[543]  | 11     | 1     | YES          | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[280]  | 9      | 2     | YES          | NO                 | YES               | 2      | 0       | 
h p
x
� 
�
%s
*synth2�
�|bitcoin_miner | sha256_pipeline[39].sha256_inst/sha256_K_machine/rom_q_reg[1318] | 10     | 1     | YES          | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+--------------+------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |   118|
h px� 
2
%s*synth2
|3     |LUT1   |   133|
h px� 
2
%s*synth2
|4     |LUT2   |   429|
h px� 
2
%s*synth2
|5     |LUT3   |   625|
h px� 
2
%s*synth2
|6     |LUT4   |    38|
h px� 
2
%s*synth2
|7     |LUT5   |    98|
h px� 
2
%s*synth2
|8     |LUT6   |   104|
h px� 
2
%s*synth2
|9     |SRL16E |   127|
h px� 
2
%s*synth2
|10    |FDCE   |   550|
h px� 
2
%s*synth2
|11    |FDPE   |     2|
h px� 
2
%s*synth2
|12    |FDRE   |  1693|
h px� 
2
%s*synth2
|13    |FDSE   |   776|
h px� 
2
%s*synth2
|14    |IBUF   |   422|
h px� 
2
%s*synth2
|15    |OBUF   |   289|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:12 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:39 ; elapsed = 00:00:51 . Memory (MB): peak = 1645.422 ; gain = 689.465
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:12 ; elapsed = 00:01:31 . Memory (MB): peak = 1645.422 ; gain = 1035.715
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0662

1648.2702
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
118Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1654.5392
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

85df149dZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442
32
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:01:202

00:01:422

1654.5392

1284.234Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0202

1654.5392
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2K
IC:/Users/surya/Desktop/project_2/project_2.runs/synth_1/bitcoin_miner.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2e
creport_utilization -file bitcoin_miner_utilization_synth.rpt -pb bitcoin_miner_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Feb 25 14:01:20 2025Z17-206h px� 


End Record