
BEGIN {

class Array
	def one_of_each (lists, elements, &block)
		if lists.size == 1
			lists[0].each do |item|
				elements.push item
				yield elements
				elements.pop
			end
		elsif lists.size > 1
			list = lists.pop
			list.each do |item|
				elements.push item
				one_of_each(lists, elements, &block)
				elements.pop
			end
			lists.push list
		end
	end
end
}