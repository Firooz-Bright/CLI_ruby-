require 'open-uri'
require 'nokogiri'
require_relative './house_find/version'
require_relative './house_find/cli'
require_relative './house_find/option'
require_relative './house_find/Scraper'


module HouseFind
  class Error < StandardError; end
  # Your code goes here...
end