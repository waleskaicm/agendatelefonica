json.extract! agenda, :id, :nome, :contato, :telefone, :celular, :email, :endereco, :cidade, :estado, :cep, :created_at, :updated_at
json.url agenda_url(agenda, format: :json)