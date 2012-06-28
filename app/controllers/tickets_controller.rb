
class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all

    respond_to do |format|
      format.html 
      format.json { render json: @tickets }
    end
  end

  def show
    @ticket = Ticket.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @ticket }
    end
  end

  def new
    @ticket = Ticket.new

    respond_to do |format|
      format.html 
      format.json { render json: @ticket }
    end
  end


  def edit
    @ticket = Ticket.find(params[:id])
  end

  def create
    @ticket = Ticket.new(params[:ticket])

    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
        format.json { render json: @ticket, status: :created, location: @ticket }
      else
        format.html { render action: "new" }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @ticket = Ticket.find(params[:id])

    respond_to do |format|
      if @ticket.update_attributes(params[:ticket])
        format.html { redirect_to @ticket, notice: 'Ticket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy

    respond_to do |format|
      format.html { redirect_to tickets_url }
      format.json { head :no_content }
    end
  end
end