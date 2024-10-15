class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def create
    @quote = params[:quote]
    # Simulate saving the quote or perform actions
    render turbo_stream: turbo_stream.append("quote-list", partial: "quotes/quote", locals: { quote: @quote })
  end
end
