*** Settings ***
Resource  ../include/settings.robot

*** Test Cases ***
1. เปิด Browser เพื่อเข้าหน้าจอ REG
    เปิด Browser เพื่อเข้าหน้าจอ REG
2. Form Login REG
    Form Login REG
3. REG Enter Page
    REG Enter Page
4. คลิ๊กปุ่มค้นหาผู้ป่วย ในช่อง HN
    คลิ๊กปุ่มค้นหาผู้ป่วย ในช่อง HN
5. คลิ๊กปุ่มค้นหาผู้ป่วย
    คลิ๊กปุ่มค้นหาผู้ป่วย
6. เลือกผู้ป่วย HN
    เลือกผู้ป่วย HN
7. ปิด popup ถ้าไม่มีรูปผู้ป่วย
    ปิด popup ถ้าไม่มีรูปผู้ป่วย
8. เก็บ HN ผู้ป่วย
    เก็บ HN ผู้ป่วย
9. Open Encounter
    Open Encounter
10. คลิกเลือกแผนก
    คลิกเลือกแผนก
11. คลิกเลือกแพทย์
    คลิกเลือกแพทย์
12. บันทึก ADR
    บันทึก ADR
13. บันทึก Encounter ใหม่
    บันทึก Encounter ใหม่
14. ปิด popup ถ้าไม่มีรูปผู้ป่วย
    ปิด popup ถ้าไม่มีรูปผู้ป่วย
15. รับรองสิทธิ
    รับรองสิทธิ
16. เลือกประเภทบริการ
    เลือกประเภทบริการ
17. เลือกลำดับสิทธิ์
    เลือกลำดับสิทธิ์
18. เลือกสิทธิ์
    เลือกสิทธิ์
19. เลือกผู้จ่ายเงิน
    เลือกผู้จ่ายเงิน
20. ประเภทสิทธิ์
    ประเภทสิทธิ์
21. วันหมดอายุ
    วันหมดอายุ
22. บันทึกสิทธิ์
    บันทึกสิทธิ์
23. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
24. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
25. PTM-Triage Enter Page
    PTM-Triage Enter Page
26. ปิดหน้าคิว
    ปิดหน้าคิว
27. กรอก HN PTM-Triage
    กรอก HN PTM-Triage
28. Chief Complaint
    Chief Complaint
29. Close Popup :: Triage Success
    Close Popup :: Triage Success
30. Wait Objects After Enter Vital Sign
    Wait Objects After Enter Vital Sign
31. กรอก weight
    กรอก weight
32. กรอก height
    กรอก height
33. กรอก temp
    กรอก temp
34. กรอก pulse
    กรอก pulse
35. กรอก systolic
    กรอก systolic
36. กรอก diastolic
    กรอก diastolic
37. กรอก breathe
    กรอก breathe
38. กรอก O2 Sat
    กรอก O2 Sat
39. Save Vital Sign
    Save Vital Sign
40. Close Popup : Success
    Close Popup : Success
41. กดปุ่ม Home
    กดปุ่ม Home
42. เลือกหมวด PTM
    เลือกหมวด PTM
43. กรอก HN PTM
    กรอก HN PTM
44. คลิ๊กผู้ป่วย
    คลิ๊กผู้ป่วย
45. ปิด Vital Signs
    ปิด Vital Signs
46. Save ประเมินแรกรับ
    Save ประเมินแรกรับ
47. ปิดแจ้งเตือน
    ปิดแจ้งเตือน
48. คลิ๊กส่งเข้าคิว
    คลิ๊กส่งเข้าคิว
49. ปิดส่งเข้าคิว
    ปิดส่งเข้าคิว
50. เปิด Browser เพื่อเข้าหน้าจอDPO
    เปิด Browser เพื่อเข้าหน้าจอ DPO
51. Log in ด้วย DORTOR
    Log in ด้วย DORTOR
52. DPO Enter Page
    DPO Enter Page
53. กรอก HN DPO
    กรอก HN DPO
54. เลือกผู้ป่วย DPO
    เลือกผู้ป่วย DPO
55. ประวัติผู้ป่วย
    ประวัติผู้ป่วย
56. อาการ
    อาการ
57. Present illness
    Present illness
58. ข้อมูลการตรวจร่างกาย
    ข้อมูลการตรวจร่างกาย
59. Save ข้อมูลการตรวจร่างกาย
    Save ข้อมูลการตรวจร่างกาย
60. Diagnosis
    Diagnosis
61. คลิ๊ก Progression / order
    คลิ๊ก Progression / order
62. คลิ๊กเพิ่ม Progression / order
    คลิ๊กเพิ่ม Progression / order
63. คลิ๊ก Drug [STAT]
    คลิ๊ก Drug [STAT]
64. กรอกช่อง Drug
    กรอกช่อง Drug
65. กรอกช่อง Dose
    กรอกช่อง Dose
66. กรอกช่อง Qty
    กรอกช่อง Qty
67. กรอกช่อง Duration
    กรอกช่อง Duration
68. คลิ๊ก ADD TO ORDER
    คลิ๊ก ADD TO ORDER
69. คลิ๊ก CONFIRM ORDER
    คลิ๊ก CONFIRM ORDER
70. Save Order
    Save Order
71. ปิดหน้า Drug [STAT]
    ปิดหน้า Drug [STAT]
72. คลิ๊ก Central lab
    คลิ๊ก Central lab
73. กรอก รหัส Lab
    กรอก รหัส Lab
74. เลือก LAB
    เลือก LAB
75. Save Lab
    Save Lab
76. ปิด pop-up Save Lab
    ปิด pop-up Save Lab
77. Check out
    Check out
78. Wait Result
    Wait Result
79. เปิด Browser เพื่อเข้าหน้าจอพยาบาล Lab
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล Lab
80. Log in ด้วยพยาบาล Lab
    Log in ด้วยพยาบาล Lab
81. เลือก Specimen Collector
    เลือก Specimen Collector
82. คิวผู้ป่วยใน Lab
    คิวผู้ป่วยใน Lab
83. ติ๊กค้นหาด้วย HN
    ติ๊กค้นหาด้วย HN
84. กรอก HN Lab
    กรอก HN Lab
85. ค้นหาคิว Lab
    ค้นหาคิว Lab
86. เลือกคิว Lab
    เลือกคิว Lab
87. รับเข้า Lab
    รับเข้า Lab
88. ปิด pop-up บันทึกรับเข้า lab
    ปิด pop-up บันทึกรับเข้า lab
89. PRINT
    PRINT
90. เก็บรหัสสติ๊กเกอร์
    เก็บรหัสสติ๊กเกอร์
91. กรอกรหัสสติ๊กเกอร์
    กรอกรหัสสติ๊กเกอร์
92. กรอก Username ยืนยัน Specimen
    กรอก Username ยืนยัน Specimen
93. กรอก Password ยืนยัน Specimen
    กรอก Password ยืนยัน Specimen
94. ยืนยัน Specimen
    ยืนยัน Specimen
95. ปิด pop-up ยืนยัน Specimen
    ปิด pop-up ยืนยัน Specimen
96. กลับหน้าหลักของ Lab
    กลับหน้าหลักของ Lab
97. เลือก Specimen Center
    เลือก Specimen Center
98. กรอกรหัสสติ๊กเกอร์ Specimen Center
    กรอกรหัสสติ๊กเกอร์ Specimen Center
99. กลับหน้าหลักของ Lab
    กลับหน้าหลักของ Lab
100. เลือก Central Lab Result
    เลือก Central Lab Result
101. กรอก HN ใน 
    กรอก HN ใน 
102. เลือก Lab ที่ได้รับ Specimen
    เลือก Lab ที่ได้รับ Specimen
103. เลือกช่องลงผล Lab
    เลือกช่องลงผล Lab
104. ลงผลของ Lab
    ลงผลของ Lab
105. Save ผล Lab
    Save ผล Lab
106. Username ผู้ลงผล Lab
    Username ผู้ลงผล Lab
107. Password ผู้ลงผล Lab
    Password ผู้ลงผล Lab
108. ปิด pop-up ผู้ลงผล Lab
    ปิด pop-up ผู้ลงผล Lab
109. Authorize Lab
    Authorize Lab
110. Username Authorize Lab
    Username Authorize Lab
111. Password Authorize Lab
    Password Authorize Lab
112. ปิด pop-up Authorize Lab
    ปิด pop-up Authorize Lab
113. เปิด Browser เพื่อเข้าหน้าจอ Pharma
    เปิด Browser เพื่อเข้าหน้าจอ Pharma
114. Log in ด้วย Pharma
    Log in ด้วย Pharma
115. เลือก TPD
    เลือก TPD
116. กรอก HN TPD
    กรอก HN TPD
117. เปิดใบยาผู้ป่วย
    เปิดใบยาผู้ป่วย
118. VERIFY AND PRINT
    VERIFY AND PRINT
119. กรอก HN TPD
    กรอก HN TPD
120. เปิดใบยาผู้ป่วย
    เปิดใบยาผู้ป่วย
121. CHECK
    CHECK
122. ปิด pop-up CHECK
    ปิด pop-up CHECK
123. ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
    ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
124. ผู้จัดส่ง
    ผู้จัดส่ง
125. DELIVER
    DELIVER
126. ปิด pop-up deliver
    ปิด pop-up deliver
127. เปิดประวัติการสั่งยา
    เปิดประวัติการสั่งยา
128. coppy รหัสสั่งยา
    coppy รหัสสั่งยา
129. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
130. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
131. เลือกหมวด PTM
    เลือกหมวด PTM
132. เลือก DrugOrder
    เลือก DrugOrder
133. ใส่รหัสใบยา
    ใส่รหัสใบยา
134. RECEIVE
    RECEIVE
135. ปิด pop-up RECEIVE
    ปิด pop-up RECEIVE
136. กรอก HN PTM
    กรอก HN PTM
137. เลือกผู้ป่วย
    เลือกผู้ป่วย
138. พยาบาลผู้รับคำสั่ง ในการรับยา
    พยาบาลผู้รับคำสั่ง ในการรับยา
139. กรอก Nurse
    กรอก Nurse
140. Save พยาบาลผู้รับคำสั่ง
    Save พยาบาลผู้รับคำสั่ง
141. ปิด pop-up พยาบาลผู้รับคำสั่ง
    ปิด pop-up พยาบาลผู้รับคำสั่ง
142. พยาบาลผู้รับคำสั่ง ในการรับผล Lab
    พยาบาลผู้รับคำสั่ง ในการรับผล Lab
143. กรอก Nurse
    กรอก Nurse
144. Save พยาบาลผู้รับคำสั่ง
    Save พยาบาลผู้รับคำสั่ง
145. ปิด pop-up พยาบาลผู้รับคำสั่ง
    ปิด pop-up พยาบาลผู้รับคำสั่ง
146. Save ออกจากห้องตรวจ
    Save ออกจากห้องตรวจ
147. ปิดแจ้งเตือน
    ปิดแจ้งเตือน
148. คลิ๊กส่งเข้าคิว
    คลิ๊กส่งเข้าคิว
149. ปิดส่งเข้าคิว
    ปิดส่งเข้าคิว
150. เปิด Browser เพื่อเข้าหน้าจอ DPO
    เปิด Browser เพื่อเข้าหน้าจอ DPO
151. Log in ด้วย DORTOR
    Log in ด้วย DORTOR
152. DPO Enter Page
    DPO Enter Page
153. กรอก HN DPO
    กรอก HN DPO
154. เลือกผู้ป่วย DPO
    เลือกผู้ป่วย DPO
155. Check out
    Check out
156. By Approval
    By Approval
157. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
158. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
159. เลือกหมวด PTM
    เลือกหมวด PTM
160. กรอก HN PTM
    กรอก HN PTM
161. คลิ๊กผู้ป่วย
    คลิ๊กผู้ป่วย
162. Discharge
    Discharge
163. สภาพผู้ป่วย
    สภาพผู้ป่วย
164. Discharge Status
    Discharge Status
165. บันทึก Discharge
    บันทึก Discharge
166. เปิด Browser เพื่อเข้าหน้าจอ BIL
    เปิด Browser เพื่อเข้าหน้าจอ BIL
167. Log in ด้วย BIL
    Log in ด้วย BIL
168. BIL Enter Page
    BIL Enter Page
169. ตั้งเลขที่ใบเสร็จ
    ตั้งเลขที่ใบเสร็จ
170. กรอก HN BIL
    กรอก HN BIL
171. รับชำระเงิน
    รับชำระเงิน
172. กรอกจำนวนเงิน
    กรอกจำนวนเงิน
173. ติ๊ก Auto EDC ออก
    ติ๊ก Auto EDC ออก
174. กรอกช่อง Approval Code
    กรอกช่อง Approval Code
175. รับชำระเงิน Save
    รับชำระเงิน Save
176. ข้าม NHSO
    ข้าม NHSO
177. รับชำระเงิน Save
    รับชำระเงิน Save