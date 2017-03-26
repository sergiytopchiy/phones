class LinesController < ApplicationController

  def index
    @lines = Line.all
  end

  def new
  end

  def show 
    @line = Line.find(params[:id])
  end

  def create
    if @line = Line.new(line_params).save
      redirect_to lines_path
    end
  end

  def edit
    if @line = Line.find(params[:id])
      @as = "edit"
    end
  end

  def update
    @line = Line.find(params[:id])
    if @line.update(line_params)
      redirect_to lines_path
    else
      render 'edit'
    end
  end

  def destroy
    @line = Line.find(params[:id])
    if @line.destroy
      redirect_to lines_path
    end
  end

  private
    def line_params
      params.require(:line).permit(:rec)
    end
end