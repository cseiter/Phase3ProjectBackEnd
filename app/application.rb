class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    #Badge Update

    #Badge Delete  

    # static route to test rack
    if req.path.match(/test/)
      return [200, {'Content-Type' => 'application/json'}, [ {:message => "test response!"}.to_json ]]
    else
      res.write "Path Not Found"
    end

    #show all badges and all badges info
    if req.path == '/badges' && req.get?
      all_badges = MeritBadge.all
      return [
        200,
        {'Content-Type' => 'application/json'},
        [all_badges.to_json]
      ]
    else
      res.write "Path not found"
    end

    #show all scouts and all scouts info
    if req.path == '/scouts' && req.get?
      all_scouts = Scout.all
      return [
        200,
        {'Content-Type' => 'application/json'},
        [all_scouts.to_json]
      ]
    else
      res.write "Path not found"
    end

    #show eagle/not eagle info
    #not working correctly
    if req.path == "/badges/eagle" && req.get?
      badge_eagle = MeritBadge.where(badge_is_eagle: true)
      return [
        200,
        {'Content-Type' => 'application/json'},
        [badge_eagle.to_json]
      ]
    else
      res.write "info not found"
    end

    #show single merit badge info
    if req.path.match(/badges/) && req.get?
      badge_name = req.path.split('/')[2]
      badge_info = MeritBadge.where("badges_name like ?",badge_name)
      return [
        200,
        {'Content-Type' => 'application/json'},
        [badge_info.to_json]
      ]
    else
      res.write "merit badge name not found."
    end

    #add merit badge to database
    if req.path.match(/badges/) && req.post?
      body = JSON.parse(req.body.read)
      add_badge = MeritBadge.create(body)
      return [
        201,
        {'Content-Type' => 'application/json'},
        [add_badge.to_json]
      ]
    end





    res.finish
  end
end
