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

## Who's on Second?

In Ruby, `def who?` is an acceptable method definition.  Most languages don't let you use a question mark in a method name, but Ruby encourages the practice to denote methods that only return a `true` or a `false` value and which doesn't do anything surprising like updating a database or interacting with a user.
