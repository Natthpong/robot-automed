*** Settings ***
Library  Selenium2Library
Resource  reg.robot
Resource  ptm.robot
Resource  dpo.robot
Resource  tpd.robot
Resource  bil.robot

*** Variables ***
#เว็ปบราวเซอร์
${Browser}  chrome

#ชื่อเว็ปหรือเซิร์ฟเวอร์
${SERVER}  192.168.56.101

#ตัวแปลของ REG
${COMNAME_REG}  reg
${USERNAME_REG}  reg
${BROWSER_NAME_REG}  alias=reg
${PASSWORD_REG}  cnmi2559
${HN}  C764694
${lastdays}  31/12/2564
${Payer}  50257
${Identification_number}  7984033651011
${first_name_th}  ทดสอบชื่อ90
${last_name_th}  ทดสอบนามสกุล90
${birthdate}  18/04/2542
${father}  ทดสอบชื่อพ่อ
${mother}  ทดสอบชื่อแม่

#ตัวแปรของส่วน NURSE
${USERNAME_NURSE}  nurse
${PASSWORD_NURSE}  cnmi2559
${BROWSER_NAME_NURSE}  alias=nurse
${COMNAME_NURSE}  CNMED
${Chief_Complaint}  ปวดขาชาลง 2 ข้าง
${weight}  80.5
${height}  182
${temp}  36.5
${pulse}  71
${systolic}  112
${diastolic}  78
${breathe}  20
${o2}  99

#ตัวแปรของ Doctor
${USERNAME_DORTOR}  doctor1
${PASSWORD_DORTOR}  cnmi1234
${BROWSER_NAME_DORTOR}  alias=doctor
${COMNAME_DORTOR}  CNMED
${Diagnosis}  C412
${Drug}  par
${DOSE}  1
${QTY}  1
${Duration}  1
${Present illness}  ดีมาก
${Chest}  Clear

#ตัวแปรของ BIL
${USERNAME_BIL}  bil
${PASSWORD_BIL}  cnmi2559
${BROWSER_NAME_BIL}  alias=bil
${COMNAME_BIL}  MEE_BIL
${NAMEBIL}  ME
${NUMBIL}  0000019
${MONEY}  100
${Approval Code}  11111111

#ตัวแปรของ Pharma
${USERNAME_PHARMA}  pharma
${PASSWORD_PHARMA}  cnmi2559
${BROWSER_NAME_PHARMA}  alias=pharma
${COMNAME_PHARMA}  3A

#รหัสพนักงาน
${ADMIN}  111111

#ตัวแปรของคีย์ต่างๆ
${ENTER}  \ue007
${ESCAPE}  \ue00c
${TAB}  \ue004
${Coppy}  CTRL+C
${ALL}  CTRL+A

*** Keywords ***
รอ 5 วิ
    Sleep  5s
รอ 10 วิ
    Sleep  10s
รอ 15 วิ
    Sleep  15s
รอ 30 วิ
    Sleep  30s
ความเร็วในการกด
    Set Selenium Speed   0.5

*** Test Cases ***
1. เปิด Browser เพื่อเข้าหน้าจอ REG
    เปิด Browser เพื่อเข้าหน้าจอ REG
2. Form Login REG
    Form Login REG
3. REG Enter Page
    REG Enter Page
4. ช่องทางให้ข้อมูล
    ช่องทางให้ข้อมูล
5. หมายเลขบัตรประจำตัวประชาชน
    หมายเลขบัตรประจำตัวประชาชน
6. ชื่อ-นามสกุล
    ชื่อ-นามสกุล
7. เพศ
    เพศ
8. หมู่เลือด
    หมู่เลือด
9. วันเกิด
    วันเกิด
10. สัญชาติ
    สัญชาติ
11. ชื่อบิดา-มารดา
    ชื่อบิดา-มารดา
12. บันทึกข้อมูลผู้ป่วย
    บันทึกข้อมูลผู้ป่วย
13. พิมพ์ Consent form
    พิมพ์ Consent form
14. Open Encounter
    Open Encounter
15. คลิกเลือกแผนก
    คลิกเลือกแผนก
16. คลิกเลือกแพทย์
    คลิกเลือกแพทย์
17. บันทึก ADR
    บันทึก ADR
18. บันทึก Encounter ใหม่
    บันทึก Encounter ใหม่
19. ปิด popup ถ้าไม่มีรูปผู้ป่วย
    ปิด popup ถ้าไม่มีรูปผู้ป่วย
20. รับรองสิทธิ
    รับรองสิทธิ
21. เลือกประเภทบริการ
    เลือกประเภทบริการ
22. เลือกลำดับสิทธิ์
    เลือกลำดับสิทธิ์
23. เลือกสิทธิ์
    เลือกสิทธิ์
24. เลือกผู้จ่ายเงิน
    เลือกผู้จ่ายเงิน
25. ประเภทสิทธิ์
    ประเภทสิทธิ์
26. วันหมดอายุ
    วันหมดอายุ
27. บันทึกสิทธิ์
    บันทึกสิทธิ์
28. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
29. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
30. PTM-Triage Enter Page
    PTM-Triage Enter Page
31. ปิดหน้าคิว
    ปิดหน้าคิว
32. กรอก HN PTM-Triage
    กรอก HN PTM-Triage
33. Chief Complaint
    Chief Complaint
34. Close Popup :: Triage Success
    Close Popup :: Triage Success
35. Wait Objects After Enter Vital Sign
    Wait Objects After Enter Vital Sign
36. กรอก weight
    กรอก weight
37. กรอก height
    กรอก height
38. กรอก temp
    กรอก temp
39. กรอก pulse
    กรอก pulse
40. กรอก systolic
    กรอก systolic
41. กรอก diastolic
    กรอก diastolic
42. กรอก breathe
    กรอก breathe
43. กรอก O2 Sat
    กรอก O2 Sat
44. Save Vital Sign
    Save Vital Sign
45. Close Popup : Success
    Close Popup : Success
46. กดปุ่ม Home
    กดปุ่ม Home
47. เลือกหมวด PTM
    เลือกหมวด PTM
48. กรอก HN PTM
    กรอก HN PTM
49. คลิ๊กผู้ป่วย
    คลิ๊กผู้ป่วย
50. ปิด Vital Signs
    ปิด Vital Signs
51. Save ประเมินแรกรับ
    Save ประเมินแรกรับ
52. ปิดแจ้งเตือน
    ปิดแจ้งเตือน
53. คลิ๊กส่งเข้าคิว
    คลิ๊กส่งเข้าคิว
54. ปิดส่งเข้าคิว
    ปิดส่งเข้าคิว
55. เปิด Browser เพื่อเข้าหน้าจอDPO
    เปิด Browser เพื่อเข้าหน้าจอ DPO
56. Log in ด้วย DORTOR
    Log in ด้วย DORTOR
57. DPO Enter Page
    DPO Enter Page
58. กรอก HN DPO
    กรอก HN DPO
59. เลือกผู้ป่วย DPO
    เลือกผู้ป่วย DPO
60. ประวัติผู้ป่วย
    ประวัติผู้ป่วย
61. อาการ
    อาการ
62. Present illness
    Present illness
63. ข้อมูลการตรวจร่างกาย
    ข้อมูลการตรวจร่างกาย
64. Save ข้อมูลการตรวจร่างกาย
    Save ข้อมูลการตรวจร่างกาย
65. Diagnosis
    Diagnosis
66. คลิ๊ก Progression / order
    คลิ๊ก Progression / order
67. คลิ๊กเพิ่ม Progression / order
    คลิ๊กเพิ่ม Progression / order
68. คลิ๊ก Drug [STAT]
    คลิ๊ก Drug [STAT]
69. กรอกช่อง Drug
    กรอกช่อง Drug
70. กรอกช่อง Dose
    กรอกช่อง Dose
71. กรอกช่อง Qty
    กรอกช่อง Qty
72. กรอกช่อง Duration
    กรอกช่อง Duration
73. คลิ๊ก ADD TO ORDER
    คลิ๊ก ADD TO ORDER
74. คลิ๊ก CONFIRM ORDER
    คลิ๊ก CONFIRM ORDER
75. Save Order
    Save Order
76. ปิดหน้า Progression / Order
    ปิดหน้า Progression / Order
77. Check out
    Check out
78. Wait Result
    Wait Result
79. เปิด Browser เพื่อเข้าหน้าจอ Pharma
    เปิด Browser เพื่อเข้าหน้าจอ Pharma
80. Log in ด้วย Pharma
    Log in ด้วย Pharma
81. เลือก TPD
    เลือก TPD
82. กรอก HN TPD
    กรอก HN TPD
83. เปิดใบยาผู้ป่วย
    เปิดใบยาผู้ป่วย
84. VERIFY AND PRINT
    VERIFY AND PRINT
85. กรอก HN TPD
    กรอก HN TPD
86. เปิดใบยาผู้ป่วย
    เปิดใบยาผู้ป่วย
87. CHECK
    CHECK
88. ปิด pop-up CHECK
    ปิด pop-up CHECK
89. ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
    ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
90. ผู้จัดส่ง
    ผู้จัดส่ง
91. DELIVER
    DELIVER
92. ปิด pop-up deliver
    ปิด pop-up deliver
93. เปิดประวัติการสั่งยา
    เปิดประวัติการสั่งยา
94. coppy รหัสสั่งยา
    coppy รหัสสั่งยา
95. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
96. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
97. เลือกหมวด PTM
    เลือกหมวด PTM
98. เลือก DrugOrder
    เลือก DrugOrder
99. ใส่รหัสใบยา
    ใส่รหัสใบยา
100. RECEIVE
    RECEIVE
101. ปิด pop-up RECEIVE
    ปิด pop-up RECEIVE
102. กรอก HN PTM
    กรอก HN PTM
103. เลือกผู้ป่วย
    เลือกผู้ป่วย
104. พยาบาลผู้รับคำสั่ง
    พยาบาลผู้รับคำสั่ง
105. กรอก Nurse
    กรอก Nurse
106. Save พยาบาลผู้รับคำสั่ง
    Save พยาบาลผู้รับคำสั่ง
107. ปิด pop-up พยาบาลผู้รับคำสั่ง
    ปิด pop-up พยาบาลผู้รับคำสั่ง
108. Save ออกจากห้องตรวจ
    Save ออกจากห้องตรวจ
109. ปิดแจ้งเตือน
    ปิดแจ้งเตือน
110. คลิ๊กส่งเข้าคิว
    คลิ๊กส่งเข้าคิว
111. ปิดส่งเข้าคิว
    ปิดส่งเข้าคิว
112. เปิด Browser เพื่อเข้าหน้าจอ DPO
    เปิด Browser เพื่อเข้าหน้าจอ DPO
113. Log in ด้วย DORTOR
    Log in ด้วย DORTOR
114. DPO Enter Page
    DPO Enter Page
115. กรอก HN DPO
    กรอก HN DPO
116. เลือกผู้ป่วย DPO
    เลือกผู้ป่วย DPO
117. Check out
    Check out
118. By Approval
    By Approval
119. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
120. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
121. เลือกหมวด PTM
    เลือกหมวด PTM
122. กรอก HN PTM
    กรอก HN PTM
123. คลิ๊กผู้ป่วย
    คลิ๊กผู้ป่วย
124. Discharge
    Discharge
125. สภาพผู้ป่วย
    สภาพผู้ป่วย
126. Discharge Status
    Discharge Status
127. บันทึก Discharge
    บันทึก Discharge
128. เปิด Browser เพื่อเข้าหน้าจอ BIL
    เปิด Browser เพื่อเข้าหน้าจอ BIL
129. Form Login
    Form Login
130. BIL Enter Page
    BIL Enter Page
131. ตั้งเลขที่ใบเสร็จ
    ตั้งเลขที่ใบเสร็จ
132. กรอก HN BIL
    กรอก HN BIL
133. รับชำระเงิน
    รับชำระเงิน
134. กรอกจำนวนเงิน
    กรอกจำนวนเงิน
135. ติ๊ก Auto EDC ออก
    ติ๊ก Auto EDC ออก
136. กรอกช่อง Approval Code
    กรอกช่อง Approval Code
137. รับชำระเงิน Save
    รับชำระเงิน Save