*** Keywords ***
รอ 5 วิ
    BuiltIn.Sleep  5s
รอ 10 วิ
    BuiltIn.Sleep  10s
รอ 15 วิ
    BuiltIn.Sleep  15s
รอ 30 วิ
    BuiltIn.Sleep  30s
รอ 60 วิ
    BuiltIn.Sleep  60s
รอ 120 วิ
    BuiltIn.Sleep  120s
ความเร็วในการกด
    Set Selenium Speed   0.5
zoomout
   Hotkey  CTRL  -
   Hotkey  CTRL  -
zoomin
   Hotkey  CTRL  +
   Hotkey  CTRL  +
เลือกผู้ป่วย Random HN
    รอ 30 วิ
   ${random_numbers}=  Evaluate  random.randrange(1,13)   random
   Set Global Variable  ${random_numbers}
   log to console  \n\nค่าตัวเลขที่สุ่ม ${random_numbers}
   log to console  \nค่า y ก่อนสุ่ม ${def_y}
   ${def_y}=   Evaluate  ${def_y} + ${y_number} * ${random_numbers}
   log to console  \nค่า y หลังจากสุ่ม ${def_y}
   Set Global Variable  ${def_y}
   ${position}=    pyautogui.position  ${def_x}  ${def_y}
   log to console  \nClick x,y ${position}
   pyautogui.moveTo  ${position}
   pyautogui.Click  ${position}
   ${scroll_hn}=  Evaluate  random.randint(150,500)   random
   Set Global Variable  ${scroll_hn}
   ${position_scroll}=    pyautogui.position  ${scroll_x}  ${scroll_y}
   FOR    ${index}    IN RANGE  ${scroll_hn}
      pyautogui.Click  ${position_scroll}
      Continue For Loop
        Fail
    END
   log to console  \nจำนวนคลิ๊ก Scrolling ${scroll_hn}\n
   รอ 120 วิ
   pyautogui.Double Click  ${position}
Save_Order_DPO
    รอ 10 วิ
    FOR    ${index}    IN RANGE  100
        ${Save_Order_DPO}  ${value} =  BuiltIn.Run Keyword And Ignore Error  wait Until element is visible  css:body > div:nth-child(${Save_Order_Num}) > div > div > div > div.content.active > div.ui.container.fluid > div.ui.segment > div > div > div.field.four.wide > button.ui.button.icon.green
        BuiltIn.Run Keyword If    '${Save_Order_DPO}'=='PASS'    Exit For Loop
        Exit For Loop If    '${Save_Order_DPO}'=='PASS'
        ${Save_Order_Num}=  Evaluate  ${Save_Order_Num} + 1
    END
   BuiltIn.Run Keyword If  '${Save_Order_DPO}' == 'PASS'  click element  css:body > div:nth-child(${Save_Order_Num}) > div > div > div > div.content.active > div.ui.container.fluid > div.ui.segment > div > div > div.field.four.wide > button.ui.button.icon.green