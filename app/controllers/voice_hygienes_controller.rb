# encoding: utf-8
class VoiceHygienesController < ApplicationController
  # GET /voice_hygienes
  # GET /voice_hygienes.json
  def index
    @voice_hygienes = VoiceHygiene.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @voice_hygienes }
    end
  end

  # GET /voice_hygienes/1
  # GET /voice_hygienes/1.json
  def show
    @voice_hygiene = VoiceHygiene.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @voice_hygiene }
    end
  end

  # GET /voice_hygienes/new
  # GET /voice_hygienes/new.json
  def new
    @voice_hygiene = VoiceHygiene.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @voice_hygiene }
    end
  end

  # GET /voice_hygienes/1/edit
  def edit
    @voice_hygiene = VoiceHygiene.find(params[:id])
  end

  # POST /voice_hygienes
  # POST /voice_hygienes.json
  def create
    uploaded_io = params[:voice_hygiene][:path_pdf]

    unless uploaded_io.blank?

      file_name =  params[:voice_hygiene][:path_pdf].original_filename
      directory = "public/data/voice_hygiene"

      # create the file path
      path = File.join(directory, file_name)

      File.open(path, 'wb') do |file|
        file.write(uploaded_io.read)
      end

      params[:voice_hygiene][:path_pdf] = uploaded_io.original_filename
    else
      params[:voice_hygiene][:path_pdf] = ''
    end

    
    @voice_hygiene = VoiceHygiene.new(params[:voice_hygiene])

  
    respond_to do |format|
      if @voice_hygiene.save
        format.html { redirect_to @voice_hygiene, notice: 'הגיינה קולית הוספה בהצלחה' }
        format.json { render json: @voice_hygiene, status: :created, location: @voice_hygiene }
      else
        format.html { render action: "new" }
        format.json { render json: @voice_hygiene.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /voice_hygienes/1
  # PUT /voice_hygienes/1.json
  def update
    @voice_hygiene = VoiceHygiene.find(params[:id])

    old_file = @voice_hygiene[:path_pdf]

    uploaded_io = params[:voice_hygiene][:path_pdf]

    unless uploaded_io.blank?

      file_name =  params[:voice_hygiene][:path_pdf].original_filename
      directory = "public/data/voice_hygiene"

      # create the file path
      path = File.join(directory, file_name)

      File.open(path, 'wb') do |file|
        file.write(uploaded_io.read)
      end

      params[:voice_hygiene][:path_pdf] = uploaded_io.original_filename
    else
      params[:voice_hygiene][:path_pdf] = old_file
    end


    respond_to do |format|
      if @voice_hygiene.update_attributes(params[:voice_hygiene])
        format.html { redirect_to @voice_hygiene, notice: 'עודכן בהצלחה.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @voice_hygiene.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_hygienes/1
  # DELETE /voice_hygienes/1.json
  def destroy
    @voice_hygiene = VoiceHygiene.find(params[:id])
    @voice_hygiene.destroy

    respond_to do |format|
      format.html { redirect_to voice_hygienes_url }
      format.json { head :no_content }
    end
  end
end
