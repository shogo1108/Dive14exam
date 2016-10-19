class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end
  
  def new
    if params[:back]
      @picture = Picture.new(pictures_params)
    else
      @picture = Picture.new
    end
  end
  
  def create
    @picture = Picture.new(pictures_params)
    @picture.save
    redirect_to pictures_path, notice: "投稿しました！"
  end
  
  def show
    @picture = Picture.find(params[:id])
  end
  
  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(pictures_params)
      redirect_to pictures_path, notice: "投稿を更新しました！"
    else
      redirect_to pictures_path, notice: "投稿を更新できませんでした"
    end
  end
  
  def destroy
    @picture = Picture.find(params[:id])
    if @picture.destroy
      redirect_to pictures_path, notice: "投稿を削除しました！"
    else
      redirect_to pictures_path, notice: "投稿を削除できませんでした"
    end
  end
  
  def confirm
    @picture = Picture.new(pictures_params)
  end
  
private
  def pictures_params
    params.require(:picture).permit(:id, :title, :content, :image, :image_cache)
  end

  
end
