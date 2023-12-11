## Information Hiding
You might be wondering why we need to hide information in Ruby. Isn't it okay for every part of your ruby program to know what every other part is doing?

Possible, if your the only one writing and using your software. But when multiple users are working and using your application they they might fool around with other parts of your program and introduce unwanted errors and inconsistencies.

* Public methods allow for an interface with the rest of the program.
* Whereas private methods are for your classes to do their own work undisturbed.

## Public methods
Methods are public by default in Ruby, but you can also prefex your method with a public keyword to let your users know that the method is public.
> For example:
```
class MyClass
    public
    def greet
        puts "Hello, Good morning"
    end
end
```
> Note that everything after the public keyword through the end of the class definition will now be public unless we say otherwise.

## Private methods
Just as we use public to announce our public methods, we use private to specify our private ones.

Private methods are just that. They are private to the object they are defined. This means that you can only call them from the inside the class in which they are declared.
```
class MyClass
    public
    def public_method; end

    private
    def private_method; end
end
```

## Getters - *attr_reader*, Setters - *attr_writer*
We can use `attr_reader` to access instance variables and `attr_writer` to change it.

Like magic, we can read and write variables as we please! We just pass our instance variables `(as symbols)` to attr_reader or attr_writer.

> For Example:
```
class Person
    attr_reader :name, :age
    attr_writer :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end
end
```

## Getter and Setter at once *attr_accessor*
If you want to read and write an instance variable you can use the `attr_accessor` keyword, instead of specifing it's getter and setter seperately.

> For example:
```
class Person
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
end
```

