*** Keywords ***
เปิด Browser เพื่อเข้าหน้าจอ Pharma
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_PHARMA}  ${Browser}  
   Maximize Browser Window
   ความเร็วในการกด
Log in ด้วย Pharma
   Input Text  css:[placeholder="Username"]  ${USERNAME_PHARMA}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_PHARMA}
   Click Button  Login
เลือก TPD
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.black > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.black > div.ui.extra.content > button
กรอก HN TPD
   รอ 5 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${HN}  ${ENTER}
   รอ 10 วิ
เปิดใบยาผู้ป่วย
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div:nth-child(1)  timeout=20
   Double Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div:nth-child(1)
   รอ 10 วิ
VERIFY AND PRINT
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
   รอ 10 วิ
   Reload Page
   รอ 10 วิ
CHECK
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
ปิด pop-up CHECK
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div.ui.segment.inverted.red  timeout=20
   Double Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.east > div:nth-child(1) > div > div > div > div.ui.segments.horizontal > div.ui.segment.inverted.red
ปิด pop-up ใบยายังไม่ได้รับชำระเงิน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
ผู้จัดส่ง
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(1) > div > div:nth-child(1) > input[type=password]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(1) > div > div:nth-child(1) > input[type=password]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(1) > div > div:nth-child(1) > input[type=password]  ${ADMIN}  ${ENTER}
DELIVER
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
ปิด pop-up deliver
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
เปิดประวัติการสั่งยา
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.ui.item.dropdown > span
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.ui.item.dropdown.active.visible > div > a:nth-child(2) > button
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(5) > div:nth-child(5) > button
coppy รหัสสั่งยา
   Wait Until Element Is Visible  css:#dgrid_5-row-0 > table > tbody > tr > td > div > table > tr:nth-child(1) > td.dgrid-cell.dgrid-column-0-0-3.field-patient_full_name  timeout=20
   Double Click Element  css:#dgrid_5-row-0 > table > tbody > tr > td > div > table > tr:nth-child(1) > td.dgrid-cell.dgrid-column-0-0-4.field-status
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(1) > div  timeout=20
   Double Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(1) > div
   รอ 10 วิ
   Press Keys  NONE  ${Coppy}
   รอ 10 วิ
   Close Window