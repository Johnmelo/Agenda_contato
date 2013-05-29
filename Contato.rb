class Contato
  def add_contato
    puts("Nome do contato:")
    filenames = File.new("filenames.txt","w")
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
  def edit_contato
    puts("")
    File.open("filenames.txt") do |filenames|
      filenames.each_line do |linha|
	puts linha
      end
      puts("")
    end
    puts("Editar este contato? 1-SIM 2-NAO")
    cather=gets
    cather=cather.to_i
    if cather==1
    end
    if cather==2
      return Main_agenda.new
    end
  end
end
#calma...to desenrolando :P