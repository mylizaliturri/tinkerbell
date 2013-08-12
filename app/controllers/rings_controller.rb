class RingsController< ApplicationController
  def new
    @ring=Ring.new()

  end

  def create
    @ring=Ring.new(params[:ring])
    if @ring.save
      begin
        #Twitter.update(@ring.name+ "-"+@ring.description+"-"+@ring.created_at.to_s)

        registration_ids = [
             "1"
            ];
        post_args = {
            :registration_ids => registration_ids,
            :data => {:msg => 'Parada solicitada'}
        }

        puts post_args.to_json
        resp = RestClient.post 'https://android.googleapis.com/gcm/send', post_args.to_json, :Authorization => 'key=AIzaSyAisLDE9Qpkk8QWUZPdMRNYwhKtgc3232g', :content_type => :json, :accept => :json
        puts resp.inspect

      rescue Exception
        p "error en twitter"
      end
      redirect_to root_url, :notice => 'Success'
    else
      render action: 'new'
    end
  end

  def edit
    @ring = Ring.find(params[:id])
  end

  def update
    @ring=Ring.find(params[:id])
    if @ring.save
      redirect_to root_url, :notice => "El timbre fue actualizado."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @ring = Ring.find(params[:id])
    @ring.destroy
    redirect_to root_path, :notice => 'El timbre fue eliminado'
  end

  def destroy_all
    Ring.destroy_all
  end

  def show

  end
end

