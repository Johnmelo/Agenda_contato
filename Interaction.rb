require_relative 'Contact_list.rb'
require_relative 'Contato.rb'
class Interaction 
  @@id=0
  def add_contato
    control = 0
    while control!=2
      system("clear")
      puts("NOME DO CONTATO:")
      name=gets
      puts("E-MAIL:")
      mail=gets
      puts("NUMERO:")
      number=gets
      Contact_list.new.add_contact("ID: #{@@id}","NAME: #{name.chomp!}","E-MAIL: #{mail.chomp!}","NUMBER: #{number.chomp!}")
      @@id += 1
      puts("################################################")
      puts("##                                            ##")
      puts("##  1-ADD OTHER CONTACT               2-EXIT  ##")
      puts("##                                            ##")
      puts("################################################")
      control=gets
      control = control.to_i
      if control!=1
	control = 2
      end
    end
  end
  
  def edit_contato
    system("clear")
    Contact_list.see
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
      Contact_list.edit(catcher,choice,name)
    end
    if choice == 2
      puts "DIGITE O NOVO E-MAIL:"
      mail=gets
      Contact_list.edit(catcher,choice,mail)
    end
    if choice == 3
      puts "DIGITE O NOVO NUMERO:"
      number=gets
      Contact_list.edit(catcher,choice,number)
    end
  end
  
  def see_contato
    control = 0
    while control!=2
      system("clear")
      Contact_list.see
      puts("################################################")
      puts("##                                            ##")
      puts("##  1-EDIT CONTACT                    2-EXIT  ##")
      puts("##                                            ##")
      puts("################################################")
      control=gets
      control = control.to_i
      if control == 1
	edit_contato
      end
    end
  end
end
#calma...to desenrolando :P