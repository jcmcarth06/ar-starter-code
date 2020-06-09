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