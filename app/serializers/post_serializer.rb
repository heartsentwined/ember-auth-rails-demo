class PostSerializer < BaseSerializer
  attributes :id, :title, :param

  def param
    "#{id}-#{title.dasherize.parameterize}"
  end
end
