namespace :import do
  desc "TODO"
  task models_car: :environment do
  	Webmotors::GetBrandsService.get
  	Make.all.each do |webmotors_id|
  		Webmotors::GetModelsService.get(webmotors_id)
  	end
  end

end
