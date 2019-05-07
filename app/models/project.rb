class Project < ApplicationRecord
    has_many :tasks
    has_many :users, through: :tasks
    belongs_to :user
    has_many :ownerships, through: :tasks, source: :project
end
