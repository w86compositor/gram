class PhotoboothsController < ApplicationController
  before_action :set_photobooth, only: [:show, :edit, :update, :destroy]

  # GET /photobooths
  # GET /photobooths.json
  def index
    @photobooths = Photobooth.all
  end

  # GET /photobooths/1
  # GET /photobooths/1.json
  def show
    @is_genres = params[:genres].present?
    if @is_genres
      if GENRES.keys.include? params[:genres].to_sym
          @genre = GENRES[params[:genres].to_sym].sample
      end
    end
    @genres = [{name:"country", image: 'triangle.svg'},{name: "latin", image: 'harmonica.svg'},{name:"hip_hop", image: 'keyboard.svg'},{name:"pop", image: 'drum-set.svg'},{name:"jazz", image: 'saxophone.svg'},{name:"rock", image: 'electric-guitar.svg'},{name:"classic", image: 'flute.svg'},{name:"contemporary", image: 'key-contemporary.svg'},{name:"electronic_dance", image: 'saxophone.svg'},{name:"rb", image: 'keyboard.svg'},{name:"soul", image: 'french-horn.svg'},{name:"indie", image: 'drum-set.svg'}]
  end

  # GET /photobooths/new
  def new
    @photobooth = Photobooth.new
  end

  # GET /photobooths/1/edit
  def edit
  end

  # POST /photobooths
  # POST /photobooths.json
  def create
    @photobooth = Photobooth.create(photobooth_params)
    
    respond_to do |format|
      if @photobooth.save
        
        format.html { redirect_to photobooth_path(@photobooth), notice: 'Photobooth was successfully created.' }
        format.json { render :show, status: :created, location: users_profile_path }
      else
        format.html { render :new }
        format.json { render json: @photobooth.errors, status: :unprocessable_entity }
      end
    end
  end



  # PATCH/PUT /photobooths/1
  # PATCH/PUT /photobooths/1.json
  def update
    respond_to do |format|
      if @photobooth.update(photobooth_params)
        format.html { redirect_to @photobooth, notice: 'Photobooth was successfully updated.' }
        format.json { render :show, status: :ok, location: @photobooth }
      else
        format.html { render :edit }
        format.json { render json: @photobooth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photobooths/1
  # DELETE /photobooths/1.json
  def destroy
    @photobooth.destroy
    respond_to do |format|
      format.html { redirect_to authenticated_root_path(@photobooth), notice: 'Photobooth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photobooth
      @photobooth = Photobooth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photobooth_params
      params.require(:photobooth).permit(:image, :image_challenge_type)
    end
end
