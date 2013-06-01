require_relative 'Contact_list.rb'

class Contato
  @@id=0
  def initialize(id,name,mail,phone)
    @file=["ID:#{@@id}","NOME:#{name}","EMAIL:#{mail}","NUMERO:#{phone}"]
    Contact_list.new(@file)
    @@id+=1
  end
end

#calma...to desenrolando :P