require_relative 'Contato.rb'

class Interaction
  def add_contato
    puts("Nome do contato:")
    name=gets
    puts("e-mail:")
    mail=gets
    puts("Numero:")
    number=gets
    Contato.new($id,name,mail,number)
    return Main_agenda.new
  end
  def edit_contato
    $lista.each do |bloco|
      puts " "
      puts bloco
    end
    puts "selecine o id do contato a ser editado:"
    catcher=gets
    catcher=catcher.to_i
    puts " "
    puts("#############################################################")
    puts("##                                                         ##")
    puts("##  1-EDIT NOME 2-EDIT EMAIL 3-EDIT NUMBER 4-EDIT CONTATO  ##")
    puts("##                                                         ##")
    puts("#############################################################")
    choice=gets
    choice=choice.to_i
    if choice == 1
      puts "NOME:"
      name=gets
      Contato.edit_name.(catcher,name)
    end
    if choice == 2
      puts "EMAIL:"
      mail=gets
      .edit_mail(catcher,mail)
    end
    if choice == 3
      puts "NUMERO:"
      number=gets
      .edit_phone(catcher,number)
    end
    Contato.new(catcher,name,mail,number)
    return Main_agenda.new
  end
  def see_contato
     $lista.each do |bloco|
      puts " "
      puts bloco
    end
    return Main_agenda.new
  end
end
#calma...to desenrolando :P