require_relative '../../db/model/config'

def getAllTables
    Mesa.all.to_json
end

def getTable(id)
    Mesa.find_by(id: id).to_json
end