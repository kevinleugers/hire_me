class Company
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :jobs
  has_one :address

  accepts_nested_attributes_for :address

  field :name, type: String

  validates_presence_of :name

  def location
    address.city + ", " + address.state
  end
end
