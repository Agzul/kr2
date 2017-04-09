class FilmCompaniesController < ApplicationController
  before_action :set_film_company, only: [:show, :edit, :update, :destroy]

  # GET /film_companies
  # GET /film_companies.json
  def index
    @film_companies = FilmCompany.all
  end

  # GET /film_companies/1
  # GET /film_companies/1.json
  def show
  end

  # GET /film_companies/new
  def new
    @film_company = FilmCompany.new
  end

  # GET /film_companies/1/edit
  def edit
  end

  # POST /film_companies
  # POST /film_companies.json
  def create
    @film_company = FilmCompany.new(film_company_params)

    respond_to do |format|
      if @film_company.save
        format.html { redirect_to @film_company, notice: 'Film company was successfully created.' }
        format.json { render :show, status: :created, location: @film_company }
      else
        format.html { render :new }
        format.json { render json: @film_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /film_companies/1
  # PATCH/PUT /film_companies/1.json
  def update
    respond_to do |format|
      if @film_company.update(film_company_params)
        format.html { redirect_to @film_company, notice: 'Film company was successfully updated.' }
        format.json { render :show, status: :ok, location: @film_company }
      else
        format.html { render :edit }
        format.json { render json: @film_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /film_companies/1
  # DELETE /film_companies/1.json
  def destroy
    @film_company.destroy
    respond_to do |format|
      format.html { redirect_to film_companies_url, notice: 'Film company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_company
      @film_company = FilmCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_company_params
      params.require(:film_company).permit(:name, :country)
    end
end
