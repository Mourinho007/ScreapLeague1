# frozen_string_literal: true

require 'nokogiri'
require 'open-uri'

class Parser
  def parse(arg = nil)
    Nokogiri::HTML(URI.open(@url)) if arg.nil?
  rescue OpenURI::HTTPError => e
    raise e unless e.message == '404 Not Found'
  end
end
