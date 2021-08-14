class Application

  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    # GYM MEMBER ROUTES

    # Gym Member Index

    # if req.path == ('/gym_members') && req.get?
    #   return [200, {'Content-Type' => 'application/json'}, [GymMember.all.to_json]]
    # end

    # Gym Member Create

    # if req.path == ('/gym_members') && req.post?
    #   body = JSON.parse(req.body.read)
    #   gym_member = GymMember.create(body)
    #   return [201, {'Content-Type' => 'application/json'}, [gym_member.to_json]]
    # end

    # Gym Member Show

    # if req.path.match('/gym_members/') && req.get?
    #   id = req.path.split('/')[2]
    #   begin
    #     gym_member = GymMember.find(id)
    #     return [200, {'Content-Type' => 'application/json'}, [gym_member.to_json]]
    #   rescue
    #     return [404, {'Content-Type' => 'application/json'}, [{message: "Gym Member not found"}.to_json]]
    #   end
    # end

    # Gym Member Update

    # if req.path.match('/gym_members/') && req.patch?
    #   id = req.path.split('/')[2]
    #   body = JSON.parse(req.body.read)
    #   begin
    #     gym_member = GymMember.find(id)
    #     gym_member.update(body)
    #     return [202, {'Content-Type' => 'application/json'}, [gym_member.to_json]]

        # below is an example of handling multiple exceptions
        # handling exceptions this way is NOT required or recommended
        # for the phase 3 project

    #   rescue ActiveRecord::RecordNotFound
    #     return [404, {'Content-Type' => 'application/json'}, [{message: "Gym Member not found"}.to_json]]
    #   rescue ActiveRecord::UnknownAttributeError
    #     return [422, {'Content-Type' => 'application/json'}, [{message: "Could not process your update request"}.to_json]]
    #   end
    # end

    # Gym Member Delete

    # if req.path.match('/gym_members/') && req.delete?
    #   id = req.path.split('/')[2]
    #   begin
    #     gym_member = GymMember.find(id)
    #     gym_member.destroy
    #     return [200, {'Content-Type' => 'application/json'}, [{message: "Gym Member Destroyed"}.to_json]]
    #   rescue
    #     return [404, {'Content-Type' => 'application/json'}, [{message: "Gym Member not found"}.to_json]]
    #   end
    # end

    # GYM ROUTES

    # Gym Index

    # if req.path == '/gyms' && req.get?
    #   return [200, {'Content-Type' => 'application/json'}, [Gym.all.to_json]]
    # end

    # Gym Create

    # if req.path == ('/gyms') && req.post?
    #   body = JSON.parse(req.body.read)
    #   gym = Gym.create(body)
    #   return [201, {'Content-Type' => 'application/json'}, [gym.to_json]]
    # end

    # Gym Show

    # if req.path.match('/gyms/') && req.get?
    #   id = req.path.split('/')[2]
    #   begin
    #     gym = Gym.find(id)
    #     # the include method allows us to add to the json hash
    #     return [200, {'Content-Type' => 'application/json'}, [gym.as_json(include: :gym_members).to_json]]
    #   rescue
    #     return [404, {'Content-Type' => 'application/json'}, [{message: "Gym not found"}.to_json]]
    #   end
    # end

    # Gym Update

    # if req.path.match('/gyms/') && req.patch?
    #   id = req.path.split('/')[2]
    #   body = JSON.parse(req.body.read)
    #   begin
    #     gym = Gym.find(id)
    #     gym.update(body)
    #     return [202, {'Content-Type' => 'application/json'}, [gym.to_json]]

        # below is an example of handling multiple exceptions
        # handling exceptions this way is NOT required or recommended
        # for the phase 3 project

    #   rescue ActiveRecord::RecordNotFound
    #     return [404, {'Content-Type' => 'application/json'}, [{message: "Gym not found"}.to_json]]
    #   rescue ActiveRecord::UnknownAttributeError
    #     return [422, {'Content-Type' => 'application/json'}, [{message: "Could not process your update request"}.to_json]]
    #   end
    # end

    # Gym Delete

    # if req.path.match('/gyms/') && req.delete?
    #   id = req.path.split('/')[2]
    #   begin
    #     gym = Gym.find(id)
    #     gym.destroy
    #     return [200, {'Content-Type' => 'application/json'}, [{message: "Gym Destroyed"}.to_json]]
    #   rescue
    #     return [404, {'Content-Type' => 'application/json'}, [{message: "Gym not found"}.to_json]]
    #   end
    # end

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

#show eagle/not eagle info
if req.path == ("/badges/eagle") && req.get?
  badge_eagle = MeritBadge.all.order(:badges_is_eagle)
  return [
    200,
    {'Content-Type' => 'application/json'},
    [badge_eagle.to_json]
  ]
else
  res.write "info not found"
end



    res.finish
  end
end
