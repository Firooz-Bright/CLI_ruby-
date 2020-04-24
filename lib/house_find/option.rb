class HouseFind::Option

  attr_accessor  :provider,:price_range ,:url,:location,:description
  
    @@all= []
    
   def initialize

     @@all << self 

    end 
 
  def self.student_housing

    list= HouseFind::Scraper.today

    num=nil
    list.each{|x| num=x.provider.to_a}
    for x in 1..num.count-1  # Because this webpage only has  11 lists to show.

   list.each{ |o| puts "#{x}. Provider:#{o.provider[x]}- Price:#{o.price_range[x]}-Location:#{o.location[x]}- #{o.description}==>#{o.url}"}
    end 

  end 


  def self.rent_prices

    list= HouseFind::Scraper.today
  
     num=nil

     list.each{|x| num = x.price_range.to_a}

    for i in 1..num.count-1   #  this  web  has  only 11 lists
         
         list.each{|x|  puts "#{i}.#{x.price_range[i]}"}
     end
         
  end 

  def self.government_housing 

    list= HouseFind::Scraper.gov
    num=nil
    list.each{|x| num=x.provider.to_a}

      for i in 1..num.count-2               #Because this webpage has only 4 lists
          list.each{|x| puts"#{i}. #{x.provider[i].join} ==> The link is via: #{x.url}"}
      end


  end 


  def self.all
    @@all
  end
 
  def self.reset_all
    @@all.clear
  end
  
end
