class TodoList < ActiveRecord::Base
  has_many :item
end
