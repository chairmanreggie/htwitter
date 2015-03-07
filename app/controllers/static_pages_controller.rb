class StaticPagesController < ApplicationController
	def main_page
		@page_title = "main page"
	end

	def test_page
		@page_title = "test page"
	end
end
