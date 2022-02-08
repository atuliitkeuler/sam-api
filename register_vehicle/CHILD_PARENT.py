#level ={table_name: [(name of foreign key in table_name,
#                       corresponding table to which this foreign key belongs)]}


level1={
    'vehicles':[('biw', 'biws'), ('power_train', 'powertrains'), ('semi_sprung_assembly', 'semi_sprung_assemblies'), ('rear_suspension_assembly', 'rear_suspension_assemblies'), ('driveshaft_assembly', 'driveshaft_assemblies'), ('fork_and_suspension_assembly', 'fork_and_suspension_assemblies'), ('disc_brake_assembly', 'disc_brake_assemblies'), ('rear_wheel_assembly', 'rear_wheel_assemblies'), ('front_wheel_assembly', 'front_wheel_assemblies'), ('brake_pedal_assembly', 'brake_pedal_assemblies'), ('vehicle_harness', 'vehicle_harnesses'), ('mark', 'marks'), ('battery_assembly', 'battery_assemblies'), ('cocktail_box_assembly', 'cocktail_box_assemblies'), ('telematics', 'telematics'), ('load_body', 'load_bodies')]
    }


level2={
    'cocktail_box_assemblies':[('cocktail_box', 'cocktail_boxes'), ('aux_battery', 'aux_batteries'), ('motor_controller', 'motor_controllers'), ('on_board_charger', 'on_board_chargers'), ('dc_dc', 'dc_dcs'), ('stark', 'starks'), ('arc_reactor_assembly', 'arc_reactor_assemblies')],
    'battery_assemblies':[('cell', 'cells'), ('bms', 'bmses'), ('battery', 'batteries'), ('battery_box', 'battery_boxes'), ('signal_connector', 'signal_connectors')],
    'brake_pedal_assemblies':[('tmc', 'tmcs'), ('reservoir', 'reservoirs'), ('brake_switch', 'brake_switches')],
    'front_wheel_assemblies':[('tyre', 'tyres'), ('rim', 'rims')],
    'rear_wheel_assemblies':[('tyre', 'tyres'), ('rim', 'rims')],
    'disc_brake_assemblies':[('rotor', 'rotors'), ('caliper', 'calipers')],
    'fork_and_suspension_assemblies':[('upper_and_lower_cone', 'upper_and_lower_cones'), ('fork_2_bearing', 'fork_2_bearings'), ('bottom_link', 'bottom_links'), ('spring', 'springs'), ('strut', 'struts')],
    'driveshaft_assemblies':[('rear_axle', 'rear_axles'), ('crown_nut', 'crown_nuts')],
    'rear_suspension_assemblies':[('spring', 'springs'), ('strut', 'struts'), ('mounting_rubber', 'mounting_rubbers')],
    'semi_sprung_assemblies':[('trailing_arm', 'trailing_arms'), ('drum', 'drums'), ('brake_plate', 'brake_plates'), ('hub_assembly', 'hub_assemblies')],
    'powertrains':[('gearbox', 'gearboxes'), ('motor', 'motors'), ('muff_cup', 'muff_cups')]
    }
