class Address
  include Mongoid::Document

  belongs_to :company

  field :street_address, type: String
  field :city, type: String
  field :state, type: String
  field :zip_code, type: String
end
