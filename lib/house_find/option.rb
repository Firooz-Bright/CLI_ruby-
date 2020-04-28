class HouseFind::Option

  attr_accessor  :provider, :price_range ,:url,:location,:description
  
    @@all = []
  
    
   def initialize #(provider,price_range,location)

     
      @@all << self 
   
    end 

 
  def  self.create_student_housing

       HouseFind::Scraper.scrape_options
    
  end 


  def self.create_affordable_housing

       HouseFind::Scraper.scrape_list
 
  end 


  def self.create_other_list

     HouseFind::Scraper.other
 end 

  def self.all
    @@all
  end
 
  def self.reset_all
    @@all.clear
  end
  
end