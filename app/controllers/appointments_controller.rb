class AppointmentsController < ApplicationController


  def index
    @appointments = @authenticated_user.appointments   #order('appointment time', DESC)
    @appointments_by_date = @appointments.group_by(&:appointment_date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(params[:appointment])
    @appointment.stylist = @authenticated_user

    @client = Client.find_by_id(params[:client_name])
    @appointment.client = @client
    if @appointment.save
      # flash[:notice] = "You have successfully created the appointment."
        redirect_to appointment_path(@appointment)
    else
      # flash[:error] = "Oops! Something went wrong. Please try again."
      render :new
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
    @appointment.stylist = @authenticated_user

    @client = Client.find_by_id(params[:client_name])
    @appointment.client = @client
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update_attributes(params[:appointment])
      redirect_to appointments_path
  end

  def destroy
    Appointment.find(params[:id]).destroy
    # flash[:error] = "Appointment deleted!"


    respond_to do |format|
      format.html { redirect_to appointments_path }
      format.json { render json: params }
    end
  end







end









