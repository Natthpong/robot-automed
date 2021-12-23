*** Keywords ***
เปิด Browser เพื่อเข้าหน้าจอพยาบาล Lab
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_LAB}  ${Browser}  
   Maximize Browser Window
   ความเร็วในการกด
Log in ด้วยพยาบาล Lab
   Input Text  css:[placeholder="Username"]  ${USERNAME_LAB}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_LAB}
   Click Button  Login
เลือก Specimen Collector
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.red > div.ui.extra.content > button
คิวผู้ป่วยใน Lab
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(3) > div > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(3) > div > button
ติ๊กค้นหาด้วย HN
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(1) > div:nth-child(5) > div  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(1) > div:nth-child(5) > div
กรอก HN Lab
   รอ 5 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(1) > div:nth-child(6) > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(1) > div:nth-child(6) > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(1) > div:nth-child(6) > div > input[type=text]  ${HN}  ${ENTER}
ค้นหาคิว Lab
   รอ 5 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(2) > div:nth-child(5) > button
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.form > div:nth-child(2) > div:nth-child(5) > button
เลือกคิว Lab
   รอ 5 วิ
   Wait Until Element Is Visible  css:#dgrid_12-row-0 > table > tr > td.dgrid-cell.dgrid-column-1.field-patient_name  timeout=20
   Double Click Element  css:#dgrid_12-row-0 > table > tr > td.dgrid-cell.dgrid-column-1.field-patient_name
รับเข้า Lab
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div:nth-child(6) > div.fields.inline > div.field.three.wide > button  timeout=20
   Double Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.content.active > div:nth-child(6) > div.fields.inline > div.field.three.wide > button
ปิด pop-up บันทึกรับเข้า lab
   Wait Until Element Is Visible  css:body > div:nth-child(19) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Double Click Element  css:body > div:nth-child(19) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
PRINT
   รอ 5 วิ
   Wait Until Element Is Visible  css:#dgrid_10-row-0 > table > tr > td.dgrid-cell.dgrid-column-10 > div > button.ui.button.icon.teal  timeout=20
   Click Element  css:#dgrid_10-row-0 > table > tr > td.dgrid-cell.dgrid-column-10 > div > button.ui.button.icon.teal
เก็บรหัสสติ๊กเกอร์
   รอ 5 วิ
   Set Focus To Element  css:#dgrid_10-row-0 > table > tr > td.dgrid-cell.dgrid-column-4.field-barcode
   ${BARCODE_LAB} =   Get Text    css:#dgrid_10-row-0 > table > tr > td.dgrid-cell.dgrid-column-4.field-barcode
   Set Global Variable  ${BARCODE_LAB}
   log to console  \nรหัสสติ๊กเกอร์ ${BARCODE_LAB}
   รอ 10 วิ
   Reload Page
กรอกรหัสสติ๊กเกอร์
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(2) > div > div > div.field.ten.wide > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(2) > div > div > div.field.ten.wide > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div:nth-child(2) > div > div > div.field.ten.wide > div > input[type=text]  ${BARCODE_LAB}  ${ENTER}
กรอก Username ยืนยัน Specimen
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(2) > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(2) > div > input[type=text]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(2) > div > input[type=text]  ${SPECIMEN_USERNAME}
กรอก Password ยืนยัน Specimen
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(3) > div > input[type=password]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(3) > div > input[type=password]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(3) > div > input[type=password]  ${SPECIMEN_PASSWORD}
ยืนยัน Specimen
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(4) > button  timeout=20
   Click Button  css:body > div.dimmable.scrolling.dimmed > div > div > div > div.content.active > div.ui.form.success > div.fields.inline > div:nth-child(4) > button
ปิด pop-up ยืนยัน Specimen
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div:nth-child(18) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div:nth-child(18) > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
กลับหน้าหลักของ Lab
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div:nth-child(2) > a > button > i  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div:nth-child(2) > a > button > i
เลือก Specimen Center
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button
กรอกรหัสสติ๊กเกอร์ Specimen Center
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div > div > div.field.ten.wide > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div > div > div.field.ten.wide > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.north > div > div.ui.container.fluid > div > div > div > div.field.ten.wide > div > input[type=text]  ${BARCODE_LAB}  ${ENTER}
เลือก Central Lab Result
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.green > div.ui.extra.content > button  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.green > div.ui.extra.content > button
กรอก HN ใน
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.grid > div:nth-child(1) > div > div > div:nth-child(1) > div > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.grid > div:nth-child(1) > div > div > div:nth-child(1) > div > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.blue.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div.ui.grid > div:nth-child(1) > div > div > div:nth-child(1) > div > input[type=text]  ${HN}  ${ENTER}
เลือก Lab ที่ได้รับ Specimen
   รอ 10 วิ
   Wait Until Element Is Visible  css:#dgrid_2-row-0 > table > tr > td.dgrid-cell.dgrid-column-2.field-order_name  timeout=20
   Double Click Element  css:#dgrid_2-row-0 > table > tr > td.dgrid-cell.dgrid-column-2.field-order_name
เลือกช่องลงผล Lab
   Wait Until Element Is Visible  css:#dgrid_4-row-1 > table > tr > td.dgrid-cell.dgrid-column-gclValue.field-value  timeout=20
   Click Element  css:#dgrid_4-row-1 > table > tr > td.dgrid-cell.dgrid-column-gclValue.field-value
ลงผลของ Lab
   Wait Until Element Is Visible  css:#dgrid_4-row-1 > table > tr > td.dgrid-cell.dgrid-column-gclValue.field-value.dgrid-focus  timeout=20
   Click Element  css:#dgrid_4-row-1 > table > tr > td.dgrid-cell.dgrid-column-gclValue.field-value.dgrid-focus
   Press Keys  css:#dgrid_4-row-1 > table > tr > td.dgrid-cell.dgrid-column-gclValue.field-value.dgrid-focus  ${RESULT_LAB}  ${ENTER}
Save ผล Lab
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div.content.active > div.ui.grid > div:nth-child(8) > button  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div:nth-child(2) > div.content.active > div.ui.grid > div:nth-child(8) > button
Username ผู้ลงผล Lab
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div:nth-child(1) > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div:nth-child(1) > div > input[type=text]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div:nth-child(1) > div > input[type=text]  ${RESULT_USERNAME}
Password ผู้ลงผล Lab
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(2) > div > input[type=password]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(2) > div > input[type=password]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(2) > div > input[type=password]  ${RESULT_PASSWORD}  ${ENTER}
ปิด pop-up ผู้ลงผล Lab
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
Authorize Lab
   Wait Until Element Is Visible  css:#dgrid_4-row-1 > table > tr > td.dgrid-cell.dgrid-column-9.field-__ > button  timeout=20
   Click Button  css:#dgrid_4-row-1 > table > tr > td.dgrid-cell.dgrid-column-9.field-__ > button
Username Authorize Lab
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(1) > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(1) > div > input[type=text]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(1) > div > input[type=text]  ${AUTHORIZE_USERNAME}
Password Authorize Lab
   Wait Until Element Is Visible  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(2) > div > input[type=password]  timeout=20
   Click Element  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(2) > div > input[type=password]
   Press Keys  css:body > div.dimmable.scrolling.dimmed > div > div > div > div > div:nth-child(2) > div > input[type=password]  ${AUTHORIZE_PASSWORD}  ${ENTER}
ปิด pop-up Authorize Lab
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div.ui.segment.raised > div.ui.grid > div > button
   รอ 10 วิ  
   Close Window