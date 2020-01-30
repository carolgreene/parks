require 'open-uri'
require 'nokogiri'
require 'pry'

require_relative "./parks/version"

#module Parks
  # Your code goes here...  ##Don't need this here. Module is already in version.rb
#end

#Load the rest of the lib files
require_relative "./parks/cli"  
require_relative "./parks/park"