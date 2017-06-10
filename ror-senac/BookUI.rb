require_relative './BookManager'

class BookUI

  def initialize
    @book_manager = BookManager.new
    @menu = <<-MENU
            1. Cadastrar
            2. Listar
            3. Pesquisar
            4. Remover
            5. Sair
           MENU
  end

  def show_options
    puts @menu
  end

  def add
      puts "Insira título do livro:"
      title = gets.chomp
      puts "Insira o ano de publicação:"
      publication_year = gets.chomp.to_i
      
      book = Book.new(title, publication_year)
      @book_manager.add(book)
      puts "Livro cadastrado consucesso:"
  end

  def list_titles
    books = @book_manager.list_titles
    books.each { |book| puts book.title }
  end

  def search(title)
    result = @book_manager.search(title)
    puts (result.nil?) ? "Livro não encontrado" : "#{result}"
  end

  def remove(title)
    result = @book_manager.search(title)
    if result.nil? 
      puts "Livro não encontrado"
    else
      @book_manager.remove(result.title)
      puts "Livro removido: #{result.title}"
    end
  end

  

end