module Haml::Filters::Config
  include Haml::Filters::Base

  def render(text)
    Haml::Helpers.preserve(Haml::Helpers.html_escape(text))
  end
end