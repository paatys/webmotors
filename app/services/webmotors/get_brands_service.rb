module Webmotors
  class GetBrandsService
    include HTTParty
    base_uri WEBMOTORS_CONFIG['url']

    def self.get
      json = post("/carro/marcas")
      json.each do |make_params|
        Make.find_or_create_by(
          name: make_params["Nome"],
          webmotors_id: make_params["Id"]
        )
      end
    end

  end
end
