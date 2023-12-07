## Blocks are not Objects
In Ruby it's stated that everything is an object. Well, that in fact is not true as blocks are not an object. 

Because of this blocks cannot be saved to a variable and they don't have the full powers and abilities of an Object. For that we have ***Procs***.

## Procs
You can think of procs as saved blocks. Just like you can give a chunk of code and turn it into a method, you can name a block and turn it into a proc. Procs are great for keeping you code ***DRY***

> DRY stand for Don't Repeat Yourself

A Block
```
def 
    puts "Hello, world"
end
```

A Proc
```
greeting = Proc.new do 
    puts "Hello, world"
end
```

## Procs Syntax
Procs are easy to define you just call Proc.new and pass in the block you want to save. We can then pass the block to a function that would otherwise take a block of the same nature.
```
my_proc = Proc.new { |name| "Hello, #{name}" }
```
> To pass a proc to a method we need to convert it to a block and that could be done by prepending the block name with `&`

```
cube = Proc.new { |num| num**3 }
puts [1,2,3].collect!(&cube)

>> outs => [1, 8, 9]
```

## Why Procs
Why bother saving blocks as procs? There are two main advantages:
* Procs are full-fledged objects so they have all the abilities of an object.
* Unlike blocks, procs can be called repeatedly without having to re-write the logic all over again.

## Calling Procs
Unlike blocks we can directly call the Procs by using Ruby's built in .call method.
```
greet = Proc.new { |name| puts "Hello, #{name}!" }

greet.call("Prajwal")

>> outs => Hello, Prajwal!
```

## Symbols meet Procs
In Ruby method name can be pass around as Symbols. Well you can convert a Symbol to a block to pass in a method/callback where a block is needed.

```
my_arr = ["1","2","3","4"]

my_arr.collect!(&:to_i)

puts my_arr

>> outs => 1 2 3 4 in seperate lines.
```