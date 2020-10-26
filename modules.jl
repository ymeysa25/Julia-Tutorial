using Pkg
# Pkg.add("SpecialFunctions") --> to install new package

using SpecialFunctions

println(gamma(3))
println(sinint(5))

# if we don’t want to import all of the functions available inside SpecialFunctions but only some of them, 
# for example the gamma function and sinint, but not cosint, we can do it in the following way.

using SpecialFunctions: gamma, sinint

println(gamma(3))
println(sinint(5))
# println(cosint(5)) # --> UndefVarError: cosint not defined


# to import module we can use 2 ways
# first, using "using"
using SpecialFunctions

# second, using import
import SpecialFunctions
