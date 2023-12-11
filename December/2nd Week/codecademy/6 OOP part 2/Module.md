## Module
You can think of a module as a set of toolbox that contains methods and constants. You can think of modules as classes, only modules can't create instances and have subclasses.
> Module Example:
```
module Circle
    PI = 3.141

    def Circle.area(radius)
        return PI * radius**2
    end

    def Circle.circumference(radius)
        return 2 * PI * radius
    end
end
```

## Constant
Ruby doesn't make you keep the same value for a constant once it's initialize, but it will warn you if you try to change it. Ruby constants are written in `ALL_CAPS` and are seperated with underscores if there's more than one word.

## Purpose of Modules
One of the main purpose of module is to seperate constants and methods into named spaces. This is called (conveniently enough) namespacing and it's how Ruby doesn't confuse methods and constants (with the name) between different namespaces.
> Accessing constants inside different namespaces (modules)
```
Math::PI
Circle::PI
```
> See the `::` we just used. That's called a scope resolution operator. It's a fancy way of telling Ruby where to look for a specific bit of code.

## Requiring a module
Some modules, like Math, are already present in the interpreter. Others need to be explicitly brought in. We can do this using `require` keyword.
```
require 'date'
```

## Including a module
We can do more than just `require` a module, we can `include` it!

Any class that `include`s a certain moudle can use it's constants and methods inside without prepending the constants and methods with the module's name.

```
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end

class Ninja
  include MartialArts
  def initialize(clan)
    @clan = clan
  end
end
```

## Module and Classes => `Mixin`
When a module is used to add additional constants and methods to a class, it's called a `mixin`.

## Imitating multiple Inheritance
Mixins lets us mimic inheritance from multiple class: by mixing traits from multiple modules.

## Extend Your class with module
Whereas `include` mixes a module’s methods in at the instance level (allowing instances of a particular class to use the methods), the `extend` keyword mixes a module’s methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.

```
module ThePresent
  def now
    puts "It's #{Time.now} right now."
  end
end

class TheHereAnd
  extend ThePresent
end
```