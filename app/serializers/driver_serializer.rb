class DriverSerializer < ActiveModel::Serializer

  attributes :organization_id, :id, :first_name, :last_name, :phone,
             :email, :radius, :is_active
  has_many :vehicles

  def locations

  end

end
