Dado("que eu faça um PUT no endpoint clientes") do
  #describe ' fazer requisicao' do
  #context 'para alterar dados com' do - comando utilizado via rspec
  #it 'put' do - comando utilizado via rspec
  @body_put = {
    id: "587",
    name: "Di Teste",
    last_name: "Teste",
    email: "diteste1234@gmail.com",
    age: "43",
    phone: "1199990002",
    address: "Rua dois tres",
    state: "Minas Gerais",
    city: "Ouro Preto"
  }.to_json
end

Quando("executar o tipo de comando PUT") do
  @requisicao_put = RegisterService.put '/contacts/587', body: @body_put
end

Entao("os registros podem ser editados") do
  puts @requisicao_put.body
end