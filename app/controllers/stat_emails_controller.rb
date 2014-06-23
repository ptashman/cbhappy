class StatEmailsController < ApplicationController
  before_action :set_stat_email, only: [:show, :edit, :update, :destroy]

  # GET /stat_emails
  # GET /stat_emails.json
  def index
    @stat_emails = StatEmail.all
    emails = @stat_emails.map(&:email).uniq
    emails.each do |email|
      StatisticsMailer.monthly_stats(email).deliver 
    end
  end

  # GET /stat_emails/1
  # GET /stat_emails/1.json
  def show
  end

  # GET /stat_emails/new
  def new
    @stat_email = StatEmail.new
  end

  # GET /stat_emails/1/edit
  def edit
  end

  # POST /stat_emails
  # POST /stat_emails.json
  def create
    @stat_email = StatEmail.new(stat_email_params)

    respond_to do |format|
      if @stat_email.save
        format.html { redirect_to @stat_email, notice: 'The email was successfully created.' }
        format.json { render :show, status: :created, location: @stat_email }
      else
        format.html { render :new }
        format.json { render json: @stat_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stat_emails/1
  # PATCH/PUT /stat_emails/1.json
  def update
    respond_to do |format|
      if @stat_email.update(stat_email_params)
        format.html { redirect_to @stat_email, notice: 'Stat email was successfully updated.' }
        format.json { render :show, status: :ok, location: @stat_email }
      else
        format.html { render :edit }
        format.json { render json: @stat_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stat_emails/1
  # DELETE /stat_emails/1.json
  def destroy
    @stat_email.destroy
    respond_to do |format|
      format.html { redirect_to stat_emails_url, notice: 'Stat email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat_email
      @stat_email = StatEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stat_email_params
      params[:stat_email].permit(:email)
    end
end
