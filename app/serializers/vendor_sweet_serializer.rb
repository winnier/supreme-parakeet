class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id, :price

  belongs_to :sweet, serializer: SweetLimitedSerializer
end
