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

-- instrcution
local InstructionTextField = display.newText( "Enter age and the day of the week.", display.contentCenterX - 400, display.contentCenterY - 500, native.systemFont, 70 )

local ageTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 200, 750, 150 )
ageTextField.id = "age textField"

local weekdayTextField = native.newTextField( display.contentCenterX - 500, display.contentCenterY - 00, 750, 150 )
weekdayTextField.id = "weekday textField"

local ageTitleTextField = display.newText( "age", display.contentCenterX - 00, display.contentCenterY - 200, native.systemFont, 100 )
ageTitleTextField:setFillColor( 99, 10, 88 )

local weekdayTitleTextField = display.newText( "day of the week", display.contentCenterX + 300, display.contentCenterY - 00, native.systemFont, 100 )
weekdayTitleTextField:setFillColor( 99, 10, 88 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX +800
calculateButton.y = display.contentCenterY +500
calculateButton.id = "calculate button"

local function calculateButtonTouch( event )
  
    local weekday
	local age
	local agetonumber

	age = ageTextField.text
	agetonumber = tonumber(age) 
	day = dayTextField.text 

	if weekday =="saturday" or weekday == "sunday" then
		display.newText( "it's  a weekend your smart here a cookie", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 100 )	


    return true
end