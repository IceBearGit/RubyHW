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


p 'Дан целочисленный массив. Найти минимальный положительный элемент.'
p 'min_positive_element [1,-2,3,4,-5,6]'
def min_positive_element (arr)

	arr_positive = arr.find_all{ |elem| elem >= 0 } #var2 - [1,-2,3,4,-5,6].select{|n| n >= 0}.min # => 1
	puts arr_positive.min
end

min_positive_element [1,-2,3,4,-5,6]
p '--------------'


p 'Дан целочисленный массив. Найти максимальный отрицательный элемент.'
p 'max_negative_element [1,-2,3,4,-5,6]'
def max_negative_element (arr)

	arr_negative = arr.find_all{ |elem| elem < 0 } #var2 - [1,-2,3,4,-5,6].select{|n| n < 0}.max # => -2
	puts arr_negative.max  							
end

max_negative_element [1,-2,3,4,-5,6]
p '--------------'


p 'Дан целочисленный массив. Найти количество минимальных элементов.'
p 'quantity_min_element [1,-2,3,4,-5,6,-5]'
def quantity_min_element (arr)

	puts arr.count(arr.min)
end

quantity_min_element [1,-2,3,4,-5,6,-5]
p '--------------'


p 'Дан целочисленный массив. Найти количество максимальных элементов.'
p 'quantity_max_element [6,-2,3,4,6,6,-5]'
def quantity_max_element (arr)

	puts arr.count(arr.max)
end

quantity_max_element [6,-2,3,4,6,6,-5]
p '--------------'


p 'Дан целочисленный массив. Найти индекс минимального элемента.'
p 'index_min_element [1,-2,3,4,-5,6,-3]'
def index_min_element (arr)

	p arr.index(arr.min)
end

index_min_element [1,-2,3,4,-5,6,-3]
p '--------------'

p 'Дан целочисленный массив. Найти индекс максимального элемента.'
p 'index_max_element [1,-2,3,4,-5,6,-3]'
def index_max_element (arr)

	p arr.index(arr.max)
end

index_max_element [1,-2,3,4,-5,6,-3]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального.'
p 'quantity_after_last_max_element [1,-2,3,4,-5,6,-3]'
def quantity_after_last_max_element (arr)

	p arr.reverse.index(arr.max)
	
end
quantity_after_last_max_element [1,-2,3,4,-5,6,-3]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным.'
p 'quantity_before_last_min_element [1,-2,3,4,-5,6,-5]'
def quantity_before_last_min_element (arr)
	p arr.rindex(arr.min)
end

quantity_before_last_min_element [1,-2,3,4,-5,6,-5]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным.'
p 'quantity_before_last_max_element [1,-2,6,4,-5,6,-5]'
def quantity_before_last_max_element (arr)
	p arr.rindex(arr.max)
end

quantity_before_last_max_element [1,-2,6,4,-5,6,-5]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального.'
p 'quantity_after_last_min_element [1,-2,-5,4,-5,6,-3]'
def quantity_after_last_min_element (arr)

	p arr.reverse.index(arr.min)
	
end
quantity_after_last_min_element [1,-2,-5,4,-5,6,-3]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.'
p 'quantity_before_first_min_element [1,-2,3,4,-5,6,-5]'
def quantity_before_first_min_element (arr)
	p arr.index(arr.min)
end

quantity_before_first_min_element [1,-2,3,4,-5,6,-5]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным.'
p 'quantity_before_first_max_element [1,-2,6,4,-5,6,-5]'
def quantity_before_first_max_element (arr)
	p arr.index(arr.max)
end

quantity_before_first_max_element [1,-2,6,4,-5,6,-5]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.'
p 'quantity_after_first_max_element [1,-2,6,4,-5,6,-3]'
def quantity_after_first_max_element (arr)

	p arr.reverse.rindex(arr.max)
	
end
quantity_after_first_max_element [1,-2,6,4,-5,6,-3]
p '--------------'


p 'Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального.'
p 'quantity_after_first_min_element [-5,-2,6,4,-5,6,-3]'
def quantity_after_first_min_element (arr)

	p arr.reverse.rindex(arr.min)
	
end
quantity_after_first_min_element [-5,-2,6,4,-5,6,-3]
p '--------------'


p 'Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.'
p 'index_first_extreme_element [1,-20,6,4,-5,60,-5]'
def index_first_extreme_element (arr)
	index_min = arr.index(arr.min)
	index_max = arr.index(arr.max)
	p index_min if index_min < index_max
	p index_max if index_min > index_max
	
end

index_first_extreme_element [1,-20,6,4,-5,60,-5]
p '--------------'


p 'Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.'
p 'index_last_extreme_element [1,-20,6,4,-5,6,-5]'
def index_last_extreme_element (arr)
	index_min = arr.rindex(arr.min)
	index_max = arr.rindex(arr.max)
	p index_min if index_min > index_max
	p index_max if index_min < index_max
	
end

index_last_extreme_element [1,-20,6,4,-5,6,-5]
p '--------------'


