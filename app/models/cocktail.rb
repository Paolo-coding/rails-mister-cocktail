class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients
  validates :name, presence: true

  def index
    @cocktail = Cocktail.All
  end

  def create
    @cocktail = Cocktail.new(description: params[:description], cocktail: params[:cocktail], ingredient: params[:ingredient])

  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end
end
