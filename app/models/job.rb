class Job
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :user
  belongs_to :company
  has_and_belongs_to_many :skills

  field :title, :type => String
  field :description, :type => String
  field :applied_date, :type => DateTime
  field :posting_url, :type => String
  field :allows_remote, :type => Boolean
  field :relocation, :type => Boolean
  field :notes, :type => String

  accepts_nested_attributes_for :company
  accepts_nested_attributes_for :skills

  validates_presence_of :title, :description

  def applied?
    !!applied_date
  end
end
