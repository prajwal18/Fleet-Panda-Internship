## Hash
    A hash is a data structure that stores items by associated keys
### Different ways to create a Hash
Hash literal notation
```
pets = { "Tommy" => "dog", "Bobby" => "cat" }
```
Hash constructor notation
```
pets = Hash.new
pets["Tommy"] = "dog"
pets["Bobby"] = "cat" 
```
### Nil a formal introduction
What happens when you try to access a key that does not exist?
```
In other languages you might get an error but not in Ruby, instead you get a nil value when you try to do that in ruby.
```
```
pets = { "Tommy" => "dog", "Bobby" => "cat" }
pets["Tommy"] # This will return "dog"
pets["Sammy"] # This will return nil
```
* Nil is a special value that denotes the absence of a value.

### Setting you own default
You don't have to settle for `nil` as your default value. Instead you can specify your own default value.

Creating Hash using `Hash constructor notation`, you can specify a default like so:

`
fruit_count = Hash.new(0)
fruit_count["Apple"] = 11
fruit_count["Mango"] = 3
fruit_count["Banana"] = 7

fruit_count["Apple"] => will output 11
fruit_count["Guava"] => will output 0
`

### Using Symbols as keys *The prefered way*
We can certainly use strings as Hash's key but the prefered `Rubyist’s` approach would be to use **Symbols**


### New changes to the Hash since v1.9
Hash has change a bit since Ruby `v1.9`. It's syntax has changed, in the new syntax values are assigned to keys using colon `:` instead of the rocket `=>`.
> The two changes are:
* You don't need the hash rocket anymore, it has been replaced by the `:`
* You no longer need to put colon in the begining of a Symbol.
> Example
```
movies = {
  mission_impossible: "Mission Impossible",
  jackass: "JackAss",
  fast_n_furious: "Fast and Furious"
}
```

### Filtering/Selecting in Hash
    What do we do if we want to grab values from a hash that meet a specific criteria?

    >> It's simple we use the .select method and pass in a evaluated to either true or false

