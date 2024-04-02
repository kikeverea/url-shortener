# frozen_string_literal: true

class LinksController < ApplicationController

  before_action :set_link, only: [:edit, :update, :destroy]

  def index
    @links = Link.recent_first
  end

  def create
    @link = Link.new(links_params)

    if @link.save
    else
      @links = Link.recent_first
      render :index, status: :unprocessable_entity
    end

  end

  def update
  end

  def destroy
  end

  def edit
  end

  private

  def set_link
    @link = Link.find(params[:id])
  end

  def links_params
    params.require(:link).permit(:url)
  end
end
