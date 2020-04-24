class HouseFind::Scraper 
 

  def self.today
      self.scrape_options
  end

  def  self.gov
    self.scrape_list
  end

  def  self.scrape_options
      options=[]
      options << self.scrape_student_house_list
      options
  end


  def  self.scrape_student_house_list

    doc= Nokogiri::HTML(URI.open("https://www.nestpick.com/student-accommodation/san-francisco/"))

                   list= HouseFind::Option.new

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

        list=HouseFind::Option.new

        list.provider = doc.css('h2').collect{|x| x.text.split(",")}[0..5] # this web has max 5 possible lists always
        list.url =doc.css('a').attr('href')

        gov_list << list
    end


    def self.other_list

    	other_lists=[]

          doc= Nokogiri::HTML(URI.open(" "))
     end 

end




 



