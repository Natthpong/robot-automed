*** Settings ***
Resource  ../include/settings.robot

*** Test Cases ***
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
   รอ 5 วิ
   ${position}=    pyautogui.position  
   log to console  ${position}

   
