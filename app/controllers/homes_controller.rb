class HomesController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
require "date"

  # GET /homes
  # GET /homes.json

  def index
    @homes = Home.all
    @users = User.all
    @sign_in_check = user_signed_in?

    if @sign_in_check
        @following_user = current_user.followees(@users)
        @follower_user = current_user.followers(@users)
    end

    @myfiend = Friend.where(:my_user_id => current_user.id)
    @myfriend_pluck = @myfiend.pluck(:friend_name)
    @myfiend_user = User.where(:username => @myfriend_pluck)

  end

  # GET /homes/1
  # GET /homes/1.json
  def show
  end

  # GET /homes/new
  def new
    @home = Home.new

    @items = Item.all
    @possible_item_list = []
    @items.each do |test|
      if test.item_number > test.item_active_number
        @possible_item_list.push(test.item_name)
      end
    end

  end

  # GET /homes/1/edit
  def edit
  end

  # POST /homes
  # POST /homes.json
  def create
    @home = Home.new(home_params)

    respond_to do |format|
      if @home.save

        @item = Item.find_by(:item_name => @home.home_item_name)
        @item.item_active_number += @home.home_item_number
        @item.save
        format.html { redirect_to @home, notice: 'Home was successfully created.' }
        format.json { render :show, status: :created, location: @home }
      else
        format.html { render :new }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homes/1
  # PATCH/PUT /homes/1.json
  def update
        @home.home_item_days_start = Date.today
        @home.home_item_days_end = Date.today + @home.home_item_days

    respond_to do |format|
      if @home.update(home_params)
        format.html { redirect_to @home, notice: 'Home was successfully updated.' }
        format.json { render :show, status: :ok, location: @home }
      else
        format.html { render :edit }
        format.json { render json: @home.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homes/1
  # DELETE /homes/1.json
  def destroy

        @item = Item.find_by(:item_name => @home.home_item_name)
        @item.item_active_number -= @home.home_item_number
        @item.save

    @home.destroy
    respond_to do |format|
      format.html { redirect_to homes_url, notice: 'Home was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home
      @home = Home.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def home_params
      params.require(:home).permit(:home_item_name, :home_item_number, :home_item_request_teacher, :home_item_request_assistant, :home_item_days, :home_item_days_start, :home_item_days_end )
    end

end
