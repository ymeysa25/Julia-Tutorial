a = [1, 2, 3] # is a column vector
b = [4, 5, 6] # is a column vector

# println(a * b) #LoadError: MethodError: no method matching *(::Array{Int64,1}, ::Array

c = [4 5 6] # is a row vector

println(a)
println(c)

println(a * c)
# output : 
# 3×3 Array{Int64,2}:
#         4  5   6
#         8  10  12
#         12 15  18

println(c * a)
# output : 
# 1-element Array{Int64,1}:
#          32


d = reshape([1,2,3,4,5,6,7,8,9],3,3)
println(d)

println("======= Broadcasting ===========")
# Broadcasting
# in julia, with boradcasting we indicates the action of mappinf a function
# or an operation (which are the same in Julia) over array or a matrix by element
# The broadcasting notation for operators consists of adding a dot . before the operator (for example .*)

#     Considering the example we get:
println(a.*c)
println(c .* a)
println(a .* d)
println(d .* a)

# another example
a = [1, 2, 3]
println(sin.(a))