class HomePage < PageObject

  def open
    @browser.goto "http://etsy.com"
  end

  def goToBuySection
    @browser.link(:text, "Buy").click
	
	buyPage = BuyPage.new(@browser)
	return buyPage
  end
  
end