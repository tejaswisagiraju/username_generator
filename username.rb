def generate_username1(name)

	# name1 = name.downcase
	# name1[0]
	 name[0].strip.downcase

end


def generate_username2(first_name, last_name)

	#get rid of white spaces
	#get rid of symbols
	#if empty string set to nil
    
    # puts(first_name.length)
    # puts(last_name.length)
         if (first_name.length == 0 || last_name.length == 0)
    	nil
    end
    
	first_name1 = first_name.downcase
	last_name1 = last_name.downcase
    new_first_name = ""
    new_last_name = ""



	first_name1.each_char do |i|
       new_first_name = new_first_name  + i unless (i == " ")
       	
    end

    last_name1.each_char do |i|
    	new_last_name = new_last_name + i unless (i == " " )

	end




    new_first_name[0] + new_last_name

	
end



def generate_username3(first_name, last_name, year)
year_string = year.to_s

generate_username2(first_name,last_name) + year_string[-2..-1]  unless year_string.length != 4

end


def generate_username4(first_name, new_last_name, year, privilege=0)

if privilege == 0 
	"user" + "-" + generate_username3(first_name,last_name,year) 
elsif privilege == 1
	"seller" + "-" + generate_username3(first_name,last_name,year) 
elsif privilege == 2
	"manager" + "-" + generate_username3(first_name,last_name,year) 
elsif privilege == 3
	"admin" + "-" + generate_username3(first_name,last_name,year) 
else 
	generate_username3(first_name,last_name,year) 
end
	
end


