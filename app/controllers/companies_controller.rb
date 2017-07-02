class CompaniesController < ApplicationController

  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_client!
  before_action :set_client

  def index
    @client_info = Client.includes(:companies).where(id: current_client.id)
  end

  def show
  end

  def new
    @company = Company.new
  end

  def edit
  end

  def create
    # plan = Plan.find_by(taco_id: params[:plan])
    # @company = Company.new(company_name: params[:company_name], domain: params[:domain], plan_id: plan.id)
    # @company.client_id = @client.id
    @company = Company.new(company_params)
    @company.client_id = @client.id
    respond_to do |format|
      if @company.save
        format.html { redirect_to @company, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:company_name, :domain, :plan_id)
  end

  def set_client
    @client = current_client
  end
  
end
