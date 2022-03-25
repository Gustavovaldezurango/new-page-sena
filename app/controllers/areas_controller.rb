class AreasController < ApplicationController
  
  def index
    @areas = Area.all
    render json: @areas, status: 200
  end

  def show
    @area = Area.find(params[:id])
  end
 
 
  def new 
  @area = Area.new
  render json: @area, status: 200
  end
  
  
  def create
    @area = Area.create(
    codigo_area: params[:area][:codigo_area],
    nombre_area: params[:area][:nombre_area])
    if @area.save 
      redirect_to areas_path 
    else 
      render :new 
    end 
    
  end
  }
  def update 
    @area =  Area.find(params[:id])
    Area.update(
    codigo_area: params[:codigo_area],
    nombre_area: params[:nombre_area]
    )
    
   end 
  
  def destroy
    @area =  Area.find(params[:id])
    @area.destroy
    redirect_to areas_path

    render json: @area, status: 200
   end 
  
  
end
