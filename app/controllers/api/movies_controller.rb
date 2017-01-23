class Api::MoviesController < Api::ApiController
  before_action :get_user, only: [:create]
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def create
    movie = Movie.new(movie_params)
      if movie.save
        result = { :result => "true", :message => movie}
        render :json => result
      else
        result = { :result => "false", :message => movie.errors.full_messages}
        render :json => result
      end
  end

  def detalleMovie
    movie = params[:movie][:id]
    movie = Movie.find(movie)
    result = { :result => "true", :message => movie}
    render :json => result
  end

  def index
    movie = Movie.all
    result = { :result => "true", :message => movie}
    render :json => result
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:name, :descripcion, :director, :category_id)
    end
end
