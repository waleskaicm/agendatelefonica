class AgendasController < ApplicationController
  before_action :set_agenda, only: [:show, :edit, :update, :destroy]

  # GET /agendas
  # GET /agendas.json
  def index
    @agendas = Agenda.where(["nome LIKE ? OR contato LIKE ? OR telefone LIKE ? OR celular LIKE ?", "%#{params[:pesquisar]}%", "%#{params[:pesquisar]}%", "%#{params[:pesquisar]}%", "%#{params[:pesquisar]}%"]).order('nome ASC')
  end

  # GET /agendas/1
  # GET /agendas/1.json
  def show
  end

  # GET /agendas/new
  def new
    @agenda = Agenda.new
  end

  # GET /agendas/1/edit
  def edit
  end

  # POST /agendas
  # POST /agendas.json
  def create
    @agenda = Agenda.new(agenda_params)

    respond_to do |format|
      if @agenda.save
        format.html { redirect_to agendas_url, notice: 'Contato Criado com Sucesso.' }
        format.json { render :index, status: :created, location: @agenda }
      else
        format.html { render :index }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agendas/1
  # PATCH/PUT /agendas/1.json
  def update
    respond_to do |format|
      if @agenda.update(agenda_params)
        format.html { redirect_to agendas_url, notice: 'Contato Atualizado com Sucesso.' }
        format.json { render :index, status: :ok, location: @agenda }
      else
        format.html { render :edit }
        format.json { render json: @agenda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendas/1
  # DELETE /agendas/1.json
  def destroy
    @agenda.destroy
    respond_to do |format|
      format.html { redirect_to agendas_url, notice: 'Contato Excluído com Sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agenda = Agenda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agenda_params
      params.require(:agenda).permit(:nome, :contato, :telefone, :celular, :email, :endereco, :cidade, :estado, :cep)
    end
end
