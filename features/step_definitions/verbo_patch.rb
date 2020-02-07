Dado("que eu faça um PATCH no endpoint clientes") do
  #describe ' fazer requisicao' do  
  #context 'para alterar dados com' do -comando utilizado via rspec
  #it 'patch' do - comando utilizado via rspec
  @body_patch = {
    id: "587",
    name: "Dic Teste",
    last_name: "Tester",
    email: "diteste12345678@gmail.com"
    }.to_json
end

Quando("executar o tipo de comando PATCH") do
   @requisicao_patch = RegisterService.patch '/contacts/587', body: @body_patch
end

Entao("alguns campos podem ser editados") do
   puts @requisicao_patch
end