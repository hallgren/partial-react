require "sinatra"

PANEL_CLASSES = %w{
  panel-primary
  panel-success
  panel-info
  panel-default
  panel-warning
  panel-danger
}

get "/" do
  set_env_variabels
  erb :index
end

get "/partial" do
  set_env_variabels
  erb  :partial
end

get "/partial_clone" do
  set_env_variabels
  erb  :partial_clone
end

private
def set_env_variabels
  @panel_class = PANEL_CLASSES.sample
  @request_time = Time.now
end