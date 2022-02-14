def showlist
    puts "1 - Book"
    puts "2 - food"
    puts "3 - medical"
    puts "4 - others"
    puts "5 - Exit the program !!!"
    puts "==================="
    puts "Select your option "
end

def totalamout
    puts "================================"
    @data.each do |key, array|
        @total+=array.to_i
    end
    @total+=@text
    puts "you total amount = #{@total}"

end

def showoutput
    puts "================================"

    @data.each do |key, array|
        puts "#{key} price #{array}"
    end
    puts "total text #{@text}"
    totalamout
    puts "================================"

    
end

def imported
    puts "is you product include import duty ? press 1 for yes  eles N "
    puts " press 1 - yes  "
    puts " press 2 - no  "
    str = gets.to_i
    case str
        when 1
            return 1
        when 2
            return 0
        else
            puts "Please Enter the valid input !"
            imported
    end
end

def selectedItem
            str = gets.to_i
            case str
                when 1
                    # puts @data
                    puts 'You selected the Book'
                    item='Book'
                    puts "Enter the price of Book"
                    price=gets.to_i
                    @data.merge!(item.to_sym => price)
                    # puts @data
                    showlist
                    selectedItem
                when 2
                    puts 'You selected the Food'
                    puts "Enter the price of Food"
                    item='Food'
                    price=gets.to_i
                    @data.merge!(item.to_sym => price)
                    # puts @data
                    showlist
                    selectedItem
                when 3
                    puts 'You selected the Medicals'
                    puts "Enter the price of Medicals"
                    item='Medical'
                    price=gets.to_i
                    @data.merge!(item.to_sym => price)
                    # puts @data
                    showlist
                    selectedItem
                when 4
                    puts 'You selected the Others'
                    puts 'Enter the name product'
                    pname=gets.to_s
                    puts "Enter the price of #{pname}"
                    item=pname
                    price=gets.to_i
                    @text  =@text + price*0.1
                    puts "your text #{@text}"
                    x=imported
                    if x==1 
                        puts "imported product !"
                        @text  =@text+ price*0.05
                        puts "your text #{@text}"

                    else
                        puts "not imported product !"
                        puts "your text #{@text}"

                    end
                    @data.merge!(item.to_sym => price)
                    # puts @data
                    showlist
                    selectedItem
                when 5
                    puts 'thanks for your visit'
                    # puts "total text = #{@text}"
                    showoutput
                    exit
                else
                    puts "please select a valid input !!"
                    showlist
                    selectedItem
            end

end

@data={}
@text=0
@total=0
puts "welcome to he saleText prblome"
showlist
selectedItem


