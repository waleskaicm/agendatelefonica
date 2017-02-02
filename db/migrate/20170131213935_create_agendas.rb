class CreateAgendas < ActiveRecord::Migration[5.0]
  def change
    create_table :agendas do |t|
      t.string :nome
      t.string :contato
      t.string :telefone
      t.string :celular
      t.string :email
      t.string :endereco
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
