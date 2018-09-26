Tony Wong here is mine for reference:
config:
; Endstops
M574 X1 S3 F0 R0 ; Set active High endstops (S1=SENSORED) (X-MIN(1)) (S3=SENSORLESS)
M574 Y1 S3 F0 R0 ; Set active High endstops (S1=SENSORED) (Y-MIN(1)) (S3=SENSORLESS)
M915 X Y S5 R0 F0 ; set X and Y to sensitivity 5, do nothing when stall, unfiltered

my homeall:

;Home Y First
M400 ; make sure everything has stopped before we make changes
M913 X50 Y50 ; reduce motor current to 50% to prevent belts slipping
G91 ; relative positioning
G1 Z5 F4800 S2 ; lift Z relative to current position
G4 P500 ; wait 500msec
G1 S1 Y-430 F4800 ; move quickly to X or Y endstop and stop there (first pass)
G4 P500 ; wait 500msec
G1 Y10 ; Move Away 10mm X axis
G4 P500 ; wait 500msec
;G1 Z-5 F6000 S2 ; lift Z relative to current position
;G90 ; absolute positioning
;M400 ; make sure everything has stopped before we reset the motor currents
;M913 X100 Y100 ; motor currents back to normal

; Home X Second
M400 ; make sure everything has stopped before we make changes
;M913 X50 Y50 ; reduce motor current to 40% to prevent belts slipping
;G91 ; relative positioning
;G1 Z5 F4800 S2 ; lift Z relative to current position
;G4 P500 ; wait 500msec
G1 S1 X-305 F4800 ; move quickly to X or Y endstop and stop there (first pass)
G4 P500 ; wait 500msec
G1 X10 ; Move Away 10mm X axis
;G4 P500 ; wait 500msec
;G1 Z-5 F6000 S2 ; lift Z relative to current position
G90 ; absolute positioning
M400 ; make sure everything has stopped before we reset the motor currents
M913 X100 Y100 Z100 ; motor currents back to normal
