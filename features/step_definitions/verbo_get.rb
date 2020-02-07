Dado("que eu faça um GET") do                                                
  #describe 'fazer uma requisicão' do - comando utilizado via rspec 
end                                                                          
                                                                             
Quando("eu executar tipo de comando GET") do                                 
  @melhor_opcao = RegisterService.get '/contacts/'
end                                                                          
                                                                             
Entao("o retorno trara todos os registros") do                               
  puts @melhor_opcao
end                        
