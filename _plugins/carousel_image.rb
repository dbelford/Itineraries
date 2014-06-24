class CarouselImage < Liquid::Tag

  def initialize(tagName, markup, tokens)
    super

    @image_url = markup

  end

  def render(context)
    "<li style=\"background-image: url('#{@image_url}');\"> </li>"
  end

  Liquid::Template.register_tag "carousel_image", self
end