json.array!(@tests) do |test|
  json.extract! test, :id, :history_clinic, :patient_id, :occupational, :enfermedad
  json.url test_url(test, format: :json)
end
