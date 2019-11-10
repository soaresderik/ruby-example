class Validation
    def mesa_create(params)
        errors = []
        return params
        if not params.name or params.name == ""
            errors.push("Nome é Obrigatório")
        end

        if errors.length > 0 
            return errors.to_s
        end

        return "passou"
    end
end