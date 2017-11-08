class WxinfosController < ApplicationController
  before_action :set_wxinfo, only: [:show, :edit, :update, :destroy]

  # GET /wxinfos
  # GET /wxinfos.json
  def index
    @wxinfos = Wxinfo.all
  end

  # GET /wxinfos/1
  # GET /wxinfos/1.json
  def show
  end

  # GET /wxinfos/new
  def new
    @wxinfo = Wxinfo.new
  end

  # GET /wxinfos/1/edit
  def edit
  end

  # POST /wxinfos
  # POST /wxinfos.json
  def create
    @wxinfo = Wxinfo.new(wxinfo_params)

    respond_to do |format|
      if @wxinfo.save
        format.html { redirect_to @wxinfo, notice: 'Wxinfo was successfully created.' }
        format.json { render :show, status: :created, location: @wxinfo }
      else
        format.html { render :new }
        format.json { render json: @wxinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wxinfos/1
  # PATCH/PUT /wxinfos/1.json
  def update
    respond_to do |format|
      if @wxinfo.update(wxinfo_params)
        format.html { redirect_to @wxinfo, notice: 'Wxinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @wxinfo }
      else
        format.html { render :edit }
        format.json { render json: @wxinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wxinfos/1
  # DELETE /wxinfos/1.json
  def destroy
    @wxinfo.destroy
    respond_to do |format|
      format.html { redirect_to wxinfos_url, notice: 'Wxinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wxinfo
      @wxinfo = Wxinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wxinfo_params
      params.require(:wxinfo).permit(:appid, :appsecret, :secret_key, :token)
    end
end
