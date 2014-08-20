class TripMapImage < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super
    
    @variables = markup.split(" ")
    @locations_string = @variables.join("%7C")
    @marker_location = @locations_string
    @path = @locations_string

    # raise "trip_map_image requires 2 arguments. Try {% trip_map_image path/to/img.jpg map-path-locations %}. E.g. https://developers.google.com/maps/documentation/staticmaps/?csw=1#PathPoints" unless @variables.length == 2

    @scale = "2";
    @size = "640x200"
    # @marker_location = @variables[0]
    # @path = @variables[1]

  end

  def render(context)
    "<img width=\"100%\" src=\"http://maps.googleapis.com/maps/api/staticmap?scale=#{@scale}&size=#{@size}&maptype=hybrid&sensor=false&format=jpg&visual_refresh=true&markers=color:0xFE6E00ff%7C#{@marker_location}&path=color:0xFE6E0099|weight:2|#{@path}\" />"
  end

  Liquid::Template.register_tag "trip_map_image", self
end