require_relative './BookUI'

book_ui = BookUI.new
loop do
	book_ui.show_options
	opcao = gets.chomp.to_i

	case opcao
	when 1
		book_ui.add
	when 2
		book_ui.list_titles
	when 3
		title = gets.chomp
		book_ui.search(title)
	when 4
		title = gets.chomp
		book_ui.remove(title)
	else
		"Opção inválida"
	end
	break if opcao==5
end