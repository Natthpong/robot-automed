*** Keywords ***
เปิด Browser เพื่อเข้าหน้าจอ BIL
   Open Browser  http://${SERVER}/users/login/?next=/&comname=${COMNAME_BIL}  ${Browser}  
   Maximize Browser Window
   ความเร็วในการกด
Log in ด้วย BIL
   Input Text  css:[placeholder="Username"]  ${USERNAME_BIL}
   Input Password  css:[placeholder="Password"]  ${PASSWORD_BIL}
   Click Button  Login
BIL Enter Page
   รอ 5 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.grid > div.ui.column.cards.link > div.ui.card.yellow > div.ui.extra.content > button
ตั้งเลขที่ใบเสร็จ
   รอ 30 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.five.wide.inline > div > input[type=text]  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.five.wide.inline > div > input[type=text]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.five.wide.inline > div > input[type=text]  ${NAMEBIL}  ${TAB}  ${NUMBIL}
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div > div.fields.inline > div.field.two.wide.inline > button
กรอก HN BIL
   รอ 10 วิ
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  timeout=20
   Click Element  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]
   Press Keys  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.west > div > div:nth-child(2) > div:nth-child(1) > div.field.eleven.wide.inline > div.ui.action.input > input[type=text]  ${HN}  ${ENTER}
   รอ 10 วิ
รับชำระเงิน
   Wait Until Element Is Visible  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div:nth-child(7) > div > div:nth-child(3) > button.ui.button.green.icon  timeout=20
   Click Button  css:body > div.ui.container.fluid > div.ui.layout-vertical > div.ui.layout-horizontal > div.ui.middle > div > div.ui.accordion.defaultBackground.styled.fluid.raised.segment.transition.visible > div.content.active > div:nth-child(7) > div > div:nth-child(3) > button.ui.button.green.icon
กรอกจำนวนเงิน
   รอ 5 วิ
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(2) > div:nth-child(4) > div > input[type=text]  timeout=20
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(4) > div:nth-child(2) > div:nth-child(4) > div > input[type=text]  ${MONEY}
ติ๊ก Auto EDC ออก
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div.field.two.wide.inline > div  timeout=20
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div.field.two.wide.inline > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div:nth-child(4) > div > input[type=text]  timeout=20
กรอกช่อง Approval Code
   Click Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div:nth-child(4) > div > input[type=text]
   Press Keys  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(1) > div:nth-child(4) > div > input[type=text]  ${Approval Code}
รับชำระเงิน Save
   Set Focus To Element  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(3) > div:nth-child(3) > div
   Wait Until Element Is Visible  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(3) > div.field.four.wide.inline > button  timeout=20
   Click Button  css:body > div.dimmable.dimmed.scrolling > div > div > div > div:nth-child(7) > div:nth-child(3) > div.field.four.wide.inline > button
ข้าม NHSO
   Wait Until Element Is Visible  css:body > div:nth-child(102) > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > button  timeout=20
   Click Button  css:body > div:nth-child(102) > div > div > div > div.content.active > div.ui.grid > div:nth-child(1) > button