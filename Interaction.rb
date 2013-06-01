require_relative 'Contato.rb'

class Interaction
  def add_contato
    puts("Nome do contato:")
    name=gets
    puts("e-mail:")
    mail=gets
    puts("Numero:")
    number=gets
    Contato.new.contato($id,name,mail,number)
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
    puts("################################################")
    puts("##                                            ##")
    puts("##  1-EDIT NOME  2-EDIT EMAIL  3-EDIT NUMBER  ##")
    puts("##                                            ##")
    puts("################################################")
    choice=gets
    choice=choice.to_i
    if choice == 1
      puts "NOME:"
      name=gets
      Contato.new.edit_name(catcher,name)
    end
    if choice == 2
      puts "EMAIL:"
      mail=gets
      Contato.new.edit_mail(catcher,mail)
    end
    if choice == 3
      puts "NUMERO:"
      number=gets
      Contato.new.edit_phone(catcher,number)
    end
  end
  def see_contato
     $lista.each do |bloco|
      puts " "
      puts bloco
    end
  end
end
#calma...to desenrolando :P