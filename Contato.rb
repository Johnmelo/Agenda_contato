$lista=[]
$id=0
class Contato
  def initialize(nome,email,phone)
    @name=nome
    @mail=email
    @phone=phone
    @id=[$id,"NOME:#{@name}","EMAIL:#{@mail}","NUMERO:#{@phone}"]
    $lista[$id]+=@id
    $id+=1
    return Main_agenda.new
  end
end

#calma...to desenrolando :P