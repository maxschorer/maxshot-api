class BlocksController < ApplicationController
  before_action :set_block, only: [:show, :update, :destroy]

  def index
    render json: Block.all(), header: :ok
  end

  def create
    @block = Block.create!(block_params)
    render json: @block, header: :ok
  end

  def show
    render json: @block
  end

  def update
    @block.update(block_params)
    render header: :ok
  end

  def destroy
    @block.destroy
    render header: :ok
  end

  private

  def block_params
    params.permit(:height, :parsed)
  end

  def set_block
    @block = Block.find(params[:id])
  end
end
