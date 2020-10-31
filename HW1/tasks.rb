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


p 'Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные.'
p "even_odd_parser [1,2,3,4,5,6]"
def even_odd_parser	(arr)

	arr1 = arr.find_all{ |elem| elem % 2 == 0 }
	arr2 = arr.find_all{ |elem| elem % 2 != 0 }

	puts "even elements" 
	p arr1


	puts "odd elements" 
	p arr2

end
even_odd_parser [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные.'
p "odd_even_parser [1,2,3,4,5,6]"
def odd_even_parser	(arr)

	arr1 = arr.find_all{ |elem| elem % 2 == 0 }
	arr2 = arr.find_all{ |elem| elem % 2 != 0 }

	puts "odd elements" 
	p arr2

	puts "even elements" 
	p arr1


end
odd_even_parser [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Найти минимальный четный элемент.'
p 'min_even_element [1,2,3,4,5,6]'	
def min_even_element (arr)

	arr_even = arr.find_all{ |elem| elem % 2 == 0 }
	puts arr_even.min
end

min_even_element [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Найти минимальный нечетный элемент.'
p 'min_odd_element [1,2,3,4,5,6]'	
def min_odd_element (arr)

	arr_odd = arr.find_all{ |elem| elem % 2 != 0 }
	puts arr_odd.min
end

min_odd_element [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Найти максимальный четный элемент.'
p 'max_even_element [1,2,3,4,5,6]'	
def max_even_element (arr)

	arr_even = arr.find_all{ |elem| elem % 2 == 0 }
	puts arr_even.max
end

max_even_element [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Найти максимальный нечетный элемент.'
p 'max_odd_element [1,2,3,4,5,6]'	
def max_odd_element (arr)

	arr_odd = arr.find_all{ |elem| elem % 2 != 0 }
	puts arr_odd.max
end

max_odd_element [1,2,3,4,5,6]
p '--------------'



#p 'Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.'
#p 'adding_the_first_element_to_even_numbers [1,2,3,4,5,6]'

#def adding_the_first_element_to_even_numbers (arr)



