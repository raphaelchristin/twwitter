class TwweetsController < ApplicationController
  before_action :set_twweet, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /twweets or /twweets.json
  def index
    @twweets = Twweet.all
    @twweet = Twweet.new
  end

  # GET /twweets/1 or /twweets/1.json
  def show
    @twweet = Twweet.find(params[:id])
  end

  # GET /twweets/new
  def new
    @twweet = current_user.twweets.build
  end

  # GET /twweets/1/edit
  def edit
    @twweet = Twweet.find(params[:id])
  end

  # POST /twweets or /twweets.json
  def create
    @twweet = current_user.twweets.build(twweet_params)

    respond_to do |format|
      if @twweet.save
        format.html { redirect_to root_path, notice: "Twweet was successfully created." }
        format.json { render :show, status: :created, location: @twweet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @twweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /twweets/1 or /twweets/1.json
  def update
    respond_to do |format|
      if @twweet.update(twweet_params)
        format.html { redirect_to twweet_url(@twweet), notice: "Twweet was successfully updated." }
        format.json { render :show, status: :ok, location: @twweet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @twweet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /twweets/1 or /twweets/1.json
  def destroy
    @twweet = Twweet.find(params[:id])
    @twweet.destroy

    respond_to do |format|
      format.html { redirect_to twweets_url, notice: "Twweet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_twweet
      @twweet = Twweet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def twweet_params
      params.require(:twweet).permit(:twweet)
    end
end
