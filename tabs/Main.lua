    -- Lesson 5

--Created by: Zachary Minarik-Eastman
--Created on: Oct, 2016
--Created for: ICS0
--This Program creates two buttons and then plays a sound when those buttons are pressed

--Global Variables
local aButton
local aButton2

-- Use this function to preform the initial setup
function setup()
    --Setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    music("A Hero's Quest:Battle", true, 0.25)
    
    --create sprite
    aButton = Button("Cargo Bot:Fast Button Active", vec2(WIDTH/2, HEIGHT/2))
    aButton2 = Button("SpaceCute:Health Heart", vec2(WIDTH/3, HEIGHT/3))
    
end


-- This function gets called once every frame
function touched(touch)
    

    --local variables
    aButton:touched(touch)
    aButton2:touched(touch)
    
    if (aButton.selected == true) then
        print("The Button Has Been Releaced")
        sound("A Hero's Quest:Arrow Shoot 2")
    end
    
    if (aButton2.selected == true) then
        print("The Second Button Has Been Releaced")
        sound(SOUND_EXPLODE)
    end
end  
    
    
--This function gets called on once evey frame
function draw()
    
    --sets a dark background
    background(0, 0, 0, 255)
    --This sets the line thickness
    strokeWidth(5)
    
    --do your drawing here
    aButton:draw()
    aButton2:draw()  
end