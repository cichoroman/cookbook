class PagesController < ApplicationController
  def about
    @title = 'About us'
    @content = 'This is the about page'
  end

  def myrecipes
    @title = 'My recipes'
    @content = 'Some of my favorite recipes'
end
end
