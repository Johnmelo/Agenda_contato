require_relative 'Contato.rb'
class Main_agenda
  def initialize
    puts("1-VER CONTATOS\n2-ADICIONAR CONTATOS\n3-EDITAR CONTATOS")
    x = gets
    x=x.to_i
    if x == 1
      puts("aguarde1 em processo...")
    end
    if x == 2
      puts("Nome do contato:")
      filenames = File.new("filenames.txt","a")
      name=gets
      filenames.write(name)
      filenames.close
      puts("e-mail:")
      filemails = File.new("filemails.txt","a")
      mail=gets
      filemails.write(mail)
      filemails.close
      puts("Numero:")
      filenumbers =  File.new("filenumbers.txt","a")
      number=gets
      filenumbers.write(number)
      filenumbers.close
      Contato.new(filenames,filemails,filenumbers)
    end
    if x == 3
      puts("aguarde3 em processo...")
    end
  end
end

Main_agenda.new