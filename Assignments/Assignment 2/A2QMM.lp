/* Objective function */
max: +420 P1Large +360 P1Medium +300 P1Small +420 P2Large +360 P2Medium +300 P2Small +420 P3Large +360 P3Medium
 +300 P3Small;

/* Constraints */
CapCon1: +P1Large +P1Medium +P1Small <= 750;
CapCon2: +P2Large +P2Medium +P2Small <= 900;
CapCon3: +P3Large +P3Medium +P3Small <= 450;
StoCon1: +20 P1Large +15 P1Medium +12 P1Small <= 13000;
StoCon2: +20 P2Large +15 P2Medium +12 P2Small <= 12000;
StoCon3: +20 P3Large +15 P3Medium +12 P3Small <= 5000;
SalCon1: +P1Large +P1Medium +P1Small <= 900;
SalCon2: +P2Large +P2Medium +P2Small <= 1200;
SalCon3: +P3Large +P3Medium +P3Small <= 750;
%C1: +6 P1Large +6 P1Medium +6 P1Small -5 P2Large -5 P2Medium -5 P2Small = 0;
%C2: +3 P1Large +3 P1Medium +3 P1Small -5 P3Large -5 P3Medium -5 P3Small = 0;
