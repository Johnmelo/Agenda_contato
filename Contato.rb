$lista=[]
$id=0
class Contato
  def add_contato
    puts("Nome do contato:")
    name=gets
    puts("e-mail:")
    mail=gets
    puts("Numero:")
    number=gets
<<<<<<< HEAD
    @id=[$id,"NOME:#{name}","EMAIL:#{mail}","NUMERO:#{number}"]
=======
    filenames = File.new("filenames.txt","a+")
    filenames.puts("NOME:#{name}","EMAIL:#{mail}","NUMERO:#{number}")
    filenames.puts(puts)
    filenames.close
    @id=["NOME: #{name}EMAIL: #{mail}NUMERO: #{number}"]
>>>>>>> d26e70ebc04a8674cc5de8b8be83397afd20cf88
    $lista+=@id
    $id+=1
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
    @id=[catcher,"NOME:#{name}","EMAIL:#{mail}","NUMERO:#{number}"]
    $lista[catcher]=@id
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
