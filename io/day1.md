### Day 1

#### Find:

* some Io example problems
* An Io community that will answer questions
* A style guide with Io idioms

#### Answer:

* Evaluate 1 + 1 and then 1 + "one". Is Io strongly typed or weakly typed? Support your answer with code.
* Is 0 true or false? What about the empty string? Is nil true or false? Support your answer with code.
  * 0, "" - true
  ```
    Io> 1 and ""
    ==> true
  ```

  ```
    Io> 1 and 0
    ==> true
  ```
  * nil - false
  ```
    Io> 1 and nil
    ==> false
  ```
* How can you tell what slots a prototype supports?
* What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? When would you use each one?
  * ::=     Creates slot, creates setter, assigns value
  * :=  Creates slot, assigns value
  * =   Assigns value to slot if it exists, otherwise raises exception 

#### Do:

* Run an Io program from a file.
* Execute the code in a slot given its name.

Spend a little time playing with slots and prototypes. Make sure you understand how prototypes work. 