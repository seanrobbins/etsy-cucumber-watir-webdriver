class SearchResultsPage < PageObject

  def verifySearchResultsPresent(search_term)
    @browser.h1(:text, /(\d*) items for #{search_term}/).should exist
  end

  def buyFirstItem
    @browser.img(:xpath => "//div[@id='primary']//img", :index => 0).click
    @browser.button(:value, "Add to Cart").click
	
	cart = CartContentsPage.new(@browser)
	return cart
  end
end