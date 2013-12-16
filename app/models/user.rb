class User
  include Mongoid::Document
  field :first_name, type: String
  field :last_name, type: String
  field :age, type: Float
  field :location, type: String
end
