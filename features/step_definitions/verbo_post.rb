Dado("que eu faça um POST") do
  #it 'post' do - comando utilizado via rspec
    @body = {
        name: "Di Teste",
        last_name: "Teste",
        email: "diteste@gmail.com",
        age: "34",
        phone: "1199990001",
        address: "Rua dois",
        state: "Sao Paulo",
        city: "Sorocaba"
    }.to_json
end

Quando("executar tipo de comando POST") do
    @request = RegisterService.post '/contacts/', body: @body
end

Entao("um novo cliente será cadastrado") do
    puts @request.body
end
