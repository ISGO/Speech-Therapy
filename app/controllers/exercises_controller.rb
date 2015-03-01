# encoding: utf-8

class ExercisesController < ApplicationController
  # GET /exercises
  # GET /exercises.json
  def index
    if !checkLogin
      redirect_to login_index_path
      return
    end

    @exercises = Exercise.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @exercises }
    end
  end

  # GET /exercises/1
  # GET /exercises/1.json
  def show
    if !checkLogin
      redirect_to login_index_path
      return
    end

    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @exercise }
    end
  end

  # GET /exercises/new
  # GET /exercises/new.json
  def new
    if !checkLogin
      redirect_to login_index_path
      return
    end

    @exercise = Exercise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @exercise }
    end
  end

  # GET /exercises/1/edit
  def edit
    if !checkLogin
      redirect_to login_index_path
      return
    end

    @exercise = Exercise.find(params[:id])
  end

  # POST /exercises
  # POST /exercises.json
  def create
    if !checkLogin
      redirect_to login_index_path
      return
    end
    
    @exercise = Exercise.new(params[:exercise])

    if @exercise.invalid?
      render('new')
      return
    end

    respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'התרגיל התווסף בהצלחה.' }
        format.json { render json: @exercise, status: :created, location: @exercise }
      else
        format.html { render action: "new" }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /exercises/1
  # PUT /exercises/1.json
  def update
    @exercise = Exercise.find(params[:id])

    respond_to do |format|
      if @exercise.update_attributes(params[:exercise])
        format.html { redirect_to @exercise, notice: 'התרגיל עודכן בהצלחה.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercises/1
  # DELETE /exercises/1.json
  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy

    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end

private
  def checkLogin
    if session[:user_id].blank?
      return false
    else
      return true
    end
  end
end
