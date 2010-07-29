class SmokeDates

  def self.retrieve
    doc = Nokogiri::HTML(open("http://testing.gipoo.net/html/unittest/",
        :http_basic_authentication => ["xxx", "xxx"]))

    dates = []
    doc.xpath('//table/tr/td/a').each do |link|
      date = link.content
      next unless date =~ /\d{1,2}-\d{1,2}-\d{4}\//
      dates << date.gsub('/','')
    end

    dates
  end

end