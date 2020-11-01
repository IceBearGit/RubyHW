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


p 'Дан целочисленный массив. Найти два наибольших элемента.'
p 'two_max_elements [1,20,6,4,-5,6,-5]'
def two_max_elements (arr)
	res = arr.sort.last 2
	p res[0]
	p res[1]
end

two_max_elements [1,20,6,4,-5,6,-5]
p '--------------'


p 'Дан целочисленный массив. Найти два наименьших элемента.'
p 'two_min_elements [1,20,6,4,-5,6,-5]'
def two_min_elements (arr)
	res = arr.sort.first 2
	p res[0]
	p res[1]
end

two_min_elements [1,20,6,4,-5,6,-5]
p '--------------'


p 'Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.'
p 'min_element_in_range [1,20,6,4,-5,6,-5],0,3)'
def min_element_in_range (arr,a,b)

	p arr[a..b].min
end

min_element_in_range [1,20,6,4,-5,6,-5],0,3
p '--------------'


p 'Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.'
p 'max_element_in_range [1,20,6,4,-5,6,-5],0,3)'
def max_element_in_range (arr,a,b)

	p arr[a..b].max
end

max_element_in_range [1,20,6,4,-5,6,-5],0,3
p '--------------'


p 'Дан целочисленный массив. Найти все четные элементы.'
p "even_parser [1,2,3,4,5,6]"

def even_parser	(arr)

	puts "even elements" 
	arr.each do |digit|
  	puts digit if (digit % 2) == 0
	end
end
even_parser [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Найти все нечетные элементы.'
p "odd_parser [1,2,3,4,5,6]"

def odd_parser	(arr)

	puts "odd elements" 
	arr.each do |digit|
  	puts digit if (digit % 2) != 0
	end
end
odd_parser [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Найти количество четных элементов.'
p "quantity_even_parser [1,2,3,4,5,6]"

def quantity_even_parser	(arr)
 	count = 0
	arr.each do |digit|
  	if (digit % 2) == 0
  		count += 1
	end
	end
	p count
end
quantity_even_parser [1,2,3,4,5,6]
p '--------------'


p 'Дан целочисленный массив. Найти количество нечетных элементов.'
p "quantity_odd_parser [1,2,3,4,5,6,7]"

def quantity_odd_parser	(arr)
 	count = 0
	arr.each do |digit|
  		if (digit % 2) != 0
  			count += 1
		end
	end
	p count
end
quantity_odd_parser [1,2,3,4,5,6,7]
p '--------------'


p 'Дан целочисленный массив. Найти среднее арифметическое его элементов.'
p "arithmetic_average [1,2,3,4,5,6,7]"

def arithmetic_average (arr)
	counter = 0
	arr.each do |digit|
		counter += digit
	end
	p counter / arr.count
end
arithmetic_average [1,2,3,4,5,6,7]
p '--------------'


p 'Дано натуральное число N. Найти результат следующего произведения 1*2*…*N.'
p "factorial (6)"

def factorial (n)
	count = 1
	res = 1
	while count <= n do
  	res = res * count
  	count += 1
  	end
  	p res
end

factorial (6)
p '--------------'


p 'Дано натуральное число N. Если N - нечетное, то найти произведение 1*3*…*N; если N - четное, то найти произведение 2*4*…*N.'
p "mult_even_odd (5)"
p "mult_even_odd (4)"
def mult_even_odd (n)
	if n%2 != 0
		count = 1
		res = 1
		while count <= n do
  		res = res * count
  		count += 2
  		end
  	else
  		count = 2
		res = 1
		while count <= n do
  		res = res * count
  		count += 2
  		end
  	end
  	p res
end
mult_even_odd (5)
mult_even_odd (4)
p '--------------'


p 'Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.'
p "abs_average [1,2,-3,4,5,-6,7]"

def abs_average (arr)
	counter = 0
	arr.each do |digit|
		counter += digit.abs
	end
	p counter / arr.count
end
abs_average [1,2,-3,4,5,-6,7]
p '--------------'


p 'Дан целочисленный массив. Найти среднее арифметическое квадратов его элементов.'
p "sqr_average [1,2,-3,4,5,-6,7]"

def sqr_average (arr)
	counter = 0
	arr.each do |digit|
		counter += digit ** 2
	end
	p counter / arr.count
end
sqr_average [1,2,-3,4,5,-6,7]
p '--------------'


p 'Дано целое число. Найти сумму его цифр.'
p "sum_digits (123)"

def sum_digits (n)
	sum = 0;

	while n > 0 do
    sum += n % 10
    n = (n / 10) - (n % 10) / 10
    end
    p sum
end 
sum_digits (123)
p '--------------'


p 'Дано целое число. Найти произведение его цифр.'
p "mult_digits (1234)"

def mult_digits (n)
	mult = 1;

	while n > 0 do
    mult *= n % 10
    n = (n / 10) - (n % 10) / 10
    end
    p mult
end 
mult_digits (1234)
p '--------------'


p 'Дан целочисленный массив. Заменить все положительные элементы на значение минимального.'
p "repl_positive_to_min [1,2,-3,4,5,-6,7]"
def repl_positive_to_min (arr)

	min_elem = arr.min
	a = []
	arr.each { |elem| a << (elem > 0 ? min_elem : elem) }
	p a.to_s
end
repl_positive_to_min [1,2,-3,4,5,-6,7]
p '--------------'


