# https://techytok.com/lesson-variables-and-types/
# String
name = "Julia"
type_name = typeof(name)
# int
fav_number = 10
type_fav_number = typeof(fav_number)

# float
pie_number = 3.1415
type_pie_number = typeof(pie_number)

println("$name  $fav_number $pie_number") # Julia  10 3.1415
println("$type_name $type_fav_number $type_pie_number")  #String Int64 Float64

println("===========================================")
# Convert Type Variables in Julia
println("Convert Type Variables in Julia")

# Convert from int to float
a = 2
b = convert(Float64, a)

# Convert from String to Int
c = convert(Int, '1')  #49

# Convert from Float64 to Int
# d = convert(Int, 0.8)  # Error

println("$a, $b $c")


println("===========================================")
# Arithmetic Process 
a = 2
b = 3
println("Arithmetic Process from $a and $b")
println("===========================================")

# Addition
sum = a + b
println("Sum $a and $b is $sum")

# Subtraction
difference = a - b
println("Diff $a and $b is $difference")

# Multiplication
product = a * b
println("Product $a and $b is $product")

# Division
quotient = b / a
println("Quotient $a and $b is $quotient")

# Power
power = a^b
println("$a the power of $b is $power")

# Modulus
modulus = b % a
println("modulus $a and $b is $modulus")




