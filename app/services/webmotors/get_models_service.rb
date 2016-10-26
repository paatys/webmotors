module Webmotors
  class GetModelsService
    include HTTParty
    base_uri WEBMOTORS_CONFIG['url']

    def self.get(id)
      json = post('/carro/modelos', body: {marca: id})
      make = Make.where(webmotors_id: id).take
      json.each do |json|
        Model.find_or_create_by(make_id: make.id, name: json["Nome"]) if make
      end
    end

  end
end
