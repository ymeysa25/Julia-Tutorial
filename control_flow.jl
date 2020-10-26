# If Else
# Even and Oddd Classifier
number = 101

if number % 2 == 0
    println("$number is Even Number")

elseif number % 2 == 1
    println("$number is Odd Number")

else
    println("Wrong Input")
end

# Looping
persons = ["Alice", "Bob", "Carla", "Daniel"]

for person in persons
    println("Hello $person, welcome to indonenesia!")
end

# While

i=0
while(i<30)
    println(i)
    i += 1
end

# Enumerate
x = ["a","b","c"]
for couple in enumerate(x)
    println(couple)
end