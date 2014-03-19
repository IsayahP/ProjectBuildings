ScreenHeight = 1100
ScreenWidth = 640

 

BuildingHeight = 20
BuildingWidth = 9


ratio = 2

WindowHeight =20*ratio
WindowWidth = 5*ratio

math.randomseed(os.time())


local backgroundMusic = audio.loadStream("The Promised Land.mp3")
 local backgroundMusicChannel = audio.play(backgroundMusic)

--So I can shrink it based on the size of the screen.ratio = 2
--Basically I adjusted the ratio so that the buidling was magnified.
--

---Declare,Define, Call!


local function drawBuilding(width, height, x, r,g, b)

	local Windows ={}
	local IsOn =0
 for i =0, height-1 do
 	for j=0, width-1 do
 		--Windows [j] = display.newRect( j*9*ratio*1.00001+x, ScreenHeight-i*20*ratio*1.1, WindowWidth, WindowHeight)
 		--I created a variable called IsOn which represents whether or not the windows are lit up. I used the math.random function to represent it being a random number betweeen 0 and 99. To make random windows turn off.
		IsOn= math.random(0,99)
		if IsOn/10~=0 then
			--I created a If statement to represent basically only a few windows will turn on between 0-99 and if that window is divisble by 6 then that window will not be turned on.
			Windows [j] = display.newRect( j*9*ratio*1.00001+x, ScreenHeight-i*20*ratio*1.1, WindowWidth, WindowHeight)
			--Inlcudes a spacing factor to divide the windows. Which is how we got the windows to be actually visible on screen rather than lumpy clumps.
 			Windows [j] :setFillColor(r,g,b)
 		end
 	end
 end
end



local myImage = display.newImage( "SPACE.jpg")




--The parameters after height and width declare types of color starting from r, g, b. 
local myBuilding=drawBuilding(9,10, 160,1,1,0)
local myBuilding=drawBuilding(9,15, 325,1,0,0)
local myBuilding=drawBuilding(9,20,5,0,0,1)
local myBuilding=drawBuilding(9,18,490,0,1,0)

	 









