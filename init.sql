CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
SELECT uuid_generate_v4();


CREATE TABLE gearboxes (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        gearbox_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        gear_ratio VARCHAR(20),
    	output_shaft_type VARCHAR(20)
        );


CREATE TABLE motors (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        motor_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        motor_type VARCHAR(20),
        peak_power VARCHAR(20) 
        );


CREATE TABLE muff_cups (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        muff_cup_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        available Boolean
        );


CREATE TABLE trailing_arms (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        trailing_arm_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );

CREATE TABLE drums (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        drum_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );

CREATE TABLE brake_plates (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        brake_plate_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        cylinder_diameter VARCHAR(20)
        );

CREATE TABLE hub_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        hub_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );

CREATE TABLE mounting_rubbers (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        mounting_rubber_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

CREATE TABLE rear_axles (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        rear_axle_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE crown_nuts (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        crown_nut_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );


CREATE TABLE upper_and_lower_cones  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        upper_and_lower_cone_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        fitment_type VARCHAR(20)
        );


CREATE TABLE fork_2_bearings (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        for_2_bearing_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        fork_type  VARCHAR(20)
        );



CREATE TABLE bottom_links (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        bottom_link_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );

CREATE TABLE springs  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        spring_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );


CREATE TABLE struts  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        strut_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );

    
CREATE TABLE rotors  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        rotor_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        rotor_version VARCHAR(20) 
        );


CREATE TABLE calipers (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        caliper_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE tyres  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        tyre_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );


CREATE TABLE rims  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        rim_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );


CREATE TABLE tmcs  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        tmc_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE reservoirs  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        reservoir_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        reservoir_type VARCHAR(20)
        );


CREATE TABLE brake_switches  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        brake_switch_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        available VARCHAR(20)
        );



CREATE TABLE cells  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        cell_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        capacity VARCHAR(20),
        dcir VARCHAR(20),
    	vendor VARCHAR(20)
        );


CREATE TABLE bmses  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        bms_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hardware VARCHAR(20),
        firmware VARCHAR(20) 
        );

CREATE TABLE battery_boxes (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        battery_box_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

CREATE TABLE batteries (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        bettery_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        capacity VARCHAR(20),
     	ocv VARCHAR(20)
        );


CREATE TABLE signal_connectors  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        signal_connector_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        signal_connector_type VARCHAR(20),
     	vendor VARCHAR(20)
        );


CREATE TABLE cocktail_boxes  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        cocktail_box_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
        ecn_number VARCHAR(20)
        );

CREATE TABLE aux_batteries(
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        aux_battery_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        max_v VARCHAR(20)
        );

CREATE TABLE motor_controllers(
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        motor_controller_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        os VARCHAR(20)
        );


CREATE TABLE on_board_chargers (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        on_board_charger_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        gland_integration_status VARCHAR(20)
        );


CREATE TABLE dc_dcs (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        dc_dc_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        isolated VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE starks  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        stark_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hardware VARCHAR(20),
        firmware VARCHAR(20)
        );

CREATE TABLE arc_reactor_assemblies  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        arc_reactor_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hein VARCHAR(20),
        epin VARCHAR(20),
        erin VARCHAR(20)
        );





CREATE TABLE biws(
    id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
    biw_id VARCHAR(20),
    emch VARCHAR(20) UNIQUE,
    created_at DATE NOT NULL DEFAULT CURRENT_DATE,
    updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
    lot VARCHAR(20),
    unit VARCHAR(20)
);

CREATE TABLE powertrains (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        powertrain_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        gearbox uuid,
        motor uuid,
        muff_cup uuid,
        FOREIGN KEY(gearbox) 
            REFERENCES gearboxes(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(motor) 
            REFERENCES motors(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(muff_cup) 
            REFERENCES muff_cups(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );




CREATE TABLE semi_sprung_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        semi_sprung_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        trailing_arm uuid,
        drum uuid,
    	brake_plate uuid,
        hub_assembly uuid,
        FOREIGN KEY(trailing_arm) 
            REFERENCES trailing_arms(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(drum) 
            REFERENCES drums(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(brake_plate) 
            REFERENCES brake_plates(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(hub_assembly) 
            REFERENCES hub_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );

CREATE TABLE rear_suspension_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        rear_suspension_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        spring uuid,
    	strut uuid,
    	mounting_rubber uuid,
        FOREIGN KEY(spring) 
            REFERENCES springs(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(strut) 
            REFERENCES struts(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(mounting_rubber) 
            REFERENCES mounting_rubbers(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );

CREATE TABLE driveshaft_assemblies(
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        driveshaft_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        rear_axle uuid,
     	crown_nut uuid,
        FOREIGN KEY(rear_axle) 
            REFERENCES rear_axles(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(crown_nut) 
            REFERENCES crown_nuts(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );

CREATE TABLE fork_and_suspension_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        fork_and_suspension_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        upper_and_lower_cone uuid,
        fork_2_bearing uuid,
        bottom_link uuid,
        spring uuid,
        strut uuid,
        FOREIGN KEY(upper_and_lower_cone) 
            REFERENCES upper_and_lower_cones(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(fork_2_bearing) 
            REFERENCES fork_2_bearings(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(bottom_link) 
            REFERENCES bottom_links(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(spring)
            REFERENCES springs(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(strut) 
            REFERENCES struts(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );

CREATE TABLE disc_brake_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        disk_brake_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        rotor uuid,
    	caliper uuid,
        FOREIGN KEY(rotor) 
            REFERENCES rotors(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(caliper) 
            REFERENCES calipers(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );


CREATE TABLE rear_wheel_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        rear_wheel_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        tyre uuid,
     	rim uuid,
        FOREIGN KEY(tyre) 
            REFERENCES tyres(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(rim) 
            REFERENCES rims(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );


CREATE TABLE front_wheel_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        front_wheel_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        tyre uuid,
     	rim uuid,
        FOREIGN KEY(tyre) 
            REFERENCES tyres(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(rim) 
            REFERENCES rims(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );



CREATE TABLE brake_pedal_assemblies  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        brake_pedal_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        tmc uuid,
    	reservoir uuid,
        brake_switch uuid,
        FOREIGN KEY(tmc) 
            REFERENCES tmcs(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(reservoir) 
            REFERENCES reservoirs(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(brake_switch) 
            REFERENCES brake_switches(id)
                ON DELETE SET NULL ON UPDATE CASCADE
        );



CREATE TABLE vehicle_harnesses(
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        vehicle_harness_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        
        );


CREATE TABLE marks (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        mark_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hardware VARCHAR(20),
        firmware VARCHAR(20)
        );


CREATE TABLE battery_assemblies  (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        battery_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        cell uuid,
    	bms uuid,
        battery uuid,
    	battery_box uuid,
      	signal_connector uuid ,
        FOREIGN KEY(cell) 
            REFERENCES cells(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(bms) 
            REFERENCES bmses(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(battery)
            REFERENCES batteries(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(battery_box) 
            REFERENCES battery_boxes(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(signal_connector) 
            REFERENCES signal_connectors(id)
                ON DELETE SET NULL ON UPDATE CASCADE  
        );

CREATE TABLE cocktail_box_assemblies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        cocktail_box_assembly_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        cocktail_box uuid,
        aux_battery uuid,
        motor_controller uuid,
        on_board_charger uuid,
        dc_dc uuid,
        stark uuid,
        arc_reactor_assembly uuid,
          FOREIGN KEY(cocktail_box) 
              REFERENCES cocktail_boxes(id)
                  ON DELETE SET NULL ON UPDATE CASCADE,
          FOREIGN KEY(aux_battery) 
              REFERENCES aux_batteries(id)
                  ON DELETE SET NULL ON UPDATE CASCADE,
          FOREIGN KEY(motor_controller) 
              REFERENCES motor_controllers(id)   
                  ON DELETE SET NULL ON UPDATE CASCADE,
          FOREIGN KEY(on_board_charger) 
              REFERENCES on_board_chargers(id)
                  ON DELETE SET NULL ON UPDATE CASCADE,
          FOREIGN KEY(dc_dc) 
              REFERENCES dc_dcs(id)
                  ON DELETE SET NULL ON UPDATE CASCADE,
          FOREIGN KEY(stark) 
              REFERENCES starks(id)
                  ON DELETE SET NULL ON UPDATE CASCADE,
          FOREIGN KEY(arc_reactor_assembly) 
              REFERENCES arc_reactor_assemblies(id)
                  ON DELETE SET NULL ON UPDATE CASCADE
        );

CREATE TABLE Telematics (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        telematics_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

CREATE TABLE load_bodies (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        load_body_id VARCHAR(20),
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

        

CREATE TABLE vehicles (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        emch VARCHAR(20) UNIQUE,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        biw uuid,
        power_train uuid,
        semi_sprung_assembly uuid ,
        rear_suspension_assembly uuid,
        driveshaft_assembly uuid,
        fork_and_suspension_assembly uuid,
        disc_brake_assembly uuid,
        rear_wheel_assembly uuid,
        front_wheel_assembly uuid,
        brake_pedal_assembly uuid,
        vehicle_harness uuid,
        mark uuid,
        battery_assembly uuid,
        cocktail_box_assembly uuid,
        telematics   uuid,
        load_body  uuid,
        FOREIGN KEY(biw) 
            REFERENCES biws(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(power_train) 
            REFERENCES powertrains(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(semi_sprung_assembly) 
            REFERENCES semi_sprung_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(rear_suspension_assembly) 
            REFERENCES rear_suspension_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(driveshaft_assembly) 
            REFERENCES driveshaft_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(fork_and_suspension_assembly) 
            REFERENCES fork_and_suspension_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(disc_brake_assembly) 
            REFERENCES disc_brake_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(rear_wheel_assembly) 
            REFERENCES rear_wheel_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(front_wheel_assembly) 
            REFERENCES front_wheel_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(brake_pedal_assembly) 
            REFERENCES brake_pedal_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(vehicle_harness) 
            REFERENCES vehicle_harnesses(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(mark) 
            REFERENCES marks(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(battery_assembly) 
            REFERENCES battery_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(cocktail_box_assembly) 
            REFERENCES cocktail_box_assemblies(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(telematics) 
            REFERENCES Telematics(id)
                ON DELETE SET NULL ON UPDATE CASCADE,
        FOREIGN KEY(load_body) 
            REFERENCES load_bodies(id)
                ON DELETE SET NULL ON UPDATE CASCADE
);










