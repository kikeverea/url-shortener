# frozen_string_literal: true

class LinksController < ApplicationController

  before_action :set_link, only: [:edit, :update, :show, :destroy]

  def index
    @links = Link.recent_first
    @link ||= Link.new

    respond_to do |format|
      format.html  # index.html.erb
    end
  end

  def create
    @link = Link.new(links_params)

    if @link.save
      redirect_to links_path
    else
      @links = Link.recent_first
      render :index, status: :unprocessable_entity
    end
  end

  def show
    respond_to do |format|
      format.html  # show.html.erb
    end
  end

  def update
    if @link.update(links_params)
      redirect_to @link
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @link.destroy
    redirect_to links_path
  end

  def edit
  end

  private

  def links_params
    params.require(:link).permit(:url)
  end
end
