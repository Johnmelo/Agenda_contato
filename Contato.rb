require_relative 'Contact_list.rb'

$id=0

class Contato
  def initialize(id,name,mail,phone)
    @id=["ID:#{$id}","NOME:#{name}","EMAIL:#{mail}","NUMERO:#{phone}"]
    Contact_list.new.create(@id)
    $id+=1
  end
end

#calma...to desenrolando :P