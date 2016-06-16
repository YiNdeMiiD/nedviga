class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def create
    p 'LOG CREATE'
    p 'params'
    p params
    p 'record_params'
    p record_params
    p 'LOG END'
    @record = Record.new(record_params)

    if @record.save
      render json: @record
    else
      render json: @record.errors, status: :unprocessable_entity
    end
  end

  private

    def record_params
      params.require(:record).permit(:title, :amount, :date)
    end

end
