class PessoasController < ApplicationController
    def index
        @pessoas = Pessoa.all
      end
      def new
        @pessoa = Pessoa.new
      end

      def create
        @pessoa = Pessoa.new(pessoa_params)
        @pessoa.tem_arquivo = params[:pessoa][:arquivo].present?
      
        if @pessoa.save
          # Lógica se a pessoa é salva com sucesso
          redirect_to pessoas_path, notice: 'Pessoa adicionada com sucesso!'
        else
          # Lógica se houver problemas ao salvar a pessoa
          render 'new'
        end
      end
      
      private
      
      def pessoa_params
        params.require(:pessoa).permit(:nome, :sobrenome, :idade, :arquivo)
      end
      
end
