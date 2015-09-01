class MapControllerController < ApplicationController

	def show

	lat = params[:latitude].to_i
	lon =	params[:longitude].to_i
	
    
    
    #sidney
    #lat =-33.8678500
    #lon = 151.2073200
    
    #New York
    #lat =40.7142700
    #lon = -74.0059700

    #Buenos Aires
    #
    #lat = -34.6131500
    #lon = -58.3772300


    globalWidth = 1810
    globalHeight = 1050

    heightSector =  globalHeight / 18; #58.33
    widthSector =   globalWidth / 18;  #100.55

    lat += 90
    lon += 180
    #sector
    @top = "#{globalHeight - ((lat / 10).floor + 1) * heightSector}px"
    @left = "#{((lon / 20).floor) * widthSector}px"

    #big squares
    bigSquaresH = heightSector/10 #5.83
    bigSquaresW = widthSector/10  #10.05

    @top_for_big_squares = "#{((lat % 10) / 1).floor * bigSquaresH}px"
    @left_for_big_squares = "#{((lon % 20) / 2).floor * bigSquaresW}px"

  #last squares
    @last_top = ((lat % 1) * (60 / 2.5)).floor
    @last_left = ((lon % 2) * (60 / 5)).floor

	end
end
