class UserSerializer < ActiveModel::Serializer
  attributes :id, :phone, :name, :email, :avatar, :role_id, :created_at, :updated_at, :auth_token
  has_one :setting
end
