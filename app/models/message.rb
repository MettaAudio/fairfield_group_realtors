class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name,
                :address1,
                :address2,
                :city,
                :state,
                :zipcode,
                :email,
                :phone,
                :cell,
                :interest,
                :location,
                :price_range,
                :key_factors,
                :comment

  validates :name, :email, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end