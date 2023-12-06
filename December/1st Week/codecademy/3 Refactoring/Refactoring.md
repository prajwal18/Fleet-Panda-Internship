## A Simpler If
You've seen the Ruby If statement below:
```
if condition
    puts "Hello World"
end
```
Well, that can be re-written as
```
puts "Hello World" if condition
```
## You can do the same with unless.
```
puts "Tonny is a dog." unless tony_is_cat
```

## Ternary expression
Ternary expression are short hand if else statements. It's and even more concise version of the if/else statement.
```
tony_is_dog = false
puts tony_is_dog ? "Tony is a dog": "Tony is a cat"

>> outs => Tony is a cat
```

## The case statement (Switch)
The case satement is the implementation of the switch concept in programming, where a long chain of if/else statements are refactored into a more concise form.
> If/else chain
```
if conditionA
    #
elsif conditionB
    #
elsif conditionC
    #
elsif conditionD
    #
elsif conditionE
    #
elsif conditionF
    #
else
    #
end
```

> Refactoring the if/else chain into something more concise.The Case Statement.
```
case variable
    when conditionA
        #
    when conditionB
        #
    when conditionC
        #
    when conditionD
        #
    when conditionE
        #
    when conditionF
        #
    else
        #
end
```

## Conditional Assignment
We know that we can use the assignment operator `=` to assign a variable a value. But what if we only want to assign a value if it does not already have one.

For this we can use the conditional assignment operator `||=`. It's made up of the or logical operator `||` and the normal assignment operator `=`.
```
favorite_book ||= "Crime and punishment"
puts favorite_book

>> outs => Crime and punishment
```
```
favorite_book = "Meditation"
favorite_book ||= "Cat's Cradle"
puts favorite_book

>> outs => Meditation
```

## Implicit Return
Sometimes we want our methods to return a value. We ask a method to return a value when we need to use it for some operation in some other part of the program. 

But, what if we don't explicitly specify the return statement at the end our methods. What then, will the method still return a value?

In ruby, when you don't explicitly specify the return statement in a function, Ruby will return the value of the last expression.

`
def do_something
    return 5 + 7
end

# This function will return 12
`

`
def do_something(is_late)
    is_fat? 33: 88
end

do_something(true)

>> outs => 33
`

## Sort-Circuit Evaluation
Short circuit evaluation is a concept in programming where the evaluation of a expression stop as soon as the outcome can be determined based on the evaluation of the first segment of the expression.

> Expression on the right of && is not evaluated
```
is_healthy = false
can_run = false

will_participate_in_marathon = is_health && can_run
puts will_participate_in_marathon

>> outs => false
```

> Expression on the right of || is not evaluated
```
is_over_21 = true
likes_to_drink = false

can_drink = is_over_21 || likes_to_drink 

>> outs => true
```

## Putting it all together
```
my_array = [1,2,3,4,5,6,7,8,9,10]
my_array.each { |num| puts num if (num%2).zero? }

>> outs => 2 4 6 8 10
# Each in a new line
```