class Contato
  def add_contato
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
  end
end
#calma...to desenrolando :P