## Class
Ruby is an Object Oriented Programming language. Almost everything in Ruby is an object.
Class is code template for creating Objects.
> Syntax, Simple basic class
```
class MyClass
end
```

## Initialize method in Ruby
`initialize` is a special method in Ruby that gets called every time a new instance of a class gets created. It's similar to the constructor method in ohter languages.

## Instance variable `@`
In Ruby we use an `@` before a variable to signify that it's an instance variable. This means that the variable is attached to the instance of the class.
> Here @name is an instance variable.
```
class Person
  def initialize(name)
    @name = name
  end
end
```

## Instantiating your first object
We can create a new instance of a class in Ruby by calling the `.new` method on the class name.
> Here, mazda is an instance of Car
```
class Car
    ...
end

mazda = Car.new
```

## Scope
Scope is defined as the extent of the area or subject matter. Scope of a variable is the context in which it's visible to the program.

* When dealing with classes, you can have variables that are available everywhere (global variables).

* Ones that are only available inside certain methods (local variables).

* Others that are memebers of a certain class (class variable)

* Variables that are only available to particular instances of a class (instance variables).

> In Ruby you will find variables that start with `$`, `@` & `@@`. This helps mark them as global, instance and class variable respectively.