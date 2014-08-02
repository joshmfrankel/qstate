json.array!(@proposals) do |proposal|
  json.extract! proposal, :lead_presenter, :co_presenter, :email, :school, :credentials, :presentation_type, :title, :summary, :abstract, :additional_information
  json.url proposal_url(proposal, format: :json)
end