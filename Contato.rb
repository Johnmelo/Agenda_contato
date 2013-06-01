$lista=[]
$id=0

class Contato
  def contato(id,nome,email,phone)
    @name=nome
    @mail=email
    @phone=phone
    @id=[$id,"NOME:#{@name}","EMAIL:#{@mail}","NUMERO:#{@phone}"]
    $lista[id] = @id
    $id+=1
  end
  def edit_name(id,name)
    $lista[id][1] = "NOME:#{name}"
  end
  def edit_mail(id,mail)
    $lista[id][2] = "NOME:#{mail}"
  end
  def edit_phone
    $lista[id][3] = "NOME:#{phone}"
  end
end

#calma...to desenrolando :P