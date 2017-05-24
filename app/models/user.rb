class User
  def initialize(user_id)
    @user_id = (user_id || 'Basic User (Read Only)')
  end

  attr_reader :user_id
end
