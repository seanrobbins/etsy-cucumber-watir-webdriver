class CartContentsPage < PageObject

  def openCart
    @browser.goto("https://www.etsy.com/cart")
  end
  
  def hasItem
    @browser.div(:text, /1 item in your cart/).should exist
  end

  def removeItem
    @browser.link(:title, "Remove listing").click
  end

  def verifyCartIsEmpty
    #Added a wait to avoid rspec '#exist? and #exists? returned different values:' error 
    @browser.div(:id, "empty-cart").wait_until_present
    @browser.div(:id, "empty-cart").should exist
  end

end