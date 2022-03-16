button_size = 5
button_size_num = 5
button_distance_left = 1
button_distance_right = 26
button_distance_top = 1
numpad_value = 0
function onTick()
	inputX = input.getNumber(3)
	inputY = input.getNumber(4)
	isPressed = input.getBool(1)
	isPressingRectangleleft = isPressed and isPointInRectangleleft(inputX, inputY, button_distance_left, button_distance_top, button_size, button_size)
	isPressingRectangleright = isPressed and isPointInRectangleright(inputX, inputY, button_distance_right, button_distance_top, button_size, button_size)
	isPressingRectangle1 = isPressed and isPointInRectangle1(inputX, inputY, button_distance_left + 1, 10, button_size, button_size)
	isPressingRectangle2 = isPressed and isPointInRectangle2(inputX, inputY, button_distance_left + 9, 10, button_size, button_size)
	isPressingRectangle3 = isPressed and isPointInRectangle3(inputX, inputY, button_distance_left + 17, 10, button_size, button_size)
	isPressingRectangleE = isPressed and isPointInRectangleE(inputX, inputY, button_distance_left + 25, 10, button_size, button_size)
	isPressingRectangle4 = isPressed and isPointInRectangle4(inputX, inputY, button_distance_left + 1, 18, button_size, button_size)
	isPressingRectangle5 = isPressed and isPointInRectangle5(inputX, inputY, button_distance_left + 9, 18, button_size, button_size)
	isPressingRectangle6 = isPressed and isPointInRectangle6(inputX, inputY, button_distance_left + 17, 18, button_size, button_size)
	isPressingRectangleD = isPressed and isPointInRectangleD(inputX, inputY, button_distance_left + 25, 18, button_size, button_size)
	isPressingRectangle7 = isPressed and isPointInRectangle7(inputX, inputY, button_distance_left + 1, 26, button_size, button_size)
	isPressingRectangle8 = isPressed and isPointInRectangle8(inputX, inputY, button_distance_left + 9, 26, button_size, button_size)
	isPressingRectangle9 = isPressed and isPointInRectangle9(inputX, inputY, button_distance_left + 17, 26, button_size, button_size)
	isPressingRectangle0 = isPressed and isPointInRectangle0(inputX, inputY, button_distance_left + 25, 26, button_size, button_size)
    if isPressingRectangleE then
        output.setNumber (1, numpad_value)
    end
    if isPressingRectangleD then
        numpad_value = 0
        output.setNumber (1, numpad_value)
    end
    if isPressingRectangle1 then
        numpad_value = numpad_value .. 1
    end
    if isPressingRectangle2 then
        numpad_value = numpad_value .. 2
    end
    if isPressingRectangle3 then
        numpad_value = numpad_value .. 3
    end
    if isPressingRectangle4 then
        numpad_value = numpad_value .. 4
    end
    if isPressingRectangle5 then
        numpad_value = numpad_value .. 5
    end
    if isPressingRectangle6 then
        numpad_value = numpad_value .. 6
    end
    if isPressingRectangle7 then
        numpad_value = numpad_value .. 7
    end
    if isPressingRectangle8 then
        numpad_value = numpad_value .. 8
    end
    if isPressingRectangle9 then
        numpad_value = numpad_value .. 9
    end
    -- Set on/off channel 1
	output.setBool(1, isPressingRectangleleft)
	-- Set on/off channel 2
	output.setBool(2, isPressingRectangleright)
        -- Set on/off channel 1
	output.setBool(3, isPressingRectangleE)
	-- Set on/off channel 2
	output.setBool(4, isPressingRectangleD)
end


function isPointInRectangleleft(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangleright(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle1(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle2(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle3(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangleE(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle4(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle5(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle6(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangleD(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle7(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle8(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle9(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangle0(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangleright(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end
function isPointInRectangleright(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end

function onDraw()
	ws=screen.getWidth()
	hs=screen.getHeight()
	screen.setColor(10, 10, 10)
	screen.drawRectF(0, 0, ws, button_size + 2, 1,255,1)
	screen.drawRectF(0, button_size + 3, ws, hs - button_size - 3, 1,255,1)
	screen.setColor(255, 255, 255)
	if isPressingRectangleleft then
		screen.drawTextBox(button_distance_left, button_distance_top, button_size, button_size, "<", 1, 0)
	else
		screen.drawTextBox(button_distance_left, button_distance_top, button_size, button_size, "<", 1, 0)
	end
	if isPressingRectangleright then
		screen.drawTextBox(button_distance_right, button_distance_top, button_size, button_size, ">", 1, 0)
	else
		screen.drawTextBox(button_distance_right, button_distance_top, button_size, button_size, ">", 1, 0)
	end
    if isPointInRectangle1 then
        screen.drawTextBox(1, 10, button_size_num, button_size_num, "1", 1, 0)
    else
        screen.drawTextBox(1, 10, button_size_num, button_size_num, "1", 1, 0)
    end
    if isPointInRectangle2 then
        screen.drawTextBox(9, 10, button_size_num, button_size_num, "2", 1, 0)
    else
        screen.drawTextBox(9, 10, button_size_num, button_size_num, "2", 1, 0)
    end
    if isPointInRectangle3 then
        screen.drawTextBox(17, 10, button_size_num, button_size_num, "3", 1, 0)
    else
        screen.drawTextBox(17, 10, button_size_num, button_size_num, "3", 1, 0)
    end
    if isPointInRectangleE then
        screen.drawTextBox(25, 10, button_size_num, button_size_num, "E", 1, 0)
    else
        screen.drawTextBox(25, 10, button_size_num, button_size_num, "E", 1, 0)
    end
    if isPointInRectangle4 then
        screen.drawTextBox(1, 18, button_size_num, button_size_num, "4", 1, 0)
    else
        screen.drawTextBox(1, 18, button_size_num, button_size_num, "4", 1, 0)
    end
    if isPointInRectangle5 then
        screen.drawTextBox(9, 18, button_size_num, button_size_num, "5", 1, 0)
    else
        screen.drawTextBox(9, 18, button_size_num, button_size_num, "5", 1, 0)
    end
    if isPointInRectangle6 then
        screen.drawTextBox(17, 18, button_size_num, button_size_num, "6", 1, 0)
    else
        screen.drawTextBox(17, 18, button_size_num, button_size_num, "6", 1, 0)
    end
    if isPointInRectangleD then
        screen.drawTextBox(25, 18, button_size_num, button_size_num, "D", 1, 0)
    else
        screen.drawTextBox(25, 18, button_size_num, button_size_num, "D", 1, 0)
    end
    if isPointInRectangle7 then
        screen.drawTextBox(1, 26, button_size_num, button_size_num, "7", 1, 0)
    else
        screen.drawTextBox(1, 26, button_size_num, button_size_num, "7", 1, 0)
    end
    if isPointInRectangle8 then
        screen.drawTextBox(9, 26, button_size_num, button_size_num, "8", 1, 0)
    else
        screen.drawTextBox(9, 26, button_size_num, button_size_num, "8", 1, 0)
    end
    if isPointInRectangle9 then
        screen.drawTextBox(17, 26, button_size_num, button_size_num, "9", 1, 0)
    else
        screen.drawTextBox(17, 26, button_size_num, button_size_num, "9", 1, 0)
    end
    if isPointInRectangle0 then
        screen.drawTextBox(25, 26, button_size_num, button_size_num, "0", 1, 0)
    else
        screen.drawTextBox(25, 26, button_size_num, button_size_num, "0", 1, 0)
    end
end