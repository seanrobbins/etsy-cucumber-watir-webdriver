class BuyPage < PageObject

  def selectTreasury
    @browser.link(:id, "treasury-panel-button").click
	
	treasuryPage = TreasuryPage.new(@browser)
	return treasuryPage
  end

end