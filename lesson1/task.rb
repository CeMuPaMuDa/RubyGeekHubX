arr = Array.new(15) { rand(-100...100) }
arr_5 = Array.new(15) { rand(-100...100) }
arr_6 = Array.new(15) { rand(-100...100) }
arr_7 = Array.new(15) { rand(-100...100) }
arr_8 = Array.new(15) { rand(-100...100) }
arr_mini = Array.new(15) { rand(-3...3) }
f_arr = Array.new(15) { rand(-99.99...99.99).round(2) }
r_num = rand(-99.99...99.99).round(2)
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "1. Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными."
puts "Исходный массив: " + arr.to_s
puts "Результат: " + (arr.select.with_index { |_, index| index.even? }).to_s + (arr.select.with_index { |_, index| index.odd? }).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "2. Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными."
puts "Исходный массив: " + arr.to_s
puts "Результат: " + (arr.select.with_index { |_, index| index.odd? }).to_s + (arr.select.with_index { |_, index| index.even? }).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "3. Дан целочисленный массив. Вывести номер первого из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "4. Дан целочисленный массив. Вывести номер последнего из тех его элементов, которые удовлетворяют двойному неравенству: A[0] < A[i] < A[-1]. Если таких элементов нет, то вывести [ ]."
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "5. Дан целочисленный массив. Преобразовать его, прибавив к четным числам первый элемент. Первый и последний элементы массива не изменять.		"
puts "Исходный массив: " + arr_5.to_s
first_el_5 = arr_5.shift
last_el_5 = arr_5.pop
arr_5.map! { |el| el.even? ? el += first_el_5 : el }
arr_5.unshift (first_el_5)
arr_5.push(last_el_5)
puts "Результат: " + arr_5.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "6. Дан целочисленный массив. Преобразовать его, прибавив к четным числам последний элемент. Первый и последний элементы массива не изменять.	"
puts "Исходный массив: " + arr_6.to_s
first_el_6 = arr_6.shift
last_el_6 = arr_6.pop
arr_6.map! { |el| el.odd? ? el += last_el_6 : el }
arr_6.unshift (first_el_6)
arr_6.push(last_el_6)
puts "Результат: " + arr_6.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "7. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам последний элемент. Первый и последний элементы массива не изменять.	"
puts "Исходный массив: " + arr_7.to_s
first_el_7 = arr_7.shift
last_el_7 = arr_7.pop
arr_7.map! { |el| el.even? ? el += first_el_7 : el }
arr_7.unshift (first_el_7)
arr_7.push(last_el_7)
puts "Результат: " + arr_7.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "8. Дан целочисленный массив. Преобразовать его, прибавив к нечетным числам первый элемент. Первый и последний элементы массива не изменять.	"
puts "Исходный массив: " + arr_8.to_s
first_el_8 = arr_8.shift
last_el_8 = arr_8.pop
arr_8.map! { |el| el.odd? ? el += last_el_8 : el }
arr_8.unshift (first_el_8)
arr_8.push(last_el_8)
puts "Результат: " + arr_8.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "9. Дан целочисленный массив. Заменить все положительные элементы на значение минимального.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.map { |m| if m >= 0; m = arr.min; else m = m end }.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "10. Дан целочисленный массив. Заменить все положительные элементы на значение максимального.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.map { |m| if m >= 0; m = arr.max; else m = m end }.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "11. Дан целочисленный массив. Заменить все отрицательные элементы на значение минимального.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.map { |m| if m < 0; m = arr.min; else m = m end }.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "12. Дан целочисленный массив. Заменить все отрицательные элементы на значение максимального.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.map { |m| if m < 0; m = arr.max; else m = m end }.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "13. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива влево на одну позицию."
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.rotate(1).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "14. Дан целочисленный массив. Осуществить циклический сдвиг элементов массива вправо на одну позицию.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.rotate(-1).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "15. Дан целочисленный массив. Проверить, образуют ли элементы арифметическую прогрессию. Если да, то вывести разность прогрессии, если нет - вывести nil.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "16. Дан целочисленный массив. Проверить, образуют ли элементы геометрическую прогрессию. Если да, то вывести знаменатель прогрессии, если нет - вывести nil.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "17. Дан целочисленный массив. Найти количество его локальных максимумов.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "18. Дан целочисленный массив. Найти количество его локальных минимумов.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "19. Дан целочисленный массив. Найти максимальный из его локальных максимумов.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "20. Дан целочисленный массив. Найти минимальный из его локальных минимумов.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "21. Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно возрастают.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "22. Дан целочисленный массив. Определить количество участков, на которых его элементы монотонно убывают.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "23. Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наиболее близок к данному числу.	"
#puts "Исходный массив: " + f_arr.to_s
#puts "Число R: " + r_num.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "24. Дано вещественное число R и массив вещественных чисел. Найти элемент массива, который наименее близок к данному числу.	"
#puts "Исходный массив: " + f_arr.to_s
#puts "Число R: " + r_num.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "25. Дан целочисленный массив. Преобразовать его, вставив перед каждым положительным элементом нулевой элемент.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "26. Дан целочисленный массив. Преобразовать его, вставив перед каждым отрицательным элементом нулевой элемент."
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "27. Дан целочисленный массив. Преобразовать его, вставив после каждого положительного элемента нулевой элемент.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "28. Дан целочисленный массив. Преобразовать его, вставив после каждого отрицательного элемента нулевой элемент.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "29. Дан целочисленный массив. Упорядочить его по возрастанию.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.sort.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "30. Дан целочисленный массив. Упорядочить его по убыванию."
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.sort { |a, b| b <=> a }.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "31. Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют убывающую последовательность."
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "32. Дан целочисленный массив. Вывести индексы массива в том порядке, в котором соответствующие им элементы образуют возрастающую последовательность.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "33. Дан целочисленный массив. Найти индекс минимального элемента.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: Индекс: " + arr.find_index(arr.min).to_s + " (Число: " + arr[arr.find_index(arr.min)].to_s + ")"
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "34. Дан целочисленный массив. Найти индекс максимального элемента."
puts "Исходный массив: " + arr.to_s
puts "Результат: Индекс: " + arr.find_index(arr.max).to_s + " (Число: " + arr[arr.find_index(arr.max)].to_s + ")"
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "35. Дан целочисленный массив. Найти индекс первого минимального элемента.		"
puts "Исходный массив: " + arr_mini.to_s
puts "Результат: Индекс: " + arr_mini.index(arr_mini.min).to_s + " (Число: " + arr_mini[arr_mini.index(arr_mini.min)].to_s + ")"
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "36. Дан целочисленный массив. Найти индекс первого максимального элемента."
puts "Исходный массив: " + arr_mini.to_s
puts "Результат: Индекс: " + arr_mini.index(arr_mini.max).to_s + " (Число: " + arr_mini[arr_mini.index(arr_mini.max)].to_s + ")"
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "37. Дан целочисленный массив. Найти индекс последнего минимального элемента."
puts "Исходный массив: " + arr_mini.to_s
puts "Результат: Индекс: " + arr_mini.rindex(arr_mini.min).to_s + " (Число: " + arr_mini[arr_mini.rindex(arr_mini.min)].to_s + ")"
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "38. Дан целочисленный массив. Найти индекс последнего максимального элемента.	"
puts "Исходный массив: " + arr_mini.to_s
puts "Результат: Индекс: " + arr_mini.rindex(arr_mini.max).to_s + " (Число: " + arr_mini[arr_mini.rindex(arr_mini.max)].to_s + ")"
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "39. Дан целочисленный массив. Найти количество минимальных элементов.	"
puts "Исходный массив: " + arr_mini.to_s
puts "Результат: " + arr_mini.count { |i| i == arr_mini.min }.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "40. Дан целочисленный массив. Найти количество максимальных элементов."
puts "Исходный массив: " + arr_mini.to_s
puts "Результат: " + arr_mini.count { |i| i == arr_mini.max }.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "41. Дан целочисленный массив. Найти минимальный четный элемент.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.select { |e| e.even? }.min.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "42. Дан целочисленный массив. Найти минимальный нечетный элемент.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.select { |e| e.odd? }.min.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "43. Дан целочисленный массив. Найти максимальный четный элемент.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.select { |e| e.even? }.max.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "44. Дан целочисленный массив. Найти максимальный нечетный элемент.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.select { |e| e.odd? }.max.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "45. Дан целочисленный массив. Найти минимальный положительный элемент."
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.select { |e| e >= 0 }.min.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "46. Дан целочисленный массив. Найти максимальный отрицательный элемент.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.select { |e| e < 0 }.max.to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "47. Дан целочисленный массив и интервал a..b. Найти минимальный из элементов в этом интервале.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
#puts "48. Дан целочисленный массив и интервал a..b. Найти максимальный из элементов в этом интервале.	"
#puts "Исходный массив: " + arr.to_s
#puts "Результат: "
#puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "49. Дан целочисленный массив. Найти количество элементов, расположенных перед первым минимальным.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.index(arr.min).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "50. Дан целочисленный массив. Найти количество элементов, расположенных перед первым максимальным."
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.index(arr.max).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "51. Дан целочисленный массив. Найти количество элементов, расположенных после первого максимального.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.reverse.rindex(arr.max).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "52. Дан целочисленный массив. Найти количество элементов, расположенных после первого минимального ."
puts "Исходный массив: " + arr.to_s
puts "Результат: " + arr.reverse.rindex(arr.min).to_s
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "53. Дан целочисленный массив. Найти количество элементов, расположенных перед последним максимальным."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "54. Дан целочисленный массив. Найти количество элементов, расположенных перед последним минимальным."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "55. Дан целочисленный массив. Найти количество элементов, расположенных после последнего максимального.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "56. Дан целочисленный массив. Найти количество элементов, расположенных после последнего минимального .	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "57. Дан целочисленный массив. Найти индекс первого экстремального (то есть минимального или максимального) элемента.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "58. Дан целочисленный массив. Найти индекс последнего экстремального (то есть минимального или максимального) элемента.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "59. Дан целочисленный массив. Найти количество элементов, между первым и последним минимальным.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "60. Дан целочисленный массив. Найти количество элементов, между первым и последним максимальным."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "61. Дан целочисленный массив. Найти два наибольших элемента.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "62. Дан целочисленный массив. Найти два наименьших элемента."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "63. Дан целочисленный массив. Найти максимальное количество подряд идущих минимальных элементов."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "64. Дан целочисленный массив. Найти максимальное количество подряд идущих максимальных элементов.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "65. Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "66. Дан целочисленный массив. Вывести вначале все его нечетные элементы, а затем - четные."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "67. Дан целочисленный массив. Проверить, чередуются ли в нем четные и нечетные числа.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "68. Дан целочисленный массив. Проверить, чередуются ли в нем положительные и отрицательные числа.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "69. Дано вещественное число R и массив вещественных чисел. Найти два элемента массива, сумма которых наиболее близка к данному числу.	"
puts "Исходный массив: " + f_arr.to_s
puts "Число R: " + r_num.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "70. Дано вещественное число R и массив вещественных чисел. Найти два элемента массива, сумма которых наименее близка к данному числу."
puts "Исходный массив: " + f_arr.to_s
puts "Число R: " + r_num.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "71. Дан целочисленный массив. Удалить все элементы, встречающиеся менее двух раз."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "72. Дан целочисленный массив. Удалить все элементы, встречающиеся более двух раз."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "73. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно два раза."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "74. Дан целочисленный массив. Удалить все элементы, встречающиеся ровно три раза.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "75. Дан целочисленный массив. Найти среднее арифметическое модулей его элементов.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "76. Дан целочисленный массив. Найти среднее арифметическое квадратов его элементов.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "77. Дано целое число. Найти сумму его цифр.	"
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "78. Дано целое число. Найти произведение его цифр."
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "79. Дан целочисленный массив. Возвести в квадрат отрицательные элементы и в третью степень - положительные. Нулевые элементы - не изменять.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "80. Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне (исключая сами эти числа), в порядке их возрастания, а также размер этого массива.	"
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "81. Дан дипапазон a..b. Получить массив из чисел, расположенных в этом диапазоне (исключая сами эти числа), в порядке их убывания, а также размер этого массива.	"
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "82. Дано число А и натуральное число N. Найти результат следующего выражения 1 + А + А*2 + А*3 + … + А*N.	"
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "83. Дано число А и натуральное число N. Найти результат следующего выражения 1 - А + А*2 - А*3 + … + ((-1)**N)*А*N.		"
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "84. Дано натуральное число N. Найти результат следующего произведения 1*2*…*N.	"
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "85. Дано натуральное число N. Если N - нечетное, то найти произведение 1*3*…*N; если N - четное, то найти произведение 2*4*…*N.		"
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "86. Дан целочисленный массив. Найти среднее арифметическое его элементов.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "87. Дан целочисленный массив. Найти все четные элементы.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "88. Дан целочисленный массив. Найти количество четных элементов."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "89. Дан целочисленный массив. Найти все нечетные элементы."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "90. Дан целочисленный массив. Найти количество нечетных элементов.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "91. Дан целочисленный массив и число К. Если существует элемент, меньший К, то вывести true; в противном случае вывести false."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "92. Дан целочисленный массив и число К. Если существует элемент, больший К, то вывести true; в противном случае вывести false.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "93. Дан целочисленный массив и число К. Если все элементы массива меньше К, то вывести true; в противном случае вывести false."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "94. Дан целочисленный массив и число К. Если все элементы массива больше К, то вывести true; в противном случае вывести false."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "95. Дан целочисленный массив и число К. Вывести количество элементов, меньших К.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "96. Дан целочисленный массив и число К. Вывести индекс первого элемента, большего К.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "97. Дан целочисленный массив и число К. Вывести индекс последнего элемента, меньшего К.	"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "98. Дан целочисленный массив. Вывести индексы элементов, которые меньше своего левого соседа, и количество таких чисел.		"
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "99. Дан целочисленный массив. Вывести индексы элементов, которые меньше своего правого соседа, и количество таких чисел."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
puts "100. Дан целочисленный массив. Вывести индексы элементов, которые больше своего правого соседа, и количество таких чисел."
puts "Исходный массив: " + arr.to_s
puts "Результат: "
puts "---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
