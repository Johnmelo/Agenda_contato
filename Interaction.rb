require_relative 'Contact_list.rb'
require_relative 'Contato.rb'
require_relative 'Screen.rb'
class Interaction 
  def add_contato
    control = 0
    while control!=2
      system("clear")
      puts("CONTACT NAME:")
      name=gets
      puts("E-MAIL:")
      mail=gets
      puts("NUMBER:")
      number=gets
      Contact_list.new.add_contact("NAME: #{name.chomp!}","E-MAIL: #{mail.chomp!}","NUMBER: #{number.chomp!}")
      Screen.new.screen_add
      control=gets
      control = control.to_i
      if control!=1
	control = 2
      end
    end
    see_contato
  end
  
  def edit_contato
      choice=-1
      while choice<0||choice>3
	catcher=-1
	while catcher<0||catcher>Contato.cont-1
	  system("clear")
	  Contact_list.see
	  puts "SELECT CONTACT ID:"
	  catcher=gets
	  catcher=catcher.to_i
	end
	puts " "
	Screen.new.screen_edit
	choice=gets
	choice=choice.to_i
	if choice == 1
	  puts "ENTER NEW NAME:"
	  name=gets
	  Contact_list.edit(catcher,choice,name)
	end
	if choice == 2
	  puts "ENTER NEW E-MAIL:"
	  mail=gets
	  Contact_list.edit(catcher,choice,mail)
	end
	if choice == 3
	  puts "ENTER NEW NUMBER:"
	  number=gets
	  Contact_list.edit(catcher,choice,number)
	end
      end
      see_contato
  end
  
  def see_contato
    control = 0
    while control!=2
      system("clear")
      Contact_list.see
      Screen.new.screen_see
      control=gets
      control = control.to_i
      if control == 1
	edit_contato
      end
    end
  end
end
#calma...to desenrolando :P