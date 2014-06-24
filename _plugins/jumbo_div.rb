class JumboDiv < Liquid::Block

  def initialize(tagName, markup, tokens)
    super

    @background_image = markup

  end

  def render(context)
    new_markup = ''
    close = <<-MARKUP 
</div>
</div>
</div>
<div class="jumbotron picture-box" 
data-top-bottom="background-position: 50% 70%;" 
data-bottom-top="background-position: 50% 10%;" 
style="background-image: url('#{@background_image}')">
<div class="fader" data-top-bottom="background-color: rgba(0,0,0,0.5)" data-bottom-top="background-color: rgba(0,0,0,0);;">
</div>
<div class="container">
<div class="row"> <div class="col-md-12">
    MARKUP

    new_markup << close

    new_markup << super

    open = <<-MARKUP
</div> </div>
</div>
</div>
<div class="container">
<div class="row itinerary">
<div class="col-md-10">
    MARKUP

    new_markup << open
  end

  Liquid::Template.register_tag "jumbo_div", self
end