json.array! @exercice_types do |type|
    json.id type.id
    json.name type.name
    json.instruction type.instruction
    json.created_at type.created_at
end
