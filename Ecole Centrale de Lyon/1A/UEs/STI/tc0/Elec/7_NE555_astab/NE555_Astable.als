* Schematics Aliases *

.ALIASES
C_C2            C2(1=0 2=$N_0001 )
R_R2            R2(1=out 2=0 )
V_V1            V1(+=$N_0002 -=0 )
C_C1            C1(1=0 2=$N_0003 )
X_X1            X1(GND=0 TRIGGER=$N_0003 OUTPUT=out RESET=$N_0002
+  CONTROL=$N_0001 THRESHOLD=$N_0003 DISCHARGE=$N_0004 VCC=$N_0002 )
R_R1            R1(1=$N_0004 2=$N_0002 )
R_R3            R3(1=$N_0003 2=$N_0004 )
_    _(out=out)
.ENDALIASES

