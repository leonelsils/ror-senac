require_relative './book'

class BookManager

	def initialize
		@books = []
	end

	def add(book)
		@books << book
	end

	def search(title)
		@books.each do |book|
			return book if book.title == title
		end
		return nil
	end

	def remove(title)
		@books.each do |book|
			@books.delete(book) if book.title == title
		end
		return nil
	end

	def list_titles
		@books
	end

end