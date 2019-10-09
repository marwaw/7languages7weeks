### Day 2

#### Find:

* Find out how to access files with and without code blocks. What is the benefit of the code block?
```
file = File.open(filename)
file_data = file.read
file.close
```

or

```
file_data = File.open(filename).split
```

or

```
File.foreach(filename) {|line| puts line}
```
Version with code block allows to read file line by line without reading the whole file into memory.


* How would you translate a hash to an array? Can you translate arrays to hashes?
  * hash -> array: `to_a` - `Converts hash to a nested array of [ key, value ] arrays.`
  * array -> hash: `to_h` - works with array of [key, value] pairs 
`to_h {block}` - `If a block is given, the results of the block on each element of the array will be used as pairs.`

* Can you iterate through a hash?
`hash.each`, `hash.each_key`, `hash.each_value`

* You can use Ruby arrays as stacks. What other common data structures do arrays support?


#### Do:

* Print the contents of an array of sixteen numbers, four numbers at a time, using just each. Now, do the same with each_slice in Enumerable.

  * TODO print with `each`
  * 
```
a = *(1..16)
a.each_slice(4) {|group| print group}
```


* The Tree class was interesting, but it did not allow you to specify a new tree with a clean user interface. Let the initializer accept a nested structure of hashes. You should be able to specify a tree like this: 
{
	’grandpa’ => { 
		’dad’ => {
			’child 1’ => {}, 
			’child 2’ => {} 
		}, 
		’uncle’ => {
			’child 3’ => {}, 
			’child 4’ => {} 
		} 
	}
}.

`advanced_tree.rb`

* Write a simple grep that will print the lines of a file having any occurrences of a phrase anywhere in that line. You will need to do a simple regular expression match and read lines from a file. (This is surprisingly simple in Ruby.) If you want, include line numbers. 

```
def grep(filename, phrase)
	File.foreach(filename).with_index {|line, index| puts "#{index} #{line}" if line.include? phrase}
end
```