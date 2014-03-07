def link_to_nav(*args, &block)
	options = args[2] || {}
	
	# If page data item equals the target, make tag active
	# This is probably a ruby abomination
	if (options[:page] == current_page.data.page)
		options.merge!(:class => "active")
	end
	#Clean up custom tags
	options.delete(:page)
	
	link_to(*args, &block)
end