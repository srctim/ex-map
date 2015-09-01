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


    globalWidth = 1441
    globalHeight = 721

    heightSector =  globalHeight / 18; #80.05
    widthSector =   globalWidth / 18;  #40.05

    lat += 90
    lon += 180
    #sector
    topSectorPosition = globalHeight - ((lat / 10).floor + 1) * (heightSector)
    leftSectorPosition = ((lon / 20).floor) * (widthSector)
    @top = topSectorPosition.to_s + "px"
    @left = leftSectorPosition.to_s + "px"

    #big squares
  bigSquaresH = heightSector/10 #8.00
  bigSquaresW  = widthSector/10  #4.00

    @top_for_big_squares = "#{(10-(((lat % 10) / 1).floor))*bigSquaresH - bigSquaresH}px"
    @left_for_big_squares = "#{((((lon % 20) / 2).floor)+1)*bigSquaresW - bigSquaresW}px"

  #last section if need
  #  @last_top = ((lat % 1) * (60 / 2.5)).floor
  #  @last_left = ((lon % 2) * (60 / 5)).floor

	end
end
