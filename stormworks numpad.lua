but_s = 7
l_size = 5
but_s_num = 10
l_size_num = 5
but_d_left = 1
but_d_right = 26
but_d_top = 1
num_str_val = ""
isLocked = false
function onTick() 
    inputX = input.getNumber(3)
    inputY = input.getNumber(4)
    
    if not (isPresBut1 or isPresBut2 or isPresBut3 or isPresBut4 or isPresBut5 or isPresBut6 or isPresBut7 or isPresBut8 or isPresBut9 or isPresBut0) then
    	isLocked = false
    end
    
    isPresButleft = isPntInBut(inputX, inputY, but_d_left, but_d_top, but_s, but_s)
    isPresButright = isPntInBut(inputX, inputY, but_d_right, but_d_top, but_s, but_s)
    isPresBut1 = isPntInBut(inputX, inputY, 1, 9, but_s, but_s)
    isPresBut2 = isPntInBut(inputX, inputY, 9, 9, but_s, but_s)
    isPresBut3 = isPntInBut(inputX, inputY, 17, 9, but_s, but_s)
    isPresButE = isPntInBut(inputX, inputY, 24, 9, but_s, but_s)
    isPresBut4 = isPntInBut(inputX, inputY, 1, 17, but_s, but_s)
    isPresBut5 = isPntInBut(inputX, inputY, 9, 17, but_s, but_s)
    isPresBut6 = isPntInBut(inputX, inputY, 17, 17, but_s, but_s)
    isPresButD = isPntInBut(inputX, inputY, 24, 17, but_s, but_s)
    isPresBut7 = isPntInBut(inputX, inputY, 1, 25, but_s, but_s)
    isPresBut8 = isPntInBut(inputX, inputY, 9, 25, but_s, but_s)
    isPresBut9 = isPntInBut(inputX, inputY, 17, 25, but_s, but_s)
    isPresBut0 = isPntInBut(inputX, inputY, 24, 25, but_s, but_s)
    
    if not isLocked then
	    if isPresButE then
	    	if num_str_val == "" then
	    		output.setNumber (1, tonumber(0))
	    	else
	        	output.setNumber (1, tonumber(num_str_val))
	        end
	        
	    end
	    if isPresButD then
	        num_str_val = ""
	    end
	    
	    if string.len(num_str_val) < 4 then
		    if isPresBut1 then
		        num_str_val = num_str_val .. "1"
		    end
		    if isPresBut2 then        
		        num_str_val = num_str_val .. "2"
		    end
		    if isPresBut3 then
		        num_str_val = num_str_val .. "3"
		    end
		    if isPresBut4 then
		        num_str_val = num_str_val .. "4"
		    end
		    if isPresBut5 then
		        num_str_val = num_str_val .. "5"
		    end
		    if isPresBut6 then
		        num_str_val = num_str_val .. "6"
		    end
		    if isPresBut7 then
		        num_str_val = num_str_val .. "7"
		    end
		    if isPresBut8 then
		        num_str_val = num_str_val .. "8"
		    end
		    if isPresBut9 then
		        num_str_val = num_str_val .. "9"
		    end
		    if isPresBut0 then
		        num_str_val = num_str_val .. "0"
		    end
		end
	    isLocked = true
    end
	output.setBool(1, isPresButleft)
	output.setBool(2, isPresButright)
	output.setBool(3, isPresButE)
end

function isPntInBut(x, y, rectX, rectY, rectW, rectH)
	return x > rectX and y > rectY and x < rectX+rectW and y < rectY+rectH
end

function onDraw()
	ws=screen.getWidth()
	hs=screen.getHeight()
    for_cycle = 0
    but_d_left_num = 1
    but_d_top_num = 0
    screen.setColor(10, 10, 10)
	screen.drawRectF(0, but_s + 1, ws, hs - but_s - 1, 1,255,1)
	screen.setColor(255, 255, 255)
    screen.drawTextBox(24, 26, l_size_num, l_size_num, "0", but_d_left + 0, 0)
    screen.setColor(0, 255, 0)
    screen.drawTextBox(24, 10, l_size_num, l_size_num, "E", but_d_left + 0, 0)
    screen.setColor(255, 0, 0)
    screen.drawTextBox(24, 18, l_size_num, l_size_num, "D", but_d_left + 0, 0)
    for i=1,9,1 do
        screen.setColor(255, 255, 255)
        screen.drawTextBox(1, 10, l_size_num, l_size_num, i, but_d_left_num, but_d_top_num)
        for_cycle = for_cycle + 1
        if for_cycle == 3 then
            but_d_top_num = but_d_top_num - 16
            but_d_left_num = - 16
        end
        if for_cycle == 6 then
            but_d_top_num = but_d_top_num - 16
            but_d_left_num = - 16
        end
        but_d_left_num = but_d_left_num + 16
    end
    if isPresButE then
        screen.setColor(0, 255, 0)
		screen.drawRectF(0, 0, ws, but_s, 1,255,1)
	    screen.setColor(255, 255, 255)
	    screen.drawTextBox(but_d_left, but_d_top, l_size, l_size, "<", 1, 0)
    	screen.drawTextBox(but_d_right, but_d_top, l_size, l_size, ">", 1, 0)
    elseif isPresButD then
        screen.setColor(255, 0, 0)
		screen.drawRectF(0, 0, ws, but_s, 1,255,1)
	    screen.setColor(255, 255, 255)
    	screen.drawTextBox(but_d_left, but_d_top, l_size, l_size, "<", 1, 0)
	    screen.drawTextBox(but_d_right, but_d_top, l_size, l_size, ">", 1, 0)
	else
        screen.setColor(10, 10, 10)
        screen.drawRectF(0, 0, ws, but_s, 1,255,1)
        screen.setColor(255, 255, 255)
	    screen.drawTextBox(but_d_left, but_d_top, l_size, l_size, "<", 1, 0)
	    screen.drawTextBox(but_d_right, but_d_top, l_size, l_size, ">", 1, 0)
	    screen.drawTextBox(l_size + 0.5, 1, l_size_num * 4, l_size_num, num_str_val, but_d_left + 0, 0)
	end
end