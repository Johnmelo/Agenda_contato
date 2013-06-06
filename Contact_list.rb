require_relative 'Contato.rb'

class Contact_list
 
  @@list=[]
  
  def add_contact(name,mail,phone)
    new_contact = Contato.new(name,mail,phone)
    @@list << new_contact
  end
  
  def Contact_list.see
     @@list.each do |contato|
      puts contato.id
      puts contato.name
      puts contato.mail
      puts contato.phone
      puts " "
    end
  end
  
  def Contact_list.edit(id_c,id_a,change)
    if id_a == 1
      @@list[id_c].name = "NAME: #{change}"
    end
    if id_a == 2
      @@list[id_c].mail = "E-MAIL: #{change}"
    end
    if id_a == 3
      @@list[id_c].phone = "PHONE: #{change}"
    end
  end
end