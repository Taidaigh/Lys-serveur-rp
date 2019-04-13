local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}
Config								= {}

--------------------------------------------------------------------------------------------
-- Config
--------------------------------------------------------------------------------------------
-- GENERAL
Config.general = {
	manettes = false,
}
-- GPS RAPIDE
Config.poleemploi = {
	x = -259.08557128906,
	y = -974.677734375,
	z = 31.220008850098,
}
Config.comico = {
	x = 430.91763305664,
	y = -980.24694824218,
	z = 31.710563659668,
}
Config.hopital = {
	x = 1150.1,
	y = -1508.12,
	z = 34.6926,
}
Config.concessionnaire = {
	x = -44.385055541992,
	y = -1109.7479248047,
	z = 26.437595367432,
}
-- Ouvrir le menu perso
Config.menuperso = {
	clavier = Keys["F5"],
}
-- Ouvrir le menu job
Config.menujob = {
	clavier = Keys["F6"],
}
-- TP sur le Marker
Config.TPMarker = {
	clavier1 = Keys["LEFTSHIFT"],
	clavier2 = Keys["E"],
}
-- Lever les mains
Config.handsUP = {
	clavier = Keys["X"],
}

-- Pointer du doight
Config.pointing = {
	clavier = Keys["B"],
}
-- S'acroupir
Config.crouch = {
	clavier = Keys["LEFTCTRL"],
}

Config.Animations = {
	
	{
		name  = 'festives',
		label = 'Festives',
		items = {
	    {label = "Jouer de la musique", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
	    {label = "Dj", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
	    {label = "Boire une biere", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
	    {label = "Bière en zik", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
	    {label = "Air Guitar", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
	    {label = "Air Synth", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_synth", anim = "air_synth"}},
	    {label = "Air Shagging", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
	    {label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
	    {label = "Bourré sur place", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
	    {label = "Danse de la pluie", type = "anim", data = {lib = "anim@mp_player_intcelebrationpaired@f_f_sarcastic", anim = "sarcastic_left"}},
	    {label = "Vomir en voiture", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
	    {label = "Près du feu", type = "scenario", data = {anim = "world_human_stand_fire"}},
		}
	},

	{
		name  = 'greetings',
		label = 'Salutations',
		items = {
	    {label = "Saluer", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
	    {label = "Serrer la main", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
	    {label = "Tchek", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
	    {label = "Tchek Five", type = "anim", data = {lib = "anim@mp_player_intcelebrationpaired@f_m_high_five", anim = "high_five_right"}},
	    {label = "Salut bandit", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
	    {label = "Salut Militaire", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},
	    {label = "Faire des bisous", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@blow_kiss", anim = "blow_kiss"}},
		}
	},

	{
		name  = 'work',
		label = 'Travail',
		items = {
	    {label = "Suspect : se rendre à la police", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
	    {label = "Pêcheur", type = "scenario", data = {anim = "world_human_stand_fishing"}},
	    {label = "Police : enquêter", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
	    {label = "Police : parler à la radio", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
	    {label = "Police : circulation", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
	    {label = "Police : jumelles", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
	    {label = "Agriculture : récolter", type = "scenario", data = {anim = "world_human_gardener_plant"}},
	    {label = "Dépanneur : réparer sous véhicule", type = "scenario", data = {anim = "world_human_vehicle_mechanic"}},
	    {label = "Dépanneur : réparer le moteur", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},
	    {label = "Médecin : observer", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
	    {label = "Médecin : massage cardiaque", type = "anim", data = {lib = "mini@cpr@char_a@cpr_str", anim = "cpr_pumpchest"}},
		{label = "Médecin : bouche à bouche", type = "anim", data = {lib = "mini@cpr@char_a@cpr_str", anim = "cpr_kol"}},
	    {label = "Taxi : parler au client", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},
	    {label = "Taxi : donner la facture", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},
	    {label = "Epicier : donner les courses", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
	    {label = "Barman : servir un shot", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
	    {label = "Journaliste : Prendre une photo", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
	    {label = "Tout métiers : Prendre des notes", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
	    {label = "Tout métiers : Coup de marteau", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
	    {label = "Clochard : Faire la manche", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
	    {label = "Clochard : Faire la statue", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
	    {label = "Femme de ménage : Passer le balai", type = "scenario", data = {anim = "WORLD_HUMAN_JANITOR"}},
	    {label = "Menuisier : Planter un clou", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
		}
	},

	{
		name  = 'humors',
		label = 'Humeurs',
		items = {
	    {label = "Féliciter", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
	    {label = "Super", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
	    {label = "Super 2", type = "anim", data = {lib = "mini@golfreactions@generic@", anim = "putt_react_good_03"}},
	    {label = "Toi", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
	    {label = "Viens", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
	    {label = "Keskya ?", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
	    {label = "A moi", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
	    {label = "Je le savais, putain", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
	    {label = "Merde !", type = "anim", data = {lib = "mini@dartsoutro", anim = "darts_outro_01_guy2"}},
		{label = "Yeahou", type = "anim", data = {lib = "mini@dartsoutro", anim = "darts_outro_01_guy1"}},
		{label = "Yeahou 2", type = "anim", data = {lib = "mini@dartsoutro", anim = "darts_outro_03_guy2"}},
	    {label = "OK !", type = "anim", data = {lib = "anim@mp_player_intselfiedock", anim = "idle_a"}},  
        {label = "Oups !", type = "anim", data = {lib = "anim@mp_player_intupperblow_kiss", anim = "enter"}}, 
	    {label = "Etre épuisé", type = "scenario", data = {lib = "amb@world_human_jog_standing@male@idle_b", anim = "idle_d"}},
	    {label = "Je suis dans la merde", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},
	    {label = "Facepalm", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
	    {label = "Calme-toi ", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
	    {label = "Qu'est ce que j'ai fait ?", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
	    {label = "Avoir peur", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
	    {label = "Fight ?", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
	    {label = "C'est pas Possible !", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
	    {label = "Enlacer", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
	    {label = "Doigt d'honneur", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}}, 
        {label = "Doigt d'honneur (femme)", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@finger", anim = "finger"}},  
	    {label = "Branleur", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},
	    {label = "Balle dans la tete", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
	    {label = "Je t'emmerde !", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@dock", anim = "dock"}},
		}
	},

	{
		name  = 'sports',
		label = 'Sports',
		items = {
	    {label = "Montrer ses muscles", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
	    {label = "Barre de musculation", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
	    {label = "Faire des pompes", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},
	    {label = "Faire des abdos", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},
	    {label = "Faire du yoga", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
	    {label = "Se la peter", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_in_front@idle_a", anim = "idle_b"}}, 
		{label = "Regarde moi ca (Femme)", type = "anim", data = {lib = "mini@hookers_sp", anim = "ilde_d"}},
		}
	},

	{
		name  = 'misc',
		label = 'Divers',
		items = {
	    {label = "Boire un café", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},
	    {label = "S'asseoir", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
	    {label = "S'asseoir (Par terre)", type = "scenario", data = {anim = "WORLD_HUMAN_PICNIC"}},
	    {label = "Attendre contre un mur", type = "scenario", data = {anim = "world_human_leaning"}},
	    {label = "Déprimer au sol", type = "anim", data = {lib = "amb@world_human_stupor@male@base", anim = "base"}},
	    {label = "Couché sur le dos", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
	    {label = "Couché sur le ventre", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
	    {label = "Nettoyer quelque chose", type = "scenario", data = {anim = "world_human_maid_clean"}},
	    {label = "Préparer à manger", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
	    {label = "Position de Fouille", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
	    {label = "Prendre un selfie", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
	    {label = "Ecouter à une porte", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}},
	    {label = "Etre horrifié", type = "anim", data = {lib = "anim@heists@fleeca_bank@hostages@ped_d@intro", anim = "intro"}},	 
		{label = "Souffrir (avec une arme)", type = "anim", data = {lib = "combat@damage@injured_pistol@to_writhe", anim = "variation_b"}},	 
		{label = "Souffrir (sans arme)", type = "anim", data = {lib = "combat@damage@rb_writhe", anim = "rb_writhe_loop"}},
		{label = "Soulever", type = "anim", data = {lib = "anim@apt_trans@garage", anim = "gar_open_1_left"}}, 
		}
	},

	{
		name  = 'attitudem',
		label = 'Attitudes',
		items = {
	    {label = "Normal (M)", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}},
	    {label = "Normal (F)", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},
	    {label = "Depressif", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
	    {label = "Depressif (F)", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
	    {label = "Business", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
	    {label = "Determine", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
	    {label = "Casual", type = "attitude", data = {lib = "move_m@casual@a", anim = "move_m@casual@a"}},
	    {label = "Trop mange", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
	    {label = "Hipster", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
	    {label = "Blesse", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},
	    {label = "Intimide", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
	    {label = "Hobo", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
	    {label = "Malheureux", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
	    {label = "Muscle", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
	    {label = "Choc", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
	    {label = "Sombre", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
	    {label = "Fatigue", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
	    {label = "Pressee", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
	    {label = "Fier", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},
	    {label = "Petite course", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},
	    {label = "Mangeuse d'homme", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
	    {label = "Impertinent", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
	    {label = "Arrogante", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
	    {label = "Marche Sexy (F)", type = "attitude", data = {lib = "move_f@sexy@a", anim = "move_f@sexy@a"}},
	    {label = "Marche effrayée (F)", type = "attitude", data = {lib = "move_f@scared", anim = "move_f@scared"}},
	    {label = "Marche avec un sac", type = "attitude", data = {lib = "move_m@bag", anim = "move_m@bag"}},
	    {label = "Marche lente", type = "attitude", data = {lib = "move_m@casual@d", anim = "move_m@casual@d"}},
	    {label = "Marche Cowboy (M)", type = "attitude", data = {lib = "MOVE_M@TOUGH_GUY@", anim = "MOVE_M@TOUGH_GUY@"}},
	    {label = "Marche Cowboy (F)", type = "attitude", data = {lib = "MOVE_F@TOUGH_GUY@", anim = "MOVE_F@TOUGH_GUY@"}},
		}
	},
	{
		name  = 'porn',
		label = 'PEGI 21',
		items = {
	    {label = "Homme se faire su*** en voiture", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},
	    {label = "Femme faire une gaterie en voiture", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},
	    {label = "Homme bais** en voiture", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},
	    {label = "Femme bais** en voiture", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},
	    {label = "Se gratter les couilles", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
	    {label = "Faire du charme", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
	    {label = "Pose michto", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
	    {label = "Montrer sa poitrine", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
	    {label = "Montrer ses fesses", type = "anim", data = {lib = "mini@hookers_sp", anim = "ilde_c"}},
	    {label = "Strip Tease 1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
	    {label = "Strip Tease 2", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
	    {label = "Strip Tease au sol", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
			}
	},

}