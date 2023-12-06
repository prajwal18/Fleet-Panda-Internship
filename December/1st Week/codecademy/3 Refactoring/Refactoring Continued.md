## Upto Downto
If we know the range of numbers we’d like to include, we can use `.upto` and `.downto.` This is a much more Rubyist solution than trying to use a for loop that stops when a counter variable hits a certain value.
```
95.upto(100) { |num| print num, " " }

>> outs => 95 96 97 98 99 100
```

```
100.downto(95) { |num| print num, " " }

>> outs => 100 99 98 97 96 95
```

## Call and Response
Remember when we said that Symbols are used to reference method name?

Well, `.respond_to?` can take in a symbol as an argument and return true if the object calling it has a method by that name.
```
[1, 2, 3].respond_to?(:push)

>> outs => true
```
```
[1, 2, 3].respond_to?(:to_sym)

>> outs => false
```

## Being Push
Ruby has shortcuts for some common operations. Such as pushing items into an array, appending string and so on.

> Two ways to do the same thing. Pushing items to an array
```
my_array = [1,2,3,4,5]
my_array.push(8)
my_array << 9

puts my_array

>> outs => [1,2,3,4,5,8,9]
```

> Two ways to do the same thing. String concatenation
```
caption = "Hello "
caption += "world, "
caption << "Earth"

puts caption

>> outs => Hello world, Earth
```

## String interpoleation
You can use the + or << operators to add a variable to a string or you could add the variable directly usind interpoleation syntax.

> Using Concatenation
```
puts "Hello" << " World " << 77.to_s

>> outs =>  Hello World 77
```

> Using Interpoleation

```
num = 88
puts "Hello world #{num}"

>> outs => Hello world 88
```