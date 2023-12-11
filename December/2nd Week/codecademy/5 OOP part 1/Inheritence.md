## Inheritance
Inheritance is the process by which a class can take the attributes and methods of another class and is used to show a is-a relationship.

>In Ruby inheritance works like this.
```
class DerivedClass < BaseClass
  # Some stuff!
end
```
You can read `<` as `"inherits from"`

> For example: A Tesla Model S is a E-Vehicle, so Model S could inherit from E-Vehicle.
```
class EVehicle
  def description
    puts "This is an e-vehicle, it runs on electricity."
  end
end

class TeslaModelS < EVehicle
end
```

## Method Overriding
Sometimes you will want a class that inherites from another class to not only inherite one or more attributes and methods but to override them. 

## Accessing overriden methods
Sometimes you'll want to access the overriden method of the base class from a derived class. 
Ruby lets you access the methods and attributes of the base class using the `super` keyword.

## Single Inheritance
There can only be one base class of a drived class. Some languages allow for a single class to have multiple parents (`multiple-inheritance`), but this is not the case in ruby. 

## When to use semi-colon `;`
When you want to end a statement without going to a new line, you can just type a semi-colon `;`.
>For Eg:
```
class Map
end

# This can be rewritten as
class Map; end
```
