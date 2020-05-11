class Application
    def call(env)
        resp = Rack::Response.new

        t = Time.now
        t_hour = t.hour
        if t_hour >= 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end