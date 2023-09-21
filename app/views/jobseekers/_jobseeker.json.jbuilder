json.extract! jobseeker, :id, :full_name, :email, :site_id, :created_at, :updated_at
json.url jobseeker_url(jobseeker, format: :json)
