class AgentsController < ApplicationController
  before_action :set_agent, only: [:show, :edit, :update, :destroy]

  def index
    @agents = Agent.all
  end

  def show
  end

  def new
    @agent = Agent.new
  end

  def edit
  end

  def create
    @agent = Agent.new(agent_params)

      if @agent.save
        redirect_to @agent, notice: 'Agent was successfully created.'
      else
        render :new
      end
  end

  def update
      if @agent.update(agent_params)
        redirect_to @agent, notice: 'Agent was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @agent.destroy

    redirect_to agents_url, notice: 'Agent was successfully destroyed.'
  end

  private

  def set_agent
    @agent = Agent.find(params[:id])
  end

  def agent_params
    params.require(:agent).permit(:title, :managment, :user_id)
  end
end
