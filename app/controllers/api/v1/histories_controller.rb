class Api::V1::HistoriesController < Api::V1::BaseController
  def index
    @histories = History.all
  end

  def create
    @history = History.new(history_params)
    if @history.save
      render :show, status: :created
    else
      render_error
    end
  end

  private

  def history_params
    params.require(:history).permit(:amount, :rate, :init_currency, :wanted_currency)
  end
end