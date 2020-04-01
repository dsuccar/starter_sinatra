class Director < ActiveRecord::Base
    has_many :agents
    has_many :actors, through: :agents
end