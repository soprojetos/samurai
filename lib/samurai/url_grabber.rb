class UrlGrabber
  def initialize(app)
    @app = app
  end

  def call(env)
    path = env["ORIGINAL_FULLPATH"]
    Samurai::Url.where(:uri => path).first_or_create unless path =~ /^\/assets\//
    app = @app.call(env)
  end
end
