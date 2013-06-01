$lista=[]
$id=0

class Contato
  def add_contact(id,nome,email,phone)
    @name=nome
    @mail=email
    @phone=phone
    @id=[$id,"NOME:#{@name}","EMAIL:#{@mail}","NUMERO:#{@phone}"]
    $lista[id] = @id
    $id+=1
    return Main_agenda.new
  end
  def edit_name(id,name)
    $lista[id][1] = "NOME:#{name}"
    return Main_agenda.new
  end
  def edit_mail(id,mail)
    $lista[id][2] = "NOME:#{mail}"
    return Main_agenda.new
  end
  def edit_phone
    $lista[id][3] = "NOME:#{phone}"
    return Main_agenda.new
  end
end

#calma...to desenrolando :P