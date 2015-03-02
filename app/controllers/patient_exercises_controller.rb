class PatientExercisesController < ApplicationController
  # GET /patient_exercises
  # GET /patient_exercises.json
  def index

    @exercises = Exercise.all
    @voice_hygienes = VoiceHygiene.all
    @theoretical_backgrounds = TheoreticalBackground.all

    @patient = Patient.find(params[:patient_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @patient_exercises }
    end
  end

  # GET /patient_exercises/1
  # GET /patient_exercises/1.json
  def show
    @patient_exercise = PatientExercise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_exercise }
    end
  end

  # GET /patient_exercises/new
  # GET /patient_exercises/new.json
  def new
    @patient_exercise = PatientExercise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @patient_exercise }
    end
  end

  # GET /patient_exercises/1/edit
  def edit
    @patient_exercise = PatientExercise.find(params[:id])
  end

  # POST /patient_exercises
  # POST /patient_exercises.json
  def create
    @patient_exercise = PatientExercise.new(params[:patient_exercise])

    respond_to do |format|
      if @patient_exercise.save
        format.html { redirect_to @patient_exercise, notice: 'Patient exercise was successfully created.' }
        format.json { render json: @patient_exercise, status: :created, location: @patient_exercise }
      else
        format.html { render action: "new" }
        format.json { render json: @patient_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /patient_exercises/1
  # PUT /patient_exercises/1.json
  def update
    @patient_exercise = PatientExercise.find(params[:id])

    respond_to do |format|
      if @patient_exercise.update_attributes(params[:patient_exercise])
        format.html { redirect_to @patient_exercise, notice: 'Patient exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @patient_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_exercises/1
  # DELETE /patient_exercises/1.json
  def destroy
    @patient_exercise = PatientExercise.find(params[:id])
    @patient_exercise.destroy

    respond_to do |format|
      format.html { redirect_to patient_exercises_url }
      format.json { head :no_content }
    end
  end

  def submittedFiles
    @patient_exercise = PatientExercise.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_exercise }
    end

  end

  def submittedExercises
    @patient_exercise = PatientExercise.all

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @patient_exercise }
    end
  end

  def savePatientExercises
      id = params[:patient_id]
      @patient_exercise = PatientExercise.new

      unless params[:exercise].blank?
        params[:exercise].each do |exercise|
          pe = PatientExercise.new

          pe.patient_id = id
          ex_id = exercise.gsub(/[^\d]/, '')
          pe.exercise_id = ex_id.to_i
          pe.exercise_type = "exercise"

          pe.save
        end
      end

      render('new')
  end
end
