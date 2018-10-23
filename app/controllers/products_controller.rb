class ProductsController < ApplicationController
  load_and_authorize_resource param_method: :product_params
  
  def index
    @products = Product.all.page(params.permit![:page]).per(9)
  end
  
  def new
    @product = Product.new
  end
  
  def show
    @reviews = @product.reviews
  end

  def create
    @product = Product.new user_params
    if @product.save
      flash[:success] = "ユーザーを作成させました"
      redirect_to root_url
    else
      flash[:danger] = "ユーザーを作成できません"
      render :new
    end
  end
  
  private
  def product_params
    params.require(:product).permit :name, :category, :maker
  end
end
