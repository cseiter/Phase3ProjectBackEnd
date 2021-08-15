Scout.delete_all
MeritBadge.delete_all

#Eagle required
#First Aid, Citizenship in the Community, Citizenship in the Nation, Citizenship in the World,
#Communication, Cooking, Personal Fitness, Emergency Preparedness OR Lifesaving,
#Environmental Science OR Sustainability, Personal Management, Camping, Family Life,
#Swimming OR Hiking OR Cycling

first_aid = MeritBadge.create(badges_name: "First_Aid",badges_is_earned: "yes", badges_is_eagle: "yes")
cit_comm = MeritBadge.create(badges_name: "Citizenship_in_the_Community",badges_is_earned: "yes",badges_is_eagle: "yes")
cit_nat = MeritBadge.create(badges_name: "Citizenship_in_the_Nation",badges_is_earned: "yes",badges_is_eagle: "yes")
cit_world = MeritBadge.create(badges_name: "Citizenship_in_the_World",badges_is_earned: "no",badges_is_eagle: "yes")
communication = MeritBadge.create(badges_name: "Communication",badges_is_earned: "no",badges_is_eagle: "yes")
cooking = MeritBadge.create(badges_name: "Cooking",badges_is_earned: "no",badges_is_eagle: "yes")
per_fit = MeritBadge.create(badges_name: "Personal_Fitness",badges_is_earned: "no",badges_is_eagle: "yes")
em_prep = MeritBadge.create(badges_name: "Emergency_Preparedness",badges_is_earned: "no",badges_is_eagle: "yes")
env_sci = MeritBadge.create(badges_name: "Environmental_Science",badges_is_earned: "no",badges_is_eagle: "yes")
pers_man = MeritBadge.create(badges_name: "Personal_Management",badges_is_earned: "no",badges_is_eagle: "yes")
camping = MeritBadge.create(badges_name: "Camping",badges_is_earned: "no",badges_is_eagle: "yes")
fam_life = MeritBadge.create(badges_name: "Family_Life",badges_is_earned: "no",badges_is_eagle: "yes")
swimming = MeritBadge.create(badges_name: "Swimming",badges_is_earned: "no",badges_is_eagle: "yes")
music = MeritBadge.create(badges_name: "Music",badges_is_earned: "yes",badges_is_eagle: "no")
wilderness_survival = MeritBadge.create(badges_name: "Wilderness_Survival",badges_is_earned: "yes",badges_is_eagle: "no")
art = MeritBadge.create(badges_name: "Art",badges_is_earned: "yes",badges_is_eagle: "no")
game = MeritBadge.create(badges_name: "Game_Design",badges_is_earned: "yes",badges_is_eagle: "no")

aiden = Scout.create(scouts_f_name: "Aiden", scouts_l_name: "Seiter", scouts_troop: "yes")
