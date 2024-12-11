class JournalpagesController < ApplicationController

  def index
    @journal = Journal.find(params[:journal_id]) # Find the parent journal
    @journalpages = @journal.journalpages       # Get only the journal pages for the parent journal
  end

  def new
    @journal = Journal.find(params[:journal_id])
    @journalpage = Journalpage.new
    topic = @journal.topic
    client = OpenAI::Client.new

    # Call OpenAI API
    begin
      chatgpt_response = client.chat(
        parameters: {
          model: "llama3.2", # Ensure you're using a valid model
          messages: [
            { role: "user", content: "You are a young therapist. Generate a concise, reflective journal question for the topic #{topic}'. Provide one question directly. Avoid introductory text or fluff and dont say core question or sub." }
          ],
          max_tokens: 100
        }
      )
      @content = chatgpt_response["choices"][0]["message"]["content"]
    rescue StandardError => e
      @content = "Sorry, we couldn't generate a question at this time. Please try again."
      Rails.logger.error("OpenAI API Error: #{e.message}")
    end
  end





  def create
    @journalpage = Journalpage.new(journalpage_params)
    @journal = Journal.find(params[:journal_id])
    @journalpage.journal_id = @journal.id
    if @journalpage.save
      redirect_to journal_journalpages_path(@journal)
    else
      raise
      render :new
    end
  end

  def destroy
    @journalpage = Journalpage.find(params[:id])
    @journalpage.destroy
    redirect_to journal_journalpages_path(@journalpage.journal), status: :see_other
  end

  private

  def journalpage_params
    params.require(:journalpage).permit(:prompt, :answer)
  end



end
