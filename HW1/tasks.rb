p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными.'
p "even_odd_indexes_parser [1,2,3,4,5,6]"

def even_odd_indexes_parser	(arr)

	puts "elements with even index" 
	arr.each_with_index do |digit, index|
  	puts digit if (index % 2) == 0
	end

	puts "elements with odd index" 
	arr.each_with_index do |digit, index|
  	puts digit if (index % 2) != 0
	end
end
p even_odd_indexes_parser [1,2,3,4,5,6]
p '--------------'

p 'Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.'
p "odd_even_indexes_parser [1,2,3,4,5,6]"

def odd_even_indexes_parser	(arr)

	puts "elements with odd index" 
	arr.each_with_index do |digit, index|
  	puts digit if (index % 2) != 0
	end

	puts "elements with even index" 
	arr.each_with_index do |digit, index|
  	puts digit if (index % 2) == 0
	end

end
p odd_even_indexes_parser [1,2,3,4,5,6]
p '--------------'


