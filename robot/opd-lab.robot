*** Settings ***
Resource  ../include/settings.robot

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
76. ปิดหน้า Drug [STAT]
    ปิดหน้า Drug [STAT]
77. คลิ๊ก Central lab
    คลิ๊ก Central lab
78. กรอก รหัส Lab
    กรอก รหัส Lab
79. เลือก LAB
    เลือก LAB
80. Save Lab
    Save Lab
81. ปิด pop-up Save Lab
    ปิด pop-up Save Lab
82. Check out
    Check out
83. Wait Result
    Wait Result
84. เปิด Browser เพื่อเข้าหน้าจอพยาบาล Lab
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล Lab
85. Log in ด้วยพยาบาล Lab
    Log in ด้วยพยาบาล Lab
86. เลือก Specimen Collector
    เลือก Specimen Collector
87. คิวผู้ป่วยใน Lab
    คิวผู้ป่วยใน Lab
88. ติ๊กค้นหาด้วย HN
    ติ๊กค้นหาด้วย HN
89. กรอก HN Lab
    กรอก HN Lab
90. ค้นหาคิว Lab
    ค้นหาคิว Lab
91. เลือกคิว Lab
    เลือกคิว Lab
92. รับเข้า Lab
    รับเข้า Lab
93. ปิด pop-up บันทึกรับเข้า lab
    ปิด pop-up บันทึกรับเข้า lab
94. PRINT
    PRINT
95. เก็บรหัสสติ๊กเกอร์
    เก็บรหัสสติ๊กเกอร์
96. กรอกรหัสสติ๊กเกอร์
    กรอกรหัสสติ๊กเกอร์
97. กรอก Username ยืนยัน Specimen
    กรอก Username ยืนยัน Specimen
98. กรอก Password ยืนยัน Specimen
    กรอก Password ยืนยัน Specimen
99. ยืนยัน Specimen
    ยืนยัน Specimen
100. ปิด pop-up ยืนยัน Specimen
    ปิด pop-up ยืนยัน Specimen
101. กลับหน้าหลักของ Lab
    กลับหน้าหลักของ Lab
102. เลือก Specimen Center
    เลือก Specimen Center
103. กรอกรหัสสติ๊กเกอร์ Specimen Center
    กรอกรหัสสติ๊กเกอร์ Specimen Center
104. กลับหน้าหลักของ Lab
    กลับหน้าหลักของ Lab
105. เลือก Central Lab Result
    เลือก Central Lab Result
106. กรอก HN ใน 
    กรอก HN ใน 
107. เลือก Lab ที่ได้รับ Specimen
    เลือก Lab ที่ได้รับ Specimen
108. เลือกช่องลงผล Lab
    เลือกช่องลงผล Lab
109. ลงผลของ Lab
    ลงผลของ Lab
110. Save ผล Lab
    Save ผล Lab
111. Username ผู้ลงผล Lab
    Username ผู้ลงผล Lab
112. Password ผู้ลงผล Lab
    Password ผู้ลงผล Lab
113. ปิด pop-up ผู้ลงผล Lab
    ปิด pop-up ผู้ลงผล Lab
114. Authorize Lab
    Authorize Lab
115. Username Authorize Lab
    Username Authorize Lab
116. Password Authorize Lab
    Password Authorize Lab
117. ปิด pop-up Authorize Lab
    ปิด pop-up Authorize Lab
118. เปิด Browser เพื่อเข้าหน้าจอ Pharma
    เปิด Browser เพื่อเข้าหน้าจอ Pharma
119. Log in ด้วย Pharma
    Log in ด้วย Pharma
120. เลือก TPD
    เลือก TPD
121. กรอก HN TPD
    กรอก HN TPD
122. เปิดใบยาผู้ป่วย
    เปิดใบยาผู้ป่วย
123. VERIFY AND PRINT
    VERIFY AND PRINT
124. กรอก HN TPD
    กรอก HN TPD
125. เปิดใบยาผู้ป่วย
    เปิดใบยาผู้ป่วย
126. CHECK
    CHECK
127. ปิด pop-up CHECK
    ปิด pop-up CHECK
128. ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
    ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
129. ผู้จัดส่ง
    ผู้จัดส่ง
130. DELIVER
    DELIVER
131. ปิด pop-up deliver
    ปิด pop-up deliver
132. เปิดประวัติการสั่งยา
    เปิดประวัติการสั่งยา
133. coppy รหัสสั่งยา
    coppy รหัสสั่งยา
134. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
135. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
136. เลือกหมวด PTM
    เลือกหมวด PTM
137. เลือก DrugOrder
    เลือก DrugOrder
138. ใส่รหัสใบยา
    ใส่รหัสใบยา
139. RECEIVE
    RECEIVE
140. ปิด pop-up RECEIVE
    ปิด pop-up RECEIVE
141. กรอก HN PTM
    กรอก HN PTM
142. เลือกผู้ป่วย
    เลือกผู้ป่วย
143. พยาบาลผู้รับคำสั่ง ในการรับยา
    พยาบาลผู้รับคำสั่ง ในการรับยา
144. กรอก Nurse
    กรอก Nurse
145. Save พยาบาลผู้รับคำสั่ง
    Save พยาบาลผู้รับคำสั่ง
146. ปิด pop-up พยาบาลผู้รับคำสั่ง
    ปิด pop-up พยาบาลผู้รับคำสั่ง
147. พยาบาลผู้รับคำสั่ง ในการรับผล Lab
    พยาบาลผู้รับคำสั่ง ในการรับผล Lab
148. กรอก Nurse
    กรอก Nurse
149. Save พยาบาลผู้รับคำสั่ง
    Save พยาบาลผู้รับคำสั่ง
150. ปิด pop-up พยาบาลผู้รับคำสั่ง
    ปิด pop-up พยาบาลผู้รับคำสั่ง
151. Save ออกจากห้องตรวจ
    Save ออกจากห้องตรวจ
152. ปิดแจ้งเตือน
    ปิดแจ้งเตือน
153. คลิ๊กส่งเข้าคิว
    คลิ๊กส่งเข้าคิว
154. ปิดส่งเข้าคิว
    ปิดส่งเข้าคิว
155. เปิด Browser เพื่อเข้าหน้าจอ DPO
    เปิด Browser เพื่อเข้าหน้าจอ DPO
156. Log in ด้วย DORTOR
    Log in ด้วย DORTOR
157. DPO Enter Page
    DPO Enter Page
158. กรอก HN DPO
    กรอก HN DPO
159. เลือกผู้ป่วย DPO
    เลือกผู้ป่วย DPO
160. Check out
    Check out
161. By Approval
    By Approval
162. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
    เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
163. Log in ด้วยพยาบาล Nurse
    Log in ด้วยพยาบาล Nurse
164. เลือกหมวด PTM
    เลือกหมวด PTM
165. กรอก HN PTM
    กรอก HN PTM
166. คลิ๊กผู้ป่วย
    คลิ๊กผู้ป่วย
167. Discharge
    Discharge
168. สภาพผู้ป่วย
    สภาพผู้ป่วย
169. Discharge Status
    Discharge Status
170. บันทึก Discharge
    บันทึก Discharge
171. เปิด Browser เพื่อเข้าหน้าจอ BIL
    เปิด Browser เพื่อเข้าหน้าจอ BIL
172. Log in ด้วย BIL
    Log in ด้วย BIL
173. BIL Enter Page
    BIL Enter Page
174. ตั้งเลขที่ใบเสร็จ
    ตั้งเลขที่ใบเสร็จ
175. กรอก HN BIL
    กรอก HN BIL
176. รับชำระเงิน
    รับชำระเงิน
177. กรอกจำนวนเงิน
    กรอกจำนวนเงิน
# 178. ติ๊ก Auto EDC ออก
#     ติ๊ก Auto EDC ออก
# 179. กรอกช่อง Approval Code
#     กรอกช่อง Approval Code
180. รับชำระเงิน Save
    รับชำระเงิน Save
181. ข้าม NHSO
    ข้าม NHSO
182. รับชำระเงิน Save
    รับชำระเงิน Save