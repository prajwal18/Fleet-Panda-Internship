# Block
A Ruby block is just a bit of code that can be executed. It can be written using either `do`...`end` or using curly braces `{}`.
> Like so
```
[1,2,3].each do |num|
    puts num
end
```
```
[1,2,3].each { |num| puts num }
```
Blocks can be passed in as argument to method such as `.each`, `.times` to be executed once per item/iteration.

## Collect method
`.collect` method takes a block as an argument and evaluates the expression inside the block and applies the result to every element in the array.

> Example ( *! is used to mutate the array* )

```
my_arr = [1,2,3,4,5]

my_arr.collect! { |num| num**2 }
puts my_arr

>> outs => 1 4 9 16 25 on seperate lines
```

## Learning to Yield
Why do some methods accept a block and others do not? 

It's because methods that accept blocks have a way of transfering control from the calling method to the block and back again. We can build this into the method we define by using the yield keyword.

> Example

```
def block_test
  puts "We're in the method!"
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }

>> outs =>
    We're in the method!
    We're in the block!
    We're back in the method!
```
## Yielding with Parameters

```
def yield_name(name)
  puts "Hello you are inside the yield_name function"
  yield(name)
  puts "Hello you are back inside the yield_name function"
end
```

This function has a yield statement inside which means that we can supply a block that will be used in place of the yeild. 

The function also calls yeild with an argument. This argument will be passed as an argument to the block that we supply to the method. The arguments can be accessed in the block using placeholders we can specify between `|...|`

```
yield_name("Prajwal") { |name| puts "Inside block, #{name}" }

>> outs => Hello you are inside the yield_name function
           Inside block, Prajwal
           Hello you are back inside the yield_name function
```
