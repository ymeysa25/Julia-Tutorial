using Gadfly
using RDatasets

iris = dataset("datasets", "iris")
p = plot(iris, x=:SepalLength, y=:SepalWidth, Geom.point)
# img = SVG("iris_plot.svg", 6inch, 4inch)
jpg = PNG("iris_plot.jpg", 6inch, 4inch)
draw(img, jpg)