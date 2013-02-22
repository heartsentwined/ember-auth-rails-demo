class UserSerializer < BaseSerializer
  attributes :id, :email, :param

  def param
    namePortion = email.split('@').first
    "#{id}-#{namePortion.dasherize.parameterize}"
  end
end
