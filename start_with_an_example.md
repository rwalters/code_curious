# Starting With an Example

There is a rather common "how do you think" interview question (that isn't actually used that much anymore) called FizzBuzz:

## Instructions

This is a simple example, but all "tech documents" and "use cases" boil down to a series of instructions. Programmers get to translate those human readable instructions into computer readable code.

```text
For numbers 1 through 100,

If the number is divisible by 3 print Fizz;
If the number is divisible by 5 print Buzz;
If the number is divisible by 3 and 5 (15) print FizzBuzz;
Else, print the number.
```

There are various "fun" ways to use different language tricks to solve this, but one simple way is to pretty literally translate this to ruby.

## One Simple Implementation

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

### A Bug?

Can you look at this and find the bug?  Then, try to find ways to improve it?

## Some Notes

- The `(1..100)` is [a range](http://ruby-doc.org/core-2.1.5/Range.html), just a short way of listing all the numbers from 1 to 100.

- The `number % <whatever> == 0` is finding the [modulus](http://en.wikipedia.org/wiki/Modulo_operation), just the remainder of dividing one number into another. For example, `11%3` would return 2. By checking if the result of this operation equals 0, we see if a given number is a multiple of 3 or 5. This use of `%` is pretty common in a number of programming languages, and in Ruby it can also be written as `11.modulo(3)`.
