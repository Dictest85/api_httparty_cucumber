Dado("que eu faça um DELETE") do                                             
  #it 'delete' do - comando utilizado via rspec
end                                                                          
                                                                             
Quando("executar tipo de comando DELETE") do                                 
  RegisterService.delete '/contacts/36'
end                                                                          
                                                                             
Entao("um novo cliente será excluído") do                                    
  @melhor_opcao = RegisterService.get '/contacts/36'
  puts @melhor_opcao
end    
