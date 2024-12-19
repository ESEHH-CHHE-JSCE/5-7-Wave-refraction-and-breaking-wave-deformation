// Created     : 2022-10-10 16:45:47
// DLL         : C:\Program Files (x86)\DHI\MIKE Zero\2022\bin\x64\pfs2004.dll
// Version     : 20.1.0.16132

[FemEngineSW]
   [DOMAIN]
      Touched = 1
      discretization = 2
      number_of_dimensions = 2
      number_of_meshes = 1
      file_name = |.\Slope_DX=100m.mesh|
      type_of_reordering = 1
      number_of_domains = 16
      coordinate_type = 'NON-UTM'
      minimum_depth = -5.5
      datum_depth = 0.5
      vertical_mesh_type_overall = 1
      number_of_layers = 10
      z_sigma = 0.0
      vertical_mesh_type = 1
      layer_thickness = 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1
      sigma_c = 0.1
      theta = 2.0
      b = 0.0
      number_of_layers_zlevel = 10
      vertical_mesh_type_zlevel = 1
      constant_layer_thickness_zlevel = 0.0
      variable_layer_thickness_zlevel = 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0
      type_of_bathymetry_adjustment = 1
      minimum_layer_thickness_zlevel = 0.0
      type_of_mesh = 0
      type_of_gauss = 3
      [BOUNDARY_NAMES]
         Touched = 0
         MzSEPfsListItemCount = 3
         [CODE_4]
            Touched = 0
            name = 'Code 4'
         EndSect  // CODE_4

         [CODE_3]
            Touched = 0
            name = 'Code 3'
         EndSect  // CODE_3

         [CODE_2]
            Touched = 0
            name = 'Code 2'
         EndSect  // CODE_2

      EndSect  // BOUNDARY_NAMES

      [MATERIAL]
         Touched = 0
         include_material_zones = 0
         [MATERIAL_ZONES]
            Touched = 0
            MzSEPfsListItemCount = 0
            input_format = 1
            format_code = 2
            coordinate_type = 'NON-UTM'
            file_name = ||
            item_number_for_code = 1
            item_name_for_code = ''
         EndSect  // MATERIAL_ZONES

      EndSect  // MATERIAL

   EndSect  // DOMAIN

   [TIME]
      Touched = 1
      start_time = 2000, 1, 1, 0, 0, 0
      time_step_interval = 5.0
      number_of_time_steps = 0
   EndSect  // TIME

   [MODULE_SELECTION]
      Touched = 0
      mode_of_hydrodynamic_module = 0
      hydrodynamic_features = 1
      fluid_property = 1
      mode_of_spectral_wave_module = 2
      mode_of_transport_module = 0
      mode_of_mud_transport_module = 0
      mode_of_eco_lab_module = 0
      mode_of_sand_transport_module = 0
      mode_of_particle_tracking_module = 0
      mode_of_oil_spill_module = 0
      mode_of_shoreline_module = 0
   EndSect  // MODULE_SELECTION

   [SPECTRAL_WAVE_MODULE]
      mode = 2
      [SPACE]
         number_of_mesh_geometry = 1
      EndSect  // SPACE

      [EQUATION]
         Touched = 1
         formulation = 1
         time_formulation = 1
         JONSWAP_factor_1 = 0.92
         JONSWAP_factor_2 = 0.83
         type_of_settings = 1
      EndSect  // EQUATION

      [TIME]
         Touched = 0
         start_time_step = 0
         time_step_factor = 1
         time_step_factor_AD = 1
      EndSect  // TIME

      [SPECTRAL]
         Touched = 1
         type_of_frequency_discretization = 2
         number_of_frequencies = 25
         minimum_frequency = 0.055
         frequency_interval = 0.02
         frequency_factor = 1.1
         type_of_directional_discretization = 2
         number_of_directions = 18
         minimum_direction = 180.0
         maximum_direction = 360.0
         separation_of_wind_sea_and_swell = 0
         threshold_frequency = 0.125
         maximum_threshold_frequency = 0.5959088268863617
         c_wave_age = 0.83
         p_wave_age = 1.0
      EndSect  // SPECTRAL

      [SOLUTION_TECHNIQUE]
         Touched = 1
         error_level = 0
         maximum_number_of_errors = 200
         minimum_period = 0.1
         maximum_period = 25.0
         initial_period = 8.0
         scheme_of_space_discretization_geographical = 2
         scheme_of_space_discretization_direction = 1
         scheme_of_space_discretization_frequency = 1
         method = 1
         number_of_iterations = 500
         tolerance1 = 1e-06
         tolerance2 = 0.001
         relaxation_factor = 0.1
         number_of_levels_in_transport_calc = 32
         number_of_steps_in_source_calc = 1
         maximum_CFL_number = 1.0
         dt_min = 0.01
         dt_max = 5.0
         type_overall = 1
         file_name_overall = 'Convergence_info.dfs0'
         input_format = 1
         coordinate_type = 'NON-UTM'
         input_file_name = ||
         number_of_points = 2
         [POINT_1]
            name = 'WR'
            x = 442100.0
            y = 6258950.0
         EndSect  // POINT_1

         [POINT_2]
            name = 'S4'
            x = 445677.0
            y = 6257941.0
         EndSect  // POINT_2

         type_domain = 1
         file_name_domain = 'convergence_domain_DS.dfsu'
         output_frequency = 5
      EndSect  // SOLUTION_TECHNIQUE

      [DEPTH]
         Touched = 1
         type = 0
         minimum_depth = 0.01
         format = 0
         soft_time_interval = 0.0
         constant_level = 0.65
         file_name = ||
         item_number = 1
         item_name = ''
      EndSect  // DEPTH

      [CURRENT]
         Touched = 1
         type = 0
         type_blocking = 1
         factor_blocking = 0.1
         format = 0
         soft_time_interval = 0.0
         constant_x_velocity = 0.0
         constant_y_velocity = 0.0
         file_name = ||
         item_number_for_x_velocity = 1
         item_number_for_y_velocity = 1
         item_name_for_x_velocity = ''
         item_name_for_y_velocity = ''
      EndSect  // CURRENT

      [WIND]
         Touched = 1
         type = 0
         format = 0
         constant_speed = 0.0
         constant_direction = 0.0
         file_name = ||
         soft_time_interval = 0.0
         calculate_neutral_wind = 0
         formula = 1
         type_of_drag = 1
         linear_growth_coefficient = 0.0015
         type_of_air_sea_interaction = 1
         growth_parameter = 1.2
         wave_age_tuning_parameter = 0.011
         background_Charnock_parameter = 0.01
         Charnock_parameter = 0.01
         alpha_drag = 0.00063
         beta_drag = 6.600000000000001e-05
         [CORRECTION_OF_FRICTION_VELOCITY]
            type = 0
            CAP_value = 0.06
         EndSect  // CORRECTION_OF_FRICTION_VELOCITY

      EndSect  // WIND

      [ICE]
         Touched = 1
         type = 0
         format = 3
         c_cut_off = 0.33
         file_name = ||
         item_number = 1
         item_name = ''
      EndSect  // ICE

      [WATER_PROPERTIES]
         Touched = 1
         type_of_density = 1
         [DENSITY]
            Touched = 1
            format = 0
            constant_value = 1010.0
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // DENSITY

         [TEMPERATURE]
            Touched = 1
            format = 0
            constant_value = 10.0
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // TEMPERATURE

         [SALINITY]
            Touched = 1
            format = 0
            constant_value = 35.0
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // SALINITY

      EndSect  // WATER_PROPERTIES

      [AIR_PROPERTIES]
         Touched = 1
         type_of_density = 1
         [DENSITY]
            Touched = 1
            format = 0
            constant_value = 1.23725
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // DENSITY

         [PRESSURE]
            Touched = 1
            format = 0
            constant_value = 1013.0
            file_name = ||
            item_number = 1
            item_name = ''
         EndSect  // PRESSURE

         [TEMPERATURE]
            Touched = 1
            format = 0
            constant_value = 15.0
            file_name = ||
            item_number = 1
            item_name = ''
            height_of_temperature_specification = 2.0
         EndSect  // TEMPERATURE

         [RELATIVE_HUMIDITY]
            Touched = 1
            format = 0
            constant_value = 70.0
            file_name = ||
            item_number = 1
            item_name = ''
            height_of_humidity_specification  = 2.0
         EndSect  // RELATIVE_HUMIDITY

      EndSect  // AIR_PROPERTIES

      [DIFFRACTION]
         Touched = 1
         type = 0
         minimum_delta = -0.75
         maximum_delta = 3.0
         type_of_smoothing = 1
         smoothing_factor = 1.0
         number_of_smoothing_steps = 1
      EndSect  // DIFFRACTION

      [TRANSFER]
         Touched = 1
         type = 0
         type_triad = 0
         alpha_EB = 0.25
      EndSect  // TRANSFER

      [WAVE_BREAKING]
         Touched = 1
         type = 0
         type_of_gamma = 1
         alpha = 1.0
         gamma_steepness = 1.0
         type_of_effect_on_frequency = 0
         type_of_roller = 0
         roller_propagation_factor = 1.0
         roller_dissipation_factor = 0.15
         roller_density = 1000.0
         [GAMMA]
            Touched = 1
            type = 0
            format = 0
            constant_value = 0.8
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // GAMMA

      EndSect  // WAVE_BREAKING

      [BOTTOM_FRICTION]
         Touched = 1
         type = 0
         constant_fc = 0.0
         type_of_effect_on_frequency = 1
         [FRICTION_COEFFICIENT]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.0775
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // FRICTION_COEFFICIENT

         [FRICTION_FACTOR]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.0212
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // FRICTION_FACTOR

         [NIKURADSE_ROUGHNESS]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.04
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // NIKURADSE_ROUGHNESS

         [SAND_GRAIN_SIZE]
            Touched = 1
            type = 1
            format = 0
            constant_value = 0.00025
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // SAND_GRAIN_SIZE

      EndSect  // BOTTOM_FRICTION

      [VEGETATION]
         Touched = 1
         type = 0
         file_name = ||
         item_number = 1
         item_name = ''
      EndSect  // VEGETATION

      [WHITECAPPING]
         Touched = 1
         type = 0
         type_of_spectrum = 3
         mean_frequency_power = -1
         mean_wave_number_power = -1
         [dissipation_cdiss]
            Touched = 1
            type = 0
            format = 0
            constant_value = 4.5
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // dissipation_cdiss

         [dissipation_delta]
            Touched = 1
            type = 0
            format = 0
            constant_value = 0.5
            file_name = ||
            item_number = 1
            item_name = ''
            type_of_soft_start = 2
            soft_time_interval = 0.0
            reference_value = 0.0
            type_of_time_interpolation = 1
         EndSect  // dissipation_delta

      EndSect  // WHITECAPPING

      [STRUCTURES]
         type = 0
         input_format = 1
         coordinate_type = 'NON-UTM'
         number_of_structures = 0
         input_file_name = ||
         [LINE_STRUCTURES]
            Touched = 1
            MzSEPfsListItemCount = 0
            output_of_link_data = 0
            file_name_section = 'line_section.xyz'
            number_of_structures = 0
         EndSect  // LINE_STRUCTURES

      EndSect  // STRUCTURES

      [INITIAL_CONDITIONS]
         Touched = 1
         type = 0
         type_additional = 1
         type_of_spectra = 1
         fetch = 100000.0
         max_peak_frequency = 0.4
         max_Phillips_constant = 0.0081
         shape_parameter_sigma_a = 0.07000000000000001
         shape_parameter_sigma_b = 0.09
         peakednes_parameter_gamma = 3.3
         file_name_m = ||
         item_number_m0 = 1
         item_number_m1 = 1
         item_name_m0 = ''
         item_name_m1 = ''
         file_name_A = ||
         item_number_A = 1
         item_name_A = ''
      EndSect  // INITIAL_CONDITIONS

      [BOUNDARY_CONDITIONS]
         Touched = 1
         MzSEPfsListItemCount = 3
         [CODE_1]
         EndSect  // CODE_1

         [CODE_4]
            Touched = 1
            type = 6
            format = 1
            constant_values = 1.0, 8.0, 270.0, 5.0, 0.1, 16.0, 270.0, 32.0
            file_name = ||
            item_numbers = 1, 1, 1, 1, 44153276, 173520459, 0, 0
            item_names = '', '', '', '', '', '', '', ''
            type_of_soft_start = 1
            soft_time_interval = 0.0
            reference_values = 0.0, 8.0, 270.0, 5.0, 0.0, 16.0, 270.0, 32.0
            type_of_time_interpolation = 1, 1, 1, 1, 1, 1, 1, 1
            type_of_space_interpolation = 1
            code_cyclic = 0
            reflection_coefficient = 1.0
            type_of_frequency_spectrum = 2
            type_of_frequency_normalization = 1
            sigma_a = 0.07000000000000001
            sigma_b = 0.09
            gamma = 3.3
            type_of_directional_distribution = 1
            type_of_directional_normalization = 1
            type_of_frequency_spectrum_swell = 2
            type_of_frequency_normalization_swell = 1
            sigma_a_swell = 0.07000000000000001
            sigma_b_swell = 0.09
            gamma_swell = 5.0
            type_of_directional_distribution_swell = 1
            type_of_directional_normalization_swell = 1
         EndSect  // CODE_4

         [CODE_3]
            Touched = 1
            type = 2
            format = 0
            constant_values = 11.877, 15.4, 320.0, 4.0, 0.1, 16.0, 270.0, 32.0
            file_name = ||
            item_numbers = 1, 1, 1, 1, 200828164, 173520459, 0, 0
            item_names = '', '', '', '', '', '', '', ''
            type_of_soft_start = 1
            soft_time_interval = 0.0
            reference_values = 0.0, 15.4, 320.0, 4.0, 0.0, 16.0, 270.0, 32.0
            type_of_time_interpolation = 1, 1, 1, 1, 1, 1, 1, 1
            type_of_space_interpolation = 1
            code_cyclic = 0
            reflection_coefficient = 1.0
            type_of_frequency_spectrum = 2
            type_of_frequency_normalization = 1
            sigma_a = 0.07000000000000001
            sigma_b = 0.09
            gamma = 3.3
            type_of_directional_distribution = 1
            type_of_directional_normalization = 1
            type_of_frequency_spectrum_swell = 2
            type_of_frequency_normalization_swell = 1
            sigma_a_swell = 0.07000000000000001
            sigma_b_swell = 0.09
            gamma_swell = 5.0
            type_of_directional_distribution_swell = 1
            type_of_directional_normalization_swell = 1
         EndSect  // CODE_3

         [CODE_2]
            Touched = 1
            type = 6
            format = 1
            constant_values = 1.0, 8.0, 270.0, 5.0, 0.1, 16.0, 270.0, 32.0
            file_name = ||
            item_numbers = 1, 1, 1, 1, 200469548, 173520459, 0, 0
            item_names = '', '', '', '', '', '', '', ''
            type_of_soft_start = 1
            soft_time_interval = 0.0
            reference_values = 0.0, 8.0, 270.0, 5.0, 0.0, 16.0, 270.0, 32.0
            type_of_time_interpolation = 1, 1, 1, 1, 1, 1, 1, 1
            type_of_space_interpolation = 1
            code_cyclic = 0
            reflection_coefficient = 1.0
            type_of_frequency_spectrum = 2
            type_of_frequency_normalization = 1
            sigma_a = 0.07000000000000001
            sigma_b = 0.09
            gamma = 3.3
            type_of_directional_distribution = 1
            type_of_directional_normalization = 1
            type_of_frequency_spectrum_swell = 2
            type_of_frequency_normalization_swell = 1
            sigma_a_swell = 0.07000000000000001
            sigma_b_swell = 0.09
            gamma_swell = 5.0
            type_of_directional_distribution_swell = 1
            type_of_directional_normalization_swell = 1
         EndSect  // CODE_2

      EndSect  // BOUNDARY_CONDITIONS

      [OUTPUTS]
         Touched = 1
         MzSEPfsListItemCount = 2
         number_of_outputs = 2
         [OUTPUT_1]
            Touched = 1
            include = 1
            title = 'Area'
            file_name = 'area_waves_DS.dfs2'
            type = 1
            format = 2
            flood_and_dry = 0
            coordinate_type = 'NON-UTM'
            zone = 0
            input_file_name = ||
            input_format = 1
            interpolation_type = 2
            use_end_time = 1
            first_time_step = 0
            last_time_step = 0
            time_step_frequency = 1
            number_of_points = 1
            [POINT_1]
               name = 'Point 1'
               x = 444100.0
               y = 6254500.0
            EndSect  // POINT_1

            [LINE]
               number_of_points = 2
               [POINT_1]
                  x = 442000.0
                  y = 6250000.0
               EndSect  // POINT_1

               [POINT_2]
                  x = 446200.0
                  y = 6259000.0
               EndSect  // POINT_2

               npoints = 3
            EndSect  // LINE

            [AREA]
               number_of_points = 4
               [POINT_1]
                  x = 441958.0
                  y = 6249910.0
               EndSect  // POINT_1

               [POINT_2]
                  x = 441958.0
                  y = 6259090.0
               EndSect  // POINT_2

               [POINT_3]
                  x = 446242.0
                  y = 6259090.0
               EndSect  // POINT_3

               [POINT_4]
                  x = 446242.0
                  y = 6249910.0
               EndSect  // POINT_4

               orientation = 0.0
               x_origo = -9000.0
               x_ds = 50.0
               x_npoints = 201
               y_origo = -5000.0
               y_ds = 50.0
               y_npoints = 201
               z_origo = -19.25979592241955
               z_ds = 2.701306122989273
               z_npoints = 10
            EndSect  // AREA

            [INTEGRAL_WAVE_PARAMETERS]
               Touched = 0
               type_of_spectrum = 1
               minimum_frequency = 0.055
               maximum_frequency = 0.5959088268863617
               separation_of_wind_sea_and_swell = 3
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               hm0_minimum = 0.01
               type_of_h_max = 3
               duration = 10800.0
               distance_above_bed_for_particle_velocity = 0.0
               minimum_direction = 240.0
               maximum_direction = 300.0
               [Total_wave_parameters]
                  Significant_wave_height = 1
                  Maximum_wave_height = 1
                  Peak_wave_period = 1
                  Wave_period_t01 = 1
                  Wave_period_t02 = 1
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 1
                  Mean_wave_direction = 1
                  Directional_standard_deviation = 1
                  Wave_velocity_components = 1
                  Radiation_stresses = 1
                  Particle_velocities = 1
                  Wave_power = 1
                  Surface_Stokes_drift = 1
               EndSect  // Total_wave_parameters

               [Wind_sea_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Wind_sea_parameters

               [Swell_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Swell_parameters

            EndSect  // INTEGRAL_WAVE_PARAMETERS

            [INPUT_PARAMETERS]
               Touched = 0
               Surface_elevation = 1
               Water_depth = 1
               Current_velocity_components = 1
               Wind_speed = 0
               Wind_direction = 0
               Ice_concentration = 0
               Water_density = 0
               Air_density = 0
            EndSect  // INPUT_PARAMETERS

            [MODEL_PARAMETERS]
               Touched = 0
               Neutral_wind_speed = 0
               Wind_friction_speed = 0
               Roughness_length = 0
               Drag_coefficient = 0
               Charnock_constant = 0
               Friction_coefficient = 1
               Breaking_parameter_gamma = 1
               Courant_number = 0
               Time_step_factor = 0
               Convergence_angle = 1
               Length = 1
               Area = 1
               Threshold_period = 0
               Roller_area = 0
               Roller_dissipation = 0
               Breaking_index = 1
            EndSect  // MODEL_PARAMETERS

            [SPECTRAL_PARAMETERS]
               Touched = 0
               separation_of_wind_sea_and_swell = 3.0
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               wave_energy = 1
               wave_action = 0
               zeroth_moment_of_wave_action = 0
               first_moment_of_wave_action = 0
               wave_energy_wind_sea = 0
               wave_energy_swell = 0
            EndSect  // SPECTRAL_PARAMETERS

         EndSect  // OUTPUT_1

         [OUTPUT_2]
            Touched = 1
            include = 1
            title = 'Line 100'
            file_name = 'Line_waves_DS.dfs1'
            type = 1
            format = 1
            flood_and_dry = 2
            coordinate_type = 'NON-UTM'
            zone = 0
            input_file_name = ||
            input_format = 1
            interpolation_type = 2
            use_end_time = 1
            first_time_step = 0
            last_time_step = 0
            time_step_frequency = 1
            number_of_points = 1
            [POINT_1]
               name = 'Point 1'
               x = -4000.0
               y = 0.0
            EndSect  // POINT_1

            [LINE]
               number_of_points = 2
               [POINT_1]
                  x = -9000.0
                  y = 0.0
               EndSect  // POINT_1

               [POINT_2]
                  x = 1000.0
                  y = 0.0
               EndSect  // POINT_2

               npoints = 201
            EndSect  // LINE

            [AREA]
               number_of_points = 4
               [POINT_1]
                  x = -9100.0
                  y = -5100.0
               EndSect  // POINT_1

               [POINT_2]
                  x = -9100.0
                  y = 5100.0
               EndSect  // POINT_2

               [POINT_3]
                  x = 1100.0
                  y = 5100.0
               EndSect  // POINT_3

               [POINT_4]
                  x = 1100.0
                  y = -5100.0
               EndSect  // POINT_4

               orientation = 0.0
               x_origo = -9000.0
               x_ds = 526.3157894736842
               x_npoints = 20
               y_origo = -5000.0
               y_ds = 526.3157894736842
               y_npoints = 20
               z_origo = -150.0
               z_ds = 22.66666666666667
               z_npoints = 10
            EndSect  // AREA

            [INTEGRAL_WAVE_PARAMETERS]
               Touched = 0
               type_of_spectrum = 1
               minimum_frequency = 0.055
               maximum_frequency = 0.5959088268863617
               separation_of_wind_sea_and_swell = 5
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               hm0_minimum = 0.01
               type_of_h_max = 3
               duration = 10800.0
               distance_above_bed_for_particle_velocity = 0.0
               minimum_direction = 180.0
               maximum_direction = 360.0
               [Total_wave_parameters]
                  Significant_wave_height = 1
                  Maximum_wave_height = 1
                  Peak_wave_period = 1
                  Wave_period_t01 = 1
                  Wave_period_t02 = 1
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 1
                  Mean_wave_direction = 1
                  Directional_standard_deviation = 1
                  Wave_velocity_components = 1
                  Radiation_stresses = 1
                  Particle_velocities = 1
                  Wave_power = 1
                  Surface_Stokes_drift = 1
               EndSect  // Total_wave_parameters

               [Wind_sea_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Wind_sea_parameters

               [Swell_parameters]
                  Significant_wave_height = 0
                  Maximum_wave_height = 0
                  Peak_wave_period = 0
                  Wave_period_t01 = 0
                  Wave_period_t02 = 0
                  Wave_period_tm10 = 0
                  Peak_wave_direction = 0
                  Mean_wave_direction = 0
                  Directional_standard_deviation = 0
                  Wave_velocity_components = 0
                  Radiation_stresses = 0
                  Particle_velocities = 0
                  Wave_power = 0
                  Surface_Stokes_drift = 0
               EndSect  // Swell_parameters

            EndSect  // INTEGRAL_WAVE_PARAMETERS

            [INPUT_PARAMETERS]
               Touched = 0
               Surface_elevation = 1
               Water_depth = 1
               Current_velocity_components = 1
               Wind_speed = 0
               Wind_direction = 0
               Ice_concentration = 0
               Water_density = 0
               Air_density = 0
            EndSect  // INPUT_PARAMETERS

            [MODEL_PARAMETERS]
               Touched = 0
               Neutral_wind_speed = 0
               Wind_friction_speed = 0
               Roughness_length = 0
               Drag_coefficient = 0
               Charnock_constant = 0
               Friction_coefficient = 1
               Breaking_parameter_gamma = 1
               Courant_number = 0
               Time_step_factor = 0
               Convergence_angle = 1
               Length = 1
               Area = 1
               Threshold_period = 0
               Roller_area = 0
               Roller_dissipation = 0
               Breaking_index = 1
            EndSect  // MODEL_PARAMETERS

            [SPECTRAL_PARAMETERS]
               Touched = 0
               separation_of_wind_sea_and_swell = 5.0
               threshold_frequency = 0.125
               maximum_threshold_frequency = 0.125
               c_wave_age = 0.83
               p_wave_age = 1.0
               wave_energy = 1
               wave_action = 0
               zeroth_moment_of_wave_action = 0
               first_moment_of_wave_action = 0
               wave_energy_wind_sea = 0
               wave_energy_swell = 0
            EndSect  // SPECTRAL_PARAMETERS

         EndSect  // OUTPUT_2

      EndSect  // OUTPUTS

   EndSect  // SPECTRAL_WAVE_MODULE

EndSect  // FemEngineSW

