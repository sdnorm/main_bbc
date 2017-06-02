class ClientPortalsController < ApplicationController
  before_action :authenticate_client!
  before_action :set_client

  def index
    @client_info = Client.includes(:client_portals).where(id: current_client.id)
  end

  def show
  end

  private

  def set_client
    @client = current_client
  end
end
