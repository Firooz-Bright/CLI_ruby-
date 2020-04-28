
class HouseFind::Scraper 
 

    def self.scrape_options

       doc= Nokogiri::HTML(URI.open("https://www.nestpick.com/student-accommodation/san-francisco/"))
          info =doc.css(".property-card-provider").collect{|x| x.text}
            address =doc.css(".property-card-title").collect{|x| x.text}
            price=doc.css("p.property-card-price").collect{|x| x.text.split().first}
                        
               for i in 0..info.length-1

                list= HouseFind::Option.new

                list.provider=info[i]

                list.location=address[i]

                list.price_range= price[i]

                list.description = doc.css("h2").text

                list.url= doc.css('a').attr("href")

                list
                                      
                end
                                        
                      
            end 

      
  def self.scrape_list

 

     doc= Nokogiri::HTML(URI.open("https://pyramind.com/housing-assistance/"))

       info = doc.css('h2').collect{|x| x.text.split(",")}[0..4] # this web has max 5 possible lists always

        for i in 0..info.length-1
           list= HouseFind::Option.new
            list.provider=info[i]
            list.url =doc.css('a').attr('href')
             list
           end 
      end


     def self.other 
     
      doc= Nokogiri::HTML(URI.open("https://www.firstcommunityhousing.org/findhousing"))

       info = doc.css('li').collect{|x| x.text.split(",")}[13..82]  #most available lists are there 

        for i in 0..info.length-1
           list= HouseFind::Option.new
            list.provider=info[i]
            list.url =doc.css('a').attr('href')
             list
           end 
   end 

end




 

