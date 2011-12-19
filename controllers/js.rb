
get '/:source.js' do
  coffee params[:source].to_sym
end
