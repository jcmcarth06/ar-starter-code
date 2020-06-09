class CreateUser < ActiveRecord::Migration[5.2]
    def change
        create_table :users do |t|
            t.text :name
            t.integer :age
            t.text :email
        end
    end
end
  