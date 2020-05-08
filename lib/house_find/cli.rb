class HouseFind::CLI

 def call
   puts   "Options for Housing"
   menu
 end
  
 def student_full_list

  
  puts "Welcome to explore Student housing options in Bay-Area California"

     HouseFind::Option.create_student_housing

     HouseFind::Option.all.each_with_index{|x,i| puts "#{i+1}. Provider:#{x.provider} ==> Location:#{x.location} price_range:#{x.price_range} - #{x.description}==>#{x.url}" }

     menu
   end



 def rental_price

  puts" Welcome  to see the price ranges for sudent rental options"
 

     HouseFind::Option.create_student_housing

      HouseFind::Option.all.each_with_index{|x,i| puts "#{i+1}.#{x.price_range}"}
   menu
  
 end


 def affordable_list

    puts" Welcome to explore possible Affordable housing in Bay-Area California"

     list= HouseFind::Option.create_affordable_housing

      HouseFind::Option.all.each_with_index{|x,i| puts "#{i+1}.#{x.provider.join}==>#{x.url}"}
   menu
 end 
  


  def other_list

 puts "Here are some other rental lists in Bay-Area"

  #HouseFind::Option.create_other_list

   HouseFind::Scraper.other 

    HouseFind::Option.all.each_with_index{|x,i| puts "#{i+1}.#{x.provider.join} ==>#{x.url}"}
   
   menu
   

  end 


  def good_bye
   puts" THANK YOU FOR YOUR SEARCH"
  end

 def menu

   HouseFind::Option.reset

   puts " Please choose your options by number or exit: \n \n 1.Student Housing full list  \n 2.Rental price range  \n 3.Affordable Rental provider \n 4.Government list"

   input= gets.strip.upcase
   if (input.to_i > 4)
      puts "Please Enter The Valid List Number"
    elsif (input.to_i ==1)
        student_full_list
    elsif (input.to_i ==2)
        rental_price
    elsif (input.to_i ==3)
        affordable_list
    elsif (input.to_i ==4)
         other_list
     else (input=="exit")
       good_bye
      end
   end

end