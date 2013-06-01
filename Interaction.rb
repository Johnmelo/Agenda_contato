require_relative 'Contato.rb'
require_relative 'Contact_list.rb'
class Interaction 
  def add_contato
    puts("NOME DO CONTATO:")
    name=gets
    puts("E-MAIL:")
    mail=gets
    puts("NUMERO:")
    number=gets
    Contato.new($id,name,mail,number)
  end
  def edit_contato
    $list.each do |bloco|
      puts " "
      puts bloco
    end
    puts "SELECINE O ID DO CONTATO A SER EDITADO:"
    catcher=gets
    catcher=catcher.to_i
    puts " "
    puts("################################################")
    puts("##                                            ##")
    puts("##  1-EDIT NOME  2-EDIT EMAIL  3-EDIT NUMBER  ##")
    puts("##                                            ##")
    puts("################################################")
    choice=gets
    choice=choice.to_i
    if choice == 1
      puts " DIGITE O NOVO NOME:"
      name=gets
      Contact_list.new.edit_list(catcher,choice,name)
    end
    if choice == 2
      puts "DIGITE O NOVO E-MAIL:"
      mail=gets
      Contact_list.new.edit_list(catcher,choice,mail)
    end
    if choice == 3
      puts "DIGITE O NOVO NUMERO:"
      number=gets
      Contact_list.new.edit_list(catcher,choice,number)
    end
  end
  def see_contato
     $list.each do |bloco|
      puts " "
      puts bloco
    end
  end
end
#calma...to desenrolando :P