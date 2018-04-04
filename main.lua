-----------------------------------------------------------------------------------------
--
-- main.Lua
--
-- tells you if you if you get a discount
--
--
-- Created by: Fawaz Mezher
-- Created on: March 2018 
-----------------------------------------------------------------------------------------

local InstructionTextField = display.newText( "Enter age and the day of the week.", display.contentCenterX - 400, display.contentCenterY - 500, native.systemFont, 70 )

local ageTitleTextField = display.newText( "age", display.contentCenterX + 400, display.contentCenterY + 200, native.systemFont, 100 )
ageTitleTextField:setFillColor( 99, 10, 88 )

local weekdayTitleTextField = display.newText( "day of the week", display.contentCenterX + 600, display.contentCenterY - 00, native.systemFont, 100 )
weekdayTitleTextField:setFillColor( 99, 10, 88 )



local dayTextField = native.newTextField( display.contentCenterX, display.contentCenterY , 450, 120 )
dayTextField.id = "answer textField"

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150 , 450, 120 )
ageTextField.id = "answer textField"


local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY + 300
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    local day
    local age
    local agetonumber

    age = ageTextField.text
    agetonumber = tonumber(age)
	day = dayTextField.text

	
	if dayTextField == ("tuesday" or dayTextField == "thursday") or (agetonumber > 12 and agetonumber < 21 ) then
		display.newText("you get student discount", 1024, 1200, native.systemFont, 100)
		print(dayTextField.text)
	else 
		display.newText("you get regular price", 1024, 1200, native.systemFont, 100)
	
	end
end

enterButton:addEventListener( "touch", enterButtonTouch )
