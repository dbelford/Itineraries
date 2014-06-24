class CarouselMapImage < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super
    
    @zoom = "10";
    @size = "300x300"
    @center = markup
    @marker_location = markup

  end

  def render(context)
    "<li style=\"background-image: url('http://maps.googleapis.com/maps/api/staticmap?center=#{@center}&zoom=#{@zoom}&scale=false&size=300x300&maptype=hybrid&sensor=false&format=jpg&visual_refresh=true&markers=size:mid%7Ccolor:red%7C#{@marker_location}');\"> </li>"
  end

  Liquid::Template.register_tag "carousel_map_image", self
end