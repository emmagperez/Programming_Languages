#Emma Perez
#Language: Ruby
#Group: 4

#put name of text file here
file = 'Group4Input.txt'
a = [] 
File.foreach(file).map { |line| a << line.split('|')}

#puts a 

# creates a table using two hash functions 
# each "cell" is labeled with a row and column number
# R = row C = column 
# (R2 C3) would be the cell at intersecting Row2 and Column3

def multiply ( hashVar )
	b = []
	product = 0
	multArray = 0
	#loops through hash table
	hashVar.each do |key, array|
		
		if array.include?("*")
			#finds the product cell and breaks it down into two single cells called str
				array.gsub(/\w\d\s\w\d/) do |str|	
				#loops through whole hash table again to find the number in the cells 
				#that the function points to 
			
				#print str
					hashVar.each do |key2, array2|
					#checks against the key of the hashtable to the str
						if key2.eql? (str)
						#adds the number to an array 
							b << (Integer(array2))
							if b.length == 2						
							multArray = b.inject(&:*)
							product = Hash.new	
							product['multiply'] = "#{multArray}"	
							hashVar.each{|k, v| hashVar[k] = product['multiply'] if hashVar[k] == array}
							b.clear
							end
								
						end
						
					end		
				end				
		end
	end
	#sprint hashVar
end 
def sum ( hashVar )
	b = []
	sum = 0
	sumArray = 0
	#loops through hash table
	hashVar.each do |key, array|
		
		if array.include?("+")
			#finds the product cell and breaks it down into two single cells called str
				array.gsub(/\w\d\s\w\d/) do |str|	
				#loops through whole hash table again to find the number in the cells 
				#that the function points to 
				#print str
					hashVar.each do |key2, array2|
					#checks against the key of the hashtable to the str
						if key2.eql? (str)
						#adds the number to an array 
							b << (Integer(array2))
							if b.length == 2						
							sumArray = b.inject(&:+)
							product = Hash.new	
							product['sum'] = "#{sumArray}"	
							hashVar.each{|k, v| hashVar[k] = product['sum'] if hashVar[k] == array}
							b.clear
							end
								
						end
						
					end		
				end				
		end
	end
	#print hashVar
end 
def divide ( hashVar )
	b = []
	product = 0
	divArray = 0
	#loops through hash table
	hashVar.each do |key, array|
		
		if array.include?("/")
			#finds the product cell and breaks it down into two single cells called str
				array.gsub(/\w\d\s\w\d/) do |str|	
				#loops through whole hash table again to find the number in the cells 
				#that the function points to 
			
				#print str
					hashVar.each do |key2, array2|
					#checks against the key of the hashtable to the str
						if key2.eql? (str)
						#adds the number to an array 
							b << (Float(array2))
							if b.length == 2						
							divArray = b.inject(&:/)
							product = Hash.new	
							product['divide'] = "#{divArray}"	
							hashVar.each{|k, v| hashVar[k] = product['divide'] if hashVar[k] == array}
							b.clear
							end
								
						end
						
					end		
				end				
		end
	end
	#print hashVar
end 
def subtract( hashVar )
	b = []
	product = 0
	subArray = 0
	#loops through hash table
	hashVar.each do |key, array|
		
		if array.include?("-")
			#finds the product cell and breaks it down into two single cells called str
				array.gsub(/\w\d\s\w\d/) do |str|	
				#loops through whole hash table again to find the number in the cells 
				#that the function points to 
			
				#print str
					hashVar.each do |key2, array2|
					#checks against the key of the hashtable to the str
						if key2.eql? (str)
						#adds the number to an array 
							b << (Integer(array2))
							if b.length == 2						
							subArray = b.inject(&:-)
							product = Hash.new	
							product['subtract'] = "#{subArray}"	
							hashVar.each{|k, v| hashVar[k] = product['subtract'] if hashVar[k] == array}
							b.clear
							end
								
						end
						
					end		
				end				
		end
	end
	#sprint hashVar
end 


x = 0
#y = 0
rows = Hash.new()
cols = Hash.new()
a.each do |sub|
	x = x+1
	y = 0	
	rows[sub] = "R#{x}" 
	sub.each do |elem|
	   rows.compare_by_identity
	   cols.compare_by_identity
		y = y + 1
		rows2 = rows.invert()
		elem.delete!("\n")
		elem.strip
		cols[elem] = "C#{y} R#{x}" 	
	end 
	
end 

cols2 = cols.invert()

cols2.each{|k, v| cols2[k.strip] = v.strip}

multiply(cols2)
sum(cols2)
divide(cols2)
subtract(cols2)
readable = []
cols2.each do |key, array|
	readable << "#{key} = #{array}"
end

evaluated = File.new("evaluated.txt", "a")
readable.each do |n|
	evaluated.puts(n)
end	


