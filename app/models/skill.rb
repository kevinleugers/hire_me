class Skill
  include Mongoid::Document

  has_and_belongs_to_many :jobs

  field :name, :type => String
end
