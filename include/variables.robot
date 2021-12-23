*** Settings ***
Library  Selenium2Library
Library  pyautogui

*** Variables ***
#เว็ปบราวเซอร์
${Browser}  chrome

#ชื่อเว็ปหรือเซิร์ฟเวอร์
${SERVER}  192.168.56.101

#ข้อมูลที่ต้องเปลี่ยตลอด
${chose}  css:#dgrid_10-row-82046 > table > tr > td.dgrid-cell.dgrid-column-2.field-full_name_th  #เลือกผู้ป่วย
${Identification_number}  5099093402511  #หมายเลขบัตรประชาชน
${first_name_th}  ทดสอบชื่อ380  #ชื่อจริงภาษาไทย
${last_name_th}  ทดสอบนามสกุล380  #นามสกุลภาษาไทย
${NUMBIL}  0000113  #หมายเลขบิล
${BARCODE_LAB}  #เลขlab
${Save_Order}  css:body > div:nth-child(227) > div > div > div > div.content.active > div.ui.container.fluid > div.ui.segment > div > div > div.field.four.wide > button.ui.button.icon.green  #ปุ่ม Save Order
# ${HN}  C767299


#ตัวแปลของ REG
${COMNAME_REG}  reg
${USERNAME_REG}  reg
${BROWSER_NAME_REG}  alias=reg
${PASSWORD_REG}  cnmi2559
${lastdays}  31/12/2564
${Payer}  50257
${birthdate}  18/04/2542
${father}  ทดสอบชื่อบิดา
${mother}  ทดสอบชื่อมารดา
${def_x}  676
${def_y}  373
${scroll_x}  1227
${scroll_y}  723
${y_number}  22
${scroll_hn}  0
${scroll_chose}  ${scroll_hn}

#ตัวแปรของส่วน NURSE
${USERNAME_NURSE}  nurse
${PASSWORD_NURSE}  cnmi2559
${BROWSER_NAME_NURSE}  alias=nurse
${COMNAME_NURSE}  CNMED
${Chief_Complaint}  ปวดขาชาลง 2 ข้าง
${weight}  78
${height}  176
${pulse}  71
${temp}  36.5
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
${Save_Order_Num}  190


#ตัวแปรของ BIL
${USERNAME_BIL}  bil
${PASSWORD_BIL}  cnmi2559
${BROWSER_NAME_BIL}  alias=bil
${COMNAME_BIL}  MEE_BIL
${NAMEBIL}  ME
${MONEY}  500
${Approval Code}  11111111

#ตัวแปรของ Pharma
${USERNAME_PHARMA}  pharma
${PASSWORD_PHARMA}  cnmi2559
${BROWSER_NAME_PHARMA}  alias=pharma
${COMNAME_PHARMA}  3A

#ตัวแปรของ lab
${USERNAME_LAB}  lab
${PASSWORD_LAB}  cnmi2559
${BROWSER_NAME_LAB}  alias=lab
${COMNAME_LAB}  CNMED
${CODE_LAB}  650080
${SPECIMEN_USERNAME}  lab
${SPECIMEN_PASSWORD}  cnmi2559
${RESULT_LAB}  ดี
${RESULT_USERNAME}  lab
${RESULT_PASSWORD}  cnmi2559
${AUTHORIZE_USERNAME}  lab
${AUTHORIZE_PASSWORD}  cnmi2559


#รหัสพนักงาน
${ADMIN}  111111

#ตัวแปรของคีย์ต่างๆ
${ENTER}  \ue007
${ESCAPE}  \ue00c
${TAB}  \ue004
${Coppy}  CTRL+C
${ALL}  CTRL+A