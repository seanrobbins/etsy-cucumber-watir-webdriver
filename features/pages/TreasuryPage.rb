class TreasuryPage < PageObject

  def chooseFirstGallery
    @browser.div(:class => "item-treasury-info-box", :index => 0).click
  end

  def verifyTreasuryPageResults
    @browser.div(:class, /primary index/).should exist
  end
end