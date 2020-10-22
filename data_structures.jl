# Collection Data
# Arrray or Vector

# A vector is a list of ordered data which share a common type (be it Int, Float or Any). 
# Furthermore a vector is a one-dimensional array, and often “vector” and “array” are used a synonyms.


# Note : 
#  - Vector must share the same type, if we share different type, would be error
#  - one-dimensional array
a = [1,2,3,4,5]
b = [1.2, 3,4,5]
c = ["Hello", "it's me", "TechyTok"]

println(typeof(a))
println(typeof(b))
println(typeof(c))

println("===========================================")

# Matrices
# Matrices are two dimensional arrays

mat1 = [1 2 3; 4 5 6]
println(mat1)

println("===========================================")

# N dimensional Arrray

table = zeros(2,3,4)
for k in 1:4
    for j in 1:3
        for i in 1:2
            table[i,j,k] = i*j*k
        end
    end
end

println(table)

println("===========================================")

# Slice

a = [1,2,3,4,5,6]
b = a[2:5]

println(a)
println(b)

# We can also use this notation to access a subset of a matrix, for example:
mat1 = reshape([i for i in 1:16],4,4)
mat2 = mat1[2:3, 2:3]

println(mat1)
println(mat2)

println("===========================================")

# list comprehension.

list_c = [i+j for i in 1:10 for j in 1:5]

println(list_c)

println("===========================================")

# Tuple 

tuple1 = (1, 2, 3)
a, b, c = tuple1

println("$a $b $c")

# Named tuples
# Named tuples are like tuples but with a name identifier for a single value
namedTuple1 = (a = 1, b = "hello")
# or in alternative
namedTuple2 = NamedTuple{(:a, :b)}((2,"hello2"))

println(namedTuple1[:a])
println(namedTuple2[:b])

println("===========================================")

# Dictionary
person1 = Dict("Name" => "Aurelio", "Phone" => 123456789, "Shoe-size" => 40)
person2 = Dict("Name" => "Elena", "Phone" => 123456789, "Shoe-size" => 36)

person3 = Dict("Name" => "Vittorio", "Phone" => 123456789, "Shoe-size" => 42)
addressBook["Vittorio"] = person3

print(addressBook)


