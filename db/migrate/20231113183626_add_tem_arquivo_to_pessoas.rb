class AddTemArquivoToPessoas < ActiveRecord::Migration[7.1]
  def change
    add_column :pessoas, :tem_arquivo, :boolean
  end
end
