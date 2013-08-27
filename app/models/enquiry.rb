class Enquiry
  include ActiveModel::Conversion
  include ActiveModel::Validations
  extend ActiveModel::Naming

  attr_accessor :subject, :body

  validates :subject, :presence => true

  def initialize(attributes={})
    attributes.each do |name, value|
      send("#{name}=",value)
    end
  end

  def persisted?
    false
  end

end