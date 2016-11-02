# Spotlight example for the Spotlight Day developer track

[![Build Status](https://travis-ci.org/projectblacklight/spotlight_day_demo.png?branch=master)](https://travis-ci.org/projectblacklight/spotlight_day_demo)

## System dependencies

* Ruby 2.2 or greater
* Java 8 or greater
* ImageMagick (http://www.imagemagick.org/script/index.php), for carrierwave image processing

[GoRails](https://gorails.com/setup/) provides a tutorial for preparing your machine for Rails development on OS X and Linux.

## Getting Started

Cloning the project:

```console
$ git clone https://github.com/projectblacklight/spotlight_day_demo.git # preferred, or:
# download https://github.com/projectblacklight/spotlight_day_demo/archive/master.zip

$ cd spotlight_day_demo
```

Installing the dependencies:

```
$ bin/setup
# this runs `bundle install`, `rake db:setup`, and does environment sanity checks
```

Running the tests:

```console
$ bundle exec rake ci
```

Creating an initial administrator:

```console
$ bundle exec rake spotlight:initialize
```

Running the rails server:

```console
$ bundle exec rails server
```

Starting solr:

```console
# in a new terminal:
$ bundle exec solr_wrapper
```

## References

* [Blacklight wiki](https://github.com/projectblacklight/blacklight/wiki)
* [Spotlight wiki](https://github.com/projectblacklight/spotlight/wiki)
* [Customizing Blacklight tutorial](http://jessiekeck.com/customizing-blacklight)
* [blacklight/configuration.rb](https://github.com/projectblacklight/blacklight/blob/master/lib/blacklight/configuration.rb)
* [spotlight/engine.rb configuration](https://github.com/projectblacklight/spotlight/blob/master/lib/spotlight/engine.rb#L68)
* [Rails guides](http://guides.rubyonrails.org/)
* [Solr Reference Guide](https://cwiki.apache.org/confluence/display/solr/Apache+Solr+Reference+Guide)
