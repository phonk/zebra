engine.name = 'ZSines'

local font_face = 1
local font_size = 6
local num_fonts = 70
local min_size = 4
local max_size = 18

function init() 
end 
  
function redraw() 
  screen.clear()
  screen.aa(0)
  screen.font_face(font_face)
  screen.font_size(font_size)
  screen.move(1, 20)
  screen.text("font face= "..font_face)
  screen.move(1, 40)
  screen.text("font size= "..font_size)
  screen.move(1, 60)
  screen.text("quickbrownfox jumplazydog")
  screen.update()
end

function enc(n,z) 
  if n == 2 then
    font_face = font_face + z
    if font_face > num_fonts then font_face = 1 end
    if font_face < 1 then font_face = num_fonts end
    redraw()
  end
  if n == 3 then
    font_size = font_size + z
    if font_size > max_size then font_size = min_size end
    if font_size < min_size then font_size = max_size end
    redraw()
  end
end