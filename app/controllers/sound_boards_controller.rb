class SoundBoardsController < ApplicationController
  # GET /sound_boards
  # GET /sound_boards.json
  def index
    @sound_boards = SoundBoard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sound_boards }
    end
  end

  # GET /sound_boards/1
  # GET /sound_boards/1.json
  def show
    @sound_board = SoundBoard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sound_board }
    end
  end

  # GET /sound_boards/new
  # GET /sound_boards/new.json
  def new
    @sound_board = SoundBoard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sound_board }
    end
  end

  # GET /sound_boards/1/edit
  def edit
    @sound_board = SoundBoard.find(params[:id])
  end

  # POST /sound_boards
  # POST /sound_boards.json
  def create
    @sound_board = SoundBoard.new(params[:sound_board])

    respond_to do |format|
      if @sound_board.save
        format.html { redirect_to @sound_board, notice: 'Sound board was successfully created.' }
        format.json { render json: @sound_board, status: :created, location: @sound_board }
      else
        format.html { render action: "new" }
        format.json { render json: @sound_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sound_boards/1
  # PUT /sound_boards/1.json
  def update
    @sound_board = SoundBoard.find(params[:id])

    respond_to do |format|
      if @sound_board.update_attributes(params[:sound_board])
        format.html { redirect_to @sound_board, notice: 'Sound board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sound_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sound_boards/1
  # DELETE /sound_boards/1.json
  def destroy
    @sound_board = SoundBoard.find(params[:id])
    @sound_board.destroy

    respond_to do |format|
      format.html { redirect_to sound_boards_url }
      format.json { head :no_content }
    end
  end
end
