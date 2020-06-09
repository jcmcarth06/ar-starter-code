# ActiveRecord Starter Code

## Instructions 
- Fork and clone this repo 
- Go through each file and practice explaining what is happening in every file
- Create migrations for two models:
    - A `users` table with the following attributes: name, email, age
    - A `tasks` table with the following attributes: title, description, category, done (this should be a boolean value), due_date
    - A task should also belong_to a user 
- Set up the two models (these are files that should be added under the app folder). 
- Use the command `rake console` to start a pry session. Practice using the following commands with Users and Tasks: 
  - `.new` 
  - `.create`
  - `.update`
  - `.save`
  - `.destroy`
  - `.find_by`
- Pay attention to the return values and use the [documentation](https://guides.rubyonrails.org/active_record_basics.html) to find the many different ways you can use the same method. 

new branch code

```
~/.../ar-starter-code/ar-starter-code // ♥ > rake console
[1] pry(main)> User.new
=> #<User:0x00007fb718ae4f30 id: nil, name: nil, age: nil, email: nil>
[2] pry(main)> u = User.new
=> #<User:0x00007fb71805fe48 id: nil, name: nil, age: nil, email: nil>
[3] pry(main)> u.name = Jenn
NameError: uninitialized constant Jenn
from (pry):3:in `__pry__'
[4] pry(main)> u.name = "Jenn"
=> "Jenn"
[5] pry(main)> u
=> #<User:0x00007fb71805fe48 id: nil, name: "Jenn", age: nil, email: nil>
[6] pry(main)> u.age = 25
=> 25
[7] pry(main)> k = User.new(name: "Emery", age: 27, email: "emerylumsden@gmail.com") 
=> #<User:0x00007fb7182f87b8 id: nil, name: "Emery", age: 27, email: "emerylumsden@gmail.com">
[8] pry(main)> User.all
=> []
[9] pry(main)> User.all << k
NoMethodError: undefined method `<<' for #<ActiveRecord::Relation []>
from /Users/emerylumsden/.rvm/gems/ruby-2.6.1/gems/activerecord-5.2.4.3/lib/active_record/relation/delegation.rb:125:in `method_missing'
[10] pry(main)> k.save
=> true
[11] pry(main)> u.save
=> true
[12] pry(main)> User.all
=> [#<User:0x00007fb71999f598 id: 1, name: "Emery", age: 27, email: "emerylumsden@gmail.com">,
 #<User:0x00007fb71999d770 id: 2, name: "Jenn", age: 25, email: nil>]
[13] pry(main)> u.update(age:30)
=> true
[14] pry(main)> User.all
=> [#<User:0x00007fb718b71458 id: 1, name: "Emery", age: 27, email: "emerylumsden@gmail.com">,
 #<User:0x00007fb718b71318 id: 2, name: "Jenn", age: 30, email: nil>]
[15] pry(main)> u.update(age:"k")
=> true
[16] pry(main)> u
=> #<User:0x00007fb71805fe48 id: 2, name: "Jenn", age: 0, email: nil>
[17] pry(main)> u.update(age:30)
=> true
[18] pry(main)> u
=> #<User:0x00007fb71805fe48 id: 2, name: "Jenn", age: 30, email: nil>
[19] pry(main)> u.destroy
=> #<User:0x00007fb71805fe48 id: 2, name: "Jenn", age: 30, email: nil>
[20] pry(main)> User.all
=> [#<User:0x00007fb718c03128 id: 1, name: "Emery", age: 27, email: "emerylumsden@gmail.com">]
[21] pry(main)> User.destroy
ArgumentError: wrong number of arguments (given 0, expected 1)
from /Users/emerylumsden/.rvm/gems/ruby-2.6.1/gems/activerecord-5.2.4.3/lib/active_record/persistence.rb:138:in `destroy'
[22] pry(main)> User.destroy(1)
=> #<User:0x00007fb7192296d8 id: 1, name: "Emery", age: 27, email: "emerylumsden@gmail.com">
[23] pry(main)> User.all
=> []
[24] pry(main)> 
```