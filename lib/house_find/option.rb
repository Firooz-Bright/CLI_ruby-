
class HouseFind::Option

  attr_accessor  :provider,:availability,:price_range ,:url,:location,:description


  def self.today
      self.scrape_options
  end

  def self.gov
    self.scrape_list
  end

  def self.scrape_options
      options=[]
      options << self.scrape_student
      options
  end


  def self.scrape_student
    doc= Nokogiri::HTML(URI.open("https://www.nestpick.com/student-accommodation/san-francisco/"))

                  list=self.new
                  list.provider=doc.css(".property-card-provider").collect{|x| x.text}
                  list.location=doc.css(".property-card-title").collect{|x| x.text}
                  list.price_range=doc.css("p.property-card-price").collect{|x| x.text.split().first}
                  list.description = doc.css("h2").text
                  list.url= doc.css('a').attr("href")
                  list
    end

    def self.scrape_list
     gov_list=[]
     doc= Nokogiri::HTML(URI.open("https://pyramind.com/housing-assistance/"))
        list=self.new
        list.provider = doc.css('h2').collect{|x| x.text.split(",")}[0..5]
        gov_list<<list
    end





end
