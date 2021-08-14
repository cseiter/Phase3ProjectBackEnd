Scout.delete_all
MeritBadge.delete_all

first_aid = MeritBadge.create(badges_name: "First Aid",badges_is_earned: "True",badges_is_eagle: "True")
music = MeritBadge.create(badges_name: "Music",badges_is_earned: "True",badges_is_eagle: "False")

aiden = Scout.create(scouts_f_name: "Aiden", scouts_l_name: "Seiter", scouts_troop: 1)
