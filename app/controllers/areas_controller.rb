class AreasController < ApplicationController
  def index
    @areas = Area.all
<<<<<<< HEAD
    
=======
    render json: @areas, status: 200
>>>>>>> 852fe336abf1f17da6d20fe042a51e1c5bbcb644
  end

  def show
    @area = Area.find(params[:id])
  end
 
 
  def new 
  @area = Area.new
<<<<<<< HEAD
  
=======
  render json: @area, status: 200
>>>>>>> 852fe336abf1f17da6d20fe042a51e1c5bbcb644
  end
  
  
  def create
<<<<<<< HEAD
    @area = Area.create(
    codigo_area: params[:area][:codigo_area],
    nombre_area: params[:area][:nombre_area])
=======
    @area = Area.create!(
    codigo_area: params[:codigo_area],
    nombre_area: params[:nombre_area])
>>>>>>> 852fe336abf1f17da6d20fe042a51e1c5bbcb644
    if @area.save 
      redirect_to areas_path 
    else 
      render :new 
    end 
    
  end
  def update 
<<<<<<< HEAD
    @area =  Area.find(params[:id])
=======
    @area =  Area.find(params[:codigo_area])
>>>>>>> 852fe336abf1f17da6d20fe042a51e1c5bbcb644
    Area.update(
    codigo_area: params[:codigo_area],
    nombre_area: params[:nombre_area]
    )
<<<<<<< HEAD
    
   end 
  
  def destroy
    @area =  Area.find(params[:id])
    @area.destroy
    redirect_to areas_path
=======
    render json: @area, status: 200
   end 
  
  def destroy 
    @area =  Area.find(params[:codigo_area])
    Area.destroy!
    render status: 200

>>>>>>> 852fe336abf1f17da6d20fe042a51e1c5bbcb644
   end
end
