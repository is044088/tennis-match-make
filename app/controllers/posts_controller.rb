class PostsController < ApplicationController
  before_action :header_create

  def index
    @new_tennis = Post.order(created_at: "desc").limit(3)
    @tokyo_tennis =  Post.where(place: "東京都" ).order(created_at: "desc").limit(3)
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
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
    redirect_to root_path, notice: "テニスのイベントを作成しました"
    # flash[:success] = "テニスのイベントを作成しました"
  end

  def update
    post = Post.find(params[:id])
    if post.user_id == current_user.id
      post.update(post_params)
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
      if post.user_id == current_user.id
        post.destroy
      end
  end

  def mypost
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

  def header_create
    if user_signed_in?
      @ability = Ability.find_by(user_id:current_user.id)
      @average = (@ability.serve + @ability.return + @ability.stroke + @ability.footwork + @ability.mental)/5.to_f
    end
  end  
end
