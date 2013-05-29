require_relative 'Contato.rb'
class Main_agenda
  def initialize
    puts("##############################################################")
    puts("##      _______                                            ###")
    puts("##     /      /  #### #### #### ##   #  ####  ####         ###")
    puts("##    /  :P  /   #### # ## ##   # #  #  #   # ####         ###")
    puts("##   /______/    #  # #### #### #   ##  ####  #  #         ###")
    puts("##                                                         ###")
    puts("##############################################################")
    puts("## 1-VER CONTATOS  2-ADICIONAR CONTATOS  3-EDITAR CONTATOS ###")
    puts("##############################################################")
    x = gets
    x=x.to_i
    if x == 1
      puts("aguarde1 em processo...")
    end
    if x == 2
      user=Contato.new
      user.add_contato
    end
    if x == 3
      puts("aguarde3 em processo...")
    end
  end
end

Main_agenda.new