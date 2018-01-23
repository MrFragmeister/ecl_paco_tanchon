* Schematics Aliases *

.ALIASES
R_R2            R2(1=OUT_NMOS 2=$N_0001 )
R_R1            R1(1=0 2=OUT_PMOS )
V_V2            V2(+=$N_0001 -=0 )
M_M1            M1(d=OUT_NMOS g=$N_0002 s=0 s=0 )
M_M2            M2(d=OUT_PMOS g=OUT_NMOS s=$N_0001 s=$N_0001 )
V_V1            V1(+=$N_0002 -=0 )
_    _(OUT_NMOS=OUT_NMOS)
_    _(OUT_PMOS=OUT_PMOS)
.ENDALIASES

