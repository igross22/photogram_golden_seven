class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def edit

    @photo = Photo.find(params["id"])

    render("edit.html.erb")

  end

  def destroy

    @photo = Photo.find(params["id"])
    @photo.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def new

    p = Photo.new
    p.caption = params["the_caption"]
    p.source = params["the_source"]
    p.save


  end


  def show

    @photo = Photo.find(params["id"])

  end

end
