class User < ApplicationRecord
    has_many :tasks
    has_many :projects, through: :tasks
    has_many :projects
    has_many :ownerships, through: :tasks, source: :project
end
