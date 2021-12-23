*** Settings ***
Resource  ../include/settings.robot

*** Test Cases ***
เปิด Browser เพื่อเข้าหน้าจอ REG
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_REG}  ${Browser}  alias=reg
   Maximize Browser Window
   ความเร็วในการกด
Form Login REG
   ${Random Numbers}=  Evaluate  random.sample(range(1, 10),1)   random
   Set Global Variable  ${HN}
   log to console  ${HN}

   Input Text  css:[placeholder="Username"]  ${USERNAME_REG}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_REG}
   Submit Form
REG Enter Page
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button
ช่องทางให้ข้อมูล
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div.ui.form > div > div.field.seven.wide.required > div > input.search  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div.ui.form > div > div.field.seven.wide.required > div > input.search
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div.ui.form > div > div.field.seven.wide.required > div > div.menu.transition.visible > div:nth-child(1)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div.ui.form > div > div.field.seven.wide.required > div > div.menu.transition.visible > div:nth-child(1)
หมายเลขบัตรประจำตัวประชาชน
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(5) > div:nth-child(3) > div > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(5) > div:nth-child(3) > div > input[type=text]  ${Identification_number}
ชื่อ-นามสกุล
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(6) > div.field.three.wide.required > div > input.search
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(6) > div.field.three.wide.required > div > div.menu.transition.visible > div:nth-child(2)
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(6) > div:nth-child(3) > div > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(6) > div:nth-child(3) > div > input[type=text]  ${first_name_th}
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(6) > div:nth-child(4) > div > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(6) > div:nth-child(4) > div > input[type=text]  ${last_name_th}
เพศ
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(8) > div.field.three.wide.required > div > input.search
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(8) > div.field.three.wide.required > div > div.menu.transition.visible > div.item.selected
หมู่เลือด
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(8) > div.field.four.wide.required > div > input.search
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(8) > div.field.four.wide.required > div > div.menu.transition.visible > div:nth-child(1)
วันเกิด
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(9) > div:nth-child(2) > div > input[type=text]  ${birthdate}
สัญชาติ
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(10) > div.field.five.wide.required > div > input.search
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(10) > div.field.five.wide.required > div > div.menu.transition.visible > div.item.selected
ชื่อบิดา-มารดา
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(14) > div:nth-child(1) > div > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(14) > div:nth-child(1) > div > input[type=text]  ${father}
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(14) > div:nth-child(2) > div > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(2) > div > div > div.ui.form.success > div:nth-child(14) > div:nth-child(2) > div > input[type=text]  ${mother}
บันทึกข้อมูลผู้ป่วย
   รอ 10 วิ
   zoomout
   รอ 10 วิ
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(3) > button
   zoomin
   # Set Selenium Implicit Wait	5 seconds
พิมพ์ Consent form
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(2) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(2) > button
   Set Focus To Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]
   ${HN} =   Get Value    css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]
   Set Global Variable  ${HN}
   log to console  \nHN ผู้ป่วย ${HN}
   Close Window

   
   
   

