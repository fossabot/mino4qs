class PersonalDataSetsController < ApplicationController
  def index
    if PersonalDataSet.count == 0
      return
    end

    if PersonalDataSet.count == 1
      redirect_to personal_data_set_path(PersonalDataSet.first.id)
    end
  end

  def show
    @personal_data_set = PersonalDataSet.find(params[:id])
  end

  def new
    @personal_data_set = PersonalDataSet.new
  end

  def create
    flash[:success] = "Personal data successfully recorded"
    redirect_to new_personal_data_set_path
  end
end
