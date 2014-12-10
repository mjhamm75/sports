INSERT INTO activity_types(id, name, description)
    
    VALUES  (?, ?, ?)
            (?, ?, ?);



INSERT INTO competition_groups(group_id, competition_id, is_winner, score, start_time, end_time)
    
    VALUES  (?, ?, ?, ?, ?, ?)
            (?, ?, ?, ?, ?, ?);
    
 
    
INSERT INTO competition_types(id, name)

    VALUES  (?, ?)
            (?, ?);



INSERT INTO competitions(id, event_id, competition_type_id)
    
    VALUES  (?, ?, ?)
            (?, ?, ?);



INSERT INTO contact_info(id, email, phone, zipcode)
    
    VALUES  (1, 'kc@hotmail.com','555-555-5555', '84010'),
            (2, 'bc@hotmail.com','555-555-5555', '84010')
            (3, 'jh@hotmail.com','777-555-5555', '84095'),
            (4, 'kh@hotmail.com','777-555-5555', '84095');
    
    
    
INSERT INTO event_responsibilities(event_id, responsibility_type_id, user_id, details)
    
    VALUES  (?, ?, ?, ?)
            (?, ?, ?, ?);
    
    
    
INSERT INTO event_types(id, name, description)

    VALUES  (?, ?, ?)
            (?, ?, ?);
    
    
    
INSERT INTO events(id, location_id, event_type_id, date, start_time, end_time, description)

    VALUES  (?, ?, ?, ?, ?, ?, ?)
            (?, ?, ?, ?, ?, ?, ?);
    
    
    
INSERT INTO group_events(group_id, event_id)

    VALUES  (?, ?);
    
    
    
INSERT INTO groups(id, activity_type_id, name, location, logo, description, from_age, to_age, 
            join_fee, monthly_fee, annual_fee)

    VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);



INSERT INTO locations(id, name, street_address, city, state_id, zipcode, coordinates, 
            event_id)
    
    VALUES  (?, ?, ?, ?, ?, ?, ?, ?);
            
            
            
INSERT INTO parent_children(parent_id, child_id)
    
    VALUES  (?, ?);



INSERT INTO responsibility_types(id, name)
    
    VALUES  (?, ?);



INSERT INTO roles(id, name)
    
    VALUES  (?, ?);



INSERT INTO states(
            id, name, abbreviation, country, type, sort, status, occupied, 
            notes, fips_state, assoc_press, standard_federal_region, census_region, 
            census_region_name, census_division, census_division_name, circuit_court)
    
    VALUES  (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
            
            

INSERT INTO user_roles(
            role_id, group_id, user_id, description)
    
    VALUES  (?, ?, ?, ?);
    
    

INSERT INTO users(id, first_name, last_name, gender, dob, bio, pic, contact_info_id, 
            parents_children_parent_id, parents_children_child_id)
    
    VALUES  (1, 'Kurt', 'Corbett', 'm', '1985-11-20', 'I love beans', null, 1, null, 2),
            (2, 'Bobby', 'Corbett', 'm', '2008-01-29', 'I love pinto beans', null, 2, 1, null)
            (3, 'Jason', 'Hamm', 'm', '1975-01-20', 'I am stinky', null, 3, null, 4),
            (4, 'Kaleck', 'Hamm', 'm', '2000-05-29', 'Boom Shakalaca', null, 4, null, 3);

    




          

    
    
    



