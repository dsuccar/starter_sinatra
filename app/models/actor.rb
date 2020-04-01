class Actor < ActiveRecord::Base
    has_many :agents
    has_many :directors, through: :agents
end