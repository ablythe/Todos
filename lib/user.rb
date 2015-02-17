class User < ActiveRecord::Base
has_many :tasks, through: :lists
end