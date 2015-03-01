# encoding: utf-8
class TheoreticalBackgroundsController < ApplicationController
  # GET /theoretical_backgrounds
  # GET /theoretical_backgrounds.json
  
  def index
    @theoretical_backgrounds = TheoreticalBackground.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @theoretical_backgrounds }
    end
  end

  # GET /theoretical_backgrounds/1
  # GET /theoretical_backgrounds/1.json
  def show
    @theoretical_background = TheoreticalBackground.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @theoretical_background }
    end
  end

  # GET /theoretical_backgrounds/new
  # GET /theoretical_backgrounds/new.json
  def new
    @theoretical_background = TheoreticalBackground.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @theoretical_background }
    end
  end

  # GET /theoretical_backgrounds/1/edit
  def edit
    @theoretical_background = TheoreticalBackground.find(params[:id])
  
  end

  # POST /theoretical_backgrounds
  # POST /theoretical_backgrounds.json
  def create

    uploaded_io = params[:theoretical_background][:pdf]

    unless uploaded_io.blank?

      file_name =  params[:theoretical_background][:pdf].original_filename
      directory = "public/data/theoretical"

      # create the file path
      path = File.join(directory, file_name)

      File.open(path, 'wb') do |file|
        file.write(uploaded_io.read)
      end

      params[:theoretical_background][:pdf] = uploaded_io.original_filename
    else
      params[:theoretical_background][:pdf] = ''
    end

    
    @theoretical_background = TheoreticalBackground.new(params[:theoretical_background])

   
    

    respond_to do |format|
      if @theoretical_background.save
        format.html { redirect_to @theoretical_background, notice: 'רקע תאורטי חדש הוסף בהצלחה' }
        format.json { render json: @theoretical_background, status: :created, location: @theoretical_background }
      else
        format.html { render action: "new" }
        format.json { render json: @theoretical_background.errors, status: :unprocessable_entity }
      end
    end


  end

  # PUT /theoretical_backgrounds/1
  # PUT /theoretical_backgrounds/1.json
  def update
    @theoretical_background = TheoreticalBackground.find(params[:id])

    old_file = @theoretical_background[:pdf]

    uploaded_io = params[:theoretical_background][:pdf]

    unless uploaded_io.blank?

      file_name =  params[:theoretical_background][:pdf].original_filename
      directory = "public/data/theoretical"

      # create the file path
      path = File.join(directory, file_name)

      File.open(path, 'wb') do |file|
        file.write(uploaded_io.read)
      end

      params[:theoretical_background][:pdf] = uploaded_io.original_filename
    else
      params[:theoretical_background][:pdf] = old_file
    end

    

    respond_to do |format|

      if @theoretical_background.update_attributes(params[:theoretical_background])
        format.html { redirect_to @theoretical_background, notice: 'עודכן בהצלחה.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @theoretical_background.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theoretical_backgrounds/1
  # DELETE /theoretical_backgrounds/1.json
  def destroy
    @theoretical_background = TheoreticalBackground.find(params[:id])
    @theoretical_background.destroy

    respond_to do |format|
      format.html { redirect_to theoretical_backgrounds_url }
      format.json { head :no_content }
    end
  end
end
