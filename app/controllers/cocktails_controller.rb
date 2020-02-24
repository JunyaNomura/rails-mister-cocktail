# class CocktailsController < ApplicationController

#   def index
#     @cocktails = Cocktail.all
#   end

#   def new
#     @cocktail = Cocktail.new
#   end

#   def create
#     @cocktail = cocktail.new(cocktail_params)
#     if @cocktail.save
#       redirect_to cocktail_path(@cocktail)
#     else
#       render :new
#     end
#   end

#   def show
#     @cocktail = Cocktail.find(params[:id])
#     @dose = Dose.new
#     @review = Review.new
#   end

#   def edit
#     @cocktail = Cocktail.find(params[:id])
#   end

#   def update
#     if @cocktail.update(cocktail_params)
#       redirect_to cocktail_path(@cocktail)
#     else
#       render :edit
#     end
#   end

#   def destroy
#   end

#   private

#   def cocktail_params
#     # *Strong params*: You need to *whitelist* what can be updated by the user
#     # Never trust user data!
#     params.require(:cocktail).permit(:name)
#   end
# end


class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end

