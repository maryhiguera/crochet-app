class PatternsController < ApplicationController
  def index
    @patterns = Pattern.all
  end

  def show
    @pattern = Pattern.find(params[:id])
  end

  def new
    @pattern = Pattern.new
  end

  def create
    @pattern = Pattern.new(pattern_params)
    if @pattern.save
      redirect_to @pattern, notice: "Pattern was successfully created."
    else
      render :new
    end
  end

  def pattern_params
    params.require(:pattern).permit(:title, :designer_name, :introduction, :construction_overview, :notes)
  end
end
