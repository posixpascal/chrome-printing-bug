require 'prawn'
require 'prawn/measurement_extensions'

class PdfTest < Prawn::Document
	def initialize(print_scaling)
		super(
			:page_size => "A4",
			:page_layout => :landscape,
			:margin => 8.mm,
			:print_scaling => print_scaling
		)

		render_image 'example.png'
	end

	def render_image(image_url)
		image image_url, :width => 213.mm
  	end
end


open("output.pdf", "wb") do |f|
	print_scaling = :none # either :none or :AppDefault
	f.write PdfTest.new(print_scaling).render
	puts "Done. Open output.pdf in Chrome -> print -> measure."
	puts "Should be 213mm. I get 205mm. :("
end