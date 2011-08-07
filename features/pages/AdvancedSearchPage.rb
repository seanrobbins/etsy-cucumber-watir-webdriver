class AdvancedSearchPage < PageObject

  def open
    @browser.goto "http://www.etsy.com/search_advanced.php"
  end

  def goToSection section
    openPage
    @browser.select(:class, "handmade").set(section)
  end

  def search search_term
    @browser.text_field(:id, "search-query").set search_term
    @browser.button(:id, "search_submit").click
	results = SearchResultsPage.new(@browser)
	
	return results
  end

  def subCategory sub_category
    @browser.select_list(:class, "handmade").select(sub_category)
  end

end