get '/:source.css' do
  scss params[:source].to_sym
end
