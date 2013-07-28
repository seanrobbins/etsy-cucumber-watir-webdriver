class HomePage < PageObject

  def open
    @browser.goto "http://etsy.com"
  end

  def selectTreasury
    @browser.span(:text, "Treasury").click
	
    treasuryPage = TreasuryPage.new(@browser)
    return treasuryPage
  end
  
end
