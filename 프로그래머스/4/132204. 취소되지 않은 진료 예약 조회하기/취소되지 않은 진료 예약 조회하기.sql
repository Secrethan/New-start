-- 코드를 입력하세요
SELECT A.APNT_NO
     , P.PT_NAME
     , P.PT_NO
     , A.MCDP_CD
     , D.DR_NAME
     , A.APNT_YMD
  FROM APPOINTMENT A
     , PATIENT P
     , DOCTOR D
 WHERE 1=1 
   AND D.DR_ID = A.MDDR_ID
   AND P.PT_NO = A.PT_NO
   AND A.APNT_CNCL_YN = 'N'
   AND TO_CHAR(A.APNT_YMD,'YYYYMMDD') = '20220413'
   AND A.MCDP_CD = 'CS'
   
 ORDER BY A.APNT_YMD 