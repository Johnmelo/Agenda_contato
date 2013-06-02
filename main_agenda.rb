require_relative 'Interaction.rb'

#class Main_agenda  
def menu
  system("clear")
  puts("##############################################################")
  puts("##      _______                                            ###")
  puts("##     /      /  #### #### #### ##   #  ####  ####         ###")
  puts("##    /  :P  /   #### # ## ##   # #  #  #   # ####         ###")
  puts("##   /______/    #  # #### #### #   ##  ####  #  #         ###")
  puts("##                                                         ###")
  puts("##############################################################")
  puts("## 1-VER CONTATOS  2-ADICIONAR CONTATOS  3-EDITAR CONTATOS ###")
  puts("##                                                4-SAIR   ###")
  puts("##############################################################")
  x = gets
  x=x.to_i
  if x == 1
    user=Interaction.new
    user.see_contato
  end
  if x == 2
    user=Interaction.new
    user.add_contato
  end
  if x == 3
    user=Interaction.new
    user.edit_contato
  end
  if x==4
    exit
  end
end

x=0
while(x!=4)
  menu
end