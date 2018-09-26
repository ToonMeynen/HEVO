M400 ; make sure everything has stopped before we make changes
M913 X65 Y65 ; XY motors to 65% current
M915 X Y S2 R0 F0 ; set X and Y to sensitivity 2, do nothing when stall, unfiltered
M574 X1 Y1 S3 ; set endstops to use motor stall

G91 ; use relative positioning
G1 Z10 F1200 ; lift Z

G1 S1 X-425 F2400 ; move right/back 325mm, stopping at the endstop
G4 P500 ; wait 500msec
G1 X5 ; move away from home
G4 P500 ; wait 500msec
M400 ; make sure everything has stopped before we make changes
; X is homed at this point, now home the other axis
G1 S1 Y-425 F2400 ; move beyond axis minimum
G4 P500 ; wait 500msec
G1 Y5 ; move away from home

G1 Z-10 F1200 ; lower Z
M400 ; make sure everything has stopped
M913 X100 Y100 ; XY motors to 100% current
G90 ; back to absolute positioning
M574 X1 Y1 S1 ; define active low microswitches
