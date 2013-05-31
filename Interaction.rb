require_relative
class Interaction
  def add_contato
    puts("Nome do contato:")
    name=gets
    puts("e-mail:")
    mail=gets
    puts("Numero:")
    number=gets
    list=Contato.new(name,mail,number)
    return Main_agenda.new
  end
  def edit_contato
    $lista.each do |bloco|
      puts " "
      print bloco
    end
    puts "selecine o id do contato a ser editado:"
    catcher=gets
    catcher=catcher.to_i
    puts "NOME:"
    name=gets
    puts "EMAIL:"
    mail=gets
    puts "NUMERO:"
    number=gets
    list=Contato.new(name,mail,number)
    return Main_agenda.new
  end
  def see_contato
     $lista.each do |bloco|
      puts " "
      print bloco
    end
    return Main_agenda.new
  end
end
#calma...to desenrolando :P