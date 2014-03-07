def image_tag_div(url, options={})
	
	div_options = {:class => "img"}
	caption = options[:caption]
	if options[:div_class]
		div_options.merge!(:class => div_options[:class] + " " + options[:div_class])
	end
	#Clean up custom tags
	options.delete(:div_class)
	options.delete(:caption)

	content_tag :div, div_options do image_tag(url, options) + simple_format(caption) end
end