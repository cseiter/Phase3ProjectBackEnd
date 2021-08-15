Scout.delete_all
MeritBadge.delete_all

#Eagle required
#First Aid, Citizenship in the Community, Citizenship in the Nation, Citizenship in the World,
#Communication, Cooking, Personal Fitness, Emergency Preparedness OR Lifesaving,
#Environmental Science OR Sustainability, Personal Management, Camping, Family Life,
#Swimming OR Hiking OR Cycling

first_aid = MeritBadge.create(badges_name: "First_Aid",badges_is_earned: "True",badges_is_eagle: "True")
music = MeritBadge.create(badges_name: "Music",badges_is_earned: "True",badges_is_eagle: "False")
wilderness_survival = MeritBadge.create(badges_name: "Wilderness_Survival",badges_is_earned: "True",badges_is_eagle: "False")

music.toggle!(:badges_is_eagle)

aiden = Scout.create(scouts_f_name: "Aiden", scouts_l_name: "Seiter", scouts_troop: 1)
