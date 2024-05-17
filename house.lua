local floors = {
  {"1111111",
   "1111111",
   "1111111",
   "1111111",
   "1111111",
   "1111111",
   "1111111",
   "1111111"
  },
  {"2344432",
   "3     3",
   "3     3",
   "3     3",
   "3     3",
   "3     3",
   "3     3",
   "232 232"
  },
  {"2344432",
   "3     3",
   "3     3",
   "4     4",
   "4     4",
   "3     3",
   "3     3",
   "242 242"
  },
  {"2333332",
   "3     3",
   "3     3",
   "3     3",
   "3     3",
   "3     3",
   "3     3",
   "2333332"
  },
  {" ",
   " 65555",
   "6 6  5",
   " 6   5",
   " 5   5",
   " 5   5",
   " 55555"
  },
  {" ",
   " 6",
   "67655",
   " 65 5",
   "  5 5",
   "  555"
  },
  {" ",
   " 6",
   "6 6",
   " 6 5",
   "   5"
  }}
  
  function debug(message)
  print(message)
  end
  
  rednet.open("right")
  
  
  local function bouw()
  
  turtle.turnRight()
  
  local x
  local y
  local z
  local colNum
  local slot
  turtle.up()
  
  z = 1
  for _,layer in ipairs(floors) do
      y=1
      for _,row in ipairs(layer) do
          colNum = string.len(row)
          x = 1
          debug("starting on "..x..","..y..":"..row)
          for char in row:gmatch(".") do
              if char ~= " " then
                slot=tonumber(char)
                debug("placing block from slot " .. slot)
                turtle.select(slot)
                local success = turtle.placeDown()
                if not succes then
                    debug("Failed to place block!")
                end
                turtle.placeDown()
              else
                debug("Skipping empty space")
              end
              
              turtle.forward()
              x=x+1
          end
          while x > 1 do
            turtle.back()
            x = x - 1
          end
          
          print("Done with col")
          turtle.turnRight()
          turtle.forward()
          turtle.turnLeft()
          y = y + 1
        end
    turtle.turnRight()
    while y > 1 do
      turtle.back()
      y = y - 1
    end
    turtle.turnLeft()
    turtle.up()
    z = z + 1
  end
  turtle.back()
  while z>1 do 
    turtle.down()
    z = z - 1
  end
  end
  
  while true do
    local sender, message, protocol = rednet.receive()
    if message == "Build" then
      bouw()
    end
  end
  
  
               
  