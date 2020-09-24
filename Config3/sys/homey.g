M290 S0	R0				; remove baby stepping
M400

; Home X at the high end of the axis'''


G91		; relative
M564 H0
M913 Z20
G1 Z10	; move down to clear probe.   BUG!, what if at bottom?
M564 H1
M913 Z100

; Y
M913 Y60 V60
;G1 Y+300 F3600 H1
; split X and Y motors
M584 X0 U9 Y1 V5 P5
G1 Y300 V300 F3600 H1		; Move to true up V
M584 X0:9 Y1:5 P3
M913 Y100 V100

G91		; relative
M564 H0
M913 Z20
G1 Z-10	; move back up
M564 H1
M913 Z100

G90
