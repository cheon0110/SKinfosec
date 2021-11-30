# 삼성전자
SELECT t1.dt, t2.stk_nm, t1.c_prc, t1.M60_PRC
FROM history_dt t1 inner join stock t2 on (t1.stk_cd = t2.stk_cd)
where t2.stk_nm = '삼성전자';

#성신양회
SELECT t1.dt, t2.stk_nm, t1.c_prc, t1.M60_PRC
FROM history_dt t1 inner join stock t2 on (t1.stk_cd = t2.stk_cd)
where t2.stk_nm = '성신양회';

#카카오
SELECT t1.dt, t2.stk_nm, t1.c_prc, t1.M60_PRC
FROM history_dt t1 inner join stock t2 on (t1.stk_cd = t2.stk_cd)
where t2.stk_nm = '카카오';

#셀트리온
SELECT t1.dt, t2.stk_nm, t1.c_prc, t1.M60_PRC
from history_dt t1 inner join stock t2 on (t1.stk_cd = t2.stk_cd)
where t2.stk_nm = '셀트리온';