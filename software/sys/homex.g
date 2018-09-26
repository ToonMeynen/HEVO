M400			    ; make sure everything has stopped before we make changes
G1 S1 Z3                    ; Lift Z
M574 X1 Y1 S3		    ; set endstops to use motor stall
M913 X50 Y50     	    ; drop motor currents to 50%
M915 X Y S3 R0		    ; set sensitivity to +3 unfiltered
G91			    ; use relative positioning
G1 S1 X10 F8000             ; use relative positioning
G1 S1 X-400 F8000	    ; move X all the way left and stop at end
G1 S1 X20		    ; move to edge of glass
G92 X0			    ; set X0 at edge of glass
G90			    ; back to absolute positioning
M400			    ; make sure everything has stopped before we reset the motor currents
M913 X100 Y100 Z100         ; motor currents back to 100%
M574 X1 S0 		    ; redefine active low and unused microswitches
M574 Y1 S1 		    ; redefine active low and unused microswitches
