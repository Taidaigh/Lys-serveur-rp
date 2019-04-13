Citizen.CreateThread(function()
  LoadMpDlcMaps()
  EnableMpDlcMaps(true)
---------------------------RequestIpl---------------------------  	
	-- RemoveIpl
		--RemoveIpl("bh1_16_refurb")
  		--RemoveIpl("jewel2fake")

	-- Simeon: -47.16170 -1115.3327 26.5
		RequestIpl('v_carshowroom')
		RequestIpl('shr_int')
		RemoveIpl('shutter_closed')

	-- Trevor: 1985.48132, 3828.76757, 32.5
	-- Trash or Tidy. Only choose one.
		--RequestIpl("TrevorsTrailerTrash")
		RequestIpl("trevorstrailertidy")
	
	-- Heist Jewel: -637.20159 -239.16250 38.1
		RequestIpl("post_hiest_unload")
		
	-- Max Renda: -585.8247, -282.72, 35.45475
		RequestIpl("refit_unload")
  
	-- Heist Union Depository: 2.69689322, -667.0166, 16.1306286
		RequestIpl("FINBANK")

	-- Morgue: 239.75195, -1360.64965, 39.53437
		RequestIpl("Coroner_Int_on")
		RequestIpl("coronertrash")
	
	-- Cluckin Bell: -146.3837, 6161.5, 30.2062
		--RequestIpl("CS1_02_cf_onmission1")
		--RequestIpl("CS1_02_cf_onmission2")
		--RequestIpl("CS1_02_cf_onmission3")
		--RequestIpl("CS1_02_cf_onmission4")
	
	-- Grapeseed's farm: 2447.9, 4973.4, 47.7
		RequestIpl("farm")
		RequestIpl("farmint")
		RequestIpl("farm_lod")
		RequestIpl("farm_props")
		RequestIpl("des_farmhouse")
	
	-- FIB lobby: 105.4557, -745.4835, 44.7548
		RequestIpl("FIBlobby")
	
	-- Billboard: iFruit
		--RequestIpl("FruitBB")
		--RequestIpl("sc1_01_newbill")
		--RequestIpl("hw1_02_newbill")
		--RequestIpl("hw1_emissive_newbill")
		--RequestIpl("sc1_14_newbill")
		--RequestIpl("dt1_17_newbill")

	-- Lester's factory: 716.84, -962.05, 31.59
		--RequestIpl("id2_14_during_door")
		--RequestIpl("id2_14_during1")
	
	-- Life Invader lobby: -1047.9, -233.0, 39.0
		RequestIpl("facelobby")
	
	-- Tunnels
		RequestIpl("v_tunnel_hole")

	-- Carwash: 55.7, -1391.3, 30.5
		--RequestIpl("Carwash_with_spinners")
	
	-- Stadium "Fame or Shame": -248.49159240722656, -2010.509033203125, 34.57429885864258
		RequestIpl("sp1_10_real_interior")
		RequestIpl("sp1_10_real_interior_lod")
	
	-- House in Banham Canyon: -3086.428, 339.2523, 6.3717
		--RequestIpl("ch1_02_open")
		
	-- Garage in La Mesa (autoshop): 970.27453, -1826.56982, 31.11477
		RequestIpl("bkr_bi_id1_23_door")
		RequestIpl("bkr_bi_hw1_13_int")
		
	-- Hill Valley church - Grave: -282.46380000, 2835.84500000, 55.91446000
		RequestIpl("lr_cs6_08_grave_closed")
	
	-- Lost's trailer park: 49.49379000, 3744.47200000, 46.38629000
		--RequestIpl("methtrailer_grp1")
		
	-- Lost safehouse: 984.1552, -95.3662, 74.50
		RequestIpl("bkr_bi_hw1_13_int")
			
	-- Raton Canyon river: -1652.83, 4445.28, 2.52
		--RequestIpl("CanyonRvrShallow")
		
	-- Zancudo Gates (GTAO like): -1600.30100000, 2806.73100000, 18.79683000
		--RequestIpl("CS3_07_MPGates")
		
	-- Pillbox hospital:
		RequestIpl("rc12b_default")

	-- Josh's house: -1117.1632080078, 303.090698, 66.52217
		RequestIpl("bh1_47_joshhse_unburnt")
		RequestIpl("bh1_47_joshhse_unburnt_lod")
		
	-- Zancudo River (need streamed content): 86.815, 3191.649, 30.463
		RequestIpl("cs3_05_water_grp1")
		RequestIpl("cs3_05_water_grp1_lod")
		RequestIpl("cs3_05_water_grp2")
		RequestIpl("cs3_05_water_grp2_lod")
	
	-- Cassidy Creek (need streamed content): -425.677, 4433.404, 27.3253
		RequestIpl("canyonriver01")
		RequestIpl("canyonriver01_lod")

	-- Zone Portuaire
		RequestIpl("cargoship")	
		
	-- Optional
		-- Graffitis
			--RequestIpl("ch3_rd2_bishopschickengraffiti") -- 1861.28, 2402.11, 58.53
			--RequestIpl("cs5_04_mazebillboardgraffiti") -- 2697.32, 3162.18, 58.1
			--RequestIpl("cs5_roads_ronoilgraffiti") -- 2119.12, 3058.21, 53.25
			
		-- Heist Carrier: 3082.3117 -4717.1191 15.2622
			RequestIpl("hei_carrier")
			RequestIpl("hei_carrier_distantlights")
			RequestIpl("hei_Carrier_int1")
			RequestIpl("hei_Carrier_int2")
			RequestIpl("hei_Carrier_int3")
			RequestIpl("hei_Carrier_int4")
			RequestIpl("hei_Carrier_int5")
			RequestIpl("hei_Carrier_int6")
			RequestIpl("hei_carrier_lodlights")
			RequestIpl("hei_carrier_slod")
		
		-- Heist Yatch: -2043.974,-1031.582, 11.981
			RequestIpl("hei_yacht_heist")
			RequestIpl("hei_yacht_heist_bar")
			RequestIpl("hei_yacht_heist_bar_lod")
			RequestIpl("hei_yacht_heist_bedrm")
			RequestIpl("hei_yacht_heist_bedrm_lod")
			RequestIpl("hei_yacht_heist_bridge")
			RequestIpl("hei_yacht_heist_bridge_lod")
			RequestIpl("hei_yacht_heist_distantlights")
			RequestIpl("hei_yacht_heist_enginrm")
			RequestIpl("hei_yacht_heist_enginrm_lod")
			RequestIpl("hei_yacht_heist_lod")
			RequestIpl("hei_yacht_heist_lodlights")
			RequestIpl("hei_yacht_heist_lounge")
			RequestIpl("hei_yacht_heist_lounge_lod")
			RequestIpl("hei_yacht_heist_slod")
		
		-- Bahama Mamas: -1388.0013, -618.41967, 30.819599
			--RequestIpl("hei_sm_16_interior_v_bahama_milo_")
		
		-- Red Carpet: 300.5927, 199.7589, 104.3776
			RequestIpl("redCarpet") 

		-- UFO
		-- Zancudo: -2051.99463, 3237.05835, 1456.97021
		-- Hippie base: 2490.47729, 3774.84351, 2414.035
		-- Chiliad: 501.52880000, 5593.86500000, 796.23250000
			 --RequestIpl("ufo")
			 --RequestIpl("ufo_eye")
			 --RequestIpl("ufo_lod")

		--OTHERS
			--RequestIpl("Hospitaldoorsanim")
			--RequestIpl("Jewel_Gasmasks")
			--RequestIpl("V_53_Agency _Overalls")
			--RequestIpl("V_53_Agency_Blueprint")
			--RequestIpl("V_35_KitBag")
			--RequestIpl("V_35_Body_Armour")
			--RequestIpl("V_35_Fireman")
			--RequestIpl("GunClubWallHooks")			

		-- DLC
			 --RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware04_milo")
			 --RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware05_milo")
			 --RequestIpl("ex_exec_warehouse_placement_interior_0_int_warehouse_m_dlc_milo ")
			 --RequestIpl("ex_exec_warehouse_placement_interior_1_int_warehouse_s_dlc_milo ")
			 RequestIpl("ex_exec_warehouse_placement_interior_2_int_warehouse_l_dlc_milo ")		
			 --RequestIpl("bkr_biker_interior_placement_interior_0_biker_dlc_int_01_milo")
			 RequestIpl("bkr_biker_interior_placement_interior_1_biker_dlc_int_02_milo")     ---- ClubHouse02
			 RequestIpl("bkr_biker_interior_placement_interior_2_biker_dlc_int_ware01_milo") ---- Meth
			 RequestIpl("bkr_biker_interior_placement_interior_3_biker_dlc_int_ware02_milo") ---- Weed
			 RequestIpl("bkr_biker_interior_placement_interior_4_biker_dlc_int_ware03_milo") ---- Cocaine
			 RequestIpl("bkr_biker_interior_placement_interior_5_biker_dlc_int_ware04_milo") ---- Faux Billets
			 RequestIpl("bkr_biker_interior_placement_interior_6_biker_dlc_int_ware05_milo") ---- Faux Papiers			 
			 RequestIpl("imp_impexp_interior_placement_interior_1_impexp_intwaremed_milo_")  ---- Véhicule WareHouse

		-- Bunkers - Exteriors
			--RequestIpl("gr_case0_bunkerclosed")
			--RequestIpl("gr_case1_bunkerclosed")
			--RequestIpl("gr_case2_bunkerclosed")
			--RequestIpl("gr_case3_bunkerclosed")
			--RequestIpl("gr_case4_bunkerclosed")
			--RequestIpl("gr_case5_bunkerclosed")
			--RequestIpl("gr_case6_bunkerclosed")
			--RequestIpl("gr_case7_bunkerclosed")
			--RequestIpl("gr_case9_bunkerclosed")
			--RequestIpl("gr_case10_bunkerclosed")
			--RequestIpl("gr_case11_bunkerclosed")

		-- Bunkers - Interior: 892.6384, -3245.8664, -98.2645
			 RequestIpl("gr_entrance_placement")
			 RequestIpl("gr_grdlc_interior_placement")
			 RequestIpl("gr_grdlc_interior_placement_interior_0_grdlc_int_01_milo_")
			 RequestIpl("gr_grdlc_interior_placement_interior_1_grdlc_int_02_milo_")

		-- Garage Arcadius --
			 RequestIpl("imp_dt1_02_modgarage")
			 RequestIpl("imp_dt1_02_cargarage_a")
			 RequestIpl("imp_dt1_02_cargarage_b")
			 RequestIpl("imp_dt1_02_cargarage_c")

		-- Garage MazeBankBuilding --
			 RequestIpl("imp_dt1_11_modgarage")
			 RequestIpl("imp_dt1_11_cargarage_a")
			 RequestIpl("imp_dt1_11_cargarage_b")
			 RequestIpl("imp_dt1_11_cargarage_c")			 
		
		-- Garage MazeBankWest --
			 RequestIpl("imp_dt1_15_modgarage")
			 RequestIpl("imp_dt1_15_cargarage_a")
			 RequestIpl("imp_dt1_15_cargarage_b")
			 RequestIpl("imp_dt1_15_cargarage_c")

		-- Garage LomBank --
			 RequestIpl("imp_dt1_13_modgarage")
			 RequestIpl("imp_dt1_13_cargarage_a")
			 RequestIpl("imp_dt1_13_cargarage_b")
			 RequestIpl("imp_dt1_13_cargarage_c")

		-- DLC 2018
				RequestIpl("xm_x17dlc_int_placement_interior_8_x17dlc_int_sub_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_6_x17dlc_int_silo_01_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_7_x17dlc_int_silo_02_milo_")				
				RequestIpl("sm_smugdlc_interior_placement_interior_0_smugdlc_int_01_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_33_x17dlc_int_02_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_34_x17dlc_int_lab_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_35_x17dlc_int_tun_entry_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_4_x17dlc_int_facility_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_5_x17dlc_int_facility2_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_9_x17dlc_int_01_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_0_x17dlc_int_base_ent_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_1_x17dlc_int_base_loop_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_10_x17dlc_int_tun_straight_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_11_x17dlc_int_tun_slope_flat_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_12_x17dlc_int_tun_flat_slope_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_13_x17dlc_int_tun_30d_r_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_14_x17dlc_int_tun_30d_l_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_15_x17dlc_int_tun_straight_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_16_x17dlc_int_tun_straight_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_17_x17dlc_int_tun_slope_flat_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_18_x17dlc_int_tun_slope_flat_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_19_x17dlc_int_tun_flat_slope_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_2_x17dlc_int_bse_tun_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_20_x17dlc_int_tun_flat_slope_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_21_x17dlc_int_tun_30d_r_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_22_x17dlc_int_tun_30d_r_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_23_x17dlc_int_tun_30d_r_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_24_x17dlc_int_tun_30d_r_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_25_x17dlc_int_tun_30d_l_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_26_x17dlc_int_tun_30d_l_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_27_x17dlc_int_tun_30d_l_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_28_x17dlc_int_tun_30d_l_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_29_x17dlc_int_tun_30d_l_milo_")
				RequestIpl("xm_x17dlc_int_placement_interior_3_x17dlc_int_base_milo_")



			function refreshInteriorGang()

			-----WEED-----

				EnableInteriorProp(247297, "light_growthc_stage23_upgrade")
				EnableInteriorProp(247297, "light_growthd_stage23_upgrade")
				EnableInteriorProp(247297, "light_growthf_stage23_upgrade")
				EnableInteriorProp(247297, "light_growthg_stage23_upgrade")
				EnableInteriorProp(247297, "weed_growtha_stage3")
				EnableInteriorProp(247297, "weed_growthb_stage3")
				EnableInteriorProp(247297, "weed_growthc_stage3")
				EnableInteriorProp(247297, "weed_growthd_stage2")				
				EnableInteriorProp(247297, "weed_growthe_stage2")
				EnableInteriorProp(247297, "weed_growthf_stage3")
				EnableInteriorProp(247297, "weed_growthg_stage3")
				EnableInteriorProp(247297, "weed_growthh_stage3")
				EnableInteriorProp(247297, "weed_growthi_stage3")				
				EnableInteriorProp(247297, "weed_upgrade_equip")
				EnableInteriorProp(247297, "weed_drying")
				EnableInteriorProp(247297, "weed_production")
				EnableInteriorProp(247297, "weed_set_up")

			-----METH-----	
				EnableInteriorProp(247041, "meth_lab_upgrade")
				EnableInteriorProp(247041, "meth_lab_production")
				EnableInteriorProp(247041, "meth_lab_setup")

			-----COKE-----
				EnableInteriorProp(247553, "set_up")
				EnableInteriorProp(247553, "coke_cut_01")
				EnableInteriorProp(247553, "coke_cut_02")
				EnableInteriorProp(247553, "coke_cut_03")
				EnableInteriorProp(247553, "coke_cut_04")
				EnableInteriorProp(247553, "coke_cut_05")
				EnableInteriorProp(247553, "coke_press_upgrade")
				EnableInteriorProp(247553, "production_upgrade")
				EnableInteriorProp(247553, "equipment_upgrade")
				EnableInteriorProp(247553, "table_equipment_upgrade")

			-----BUNKER-----
				EnableInteriorProp(258561, "Bunker_Style_C")
				EnableInteriorProp(258561, "upgrade_bunker_set")
				EnableInteriorProp(258561, "security_upgrade")
				EnableInteriorProp(258561, "Office_Upgrade_set")
				EnableInteriorProp(258561, "gun_range_blocker_set")
				EnableInteriorProp(258561, "gun_wall_blocker")
				EnableInteriorProp(258561, "gun_range_lights")
				EnableInteriorProp(258561, "gun_locker_upgrade")
				EnableInteriorProp(258561, "Gun_schematic_set")

			-----CLUBHOUSE-----
				EnableInteriorProp(246529, "cash_small")
				EnableInteriorProp(246529, "coke_small")
				EnableInteriorProp(246529, "meth_small")
				EnableInteriorProp(246529, "weed_small")
				EnableInteriorProp(246529, "counterfeit_small")
				EnableInteriorProp(246529, "id_small")
				EnableInteriorProp(246529, "decorative_02")
				EnableInteriorProp(246529, "furnishings_02")
				EnableInteriorProp(246529, "walls_01")
				EnableInteriorProp(246529, "lower_walls_default")
				EnableInteriorProp(246529, "gun_locker")
				EnableInteriorProp(246529, "mod_booth")

			-----FAUXBILLETS-----
				EnableInteriorProp(247809, "counterfeit_cashpile10a")
				EnableInteriorProp(247809, "counterfeit_cashpile10c")
				EnableInteriorProp(247809, "counterfeit_cashpile20c")
				EnableInteriorProp(247809, "counterfeit_cashpile20a")
				EnableInteriorProp(247809, "counterfeit_cashpile100d")
				EnableInteriorProp(247809, "counterfeit_cashpile100b")
				EnableInteriorProp(247809, "counterfeit_setup")
				EnableInteriorProp(247809, "money_cutter")
				EnableInteriorProp(247809, "special_chairs")
				EnableInteriorProp(247809, "counterfeit_upgrade_equip")
				EnableInteriorProp(247809, "dryera_on")

			-----FAUXPAPIERS-----
				EnableInteriorProp(246785, "clutter")
				EnableInteriorProp(246785, "equipment_upgrade")
				EnableInteriorProp(246785, "interior_upgrade")
				EnableInteriorProp(246785, "production")
				EnableInteriorProp(246785, "security_high")
				EnableInteriorProp(246785, "set_up")
				EnableInteriorProp(246785, "chair01")
				EnableInteriorProp(246785, "chair02")
				EnableInteriorProp(246785, "chair03")
				EnableInteriorProp(246785, "chair04")
				EnableInteriorProp(246785, "chair05")
--[[
			-----GARAGES-----

			--Arcadius
				EnableInteriorProp(253441,"garage_decor_01")
				EnableInteriorProp(253441,"lighting_option01")
				EnableInteriorProp(253441,"numbering_style01_n2")

				EnableInteriorProp(253697,"garage_decor_01")
				EnableInteriorProp(253697,"lighting_option01")
				EnableInteriorProp(253697,"numbering_style01_n2")

				EnableInteriorProp(253953,"garage_decor_01")
				EnableInteriorProp(253953,"lighting_option01")
				EnableInteriorProp(253953,"numbering_style01_n2")
----------------------------------------------------------------------
			--MazeBank
				EnableInteriorProp(254465,"garage_decor_02")
				EnableInteriorProp(254465,"lighting_option05")
				EnableInteriorProp(254465,"numbering_style05_n2")

				EnableInteriorProp(254721,"garage_decor_02")
				EnableInteriorProp(254721,"lighting_option01")
				EnableInteriorProp(254721,"numbering_style07_n2")

				EnableInteriorProp(254977,"garage_decor_02")
				EnableInteriorProp(254977,"lighting_option05")
				EnableInteriorProp(254977,"numbering_style08_n2")
-----------------------------------------------------------------------
			--LomBank	
				EnableInteriorProp(255489,"garage_decor_03")
				EnableInteriorProp(255489,"lighting_option05")
				EnableInteriorProp(255489,"numbering_style05_n2")

				EnableInteriorProp(255745,"garage_decor_03")
				EnableInteriorProp(255745,"lighting_option01")
				EnableInteriorProp(255745,"numbering_style07_n2")

				EnableInteriorProp(256001,"garage_decor_03")
				EnableInteriorProp(256001,"lighting_option05")
				EnableInteriorProp(256001,"numbering_style08_n2")

-----------------------------------------------------------------------
			--MazeBankWest	
				EnableInteriorProp(256513,"garage_decor_04")
				EnableInteriorProp(256513,"lighting_option05")
				EnableInteriorProp(256513,"numbering_style05_n2")

				EnableInteriorProp(256769,"garage_decor_04")
				EnableInteriorProp(256769,"lighting_option01")
				EnableInteriorProp(256769,"numbering_style07_n2")

				EnableInteriorProp(257025,"garage_decor_04")
				EnableInteriorProp(257025,"lighting_option05")
				EnableInteriorProp(257025,"numbering_style08_n2")	
--]]
-------------------------------------------------------------------------

			--MODSHOP--							
				EnableInteriorProp(255233,"floor_vinyl_11")
				EnableInteriorProp(254209,"floor_vinyl_12")
				EnableInteriorProp(256257,"floor_vinyl_15")
				EnableInteriorProp(257281,"floor_vinyl_18")	

			--VEHICLEWAREHOUSE--
				EnableInteriorProp(252673, "branded_style_set")
				EnableInteriorProp(252673, "car_floor_hatch")
				--EnableInteriorProp(252673, "door_blocker")	

			--VEHICLEWAREHOUSE--
				EnableInteriorProp(260353, "set_bedroom_blinds_open")
				EnableInteriorProp(260353, "set_bedroom_modern")
				EnableInteriorProp(260353, "set_modarea")																										
				EnableInteriorProp(260353, "set_crane_tint")
				EnableInteriorProp(260353, "set_tint_shell")
				EnableInteriorProp(260353, "set_lighting_tint_props")
				EnableInteriorProp(260353, "set_floor_1")
				EnableInteriorProp(260353, "set_office_modern")	
				EnableInteriorProp(260353, "set_lighting_wall_tint04")	
				EnableInteriorProp(260353, "set_lighting_hangar_c")	
				EnableInteriorProp(260353, "set_floor_decal_9")																		


			-----Facility-----
				EnableInteriorProp(269313,"set_int_02_shell")
				EnableInteriorProp(269313,"set_int_02_lounge1")
				EnableInteriorProp(269313,"set_int_02_lounge2")
				EnableInteriorProp(269313,"set_int_02_lounge3")
				EnableInteriorProp(269313,"set_int_02_no_sleep")
				EnableInteriorProp(269313,"set_int_02_sleep")
				EnableInteriorProp(269313,"set_int_02_sleep2")
				EnableInteriorProp(269313,"set_int_02_sleep3")		
				EnableInteriorProp(269313,"set_int_02_security")
				EnableInteriorProp(269313,"set_int_02_paramedic_complete")
				EnableInteriorProp(269313,"set_int_02_forcedentry_complete")
				EnableInteriorProp(269313,"set_int_02_aqualungs_complete")
				EnableInteriorProp(269313,"set_int_02_daylightrob_complete")
				EnableInteriorProp(269313,"set_int_02_burglary_complete")
				EnableInteriorProp(269313,"set_int_02_flightrecord_complete")
				EnableInteriorProp(269313,"set_int_02_outfit_paramedic")
				EnableInteriorProp(269313,"set_int_02_outfit_morgue")
				EnableInteriorProp(269313,"set_int_02_outfit_serverfarm")
				EnableInteriorProp(269313,"set_int_02_outfit_iaa")
				EnableInteriorProp(269313,"set_int_02_outfit_steal_avenger")
				EnableInteriorProp(269313,"set_int_02_outfit_foundry")
				EnableInteriorProp(269313,"set_int_02_outfit_riot_van")
				EnableInteriorProp(269313,"set_int_02_outfit_stromberg")				
				EnableInteriorProp(269313,"set_int_02_outfit_sub_finale")
				EnableInteriorProp(269313,"set_int_02_outfit_predator")
				EnableInteriorProp(269313,"set_int_02_outfit_khanjali")
				EnableInteriorProp(269313,"set_int_02_outfit_volatol")
				EnableInteriorProp(269313,"set_int_02_cannon")
				EnableInteriorProp(269313,"set_int_02_decal_01")																	
				EnableInteriorProp(269313,"set_int_02_decal_02")
				EnableInteriorProp(269313,"set_int_02_decal_03")
				EnableInteriorProp(269313,"set_int_02_decal_04")
				EnableInteriorProp(269313,"set_int_02_decal_05")
				EnableInteriorProp(269313,"set_int_02_decal_06")
				EnableInteriorProp(269313,"set_int_02_decal_07")
				EnableInteriorProp(269313,"set_int_02_decal_08")
				EnableInteriorProp(269313,"set_int_02_decal_09")
				EnableInteriorProp(269313,"set_int_02_trophy1")				
				EnableInteriorProp(269313,"set_int_02_trophy_iaa")
				EnableInteriorProp(269313,"set_int_02_trophy_sub")
				EnableInteriorProp(269313,"set_int_02_Parts_Panther1")
				EnableInteriorProp(269313,"set_int_02_Parts_Panther2")
				EnableInteriorProp(269313,"set_int_02_Parts_Panther3")
				EnableInteriorProp(269313,"set_int_02_Parts_Riot1")																	
				EnableInteriorProp(269313,"set_int_02_Parts_Riot2")
				EnableInteriorProp(269313,"set_int_02_Parts_Riot3")
				EnableInteriorProp(269313,"set_int_02_Parts_Cheno1")
				EnableInteriorProp(269313,"set_int_02_Parts_Cheno2")
				EnableInteriorProp(269313,"set_int_02_Parts_Cheno3")
				EnableInteriorProp(269313,"set_int_02_Parts_Thruster1")
				EnableInteriorProp(269313,"set_int_02_Parts_Thruster2")
				EnableInteriorProp(269313,"set_int_02_Parts_Thruster3")
				EnableInteriorProp(269313,"set_int_02_Parts_Avenger1")				
				EnableInteriorProp(269313,"set_int_02_Parts_Avenger2")
				EnableInteriorProp(269313,"set_int_02_Parts_Avenger3")
				EnableInteriorProp(269313,"set_int_02_crewemblem")
				EnableInteriorProp(269313,"set_int_02_clutter1")
				EnableInteriorProp(269313,"set_int_02_clutter2")
				EnableInteriorProp(269313,"set_int_02_clutter3")
				EnableInteriorProp(269313,"set_int_02_clutter4")
				EnableInteriorProp(269313,"set_int_02_clutter5")

			-----AVENGER-----
				EnableInteriorProp(262145,"SHELL_TINT")
				EnableInteriorProp(262145,"CONTROL_1")
				EnableInteriorProp(262145,"CONTROL_2")
				EnableInteriorProp(262145,"CONTROL_3")
				EnableInteriorProp(262145,"WEAPONS_MOD")
				EnableInteriorProp(262145,"VEHICLE_MOD")
				EnableInteriorProp(262145,"GOLD_BLING")

			end

			function refreshMyInteriors()
				RefreshInterior(247297)
				RefreshInterior(247041)
				RefreshInterior(247553)
				RefreshInterior(258561)
				RefreshInterior(246529)
				RefreshInterior(247809)
				RefreshInterior(246785)
				RefreshInterior(269313)
				RefreshInterior(262145)
				--RefreshInterior(253441)
				--RefreshInterior(253697)
				--RefreshInterior(254465)
				--RefreshInterior(254721)
				--RefreshInterior(254977)
				--RefreshInterior(255489)
				--RefreshInterior(255745)
				--RefreshInterior(256001)
				--RefreshInterior(256513)
				--RefreshInterior(256769)
				--RefreshInterior(257025)
				RefreshInterior(255233)
				RefreshInterior(254209)
				RefreshInterior(256257)
				RefreshInterior(257281)	
				RefreshInterior(252673)	
				RefreshInterior(260353)		

				refreshInteriorGang()
			end
			refreshMyInteriors() 			
end)