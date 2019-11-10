require_relative '../../db/model/config'

class MesaController
    def get_all_mesas
        Mesa.all.to_json
    end

    def get_mesa(id)
        Mesa.find_by(id: id).to_json
    end

    def create_mesa(params)
        "criar"
    end
end