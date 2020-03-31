def intersection(list1, list2)
  common_items = []
  list1.each do |item|
    if common_items.include?(item) == false && list2.include?(item) == true
      common_items.push(item)
    end
  end
  return common_items

end
