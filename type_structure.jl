# In this lesson we will learn what types are and how it is possible to define functions that work on types. 
# We will learn which are the differences between abstract and concrete types, how to define immutable and
# mutable types and how to create a type constructor. We will give a brief introduction to multiple dispatch 
# and see how types have a role in it.
# You can find full course here https://techytok.com/lesson-types/

# Implementation
# To declare a Type we use either the type or struct keyword.


abstract type Person
end

abstract type Musician <: Person  # Musician is subtype of Person
end

println(typeof(Person))
println(typeof(Musician))

# there are many kind of Musicians, for example rock-stars and classsic
# Musicians. so we define two new concrete type like this (Composte type)

mutable struct Rockstar <: Musician
    name::String
    instrument::String
    bandName::String
    headbandColor::String
    instrumentsPlayed::Int
end

struct ClassicMusician <: Musician
    name::String
    instrument::String
end


mutable struct Physicist <: Person
    name::String
    sleepHours::Float64
    favouriteLanguage::String
end

aure = Physicist("Aurelio", 6, "Julia")
println("$(aure.name) $(aure.sleepHours)  $(aure.favouriteLanguage)")

# we can change value like this
aure.sleepHours = 8
println(aure.sleepHours)

aure_musician = ClassicMusician("Aurelio", "Violin")
# aure_musician.instrument = "Cello" #setfield! immutable struct of type ClassicMusician cannot be changed

ricky = Rockstar("Riccardo", "Voice", "Black Lotus", "red", 2)
println(ricky.headbandColor)

# Functions and types: multiple dispatch
# It is possible to write functions that operate on both abstract and concrete types. 
# For example, every person is likely to have a name, so we can define the following function:

function introduceMe(person::Person)
    println("Hello, my name is $(person.name)")
end


function introduceMe(person::Musician)
    println("Hello, my name is $(person.name) and I play $(person.instrument).")
end

function introduceMe(person::Rockstar)
	if person.instrument == "Voice"
		println("Hello, my name is $(person.name) and I sing.")
	else
		println("Hello, my name is $(person.name) and I play $(person.instrument).")
	end

	println("My band name is $(person.bandName) and my favourite headband colour is $(person.headbandColor)!")
end


introduceMe(aure)
introduceMe(aure_musician)
introduceMe(ricky)

# Type constructor
# when type is applied like a function it is called a constructor
mutable struct MyData
    x::Float64
    x2::Float64
    y::Float64
    z::Float64
    function MyData(x::Float64, y::Float64)
        x2 = x ^ 2
        z = sin(x2 + y)
        new(x, x2, y, z)
    end
end

println(MyData(2.0, 3.0))

# Sometimes it may be useful to use other types for x, x2 and y, 
# so it is possible to use parametric types (i.e. types that accept type information at construction time):

mutable struct MyData2(T <: Real)
    x::T
    x2::T
    y::T
    z::Float64
    function MyData2(T)(x::T, y::T) where (T<:Real)
        x2 = x ^ 2
        z = sin(x2+y)
        new(X, x2, y, z)
    end
end

println(MyData2(2.0, 3.0))
println(MyData2{Int}(2,3))