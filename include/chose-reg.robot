*** Keywords ***
เปิด Browser เพื่อเข้าหน้าจอ REG
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_REG}  ${Browser}  
   Maximize Browser Window
   ความเร็วในการกด
Form Login REG
   Input Text  css:[placeholder="Username"]  ${USERNAME_REG}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_REG}
   Click Button  Login
REG Enter Page
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button
คลิ๊กปุ่มค้นหาผู้ป่วย ในช่อง HN
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > button > i  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > button > i
คลิ๊กปุ่มค้นหาผู้ป่วย
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > div > div > div:nth-child(2) > div:nth-child(5) > button  timeout=20
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > div > div > div:nth-child(2) > div:nth-child(5) > button
#     ${id}=	Get Element Attribute	css:#dgrid_10-row-81904 > table > tr > td.dgrid-cell.dgrid-column-2.field-full_name_th   id
#    log to console  ${id}
เลือกผู้ป่วย HN
   Wait Until Element Is Visible  ${chose}  timeout=20
   Double Click Element  ${chose}
เก็บ HN ผู้ป่วย
   Set Focus To Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]
   ${HN} =   Get Value    css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div:nth-child(1) > div > div:nth-child(1) > div.ui.column.thirteen.wide > div > div > div:nth-child(1) > div.field.six.wide > div > input[type=text]
   Set Global Variable  ${HN}
   log to console  \nHN ผู้ป่วย ${HN}
Open Encounter
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > a:nth-child(2)
   Wait Until Element Contains  css:body > div.dimmable.dimmed.scrolling > div > div > div  HN : ${HN}  
คลิกเลือกแผนก
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(3) > div.field.twelve.wide.inline > div > input.search
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(3) > div.field.twelve.wide.inline > div > div.menu.transition.visible > div:nth-child(48)
คลิกเลือกแพทย์
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(5) > div.field.twelve.wide.inline > div > input.search
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(5) > div.field.twelve.wide.inline > div > div.menu.transition.visible > div:nth-child(19)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.form.success > div:nth-child(5) > div.field.twelve.wide.inline > div > div.menu.transition.visible > div:nth-child(19)
บันทึก ADR
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div.ui.segment > div.ui.form.sixteen.wide.success > div:nth-child(2) > div.field.three.wide > button
บันทึก Encounter ใหม่
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(3) > div.ui.bottom.attached.tab.segment.active > div > div.content.active > div:nth-child(3) > div:nth-child(6) > div > div:nth-child(1) > button
   #Close Current Window
   #Delay after save encounter 5 second
   Wait Until Element Is Visible  css:body > div:nth-child(40) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Press Keys  css:body > div:nth-child(40) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE} 
ปิด popup ถ้าไม่มีรูปผู้ป่วย
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
รับรองสิทธิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > a:nth-child(3)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > a:nth-child(3)
   Set Selenium Implicit Wait  5seconds
เลือกประเภทบริการ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.required > div.field.inline > div:nth-child(2)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.required > div.field.inline > div:nth-child(2)
เลือกลำดับสิทธิ์
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > input.search  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > input.search
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > div.menu.transition.visible > div:nth-child(2)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(2) > div.field.inline.two.wide > div > div.menu.transition.visible > div:nth-child(2)
เลือกสิทธิ์
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > input.search  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > input.search
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > div.menu.transition.visible > div.item.selected  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(2) > div > div.menu.transition.visible > div.item.selected
เลือกผู้จ่ายเงิน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.ui.icon.input > input  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.ui.icon.input > input
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.ui.icon.input > input  ${Payer}
   Set Selenium Implicit Wait  3seconds
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(5) > div.field.seven.wide.required > div > div.results.transition.visible > a > div > div
ประเภทสิทธิ์
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div > div.menu.transition.visible > div:nth-child(1)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(4) > div:nth-child(3) > div > div.menu.transition.visible > div:nth-child(1)
วันหมดอายุ
   Input Text  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(1) > div > div:nth-child(9) > div:nth-child(3) > div > input  ${lastdays}
บันทึกสิทธิ์
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.form > div > div:nth-child(4) > button.ui.button.icon.green.fluid
   Wait Until Element Contains  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.inverted.green > span  บันทึกสำเร็จ  
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE}
   รอ 10 วิ  
   Close Window