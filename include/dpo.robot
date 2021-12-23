*** Keywords ***
เปิด Browser เพื่อเข้าหน้าจอ DPO
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_DORTOR}  ${Browser}  
   Maximize Browser Window
   ความเร็วในการกด
Log in ด้วย DORTOR
   Input Text  css:[placeholder="Username"]  ${USERNAME_DORTOR}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_DORTOR}
   Click Button  Login
DPO Enter Page
   รอ 30 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.olive > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.olive > div.ui.extra.content > button
กรอก HN DPO
   รอ 30 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]
   Press Keys  css:div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segment.raised.blue.defaultBackground > div.ui.form.small > div > div.field.six.wide.inline > div > input[type=text]  ${HN}  ${ENTER}
เลือกผู้ป่วย DPO
   รอ 30 วิ
   Double Click Element  css:#dgrid_3-row-0 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-0 > div > table > tr > td.dgrid-cell.dgrid-column-0-0-7.field-status_name
   รอ 30 วิ
ประวัติผู้ป่วย
   Set Focus To Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(28) > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(2) > span
   รอ 10 วิ
อาการ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(4) > div > div.fields.inline > div:nth-child(2) > div  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(4) > div > div.fields.inline > div:nth-child(2) > div
Present illness
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(9) > div:nth-child(3) > div > textarea  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(9) > div:nth-child(3) > div > textarea
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(1) > div:nth-child(9) > div:nth-child(3) > div > textarea  ${ALL}  ${Present illness}
ข้อมูลการตรวจร่างกาย
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div.ui > div:nth-child(4) > div > div.ui.column.fourteen.wide > div:nth-child(1) > div:nth-child(3) > div  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div.ui > div:nth-child(4) > div > div.ui.column.fourteen.wide > div:nth-child(1) > div:nth-child(3) > div
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div.ui > div:nth-child(4) > div > div.ui.column.fourteen.wide > div:nth-child(2) > div > textarea  ${ALL}  ${Chest}
Save ข้อมูลการตรวจร่างกาย
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div.ui > div:nth-child(4) > div > div.ui.column.fourteen.wide > div:nth-child(1) > div:nth-child(3) > div  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(30) > div.content.active > div.ui.grid.divided > div:nth-child(2) > div > div:nth-child(5) > div > button
Diagnosis
   รอ 10 วิ
   Set Focus To Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(31) > div.content.active > div:nth-child(3) > div:nth-child(4) > div > div > div:nth-child(2) > div > div.field.four.wide > div > input[type=text]
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(31) > div.content.active > div:nth-child(3) > div:nth-child(4) > div > div > div:nth-child(2) > div > div.field.four.wide > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(31) > div.content.active > div:nth-child(3) > div:nth-child(4) > div > div > div:nth-child(2) > div > div.field.four.wide > div > input[type=text]  ${ALL}  ${Diagnosis}
   รอ 10 วิ
   Wait Until Element Is Visible  css:#dgrid_120-row-0 > table > tr > td.dgrid-cell.dgrid-column-1.field-icdterm  timeout=20
   Double Click Element  css:#dgrid_120-row-0 > table > tr > td.dgrid-cell.dgrid-column-1.field-icdterm
   รอ 10 วิ
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(31) > div.content.active > div:nth-child(6) > div > div.field.three.wide > button
คลิ๊ก Progression / order
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(2) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(2) > button
คลิ๊กเพิ่ม Progression / order
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(26) > div.content.active > div.ui.grid > div:nth-child(1) > div:nth-child(1) > div > div.fields.inline > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(26) > div.content.active > div.ui.grid > div:nth-child(1) > div:nth-child(1) > div > div.fields.inline > div > button
คลิ๊ก Drug [STAT]
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(26) > div.content.active > div.ui.grid > div:nth-child(2) > div.ui.column.three.wide > div > div > a:nth-child(1)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(26) > div.content.active > div.ui.grid > div:nth-child(2) > div.ui.column.three.wide > div > div > a:nth-child(1)
กรอกช่อง Drug
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide.required > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide.required > div > input[type=text]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide.required > div > input[type=text]  ${Drug}  
   Wait Until Element Is Visible  css:#dgrid_98-row-1 > table > tr > td.dgrid-cell.dgrid-column-1.field-drug_name  timeout=20
   Click Element  css:#dgrid_98-row-1 > table > tr > td.dgrid-cell.dgrid-column-1.field-drug_name
กรอกช่อง Dose
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(2) > div > input[type=number]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(2) > div > input[type=number]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(2) > div > input[type=number]  ${ALL}  ${DOSE}
กรอกช่อง Qty
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(8) > div > input[type=number]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(8) > div > input[type=number]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(8) > div > input[type=number]  ${ALL}  ${QTY}
กรอกช่อง Duration
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(9) > div > input[type=number]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(9) > div > input[type=number]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(9) > div > input[type=number]  ${ALL}  ${Duration}
คลิ๊ก ADD TO ORDER
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(11) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div:nth-child(2) > div > div:nth-child(3) > div:nth-child(11) > button
คลิ๊ก CONFIRM ORDER
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(3) > div > div:nth-child(4) > div.field.three.wide > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(3) > div > div:nth-child(4) > div.field.three.wide > button
Save Order
   รอ 30 วิ
   Wait Until Element Is Visible  ${Save_Order}  timeout=20
   Click Button  ${Save_Order}
   รอ 30 วิ
ปิดหน้า Drug [STAT]
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > a  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > a
คลิ๊ก Central lab
   รอ 15 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(26) > div.content.active > div.ui.grid > div:nth-child(2) > div.ui.column.three.wide > div > div > a:nth-child(3)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.container.fluid > div:nth-child(26) > div.content.active > div.ui.grid > div:nth-child(2) > div.ui.column.three.wide > div > div > a:nth-child(3)
กรอก รหัส Lab
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div.fields.inline > div.field.four.wide > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div.fields.inline > div.field.four.wide > div > input[type=text]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div:nth-child(1) > div.fields.inline > div.field.four.wide > div > input[type=text]  ${CODE_LAB}  ${ENTER}
เลือก LAB
   รอ 10 วิ
   Wait Until Element Is Visible  css:#dgrid_108-row-1 > table > tr > td.dgrid-cell.dgrid-column-2.field-specimen_name  timeout=20
   Double Click Element  css:#dgrid_108-row-1 > table > tr > td.dgrid-cell.dgrid-column-2.field-specimen_name
Save Lab
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div.ui.container.fluid > button  timeout=20
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.container.fluid > div.ui.container.fluid > button
ปิด pop-up Save Lab
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
ปิด pop-up บันทึกสำเร็จ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
Check out
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.menu.right > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div.menu.right > div > button
Wait Result
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button
   รอ 10 วิ
   Close Window
By Approval
   รอ 15 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > div.ui.column.fifteen.wide > div > div:nth-child(2) > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > div.ui.column.fifteen.wide > div > div:nth-child(2) > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div.ui.grid > div.ui.row.fifteen.wide > div.ui.column.fifteen.wide > div > div.fields > div > button
   รอ 15 วิ
   Close Window