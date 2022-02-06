CREATE TABLE gearboxes (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        gear_ratio VARCHAR(20),
    	output_shaft_type VARCHAR(20)
        );


CREATE TABLE motors (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        motor_type VARCHAR(20),
        peak_power VARCHAR(20) 
        );


CREATE TABLE muff_cups (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        available Boolean
        );


CREATE TABLE trailing_arms (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );

CREATE TABLE drums (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );

CREATE TABLE brake_plates (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        cylinder_diameter VARCHAR(20)
        );

CREATE TABLE hub_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );

CREATE TABLE mounting_rubbers (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

CREATE TABLE rear_axles (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE crown_nuts (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );


CREATE TABLE upper_and_lower_cones  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        fitment_type VARCHAR(20)
        );


CREATE TABLE fork_2_bearings (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        fork_type  VARCHAR(20)
        );



CREATE TABLE bottom_links (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20)
        );

CREATE TABLE springs  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );


CREATE TABLE struts  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );

    
CREATE TABLE rotors  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        rotor_version VARCHAR(20) 
        );


CREATE TABLE calipers (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE tyres  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );


CREATE TABLE rims  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        position VARCHAR(20)
        );


CREATE TABLE tmcs  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE reservoirs  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
    	ecn_number VARCHAR(20),
        reservoir_type VARCHAR(20)
        );


CREATE TABLE brake_switches  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        available VARCHAR(20)
        );



CREATE TABLE cells  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        capacity VARCHAR(20),
        dcir VARCHAR(20),
    	vendor VARCHAR(20)
        );


CREATE TABLE bmses  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hardware VARCHAR(20),
        firmware VARCHAR(20) 
        );

CREATE TABLE battery_boxes (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

CREATE TABLE batteries (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        capacity VARCHAR(20),
     	ocv VARCHAR(20)
        );


CREATE TABLE signal_connectors  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        signal_connector_type VARCHAR(20),
     	vendor VARCHAR(20)
        );


CREATE TABLE cocktail_boxes  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        part_number VARCHAR(20),
        ecn_number VARCHAR(20)
        );

CREATE TABLE aux_batteries(
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        max_v VARCHAR(20)
        );

CREATE TABLE motor_controllers(
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        os VARCHAR(20)
        );


CREATE TABLE on_board_chargers (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        gland_integration_status VARCHAR(20)
        );


CREATE TABLE dc_dcs (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        isolated VARCHAR(20),
        vendor VARCHAR(20)
        );


CREATE TABLE starks  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hardware VARCHAR(20),
        firmware VARCHAR(20)
        );

CREATE TABLE arc_reactor_assemblies  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hein VARCHAR(20),
        epin VARCHAR(20),
        erin VARCHAR(20)
        );





CREATE TABLE biws(
    id VARCHAR(20) NOT NULL PRIMARY KEY,
    created_at DATE NOT NULL DEFAULT CURRENT_DATE,
    updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
    lot VARCHAR(20),
    unit VARCHAR(20)
);

CREATE TABLE powertrains (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        gearbox VARCHAR(20),
        motor VARCHAR(20),
        muff_cup VARCHAR(20),
        FOREIGN KEY(gearbox) 
            REFERENCES gearboxes(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(motor) 
            REFERENCES motors(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(muff_cup) 
            REFERENCES muff_cups(id)
                ON DELETE NO ACTION
        );




CREATE TABLE semi_sprung_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        trailing_arm VARCHAR(20),
        drum VARCHAR(20),
    	  brake_plate VARCHAR(20),
        hub_assembly VARCHAR(20),
        FOREIGN KEY(trailing_arm) 
            REFERENCES trailing_arms(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(drum) 
            REFERENCES drums(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(brake_plate) 
            REFERENCES brake_plates(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(hub_assembly) 
            REFERENCES hub_assemblies(id)
                ON DELETE NO ACTION
        );

CREATE TABLE rear_suspension_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        spring VARCHAR(20),
    	strut VARCHAR(20),
    	mounting_rubber VARCHAR(20),
        FOREIGN KEY(spring) 
            REFERENCES springs(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(strut) 
            REFERENCES struts(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(mounting_rubber) 
            REFERENCES mounting_rubbers(id)
                ON DELETE NO ACTION
        );

CREATE TABLE driveshaft_assemblies(
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        rear_axle VARCHAR(20),
     	crown_nut VARCHAR(20),
        FOREIGN KEY(rear_axle) 
            REFERENCES rear_axles(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(crown_nut) 
            REFERENCES crown_nuts(id)
                ON DELETE NO ACTION
        );

CREATE TABLE fork_and_suspension_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        upper_and_lower_cone VARCHAR(20),
        fork_2_bearing VARCHAR(20),
        bottom_link VARCHAR(20),
        spring VARCHAR(20),
        strut VARCHAR(20),
        FOREIGN KEY(upper_and_lower_cone) 
            REFERENCES upper_and_lower_cones(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(fork_2_bearing) 
            REFERENCES fork_2_bearings(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(bottom_link) 
            REFERENCES bottom_links(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(spring)
            REFERENCES springs(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(strut) 
            REFERENCES struts(id)
                ON DELETE NO ACTION
        );

CREATE TABLE disc_brake_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        rotor VARCHAR(20),
    	  caliper VARCHAR(20),
        FOREIGN KEY(rotor) 
            REFERENCES rotors(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(caliper) 
            REFERENCES calipers(id)
                ON DELETE NO ACTION
        );


CREATE TABLE rear_wheel_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        tyre VARCHAR(20),
     	  rim VARCHAR(20),
        FOREIGN KEY(tyre) 
            REFERENCES tyres(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(rim) 
            REFERENCES rims(id)
                ON DELETE NO ACTION
        );


CREATE TABLE front_wheel_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        tyre VARCHAR(20),
     	  rim VARCHAR(20),
        FOREIGN KEY(tyre) 
            REFERENCES tyres(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(rim) 
            REFERENCES rims(id)
                ON DELETE NO ACTION
        );



CREATE TABLE brake_pedal_assemblies  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        tmc VARCHAR(20),
    	  reservoir VARCHAR(20),
    	  brake_switch VARCHAR(20),
        FOREIGN KEY(tmc) 
            REFERENCES tmcs(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(reservoir) 
            REFERENCES reservoirs(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(brake_switch) 
            REFERENCES brake_switches(id)
                ON DELETE NO ACTION
        );



CREATE TABLE vehicle_harnesses(
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        
        );


CREATE TABLE marks (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        hardware VARCHAR(20),
        firmware VARCHAR(20) 
        );


CREATE TABLE battery_assemblies  (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        cell VARCHAR(20),
    	  bms VARCHAR(20),
        battery VARCHAR(20),
    	  battery_box VARCHAR(20),
      	signal_connector VARCHAR(20) ,
        FOREIGN KEY(cell) 
            REFERENCES cells(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(bms) 
            REFERENCES bmses(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(battery)
            REFERENCES batteries(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(battery_box) 
            REFERENCES battery_boxes(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(signal_connector) 
            REFERENCES signal_connectors(id)
                ON DELETE NO ACTION  
        );

CREATE TABLE cocktail_box_assemblies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        cocktail_box VARCHAR(20),
        aux_battery VARCHAR(20),
        motor_controller VARCHAR(20),
        on_board_charger VARCHAR(20),
        dc_dc VARCHAR(20),
        stark VARCHAR(20),
        arc_reactor_assembly VARCHAR(20),
          FOREIGN KEY(cocktail_box) 
              REFERENCES cocktail_boxes(id)
                  ON DELETE NO ACTION,
          FOREIGN KEY(aux_battery) 
              REFERENCES aux_batteries(id)
                  ON DELETE NO ACTION,
          FOREIGN KEY(motor_controller) 
              REFERENCES motor_controllers(id)   
                  ON DELETE NO ACTION,
          FOREIGN KEY(on_board_charger) 
              REFERENCES on_board_chargers(id)
                  ON DELETE NO ACTION,
          FOREIGN KEY(dc_dc) 
              REFERENCES dc_dcs(id)
                  ON DELETE NO ACTION,
          FOREIGN KEY(stark) 
              REFERENCES starks(id)
                  ON DELETE NO ACTION,
          FOREIGN KEY(arc_reactor_assembly) 
              REFERENCES arc_reactor_assemblies(id)
                  ON DELETE NO ACTION
        );

CREATE TABLE Telematics (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

CREATE TABLE load_bodies (
        id VARCHAR(20) NOT NULL PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20)
        );

        

CREATE TABLE vehicles (
        id VARCHAR(20) PRIMARY KEY,
        created_at DATE NOT NULL DEFAULT CURRENT_DATE,
        updated_at DATE NOT NULL DEFAULT CURRENT_DATE,
        lot VARCHAR(20),
        unit VARCHAR(20),
        biw VARCHAR(20),
        power_train VARCHAR(20),
        semi_sprung_assembly VARCHAR(20) ,
        rear_suspension_assembly VARCHAR(20),
        driveshaft_assembly VARCHAR(20),
        fork_and_suspension_assembly VARCHAR(20),
        disc_brake_assembly VARCHAR(20),
        rear_wheel_assembly VARCHAR(20),
        front_wheel_assembly VARCHAR(20),
        brake_pedal_assembly VARCHAR(20),
        vehicle_harness VARCHAR(20),
        mark VARCHAR(20),
        battery_assembly VARCHAR(20),
        cocktail_box_assembly VARCHAR(20),
        telematics   VARCHAR(20),
        load_body  VARCHAR(20),
        FOREIGN KEY(biw) 
            REFERENCES biws(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(power_train) 
            REFERENCES powertrains(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(semi_sprung_assembly) 
            REFERENCES semi_sprung_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(rear_suspension_assembly) 
            REFERENCES rear_suspension_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(driveshaft_assembly) 
            REFERENCES driveshaft_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(fork_and_suspension_assembly) 
            REFERENCES fork_and_suspension_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(disc_brake_assembly) 
            REFERENCES disc_brake_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(rear_wheel_assembly) 
            REFERENCES rear_wheel_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(front_wheel_assembly) 
            REFERENCES front_wheel_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(brake_pedal_assembly) 
            REFERENCES brake_pedal_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(vehicle_harness) 
            REFERENCES vehicle_harnesses(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(mark) 
            REFERENCES marks(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(battery_assembly) 
            REFERENCES battery_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(cocktail_box_assembly) 
            REFERENCES cocktail_box_assemblies(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(telematics) 
            REFERENCES Telematics(id)
                ON DELETE NO ACTION,
        FOREIGN KEY(load_body) 
            REFERENCES load_bodies(id)
                ON DELETE NO ACTION
);










