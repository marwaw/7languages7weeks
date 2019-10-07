### Day 1

#### Find:
* [The Ruby API](https://ruby-doc.org/core-2.6.5/)
* [The free online version of Programming Ruby: The Pragmatic Programmer’s Guide](https://ruby-doc.com/docs/ProgrammingRuby/)
* A method that substitutes part of a string `sub`
* [Information about Ruby’s regular expressions](https://www.rubyguides.com/2015/06/ruby-regex/)
* [Information about Ruby’s ranges](https://www.rubyguides.com/2016/06/ruby-ranges-how-do-they-work/)

#### Do (command used in `irb`):
* Print the string “Hello, world.”: ```puts 'Hello, world.'```
* For the string “Hello, Ruby,” find the index of the word “Ruby.” `'Hello, Ruby,'.index (/Ruby./)` or `'Hello, Ruby,' =~ /Ruby./`. Fun fact: returns 7 even there is no `Ruby.` in `Hello, Ruby,`

* Print your name ten times.
```
for i in 0..9
   puts 'your name'
end
```

* Print the string “This is sentence number 1,” where the number 1 changes from 1 to 10.
```
for i in 1..10
   puts "This is sentence number #{i}"
end
```

* Run a Ruby program from a file.
* Bonus problem: If you’re feeling the need for a little more, write a program that picks a random number. Let a player guess the number, telling the player whether the guess is too low or too high.
(Hint: rand(10) will generate a random number from 0 to 9, and gets will read a string from the keyboard that you can translate to an integer.)

Run: `ruby guess_number.rb`