class BaseSerializer < ActiveModel::Serializer
  embed :ids, include: true
end
