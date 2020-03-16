

class HouseFind::CLI

 def call
   puts   "Options for Housing"
   menu
 end

 def student_full_list
  puts "Welcome to explore Student housing options in Bay-Area California"

 @options=HouseFind::Option.today
 for x in 1..11 do # because web page normally puts only 12 lists
 @options.each{ |o| puts "#{x}. Provider:#{o.provider[x]}- Price:#{o.price_range[x]}-Location:#{o.location[x]}- #{o.description}==>#{o.url}"}
 end

end
 def rental_price
  puts" Welcome  to see the price ranges for sudent rental options"
  @options=HouseFind::Option.today
  for i in 1..11 # the web normally has 11 lists
  @options.each{|x|  puts "#{i}.#{x.price_range[i]}"}
  end

 end


 def affordable_list
  puts" Welcome to explore possible Affordable housing in Bay-Area California"
  @options=HouseFind::Option.gov
   for i in 1..4 do
    @options.each{|x| puts"#{i}. #{x.provider[i].join} ==> The link is via: #{x.url}"}
  end
 end

 def good_bye
   puts" THANK YOU FOR YOUR SEARCH"
 end

 def menu
   puts " Please choose your options by number or exit: \n\n 1.Student Housing full list  \n 2.Rental price range  \n 3.Affordable Rental provider"

   input= gets.strip

     case input
      when"exit"
        good_bye
      when "1"
       student_full_list
      when "2"
       rental_price
      when"3"
       affordable_list
     end
  end
end
