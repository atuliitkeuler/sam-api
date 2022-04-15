CREATE TABLE l5_form_data (
        id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
        imei VARCHAR(50),
        telemetry_model_name VARCHAR(50),
        telemetry_vendor_id VARCHAR(50),
        registration_number VARCHAR(50),
        chassis_number VARCHAR(50),
        ebin VARCHAR(50),
        charger_serial_number VARCHAR(50),
        hub_id VARCHAR(50),
        client_id VARCHAR(50),
        client_hub_id VARCHAR(50),
        passcode VARCHAR(50) 
        );