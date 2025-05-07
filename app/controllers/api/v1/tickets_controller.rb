class Api::V1::TicketsController < ApplicationController
  before_action :set_ticket, only: %i[ show update destroy ]

  # GET /api/v1/tickets
  def index
    @tickets = Api::V1::Ticket.all

    render json: @tickets
  end

  # GET /api/v1/tickets/1
  def show
    render json: @ticket
  end

  # POST /api/v1/tickets
  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render json: @ticket, status: :created, location: @ticket
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/tickets/1
  def update
    if @ticket.update(ticket_params)
      render json: @ticket
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/tickets/1
  def destroy
    @ticket.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def ticket_params
      params.expect(ticket: [ :name, :price, :event_id ])
    end
end
