* Schematics Aliases *

.ALIASES
R_R1            R1(1=discharge 2=$N_0001 )
C_C2            C2(1=0 2=$N_0002 )
C_C1            C1(1=0 2=discharge )
X_X1            X1(GND=0 TRIGGER=trig OUTPUT=out RESET=$N_0001 CONTROL=$N_0002
+  THRESHOLD=discharge DISCHARGE=discharge VCC=$N_0001 )
R_R2            R2(1=out 2=0 )
V_V1            V1(+=$N_0001 -=0 )
U_DSTM1          DSTM1(PIN1=trig )
_    _(discharge=discharge)
_    _(trig=trig)
_    _(out=out)
.ENDALIASES

