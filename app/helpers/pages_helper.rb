module PagesHelper
  def api_key(current_user = nil)
    current_user.nil? ? '[apiKey]' : current_user.api_key
  end

  def token
    '[token]'
  end
end
