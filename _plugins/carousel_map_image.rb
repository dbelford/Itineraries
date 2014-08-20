class CarouselMapImage < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super
    
    @variables = markup.split(" ")


    @zoom = "10";
    @size = "300x300"
    @center = @variables[0]
    @marker_location = markup
    # @path_string = ""

    # if @variables.length > 1
    #   @path_string = "&path=color:0xFE6E00ff|weight:2|#{@marker_location}|#{@variables[1]}"
    # end

  end

  def render(context)
    "<li style=\"background-image: url('http://maps.googleapis.com/maps/api/staticmap?center=#{@center}&zoom=#{@zoom}&scale=false&size=300x300&maptype=hybrid&sensor=false&format=jpg&visual_refresh=true&markers=size:mid%7Ccolor:red%7C#{@marker_location}');\"> </li>"
  end

  Liquid::Template.register_tag "carousel_map_image", self
end