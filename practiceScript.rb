require 'open-uri'
require 'Nokogiri'

data = open('http://nytimes.com')
doc = Nokogiri::HTML(data)

#parse the top headline and clean it up
ny_times_headline = doc.at_css('h2 a').content.gsub(/\n/," ").strip

#parse the link for the top headline
ny_times_link = doc.at_css('h2 a').get_attribute('href')

puts ny_times_headline
puts ny_times_link


=begin
	
rescue Exception => e
	
end
headlines = doc.css('h2')

headlines.each { |line|
	puts line
}
=end

