; homeall.g
; called to home all axes
;
M400			          ; make sure everything has stopped before we make change
M574 X1 Y1 S3		    ; set endstops to use motor stall
M913 X50 Y50     	  ; drop motor currents to 50%
M915 X Y S3 R0		  ; set sensitivity to +3 unfiltered
G91			            ; use relative positioning
G1 S1 Z5
M400
G1 S1 X10 Y10 F8000 ; use relative positioning
G1 S1 X-400  F8000	; move X all the way left and stop at end
G1 S1 X20           ; move to edge of glass
G92 X0	            ; set X0 at edge of glass
G1 S1 Y-400  F8000	; move Y all the way left and stop at end
G1 S1 Y40  		      ; move to edge of glass
G92 S1 Y0	          ; set Y0 at edge of glass
G1 S1 X145 Y145		  ; go to back center of bed for measurement
G30                 ; probe bed to set z0
G1 S1 Z8	          ; lower bed for clearance
G90			            ; back to absolute positioning

M400			          ; make sure everything has stopped before we reset the motor currents
M913 X100 Y100 Z100 ; motor currents back to 100%
G0 X0 Y0            ; move to home position
M574 X1 S0 		      ; redefine active low and unused microswitches
M574 Y1 S1 		      ; redefine active low and unused microswitches
