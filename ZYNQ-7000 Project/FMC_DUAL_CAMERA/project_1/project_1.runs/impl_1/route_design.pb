
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
Rule violation (%s) %s - %s
20*drc2
PLIO-72default:default2B
.Placement Constraints Check for IO constraints2default:default2�
�An IO Bus FIXED_IO_mio[53:0] with more than one IO standard is found. Components associated with this bus are: LVCMOS18 (FIXED_IO_mio[53], FIXED_IO_mio[52], FIXED_IO_mio[51], FIXED_IO_mio[50], FIXED_IO_mio[49], FIXED_IO_mio[48], FIXED_IO_mio[47], FIXED_IO_mio[46], FIXED_IO_mio[45], FIXED_IO_mio[44], FIXED_IO_mio[43], FIXED_IO_mio[42], FIXED_IO_mio[41], FIXED_IO_mio[40], FIXED_IO_mio[39] (the first 15 of 42 listed)); HSTL_I_18 (FIXED_IO_mio[27], FIXED_IO_mio[26], FIXED_IO_mio[25], FIXED_IO_mio[24], FIXED_IO_mio[23], FIXED_IO_mio[22], FIXED_IO_mio[21], FIXED_IO_mio[20], FIXED_IO_mio[19], FIXED_IO_mio[18], FIXED_IO_mio[17], FIXED_IO_mio[16]); 2default:defaultZ23-20h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 1 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
B
-Phase 1 Build RT Design | Checksum: cbac8952
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:38 ; elapsed = 00:00:27 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
A
,Phase 2.1 Create Timer | Checksum: cbac8952
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:39 ; elapsed = 00:00:28 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
2.2 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
F
1Phase 2.2 Pre Route Cleanup | Checksum: cbac8952
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:00:40 ; elapsed = 00:00:29 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
2.3 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.3 Update Timing | Checksum: 1f28915f5
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:08 ; elapsed = 00:00:47 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-3.290 | TNS=-239.410| WHS=-1.009 | THS=-834.266|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 1406520e8
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:24 ; elapsed = 00:00:56 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 13d0fcbfc
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:46 ; elapsed = 00:01:11 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.1.1 Update Timing | Checksum: 14460be3c
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:21 ; elapsed = 00:01:35 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-4.269 | TNS=-369.256| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
v

Phase %s%s
101*constraints2
4.1.2 2default:default2%
GlobIterForTiming2default:defaultZ18-101h px� 
t

Phase %s%s
101*constraints2
4.1.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
G
2Phase 4.1.2.1 Update Timing | Checksum: 18068eed2
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:23 ; elapsed = 00:01:36 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
4.1.2.2 2default:default2"
Fast Budgeting2default:defaultZ18-101h px� 
H
3Phase 4.1.2.2 Fast Budgeting | Checksum: 1f8e3e70a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:26 ; elapsed = 00:01:39 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
I
4Phase 4.1.2 GlobIterForTiming | Checksum: 1de663f08
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:27 ; elapsed = 00:01:40 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 1de663f08
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:27 ; elapsed = 00:01:40 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 4.2.1 Update Timing | Checksum: bd860572
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:28 ; elapsed = 00:01:41 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-4.505 | TNS=-383.021| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 207103a8b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:28 ; elapsed = 00:01:41 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 207103a8b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:28 ; elapsed = 00:01:41 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 1dbe5955e
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:33 ; elapsed = 00:01:43 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=-4.269 | TNS=-349.166| WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
B
-Phase 5.1 Delay CleanUp | Checksum: bf710268
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:35 ; elapsed = 00:01:45 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
L
7Phase 5.2 Clock Skew Optimization | Checksum: bf710268
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:35 ; elapsed = 00:01:45 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
N
9Phase 5 Delay and Skew Optimization | Checksum: bf710268
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:35 ; elapsed = 00:01:45 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
B
-Phase 6.1 Update Timing | Checksum: c19b52e2
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:41 ; elapsed = 00:01:48 . Memory (MB): peak = 1627.645 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2L
8| WNS=-4.269 | TNS=-321.530| WHS=-2.318 | THS=-277.572|
2default:defaultZ35-416h px� 
�

Phase %s%s
101*constraints2
6.2 2default:default25
!Lut RouteThru Assignment for hold2default:defaultZ18-101h px� 
W
BPhase 6.2 Lut RouteThru Assignment for hold | Checksum: 19830c986
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:13:56 ; elapsed = 00:09:06 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 19830c986
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:13:56 ; elapsed = 00:09:06 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
�
�The router encountered %s pins that are both setup-critical and hold-critical and tried to fix hold violations at the expense of setup slack.
Resolution: Run report_timing on the design before routing to identify timing paths with higher hold violations and low or negative setup margin.179*route2
172default:defaultZ35-446h px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 161dc8fed
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:13:57 ; elapsed = 00:09:07 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 161dc8fed
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:13:57 ; elapsed = 00:09:07 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 1fe86d9ec
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:14:01 ; elapsed = 00:09:11 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
q

Phase %s%s
101*constraints2
10.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
D
/Phase 10.1 Update Timing | Checksum: 27604db2e
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:14:07 ; elapsed = 00:09:14 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
�
Estimated Timing Summary %s
57*route2K
7| WNS=-4.269 | TNS=-321.530| WHS=0.051  | THS=0.000  |
2default:defaultZ35-57h px� 
B
!Router estimated timing not met.
128*routeZ35-328h px� 
G
2Phase 10 Post Router Timing | Checksum: 27604db2e
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:14:07 ; elapsed = 00:09:14 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
=
Router Completed Successfully
16*routeZ35-16h px� 
�

%s
*constraints2q
]Time (s): cpu = 00:14:07 ; elapsed = 00:09:14 . Memory (MB): peak = 2009.430 ; gain = 381.7852default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
572default:default2
1072default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:14:132default:default2
00:09:182default:default2
2009.4302default:default2
381.7852default:defaultZ17-268h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:212default:default2
00:00:072default:default2
2009.4302default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:242default:default2
00:00:112default:default2
2009.4302default:default2
0.0002default:defaultZ17-268h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
gD:/Xilinx_Project/FMC_DUAL_CAMERA/project_1/project_1.runs/impl_1/fmc_imageon_gs_wrapper_drc_routed.rptgD:/Xilinx_Project/FMC_DUAL_CAMERA/project_1/project_1.runs/impl_1/fmc_imageon_gs_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:142default:default2
00:00:092default:default2
2009.4302default:default2
0.0002default:defaultZ17-268h px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
rThe design failed to meet the timing requirements. Please see the %s report for details on the timing violations.
188*timing2"
timing summary2default:defaultZ38-282h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:282default:default2
00:00:162default:default2
2009.4302default:default2
0.0002default:defaultZ17-268h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:142default:default2
00:00:112default:default2
2009.4302default:default2
0.0002default:defaultZ17-268h px� 


End Record