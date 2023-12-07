## Lambda
Like Procs, Lambdas are also objects. The similarities don't stop there apart form the syntax and a few behavioural quirks they are identicall to Procs.

```
lambda { puts "Hello!" }
```

## Lambda Demo
When we pass the lambda to lambda_demo, the method calls the lambda and executes its code.

```
def lambda_demo(a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(lambda { puts "I'm the lambda!" })

>> outs => I'm the method!
           I'm the lambda!
```

## Lambda vs Procs
If you think that Lambdas and Procs are pretty much the same. Well, you won't be that from the truth, in fact they are pretty much the same with two main differences:
* First, a lambda check the number of arguments pass to it. If an invalid number of arguments are passed in then it throws and error whereas a proc will assign `nil` to the missing arguments.

* Secondly, when a lambda returns it passes control back to the calling function. Whereas, when a proc returns it, it does so immediately without going back to the calling method.

```
def lambda_example
    victor = lambda { return "Hello!" }
    victor.call
    "Hello, lambda example"
end

def proc_example
    my_proc = Proc.new { return "Hello, from proc" }
    my_proc.call
    "Hello, proc example"
end

puts lambda_example
puts proc_example

>> outs => Hello, lambda example 
           Hello, from proc
```

## Passing lambda in place of a block
Just like with procs, we’ll need to put & at the beginning of our lambda name when we pass it to the method, since this will convert the lambda into the block the method expects.
```
cube = lambda { |num| num**3 }
puts[1,2,3].collect!(&cube)

>> outs => 1 8 27 in seperate lines
```

## Quick Review: Blocks, Procs & Lambdas
* A block is a bit of code between `do`...`end`. It can be passed into methods such as `.collect`, `.select` and so on. *It's not an object*

* A proc is a saved block we can use over and over again.

* A lambda is similar to a proc except that it cares about the number of its arguments and it returs to calling method rather than retuning immediately.

