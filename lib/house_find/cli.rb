

class HouseFind::CLI

 def call
   puts   "Options for Housing"
   menu
 end

 def student_full_list
  puts "Welcome to explore Student housing options in Bay-Area California"

 @options=HouseFind::Option.today
 num=nil
  @options.each{|x| num=x.provider.to_a}
    for x in 1..num.count-1  # Because this webpage only has  11 lists to show.
    @options.each{ |o| puts "#{x}. Provider:#{o.provider[x]}- Price:#{o.price_range[x]}-Location:#{o.location[x]}- #{o.description}==>#{o.url}"}
   end

end

 def rental_price
  puts" Welcome  to see the price ranges for sudent rental options"
  @options=HouseFind::Option.today
  num=nil
   @options.each{|x| num=x.price_range.to_a}
     for i in 1..num.count-1   #  this  web  has  only 11 lists
          @options.each{|x|  puts "#{i}.#{x.price_range[i]}"}
     end

 end


 def affordable_list
  puts" Welcome to explore possible Affordable housing in Bay-Area California"
  @options=HouseFind::Option.gov
  num=nil
   @options.each{|x| num=x.provider.to_a}
     for i in 1..num.count-2               #Because this webpage has only 4 lists
    @options.each{|x| puts"#{i}. #{x.provider[i].join} ==> The link is via: #{x.url}"}
      end
 end

 def good_bye
   puts" THANK YOU FOR YOUR SEARCH"
 end

 def menu
   puts " Please choose your options by number or exit: \n\n 1.Student Housing full list  \n 2.Rental price range  \n 3.Affordable Rental provider"

   input= gets.strip.upcase
   if (input.to_i > 3)
      puts "Please Enter The Valid List Number"
    elsif (input.to_i ==1)
        student_full_list
    elsif (input.to_i ==2)
        rental_price
    elsif (input.to_i ==3)
        affordable_list
     else (input=="exit")
       good_bye
      end
     end
   
end
