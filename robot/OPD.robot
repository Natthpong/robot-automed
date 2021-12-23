*** Settings ***
# Library  pyautogui
Library  Selenium2Library

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
${HN}  C763381
${lastdays}  31/12/2564
${Payer}  50257

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
${NUMBIL}  0000011
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
TPD
   Sleep  5s
   #กรอก HN
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${HN}  ${ENTER}
   Sleep  10s
   # เปิดใบยาผู้ป่วย
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div:nth-child(1)  timeout=20
   Double Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div:nth-child(1)

*** Test Cases ***
1. เปิด Browser เพื่อเข้าหน้าจอ REG
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_REG}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
2. Form Login
   Input Text  css:[placeholder="Username"]  ${USERNAME_REG}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_REG}
   Click Button  Login
3. REG Enter Page
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button
4. INSERT HN AND PRESS Enter
   #HN
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]  ${HN}
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]  ${ENTER}
   #ปิด popup ถ้าไม่มีรูปผู้ป่วย
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]  timeout=20
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]  ${ESCAPE}
5. Open Encounter
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > a:nth-child(2)
   Wait Until Element Contains  css:body > div.dimmable.dimmed.scrolling > div > div > div  HN : ${HN}  
   #คลิกเลือกแผนก
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(3) > div.field.twelve.wide.inline > div > input.search
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(3) > div.field.twelve.wide.inline > div > div.menu.transition.visible > div:nth-child(48)
   #คลิกเลือกแพทย์
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(5) > div.field.twelve.wide.inline > div > input.search
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(5) > div.field.twelve.wide.inline > div > div.menu.transition.visible > div:nth-child(18)
   #บันทึก ADR
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.segment > div.ui.form.sixteen.wide.success > div:nth-child(2) > div.field.three.wide > button
   #บันทึก Encounter ใหม่
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div:nth-child(6) > div > div:nth-child(1) > button
   #Close Current Window
   #Delay after save encounter 5 second
   Wait Until Element Is Visible  css:body > div:nth-child(39) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Press Keys  css:body > div:nth-child(39) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE} 
   #ปิด popup ถ้าไม่มีรูปผู้ป่วย
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   #รับรองสิทธิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > a:nth-child(3)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > a:nth-child(3)
   Set Selenium Implicit Wait  5seconds
   #เลือกประเภทบริการ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.required > div.field.inline > div:nth-child(2)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.required > div.field.inline > div:nth-child(2)
   #เลือก
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > input.search  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > input.search
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > div.menu.transition.visible > div:nth-child(2)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > div.menu.transition.visible > div:nth-child(2)
   #สิทธิ์
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > input.search  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > input.search
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > div.menu.transition.visible > div.item.selected  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > div.menu.transition.visible > div.item.selected
   #ผู้จ่ายเงิน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.ui.icon.input > input  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.ui.icon.input > input
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.ui.icon.input > input  ${Payer}
   Set Selenium Implicit Wait  3seconds
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.results.transition.visible > a > div > div
   #ประเภทสิทธิ์
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div > div.menu.transition.visible > div:nth-child(1)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div > div.menu.transition.visible > div:nth-child(1)
   #วันหมดอายุ
   Input Text  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(9) > div:nth-child(3) > div > input  ${lastdays}
   
   #บันทึกสิทธิ์
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.form > div > div:nth-child(4) > button.ui.button.icon.green.fluid
   Wait Until Element Contains  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.inverted.green > span  บันทึกสำเร็จ  
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE}
   Sleep  10s  
   Close Window
6. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_NURSE}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
7. Log in ด้วยพยาบาล Nurse
   Input Text  css:[placeholder="Username"]  ${USERNAME_NURSE}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_NURSE}
   Click Button  Login
8. PTM-Triage Enter Page
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.orange > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.orange > div.ui.extra.content > button
9. เลือกคิวคัดกรองและคัดกรองผู้ป่วย
   #ปิดหน้าคิว
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div  timeout=20
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div  ${ESCAPE}
   #กรอก HN
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div.ui.form > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div.ui.form > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${HN}
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div.ui.form > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${ENTER}
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.teal.defaultBackground.styled.fluid.raised.segment.transition.visible  timeout=20
   #Chief Complaint
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.teal.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.grid.two.column > div:nth-child(1) > div > div:nth-child(2) > div.field.twelve.wide.inline > div > div > input[type=text]  ${Chief_Complaint}
   #บันทึก
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.teal.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div:nth-child(6) > div:nth-child(1) > button
10. Close Popup :: Triage Success
   Wait Until Element Contains  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.inverted.green > span  บันทึกสำเร็จ  
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE}
11. Wait Objects After Enter Vital Sign
   Wait Until Page Contains Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.black.defaultBackground.styled.fluid.raised.segment.transition.visible  
   Wait Until Page Contains Element  css:#dgrid_12-row-0 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table  
12. ระบุ Vital Sign และกดบันทึก
   Sleep  10s
   #weight
   Set Focus To Element  css:#dgrid_12-row-1 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-1 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-1 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${weight}

   #height
   Set Focus To Element  css:#dgrid_12-row-2 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-2 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-2 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${height}
    
   #temp
   Set Focus To Element  css:#dgrid_12-row-3 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-3 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-3 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${temp}

    
   #pulse
   Set Focus To Element  css:#dgrid_12-row-4 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-4 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-4 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${pulse}

    
   #systolic
   Set Focus To Element  css:#dgrid_12-row-5 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-5 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-5 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${systolic}

   #diastolic
   Set Focus To Element  css:#dgrid_12-row-6 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-6 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-6 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${diastolic}
    
   #breathe
   Set Focus To Element  css:#dgrid_12-row-7 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-7 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-7 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${breathe}
    
   #O2 Sat
   Set Focus To Element  css:#dgrid_12-row-8 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-8 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Input Text  css:#dgrid_12-row-8 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${o2}
    
   #Save Vital Sign
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.black.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.grid.two.columns > div:nth-child(2) > div.ui.form > div > div.field.two.wide > button

   #Close Popup : Success
   Wait Until Element Contains  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.inverted.green > span  บันทึกรายการสำเร็จ
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE}
13.HOME
   # กดปุ่ม Home
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div:nth-child(2) > a > button > i  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div:nth-child(2) > a > button > i
14. PTM
   # เลือกหมวด PTM
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button
15.HN ประเมินแรกรับ
   #กรอก HN
   Sleep  30s
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  timeout=20
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  ${HN}  ${ENTER}
   Sleep  15s
   #คลิ๊กผู้ป่วย
   Double Click Element  css:#dgrid_0-row-0 > table > tr > td.dgrid-cell.dgrid-column-9 > div
   #ปิด  Vital Signs
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(2) > div > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(2) > span  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(2) > div > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(2) > span
   #Save ประเมินแรกรับ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button
   #ปิดแจ้งเตือน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button    timeout=20
   Press Keys  NONE  ${ESCAPE}
   #คลิ๊กส่งเข้าคิว
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(2) > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(2) > div > button
   #ปิดส่งเข้าคิว
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button
   Sleep  10s
   Close Window
16. เปิด Browser เพื่อเข้าหน้าจอDPO
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_DORTOR}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
17. Log in ด้วยDORTOR
   Input Text  css:[placeholder="Username"]  ${USERNAME_DORTOR}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_DORTOR}
   Click Button  Login
18. DPO
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.olive > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.olive > div.ui.extra.content > button
19.เลือกผู้ป่วย
   #กรอก HN
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]
   Press Keys  css:div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]  ${HN}  ${ENTER}
   #เลือกผู้ป่วย
   Sleep  30s
   Double Click Element  css:#dgrid_3-row-0 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-0 > div > table > tr > td.dgrid-cell.dgrid-column-0-0-2.field-hn
   Sleep  30s
   #ประวัติผู้ป่วย
   Set Focus To Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(4) > div > div.fields.inline > div:nth-child(2) > div
   #อาการ
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(4) > div > div.fields.inline > div:nth-child(2) > div
   #Present illness
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(9) > div:nth-child(3) > div > textarea  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(9) > div:nth-child(3) > div > textarea
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(9) > div:nth-child(3) > div > textarea  ${ALL}  ${Present illness}
   #ข้อมูลการตรวจร่างกาย
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div.ui > div:nth-child(4) > div > div.ui.column.fourteen.wide > div:nth-child(1) > div:nth-child(3) > div  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div.ui > div:nth-child(4) > div > div.ui.column.fourteen.wide > div:nth-child(1) > div:nth-child(3) > div
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div.ui > div:nth-child(4) > div > div.ui.column.fourteen.wide > div:nth-child(2) > div > textarea  ${ALL}  ${Chest}
   #Save
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(27) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div:nth-child(5) > div > button
   #Diagnosis
   Set Focus To Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(28) > div.content.active > div:nth-child(3) > div:nth-child(4) > div > div > div:nth-child(2) > div > div.field.four.wide > div > input[type=text]
   Sleep  5s
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(28) > div.content.active > div:nth-child(3) > div:nth-child(4) > div > div > div:nth-child(2) > div > div.field.four.wide > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(28) > div.content.active > div:nth-child(3) > div:nth-child(4) > div > div > div:nth-child(2) > div > div.field.four.wide > div > input[type=text]  ${ALL}  ${Diagnosis}  ${ENTER}
   # Sleep  5s
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(28) > div.content.active > div:nth-child(6) > div > div.field.three.wide > button
20. Progression / order
   #คลิ๊ก Progression / order
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(2) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(2) > button
   #คลิ๊กเพิ่ม Progression / order
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(23) > div.content.active > div.ui.grid > div:nth-child(1) > div:nth-child(1) > div > div.fields.inline > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(23) > div.content.active > div.ui.grid > div:nth-child(1) > div:nth-child(1) > div > div.fields.inline > div > button
   #คลิ๊ก Drug [STAT]
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(23) > div.content.active > div.ui.grid > div:nth-child(2) > div.ui.column.three.wide > div > div > a:nth-child(1)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(23) > div.content.active > div.ui.grid > div:nth-child(2) > div.ui.column.three.wide > div > div > a:nth-child(1)
   #กรอกช่อง Drug
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide.required > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide.required > div > input[type=text]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide.required > div > input[type=text]  ${Drug}  
   Wait Until Element Is Visible  css:#dgrid_63-row-1 > table > tr > td.dgrid-cell.dgrid-column-0.field-generic_name  timeout=20
   Click Element  css:#dgrid_63-row-1 > table > tr > td.dgrid-cell.dgrid-column-0.field-generic_name
   #กรอกช่อง Dose
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(2) > div > input[type=number]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(2) > div > input[type=number]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(2) > div > input[type=number]  ${ALL}  ${DOSE}
   #กรอกช่อง Qty
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(8) > div > input[type=number]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(8) > div > input[type=number]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(8) > div > input[type=number]  ${ALL}  ${QTY}
   #กรอกช่อง Duration
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(9) > div > input[type=number]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(9) > div > input[type=number]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(9) > div > input[type=number]  ${ALL}  ${Duration}
   #คลิ๊ก ADD TO ORDER
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(11) > button
   #คลิ๊ก CONFIRM ORDER
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(3) > div > div:nth-child(4) > div.field.three.wide > button  timeout=20
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(3) > div > div:nth-child(4) > div.field.three.wide > button
   #Save Order
   Sleep  10s
   Wait Until Element Is Visible  css:body > div:nth-child(141) > div > div > div > div.content.active > div.ui.container.fluid > div.ui.segment > div > div > div.field.four.wide > button.ui.button.icon.green  timeout=20
   Click Button  css:body > div:nth-child(141) > div > div > div > div.content.active > div.ui.container.fluid > div.ui.segment > div > div > div.field.four.wide > button.ui.button.icon.green
   Sleep  5s
   #ปิดหน้า Progression / Order
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > a  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > a
   #Check out
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.menu.right > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.menu.right > div > button
   #Wait Result
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button
   Sleep  10s
   Close Window
21. เปิด Browser เพื่อเข้าหน้าจอ Pharma
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_PHARMA}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
22. Log in ด้วย Pharma
   Input Text  css:[placeholder="Username"]  ${USERNAME_PHARMA}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_PHARMA}
   Click Button  Login
23. Pharma
   # เลือก TPD
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.black > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.black > div.ui.extra.content > button
   # กรออก HN และเลือกใบยา
   TPD
   Sleep  10s
   #VERIFY AND PRINT
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
   Sleep  10s
   Reload Page
   Sleep  10s
   #กรออก HN และเลือกใบยา
   TPD
   #CHECK
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
   #ปิด pop-up
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div.ui.segment.inverted.red  timeout=20
   Double Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div.ui.segment.inverted.red
   #ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   #ผู้จัดส่ง
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(1) > div > div:nth-child(1) > input[type=password]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(1) > div > div:nth-child(1) > input[type=password]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(1) > div > div:nth-child(1) > input[type=password]  ${ADMIN}  ${ENTER}
   #DELIVER
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
   #ปิด pop-up deliver
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   # เปิดประวัติการสั่งยา
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.ui.item.dropdown > span
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.ui.item.dropdown.active.visible > div > a:nth-child(2) > button
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(5) > div:nth-child(5) > button
   #coppy รหัสสั่งยา
   Wait Until Element Is Visible  css:#dgrid_5-row-0 > table > tbody > tr > td > div > table > tr:nth-child(1) > td.dgrid-cell.dgrid-column-0-0-3.field-patient_full_name  timeout=20
   Double Click Element  css:#dgrid_5-row-0 > table > tbody > tr > td > div > table > tr:nth-child(1) > td.dgrid-cell.dgrid-column-0-0-4.field-status
   Double Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(1) > div
   Press Keys  NONE  ${Coppy}
   Sleep  10s
   Close Window
24. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_NURSE}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
25. Log in ด้วยพยาบาล Nurse
   Input Text  css:[placeholder="Username"]  ${USERNAME_NURSE}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_NURSE}
   Click Button  Login
26. เลือกหมวด PTM และ กรอกรหัส ยา
   # เลือกหมวด PTM
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button
   #เลือก DrugOrder
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.six.wide > div > div.text
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.six.wide > div > div.menu.transition.visible > div:nth-child(9)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.six.wide > div > div.menu.transition.visible > div:nth-child(9)
   #ใส่รหัสใบยา
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.ten.wide > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.ten.wide > div > input[type=text]  CTRL+V  ${ENTER}
   Sleep  5s
   #RECEIVE
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
   #ปิด pop-up RECEIVE
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   # #ปิดหน้าใบยา
   # Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > a  timeout=20
   # Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > a
   Sleep  5s
   #กรอก HN
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  ${HN}  ${ENTER}
   Sleep  10s
   #เลือกผู้ป่วย
   Wait Until Element Is Visible  css:#dgrid_0-row-0 > table > tr > td.dgrid-cell.dgrid-column-9  timeout=20
   Double Click Element  css:#dgrid_0-row-0 > table > tr > td.dgrid-cell.dgrid-column-9
   Sleep  30s
   #พยาบาลผู้รับคำสั่ง
   Wait Until Element Is Visible  css:#dgrid_11-row-0 > table > tr > td.dgrid-cell.dgrid-column-3.field-order_ack_by_name  timeout=20
   Click Element  css:#dgrid_11-row-0 > table > tr > td.dgrid-cell.dgrid-column-3.field-order_ack_by_name
   #กรอก Nurse
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div:nth-child(3) > div > div:nth-child(1) > input[type=password]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div:nth-child(3) > div > div:nth-child(1) > input[type=password]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div:nth-child(3) > div > div:nth-child(1) > input[type=password]  ${ADMIN}  ${ENTER}
   #Save
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button
   #ปิด pop-up
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   #Save ออกจากห้องตรวจ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button
   #ปิดแจ้งเตือน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button    timeout=20
   Press Keys  NONE  ${ESCAPE}
   #คลิ๊กส่งเข้าคิว
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(2) > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(2) > div > button
   #ปิดส่งเข้าคิว
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button
   Sleep  10s
   Close Window
27. เปิด Browser เพื่อเข้าหน้าจอDPO
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_DORTOR}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
28. Log in ด้วยDORTOR
   Input Text  css:[placeholder="Username"]  ${USERNAME_DORTOR}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_DORTOR}
   Click Button  Login
29. DPO
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.olive > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.olive > div.ui.extra.content > button
30.เลือกผู้ป่วย และ ส่งผู้ป่วยกลับบ้าน
   #กรอก HN
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]
   Press Keys  css:div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]  ${HN}  ${ENTER}
   #เลือกผู้ป่วย
   Sleep  30s
   Double Click Element  css:#dgrid_3-row-0 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-0 > div > table > tr > td.dgrid-cell.dgrid-column-0-0-2.field-hn
   Sleep  30s
   #Check out
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.menu.right > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.menu.right > div > button
   #เลือก By Approval
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > div.ui.column.fifteen.wide > div > div:nth-child(2) > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > div.ui.column.fifteen.wide > div > div:nth-child(2) > div
   #Check out
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button
   Sleep  10s
   Close Window
31. เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_NURSE}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
32. Log in ด้วยพยาบาล Nurse
   Input Text  css:[placeholder="Username"]  ${USERNAME_NURSE}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_NURSE}
   Click Button  Login
33. เลือกหมวด PTM และ Discharge
   # เลือกหมวด PTM
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button
   # กรอก HN
   Sleep  30s
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  timeout=20
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  ${HN}  ${ENTER}
   Sleep  15s
   #คลิ๊กผู้ป่วย
   Double Click Element  css:#dgrid_0-row-0 > table > tr > td.dgrid-cell.dgrid-column-9 > div
   #Discharge
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(7) > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(7) > div > button
   #สภาพผู้ป่วย
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)
   #Discharge Status
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)
   # บันทึก
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(4) > div.field.two.wide > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(4) > div.field.two.wide > button
   Sleep  10s
   Close Window
34. เปิด Browser เพื่อเข้าหน้าจอ BIL
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_BIL}  ${Browser}  
   Maximize Browser Window
   Set Selenium Speed   0.3
35. Form Login
   Input Text  css:[placeholder="Username"]  ${USERNAME_BIL}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_BIL}
   Click Button  Login
36. BIL Enter Page
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button
37. ตั้งเลขที่ใบเสร็จ
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.five.wide.inline > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.five.wide.inline > div > input[type=text]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.five.wide.inline > div > input[type=text]  ${NAMEBIL}  ${TAB}  ${NUMBIL}
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button
   #กรอก HN
   Sleep  5s
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${HN}  ${ENTER}
   Sleep  10s
   #รับชำระเงิน
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div:nth-child(7) > div > div:nth-child(3) > button.ui.button.green.icon  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div:nth-child(7) > div > div:nth-child(3) > button.ui.button.green.icon
   #กรอกจำนวนเงิน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(2) > div:nth-child(4) > div > input[type=text]  timeout=20
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(2) > div:nth-child(4) > div > input[type=text]  ${MONEY}
   #ติ๊ก Auto EDC ออก
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div.field.two.wide.inline > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div.field.two.wide.inline > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div:nth-child(4) > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div:nth-child(4) > div > input[type=text]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div:nth-child(4) > div > input[type=text]  ${Approval Code}
   #รับชำระเงิน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(3) > div.field.four.wide.inline > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(3) > div.field.four.wide.inline > button
