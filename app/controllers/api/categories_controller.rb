class Api::CategoriesController < Api::ApiController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    category = Category.all
    result = { :result => "true", :category => category}
    render :json => result
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end
end
