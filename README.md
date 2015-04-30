# Code Curious

I will be posting a series of articles exploring programming, assuming no previous experience on the reader's part. My hope is that a reader will be able to use this as a [primer](http://en.wikipedia.org/wiki/Primer_(textbook)), a seed of how to start programming. I do not expect to be exhaustive, and there will be much googling on the part of the reader, but hopefully I can mark a path through the overgrown jungle of information out there.

I will use [Ruby](http://en.wikipedia.org/wiki/Ruby_(programming_language)) for all examples, unless some contrasting code is necessary.

## Starting with an example

There is a rather common "how do you think" interview question (that isn't actually used that much anymore) called FizzBuzz:

```text
For numbers 1 through 100,

If the number is divisible by 3 print Fizz;
If the number is divisible by 5 print Buzz;
If the number is divisible by 3 and 5 (15) print FizzBuzz;
Else, print the number.
```

There are various "fun" ways to use different language tricks to solve this, but one simple way is to pretty literally translate this to ruby:


```ruby
def fizzbuzz(number)
  if number %3 == 0 && number %5 == 0
    puts "FizzBuzz"
  elsif number %3==0
    puts "Buzz"
  elsif number%5 == 0
    puts "Fizz"
  else
    puts number
  end
end

progression = (1..100)
progression.each{|num| fizzbuzz(num)}
```

There are many ways to improve on this (and even more just fun ways to do it, even if they aren't "improved").

Also, there is a bug.

Can you look at this and find the bug?  Then, try to find ways to improve it?

Some notes:

- the "(1..100)" is a range (http://ruby-doc.org/core-2.1.5/Range.html), just a short way of listing all the numbers from 1 to 100.

- the 'number % <whatever> == 0' is finding the [modulus](http://en.wikipedia.org/wiki/Modulo_operation), just the remainder of dividing one number into another. For example, '11%3' would return 2. By checking if the result of this operation equals 0, we see if a given number is a multiple of 3 or 5. This use of '%' is pretty common in a number of programming languages, and in Ruby it can also be written as '11.modulo(3)'
