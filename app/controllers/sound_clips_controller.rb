class SoundClipsController < ApplicationController
  # GET /sound_clips
  # GET /sound_clips.json
  def index
    @sound_clips = SoundClip.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sound_clips }
    end
  end

  # GET /sound_clips/1
  # GET /sound_clips/1.json
  def show
    @sound_clip = SoundClip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sound_clip }
    end
  end

  # GET /sound_clips/new
  # GET /sound_clips/new.json
  def new
    @sound_clip = SoundClip.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sound_clip }
    end
  end

  # GET /sound_clips/1/edit
  def edit
    @sound_clip = SoundClip.find(params[:id])
  end

  # POST /sound_clips
  # POST /sound_clips.json
  def create
    @sound_clip = SoundClip.new(params[:sound_clip])

    respond_to do |format|
      if @sound_clip.save
        format.html { redirect_to @sound_clip, notice: 'Sound clip was successfully created.' }
        format.json { render json: @sound_clip, status: :created, location: @sound_clip }
      else
        format.html { render action: "new" }
        format.json { render json: @sound_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sound_clips/1
  # PUT /sound_clips/1.json
  def update
    @sound_clip = SoundClip.find(params[:id])

    respond_to do |format|
      if @sound_clip.update_attributes(params[:sound_clip])
        format.html { redirect_to @sound_clip, notice: 'Sound clip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sound_clip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sound_clips/1
  # DELETE /sound_clips/1.json
  def destroy
    @sound_clip = SoundClip.find(params[:id])
    @sound_clip.destroy

    respond_to do |format|
      format.html { redirect_to sound_clips_url }
      format.json { head :no_content }
    end
  end
end
