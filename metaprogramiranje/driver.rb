require_relative './script.rb'

table1 = ExcelTable.new('res/test1.xlsx')
table2 = ExcelTable.new('res/test2.xlsx')
table3 = ExcelTable.new('res/test3.xlsx')

p table3.to_2d_array

p table3.row(1)

table3.each { |row| puts row }

p table3['Student']
p table3['Student'][2]

table3['Student', 2] = 'Dimitri'
p table3.to_2d_array

p table3.Student

p table1.X.avg
p table1.X.sum

p table3.Student.Ana

p table1.X.map { |x| x * 2}
p table1.X.select { |x| x > 2 }
p table1.X.reduce(0) { |sum, x| sum + x }

arr = table1 + table2
p arr

arr = table1 - table2
p arr