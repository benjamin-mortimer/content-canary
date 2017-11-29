get /:slug do 
  slug = params['slug']
  erb :index, :locals => {:stats => Report::report(slug)}
end
