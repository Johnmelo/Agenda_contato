$lista=[]

class Contato
  def add_contato
    puts("Nome do contato:")
    name=gets
    puts("e-mail:")
    mail=gets
    puts("Numero:")
    number=gets
    filenames = File.new("filenames.txt","a+")
    filenames.puts("NOME:#{name}","EMAIL:#{mail}","NUMERO:#{number}")
    filenames.puts(puts)
    filenames.close
    @id=["NOME: #{name}EMAIL: #{mail}NUMERO: #{number}"]
    $lista+=@id
    return Main_agenda.new
  end
  def edit_contato
    puts("")
    File.open("filenames.txt") do |filenames|
      filenames.each_line do |linha|
	puts linha
      end
      puts("")
    end
    puts("Editar este contato? 1-SIM 2-NAO")
    catcher=gets
    catcher=catcher.to_i
    if cather==1
      puts("Nome do contato:")
      filenames=File.new("filenames.txt","a")
      name=gets
      filenames.puts(name)
      puts("e-mail:")
      mail=gets
      filenames.puts(mail)
      puts("Numero:")
      number=gets
      filenames.puts(number)
      filenames.close
      return Main_agenda.new
    end
    if catcher==2
      return Main_agenda.new
    end
  end
  def see_contato
    puts $lista
    puts " "
    return Main_agenda.new
  end
end
#calma...to desenrolando :P
