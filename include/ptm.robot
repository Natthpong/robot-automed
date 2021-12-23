*** Keywords ***
เปิด Browser เพื่อเข้าหน้าจอพยาบาล PTM
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_NURSE}  ${Browser}  
   Maximize Browser Window
   ความเร็วในการกด
Log in ด้วยพยาบาล Nurse
   Input Text  css:[placeholder="Username"]  ${USERNAME_NURSE}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_NURSE}
   Click Button  Login
PTM-Triage Enter Page
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.orange > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.orange > div.ui.extra.content > button
ปิดหน้าคิว
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div  timeout=20
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div  ${ESCAPE}
กรอก HN PTM-Triage
   รอ 30 วิ
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div.ui.form > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div.ui.form > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${HN}
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div.ui.form > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${ENTER}
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.teal.defaultBackground.styled.fluid.raised.segment.transition.visible  timeout=20
   รอ 10 วิ
Chief Complaint
   รอ 30 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.teal.defaultBackground.styled.fluid.raised.segment.transition.visible  timeout=20
   Input Text  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.teal.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.grid.two.column > div:nth-child(1) > div > div:nth-child(2) > div.field.twelve.wide.inline > div > div > input[type=text]  ${Chief_Complaint}
   #บันทึก
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.teal.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div:nth-child(6) > div:nth-child(1) > button
Close Popup :: Triage Success
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE}
Wait Objects After Enter Vital Sign
   Wait Until Page Contains Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.black.defaultBackground.styled.fluid.raised.segment.transition.visible  
   Wait Until Page Contains Element  css:#dgrid_12-row-0 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table  
   รอ 10 วิ
กรอก weight
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-1 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-1 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-1 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${weight}
กรอก height
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-2 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-2 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-2 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${ALL}  ${height}
กรอก pulse
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-3 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-3 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-3 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${pulse}
กรอก temp
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-4 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-4 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-4 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${temp}
กรอก systolic
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-5 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-5 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-5 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${systolic}
กรอก diastolic
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-6 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-6 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-6 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${diastolic}
กรอก breathe
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-7 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-7 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-7 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${breathe}
กรอก O2 Sat
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_12-row-8 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Click Element  css:#dgrid_12-row-8 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td
   Press Keys  css:#dgrid_12-row-8 > table > tbody > tr > td.dgrid-column-set-cell.dgrid-column-set-1 > div > table > tr > td > input[class="dgrid-input"]  ${o2}
Save Vital Sign
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.black.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.grid.two.columns > div:nth-child(2) > div.ui.form > div > div.field.two.wide > button
Close Popup : Success
   Wait Until Element Contains  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.inverted.green > span  บันทึกรายการสำเร็จ
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  ${ESCAPE}
กดปุ่ม Home
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div:nth-child(2) > a > button > i  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div:nth-child(2) > a > button > i
เลือกหมวด PTM
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button
กรอก HN PTM
   รอ 30 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  timeout=20
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.segments.raised.green > div:nth-child(2) > div.ui.form.small > div:nth-child(1) > div:nth-child(2) > div.field.four.wide > div > input[type=text]  ${HN}  ${ENTER}
   รอ 15 วิ
คลิ๊กผู้ป่วย
   Double Click Element  css:#dgrid_0-row-0 > table > tr > td.dgrid-cell.dgrid-column-9 > div
ปิด Vital Signs
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(2) > div > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(2) > span  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(2) > div > div.title.active > div.ui.grid > div:nth-child(1) > div:nth-child(2) > span
   รอ 10 วิ
Save ประเมินแรกรับ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button
ปิดแจ้งเตือน
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button    timeout=20
   Press Keys  NONE  ${ESCAPE}
คลิ๊กส่งเข้าคิว
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(2) > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(2) > div > button
ปิดส่งเข้าคิว
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button
   รอ 10 วิ
   Close Window
เลือก DrugOrder
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.six.wide > div > div.text
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.six.wide > div > div.menu.transition.visible > div:nth-child(9)  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.six.wide > div > div.menu.transition.visible > div:nth-child(9)
ใส่รหัสใบยา
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.ten.wide > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(1) > div > div > div.field.ten.wide > div > input[type=text]  CTRL+V  ${ENTER}
   รอ 5 วิ
RECEIVE
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > div.content.active > div:nth-child(7) > div:nth-child(3) > div > div > div:nth-child(10) > button
ปิด pop-up RECEIVE
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   # #ปิดหน้าใบยา
   # Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > a  timeout=20
   # Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(3) > div > a
   รอ 5 วิ
เลือกผู้ป่วย
   Wait Until Element Is Visible  css:#dgrid_0-row-0 > table > tr > td.dgrid-cell.dgrid-column-9  timeout=20
   Double Click Element  css:#dgrid_0-row-0 > table > tr > td.dgrid-cell.dgrid-column-9
   รอ 30 วิ
พยาบาลผู้รับคำสั่ง ในการรับยา
   Wait Until Element Is Visible  css:#dgrid_11-row-0 > table > tr > td.dgrid-cell.dgrid-column-3.field-order_ack_by_name  timeout=20
   Click Element  css:#dgrid_11-row-0 > table > tr > td.dgrid-cell.dgrid-column-3.field-order_ack_by_name
พยาบาลผู้รับคำสั่ง ในการรับผล Lab
   Wait Until Element Is Visible  css:#dgrid_11-row-1 > table > tr > td.dgrid-cell.dgrid-column-3.field-order_ack_by_name  timeout=20
   Click Element  css:#dgrid_11-row-1 > table > tr > td.dgrid-cell.dgrid-column-3.field-order_ack_by_name
กรอก Nurse 
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div:nth-child(3) > div > div:nth-child(1) > input[type=password]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div:nth-child(3) > div > div:nth-child(1) > input[type=password]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div:nth-child(3) > div > div:nth-child(1) > input[type=password]  ${ADMIN}  ${ENTER}
Save พยาบาลผู้รับคำสั่ง
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button
ปิด pop-up พยาบาลผู้รับคำสั่ง
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
Save ออกจากห้องตรวจ
   รอ 15 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div:nth-child(3) > div > div.content.active > div.ui.container.fluid > div.ui.sticky > div > div.menu.right > div > button
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div:nth-child(1) > button
Discharge
   รอ 15 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(7) > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div:nth-child(7) > div > button
สภาพผู้ป่วย
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(1)  timeout=20
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(2) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)
Discharge Status
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(3) > div.field.five.wide > div > div.menu.transition.visible > div:nth-child(1)
บันทึก Discharge
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(4) > div.field.two.wide > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(2) > div > div:nth-child(4) > div.field.two.wide > button
   รอ 10 วิ
   Close Window