# TODO: complete this class

class PaginationHelper

  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @array = collection
    @per_page = items_per_page
    @count = collection.count
  end
  
  # returns the number of items within the entire collection
  def item_count
    @count
  end
	
  # returns the number of pages
  def page_count
    return 1 if @count < @per_page
    return @count / @per_page if @count % @per_page == 0
    return (@count / @per_page )+1 if @count % @per_page > 0
  end
	
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    return -1 if page_index+1 > page_count
    return @per_page if page_index+1 <= page_count && @count % @per_page == 0
    return @per_page if page_index+1 < page_count && @count % @per_page > 0
    return (@count % @per_page) if page_index+1 == page_count && @count % @per_page > 0
  end
	
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
    return -1 if item_index > @count || item_index < 0 || item_index+1 > @count
    return ((item_index+1) / @per_page)-1  if (item_index+1) % @per_page == 0
    return (item_index+1) / @per_page if (item_index+1) % @per_page > 0 
  end
end
