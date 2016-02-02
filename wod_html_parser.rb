require 'nokogiri'

class WodHtmlParser
  def self.parse(html)
    page = Nokogiri::HTML(html)   
    page.css('.TableRecords tbody tr').map do |tr|
      tds = tr.css('td')
      { component: tds[1].text,
        result: tds[5].text }
    end
  end
end
