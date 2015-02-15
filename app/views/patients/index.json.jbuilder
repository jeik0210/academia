json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :dni, :phone, :home
  json.url patient_url(patient, format: :json)
end
