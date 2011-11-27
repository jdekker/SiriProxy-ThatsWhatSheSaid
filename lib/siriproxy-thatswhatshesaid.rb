require 'cora'
require 'siri_objects'
require 'open-uri'
require 'url_escape'

class SiriProxy::Plugin::ThatsWhatSheSaid < SiriProxy::Plugin
  def initialize(config)
    #if you have custom configuration options, process them here!
  end

  def process(text) 

     url = "http://twss-classifier.heroku.com/?sentence="
     url << URLEscape.escape(text)
     response = ""
     open(url) {
        |f|
        response = f.read
     }
     if( response =~ /that's what she said!/i)
        val = true 
     else
        val = false
     end
     
     if(val)
        say "That's what she said!"
        request_completed 
     end 
     return val 
  end
end
