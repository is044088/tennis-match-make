class PostsController < ApplicationController
  def index
   
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    
    Post.create(
      title: post_params[:title], 
      place: post_params[:place], 
      venue: post_params[:venue], 
      address: post_params[:address], 
      date: Date.new(post_params["date(1i)"]&.to_i,post_params["date(2i)"]&.to_i,post_params["date(3i)"]&.to_i), 
      start_time: post_params[:start_time], 
      end_time: post_params[:end_time], 
      explanation: post_params[:explanation], 
      cost: post_params[:cost], 
      recruit: post_params[:recruit], 
      ave_low: post_params[:ave_low],
      ave_high: post_params[:ave_high],
      com_low: post_params[:com_low],
      com_high: post_params[:com_high],
      age: post_params[:age],
      sex: post_params[:sex],
      dominant: post_params[:dominant],
      user_id: post_params[:user_id],
      image: post_params[:image] 
    )
    redirect_to root_path
  end

  def update
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(
      :title, 
      :place, 
      :venue, 
      :address, 
      :date, 
      :start_time, 
      :end_time, 
      :explanation, 
      :cost, 
      :recruit, 
      :ave_low,
      :ave_high,
      :com_low,
      :com_high,
      :age,
      :sex,
      :dominant,
      :user_id,
      :image
    )
  end
end
