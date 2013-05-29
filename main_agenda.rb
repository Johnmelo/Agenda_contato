class Main_agenda
  def initialize
    puts("1-VER CONTATOS\n2-ADICIONAR CONTATOS\n3-EDITAR CONTATOS")
    x = gets
    x=x.to_i
    if x == 1
      puts("aguarde1 em processo...")
    end
    if x == 2
      puts("aguarde2 em processo...")
    end
    if x == 3
      puts("aguarde3 em processo...")
    end
  end
end

Main_agenda.new