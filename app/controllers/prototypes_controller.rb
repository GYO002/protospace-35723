class PrototypesController < ApplicationController


  def index
   @prototypes = Prototype.all
  end

  def new
   @prototype = Prototype.new
  end


  def create
      @prototype = Prototype.new(prototype_params) 
    if @prototype.save
        redirect_to root_path(@prototype)
    else
        render :new
    end
  end
 

  def show
   @prototype = Prototype.find(params[:id])
   @comment = Comment.new  && current_user.id == @prototype.user.id
   @comments = @prototype.comments.includes(:user)
  end

 def edit
  unless user_signed_in?
    redirect_to action: :index
  end
  @prototype = Prototype.find(params[:id])
 end

  def update
    if
    @prototype = Prototype.find(params[:id])
    @prototype.update(prototype_params)
    redirect_to root_path(@prototype)
    else
      render :edut
   end
  end
     
   
  def destroy
    @prototype = Prototype.find(params[:id])
    @prototype.destroy
    redirect_to root_path(@prototype)
  end


  private
  def prototype_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end