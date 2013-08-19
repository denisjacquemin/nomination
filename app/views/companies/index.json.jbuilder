json.array!(@companies) do |company|
  json.extract! company, :extrated_name, :name, :reg_commerce_number, :legilux_url, :constitution_date, :forme_juridique
  json.url company_url(company, format: :json)
end
