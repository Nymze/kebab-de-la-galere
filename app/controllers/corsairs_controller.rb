class CorsairsController < ApplicationController

#créé un nouveau formulaire pour faire un nouveau profile
def new
	@corsair = Corsair.new

end 

#affiche le profile une fois remplit 
def show
	@corsair = Corsair.find(params[:id])
end

#permet d'editer le profile
def edit
	 @corsair = Corsair.find(params[:id])
end

#genere un nouveau profile en fonction du parametre

def create
		@corsair = Corsair.new(corsair_params)
		if @corsair.save
		redirect_to @corsair
		else render 'new'
		end
	end

	#permet de réecrire le profile choisi

  def update
  	@corsair = Corsair.find(params[:id])
		if @corsair.update(corsair_params)
			redirect_to corsairs_path
		else 
			render 'edit'
		end
	end

	
	def destroy
		@corsair = Corsair.find(params[:id])
		@corsair.destroy
		redirect_to corsairs_path
	end
	#list les profile completés 

def index
	@corsairs = Corsair.all
end

private
	def corsair_params
  	params.require(:corsair).permit(:first_name, :age, :likeness)
	end


end
