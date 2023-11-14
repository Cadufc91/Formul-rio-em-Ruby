class PessoasController < ApplicationController
  def index
    @pessoas = Pessoa.all
  end

  def new
    @pessoa = Pessoa.new
  end

  def create
    @pessoa = Pessoa.new(pessoa_params)
    @pessoa.tem_arquivo = params[:pessoa][:arquivo].present? && params[:pessoa][:arquivo].respond_to?(:file?)
  
    if @pessoa.save
      redirect_to pessoas_path, notice: 'Pessoa adicionada com sucesso!'
    else
      render 'new'
    end
  end

  def edit
    @pessoa = Pessoa.find(params[:id])
  end

  def update
    @pessoa = Pessoa.find(params[:id])
    if @pessoa.update(pessoa_params)
      render json: { id: @pessoa.id, rowHtml: render_to_string(partial: 'table_row', locals: { pessoa: @pessoa }) }
    else
      render :edit
    end
  end

  def show
    @pessoa = Pessoa.find(params[:id])
  end

  def destroy
    @pessoa = Pessoa.find(params[:id])
    @pessoa.destroy
  
    respond_to do |format|
      format.html { redirect_to pessoas_url, notice: 'Pessoa removida com sucesso!' }
      format.js   { head :no_content }
    end
  end

  private

  def pessoa_params
    params.require(:pessoa).permit(:nome, :sobrenome, :idade, :arquivo, :sexo)
  end
end
