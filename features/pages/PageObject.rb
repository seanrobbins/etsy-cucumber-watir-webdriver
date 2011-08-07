class PageObject
  include RSpec::Matchers
  
  def initialize browser
    @browser = browser
  end

end