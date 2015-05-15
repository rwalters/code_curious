# Analyze FizzBuzz

Let's look at the code from the FizzBuzz example.  First, the bug I mentioned.

## Bug Hunting

Sometimes, bugs are in how you write the code.  You divided when you meant to multiply, or you left out a comma.  Other times, the bug is in how you read the instructions.

### Bugs Aren't just Code

What we were supposed to do:

```text
For numbers 1 through 100,

If the number is divisible by 3 print Fizz;
If the number is divisible by 5 print Buzz;
If the number is divisible by 3 and 5 (15) print FizzBuzz;
Else, print the number.
```

Do we step through the numbers from 1 through 100? Looks good:

```ruby
progression = (1..100)
progression.each{|num| fizzbuzz(num)}
```

If the number is divisible by 3, do we print 'Fizz'? Oops:

```ruby
  elsif number %3==0
    puts "Buzz"
```

We got the output for 3 and 5 switched. Fix that, and here is the code we have now:

```ruby
def fizzbuzz(number)
  if number %3 == 0 && number %5 == 0
    puts "FizzBuzz"
  elsif number %3==0
    puts "Fizz"
  elsif number%5 == 0
    puts "Buzz"
  else
    puts number
  end
end

progression = (1..100)
progression.each{|num| fizzbuzz(num)}
```

So...now what does this all actually _mean_?

## Defining Methods

That first line? With 'def'? It's defining a [method](http://en.wikipedia.org/wiki/Method_%28computer_programming%29). Basically, it's one way to package up code.  Ruby is an [Object-Oriented Language](http://en.wikipedia.org/wiki/Object-oriented_programming), so the methods are most often associated with [classes](http://en.wikipedia.org/wiki/Class-based_programming) or [objects](http://en.wikipedia.org/wiki/Instance_(computer_science)).  There is a lot of information at those links, so you may wish to come back around and read them later.

### Parameters and Variables

The first line doesn't just name a chunk of code. It contains a [parameter](http://en.wikipedia.org/wiki/Parameter_(computer_programming)), a named piece of data being passed into the method.  Depending on the language and how the data was passed in, that piece of data [may maintain a connection to the place from which the method was called](http://en.wikipedia.org/wiki/Evaluation_strategy#Call_by_reference) and actually change the piece of data that was passed in as it exists outside the method.  Other times, the method [will make its own copy of that data to use](http://en.wikipedia.org/wiki/Evaluation_strategy#Call_by_value), leaving anything outside the method untouched.

Other pieces of data are called [variables](http://en.wikipedia.org/wiki/Variable_(computer_science)). We can change `fizzbuzz` to use a variable as so:

```ruby
def fizzbuzz(number)
  string_to_output = ""

  if number %3 == 0 && number %5 == 0
    string_to_output = "FizzBuzz"
  elsif number %3==0
    string_to_output = "Fizz"
  elsif number%5 == 0
    string_to_output = "Buzz"
  else
    string_to_output = number.to_s
  end

  puts string_to_output
end
```

This will set our new variable `string_to_output` to "Fizz", "Buzz", "FizzBuzz", or a [string](http://en.wikipedia.org/wiki/String_(computer_science)) representation [of the number](http://ruby-doc.org/core-2.2.1/Fixnum.html#method-i-to_s) depending on our `if` statements. We then output that to the screen using `puts`.

I had to call `.to_s` on our number before assigning to our new variable. This is because we expect the data passed into `fizzbuzz` to be a number.  We have a number of [types of data available to us in Ruby](http://ruby-doc.com/docs/ProgrammingRuby/html/tut_stdtypes.html), including the two we use in our method: [Fixnum](http://ruby-doc.org/core-2.2.2/Fixnum.html) and [String](http://ruby-doc.org/core-2.2.0/String.html). Fixnum holds [integer](http://ruby-doc.org/core-2.2.2/Integer.html) values up to a certain maximum<sup>[1](#footnote_1)</sup>

## Who's on Second?

In Ruby, `def who?` is an acceptable method definition.  Most languages don't let you use a question mark in a method name, but Ruby encourages the practice to denote methods that only return a `true` or a `false` value and which doesn't do anything surprising like updating a database or interacting with a user.

------

<a name="footnote_1">1</a>: This maximum is determined by the computer you are on, but most recent computers are '64 bit' processors and would allow up to 4611686018427387903 before converting to a Bignum.
