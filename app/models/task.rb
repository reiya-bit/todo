class Task < ApplicationRecord
  create_table :tasks do |t|
    t.text :titile
    t.text :content
    t.datetime :deadline
    t.timestamps
end
