# PDF Printing in Chrome/Firefox isn't pixel-perfect.

### What you need to reproduce
- ruby
- prawn.rb
- a 2515px wide (300dpi) image  (provided by repository)
- bundler

### Install
Install using `bundle install`

### Running

Run `ruby pdf_gen.rb` to create the PDF (it's stored as output.pdf in current folder).
Print the PDF 2 times (once with Chrome Printer Dialog & once with the system one). The result should be different (in my case it is).


