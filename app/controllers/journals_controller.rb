class JournalsController < ApplicationController
  def index
    @journals = Journal.all
  end

  def show
    @journal = Journal.find(params[:id])
  end

  def new
    @journal = Journal.new
  end

  def create
    @journal = Journal.new(journal_params)
    @journal.user = current_user
    if @journal.save!
      redirect_to journals_path, notice: "Journal successfully created!"
    else
      render :new
    end
  end

  def destroy
    @journal = Journal.find(params[:id])
    @journal.destroy
    redirect_to journals_path, status: :see_other
  end

  private

  def journal_params
    params.require(:journal).permit(:name, :topic)
  end
end
