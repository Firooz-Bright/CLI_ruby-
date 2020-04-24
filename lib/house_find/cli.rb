class HouseFind::CLI

 def call
   puts   "Options for Housing"
   menu
 end

 def student_full_list

  puts "Welcome to explore Student housing options in Bay-Area California"

   HouseFind::Option.student_housing

   end


 def rental_price

  puts" Welcome  to see the price ranges for sudent rental options"

     HouseFind::Option.rent_prices

  
 end


 def affordable_list

    puts" Welcome to explore possible Affordable housing in Bay-Area California"

    HouseFind::Option.government_housing 

 end

  def good_bye
   puts" THANK YOU FOR YOUR SEARCH"
  end

 def menu
   puts " Please choose your options by number or exit: \n \n 1.Student Housing full list  \n 2.Rental price range  \n 3.Affordable Rental provider"

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