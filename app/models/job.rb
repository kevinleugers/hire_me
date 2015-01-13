class Job
  include Mongoid::Document

  belongs_to :user

  field :title, :type => String
  field :description, :type => String
end
