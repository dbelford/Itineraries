#Jen's Itineraries


##Installation

Requires [Jekyll](http://jekyllrb.com).  To download Jekyll, make sure you have ruby gems installed and then in your terminal execute:

`gem install jekyll`

Jekyll will process files conforming to the directory and file structure described on Jekyll's site.

Then run bundler to ensure the `content-blocks` Jekyll plugin is there too:

`bundle install`

##Run Website Locally

With Jekyll installed, navigate your terminal to the root directory of the repo:

`cd path/to/folder/`

And start the local webserver:

`jekyll serve -w`

 The `-w` flag (stands for watch) will re-process files when they are changed.

To stop the webserver press `ctrl + c` at the same time.

## Edit Create and Edit Itineraries

For now, all itineraries will be in `_posts` directory.  Each itinerary conforms to Jekyll's blogging format.

- Files are named `Year`-`Month`-`Day`-`Hyphenated-Page-Title`.html
- The itinerary includes the Jekyll front matter between `----` `----`
- Front matter must set all variables, looking similar to

```yml
layout: itinerary
title:  SF Hikes 1
date:   2014-06-18 10:10:32
categories: jekyll update
cost_per_person: 15
trip_time_in_seconds: 14400
transportation_mode: car
tile_image: images/front-page/hiking.jpg
```