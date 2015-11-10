### Hours in a year:
```ruby
puts 365 * 24
```
### Minutes in a decade:
```ruby
puts 60 * 24 * 365 * 10
```
### My age, in seconds:
```ruby
puts 60 * 60 * 24 * 365 * 27
```
[basic-math.rb](https://github.com/sjones88/phase-0/blob/master/week-4/basic-math.rb)
[defining-variables.rb](https://github.com/sjones88/phase-0/blob/master/week-4/defining-variables.rb)
[simple-string.rb](https://github.com/sjones88/phase-0/blob/master/week-4/simple-string.rb)

### What does puts do?

The 'puts' command takes whatever comes after it and writes it to the screen.

### What is an integer? What is a float?

An integer is a whole number or any number without a decimal. A float is any number with a decimal.

### What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Dividing a float outputs a float, while dividing an integer outputs the nearest integer rounded down.

### How does Ruby handle addition, subtraction, multiplication, and division of numbers?
Ruby handles addition, subtraction, and multiplication of integers and floats the same way a calculator would - Ruby follows the order of operations (parentheses, exponents, multiplication, division, addition, and subtraction, in that order). When dividing integers, Ruby outputs integers and rounds down if there is a remainder. When dividing floats, Ruby outputs a float.

### What is the difference between integers and floats?
Integers are any numbers without decimals. Floats are numbers with decimals.


### What is the difference between integer and float division?
Integer division will always output an integer, even if there is a remainder. If there is a remainder, the output number is always rounded down to the nearest integer. Dividing a float will output a float, even if the divisor or dividend is an integer.


### What are strings? Why and when would you use them?
Strings are sequences of letters, numbers or other characters. You would use strings to handle text or other non-numerical values.


### What are local variables? Why and when would you use them?
Local variables are sequences of numbers or letters that point to a specified number or string. You would use them to avoid having to enter the same information more than once in a program.

### How was this challenge? Did you get a good review of some of the basics?
This challenge provided a nice, gentle review of the material that I learned from codecademy. I found it helpful because I haven't thought about any of that material since the interview for DBC.
