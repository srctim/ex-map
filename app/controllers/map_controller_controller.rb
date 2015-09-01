class MapControllerController < ApplicationController

	def show
	lat = params[:latitude].to_i
	lon =	params[:longitude].to_i

    
    if (lat == nil)
    #sidney
    lat =-33.8678500
    lon = 151.2073200
    end
    #New York
    #lat =40.7142700
    #lon = -74.0059700

    #Buenos Aires
    #
    #lat = -34.6131500
    #lon = -58.3772300


    globalWidth = 1810
    globalHeight = 1050

    heightMap =  globalHeight / 18; #58.33
    widthMap =   globalWidth / 18;  #100.55

    lat += 90
    lon += 180

    @top = "#{globalHeight - ((lat / 10).floor + 1) * heightMap}px"
    @left = "#{((lon / 20).floor) * widthMap}px"
	end
end
