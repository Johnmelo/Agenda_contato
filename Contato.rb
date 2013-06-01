require_relative 'Contact_list.rb'

class Contato
  @@id=0
  def initialize(id,name,mail,phone)
    contato=Contact_list.new("ID:#{@@id}","NOME:#{name}","EMAIL:#{mail}","NUMERO:#{phone}")
    @@id+=1
  end
end

#calma...to desenrolando :P