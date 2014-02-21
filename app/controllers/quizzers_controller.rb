class QuizzersController < ApplicationController
  before_action :set_quizzer, only: [:show, :edit, :update, :destroy]

  # GET /quizzers
  # GET /quizzers.json
  def index
    @quizzers = Quizzer.all
  end

  # GET /quizzers/1
  # GET /quizzers/1.json
  def show
  end

  # GET /quizzers/new
  def new
    @quizzer = Quizzer.new
  end

  # GET /quizzers/1/edit
  def edit
  end

  # POST /quizzers
  # POST /quizzers.json
  def create
    @quizzer = Quizzer.new(quizzer_params)

    respond_to do |format|
      if @quizzer.save
        format.html { redirect_to @quizzer, notice: 'Quizzer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quizzer }
      else
        format.html { render action: 'new' }
        format.json { render json: @quizzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzers/1
  # PATCH/PUT /quizzers/1.json
  def update
    respond_to do |format|
      if @quizzer.update(quizzer_params)
        format.html { redirect_to @quizzer, notice: 'Quizzer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quizzer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzers/1
  # DELETE /quizzers/1.json
  def destroy
    @quizzer.destroy
    respond_to do |format|
      format.html { redirect_to quizzers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quizzer
      @quizzer = Quizzer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quizzer_params
      params[:quizzer]
    end
end
