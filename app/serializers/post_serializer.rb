class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :created_at, :updated_at
  attribute :username, if: -> { instance_options[:username].is_a?(TrueClass) }

  def username
    object.user.name
  end
end
