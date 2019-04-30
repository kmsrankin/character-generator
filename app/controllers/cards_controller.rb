class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)

    if @card.save
      flash[:notice] = "Card created successfully"
      redirect_to cards_path
    else
      flash.now[:error] = @card.errors.full_messages.join(", ")
      render :new
    end
  end

  private
  def card_params
    params.require(:card).permit(:name, :flavor_text)
  end
end
