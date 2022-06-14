class PatientenverfuegungController < ApplicationController
  def show
    @patientenverfuegung = Patientenverfuegung.find(params[:id])
    # authorize @patientenverfuegung
  end

  def new
    @patientenverfuegung = Patientenverfuegung.new
    # authorize @patientenverfuegung
  end

  def create
  end

  def update
    @patientenverfuegung = Patientenverfuegung.find(params[:id])
    authorize @patientenverfuegung
    if @patientenverfuegung.update(patientenverfuegung_params)
      redirect_to patientenverfuegung_path(@patientenverfuegung)
    else
      render :edit
    end
  end

  def edit
    @patientenverfuegung = Patientenverfuegung.find(params[:id])
    # authorize @patientenverfuegung
  end

  private

  def patientenverfuegung_params
    params.require(:patientenverfuegung).permit(:user_id, :apallisch, :krankenhaus, :reanimation, :lockedin, :maligner, :demenz, :sterbeprozess, :palliativ)
  end
end
