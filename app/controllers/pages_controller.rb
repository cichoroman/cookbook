class PagesController < ApplicationController
  def about
    @title = 'About us'
    @content = 'Something about us'
  end

  def myrecipes
    @title = 'My recipes'
    @content = 'Some of my favorite recipes'
end
end
