--init 
sw = 1
function onTick()
--input
  throttle = input.getNumber(1)
-- rpm/(maxrpm/10(standard))
  rpm = input.getNumber(2)/(input.getNumber(3)/10)
--sw number
  if input.getBool(1) == true then --P
    sw = 1
  else if input.getBool(2) == true then --R
    sw = 2
  else if input.getBool(3) == true then --N
    sw = 3
  else if input.getBool(4) == true then --D
    sw = 4
  else if input.getBool(4) == true then --B
    sw = 5
  end
--gear
  gear = gearlevel()
--gear output
  if gear == 0 then --x 1
    output.setBool(29,false) -- 1.5
    output.setBool(30,false) -- 2
    output.setBool(31,false) -- 3
  else if gear == 1 then --x 1.5
    output.setBool(29,true)
    output.setBool(30,false)
    output.setBool(31,false)
  else if gear == 2 then --x 2
    output.setBool(29,false)
    output.setBool(30,true)
    output.setBool(31,false)
  else if gear == 3 then --x 3
    output.setBool(29,false)
    output.setBool(30,false)
    output.setBool(31,true)
  else if gear == 4 then --x 4.5
    output.setBool(29,true)
    output.setBool(30,false)
    output.setBool(31,true)
  else if gear == 5 then --x 6
    output.setBool(29,false)
    output.setBool(30,true)
    output.setBool(31,true)
  else if gear == 6 then --x 9
    output.setBool(29,true)
    output.setBool(30,true)
    output.setBool(31,true)
  end
end
function gearlevel()
  if rpm >= 10 then
    return = 1
  else if rpm >= 15 then
    return = 2
  else if rpm >= 20 then
    return = 3
  else if rpm >= 30 then
    return = 4
  else if rpm >= 45 then
    return = 5
  else if rpm >= 60 then
    return = 6
  else
    return = 0
  end
end
