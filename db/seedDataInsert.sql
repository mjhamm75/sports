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
            (2, 'bc@hotmail.com','555-555-5555', '84010'),
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

    VALUES  (1, 1, 'Bears', 'Bountiful', null, 'Tball maniacs', 6, 8, null, null, null);



INSERT INTO locations(id, name, street_address, city, state_id, zipcode, coordinates)
    
    VALUES  (1, 'Rocket Park', '100 North 1300 East', 'Bountiful', 44, 84010, null)
            (2, 'South Jordan City Park', '11000 Redwood Road', 'South Jordan', 44, 84095, null);
            
            
            
INSERT INTO parent_children(parent_id, child_id)
    
    VALUES  (1, 2);



INSERT INTO responsibility_types(id, name)
    
    VALUES  (1, 'Equipment'),
            (1, 'Refreshments');



INSERT INTO roles(id, name)
    
    VALUES  (?, ?);

            

INSERT INTO user_roles(
            role_id, group_id, user_id, description)
    
    VALUES  (?, ?, ?, ?);
    
    

INSERT INTO users(id, first_name, last_name, gender, dob, bio, pic, contact_info_id)
    
    VALUES  (1, 'Kurt', 'Corbett', 'm', '1985-11-20', 'I love beans', null, 1),
            (2, 'Bobby', 'Corbett', 'm', '2008-01-29', 'I love pinto beans', null, 2),
            (3, 'Jason', 'Hamm', 'm', '1975-01-20', 'I am stinky', null, 3),
            (4, 'Kaleck', 'Hamm', 'm', '2000-05-29', 'Boom Shakalaca', null, 4),
            (5, 'William', 'Temple', 'm', '1958-03-20', 'Baseball Coach for life', null, 5),
            (6, 'Sarah', 'Johnson', 'f', '1982-08-14', 'mom of two', null, 6),
            (7, 'Billy', 'Johnson', 'm', '2009-02-20', 'I eat grass', null, 7),
            (8, 'Jenny', 'Johnson', 'f', '2008-05-29', 'I love soccer', null, 8);

    

-- INSERT ALL STATES

INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('1','Alabama','AL','USA','states','10','current','occupied','','1','Ala.','IV','3','South','6','East South Central','11');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('2','Alaska','AK','USA','states','10','current','occupied','','2','Alaska','X','4','West','9','Pacific','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('3','Arizona','AZ','USA','states','10','current','occupied','','4','Ariz.','IX','4','West','8','Mountain','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('4','Arkansas','AR','USA','states','10','current','occupied','','5','Ark.','VI','3','South','7','West South Central','8');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('5','California','CA','USA','states','10','current','occupied','','6','Calif.','IX','4','West','9','Pacific','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('6','Colorado','CO','USA','states','10','current','occupied','','8','Colo.','VIII','4','West','8','Mountain','10');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('7','Connecticut','CT','USA','states','10','current','occupied','','9','Conn.','I','1','Northeast','1','New England','2');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('8','Delaware','DE','USA','states','10','current','occupied','','10','Del.','III','3','South','5','South Atlantic','3');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('9','Florida','FL','USA','states','10','current','occupied','','12','Fla.','IV','3','South','5','South Atlantic','11');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('10','Georgia','GA','USA','states','10','current','occupied','','13','Ga.','IV','3','South','5','South Atlantic','11');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('11','Hawaii','HI','USA','states','10','current','occupied','','15','Hawaii','IX','4','West','9','Pacific','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('12','Idaho','ID','USA','states','10','current','occupied','','16','Idaho','X','4','West','8','Mountain','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('13','Illinois','IL','USA','states','10','current','occupied','','17','Ill.','V','2','Midwest','3','East North Central','7');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('14','Indiana','IN','USA','states','10','current','occupied','','18','Ind.','V','2','Midwest','3','East North Central','7');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('15','Iowa','IA','USA','states','10','current','occupied','','19','Iowa','VII','2','Midwest','4','West North Central','8');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('16','Kansas','KS','USA','states','10','current','occupied','','20','Kan.','VII','2','Midwest','4','West North Central','10');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('17','Kentucky','KY','USA','states','10','current','occupied','','21','Ky.','IV','3','South','6','East South Central','6');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('18','Louisiana','LA','USA','states','10','current','occupied','','22','La.','VI','3','South','7','West South Central','5');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('19','Maine','ME','USA','states','10','current','occupied','','23','Maine','I','1','Northeast','1','New England','1');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('20','Maryland','MD','USA','states','10','current','occupied','','24','Md.','III','3','South','5','South Atlantic','4');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('21','Massachusetts','MA','USA','states','10','current','occupied','','25','Mass.','I','1','Northeast','1','New England','1');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('22','Michigan','MI','USA','states','10','current','occupied','','26','Mich.','V','2','Midwest','3','East North Central','6');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('23','Minnesota','MN','USA','states','10','current','occupied','','27','Minn.','V','2','Midwest','4','West North Central','8');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('24','Mississippi','MS','USA','states','10','current','occupied','','28','Miss.','IV','3','South','6','East South Central','5');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('25','Missouri','MO','USA','states','10','current','occupied','','29','Mo.','VII','2','Midwest','4','West North Central','8');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('26','Montana','MT','USA','states','10','current','occupied','','30','Mont.','VIII','4','West','8','Mountain','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('27','Nebraska','NE','USA','states','10','current','occupied','','31','Nebr.','VII','2','Midwest','4','West North Central','8');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('28','Nevada','NV','USA','states','10','current','occupied','','32','Nev.','IX','4','West','8','Mountain','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('29','New Hampshire','NH','USA','states','10','current','occupied','','33','N.H.','I','1','Northeast','1','New England','1');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('30','New Jersey','NJ','USA','states','10','current','occupied','','34','N.J.','II','1','Northeast','2','Mid-Atlantic','3');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('31','New Mexico','NM','USA','states','10','current','occupied','','35','N.M.','VI','4','West','8','Mountain','10');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('32','New York','NY','USA','states','10','current','occupied','','36','N.Y.','II','1','Northeast','2','Mid-Atlantic','2');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('33','North Carolina','NC','USA','states','10','current','occupied','','37','N.C.','IV','3','South','5','South Atlantic','4');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('34','North Dakota','ND','USA','states','10','current','occupied','','38','N.D.','VIII','2','Midwest','4','West North Central','8');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('35','Ohio','OH','USA','states','10','current','occupied','','39','Ohio','V','2','Midwest','3','East North Central','6');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('36','Oklahoma','OK','USA','states','10','current','occupied','','40','Okla.','VI','3','South','7','West South Central','10');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('37','Oregon','OR','USA','states','10','current','occupied','','41','Ore.','X','4','West','9','Pacific','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('38','Pennsylvania','PA','USA','states','10','current','occupied','','42','Pa.','III','1','Northeast','2','Mid-Atlantic','3');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('39','Rhode Island','RI','USA','states','10','current','occupied','','44','R.I.','I','1','Northeast','1','New England','1');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('40','South Carolina','SC','USA','states','10','current','occupied','','45','S.C.','IV','3','South','5','South Atlantic','4');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('41','South Dakota','SD','USA','states','10','current','occupied','','46','S.D.','VIII','2','Midwest','4','West North Central','8');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('42','Tennessee','TN','USA','states','10','current','occupied','','47','Tenn.','IV','3','South','6','East South Central','6');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('43','Texas','TX','USA','states','10','current','occupied','','48','Texas','VI','3','South','7','West South Central','5');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('44','Utah','UT','USA','states','10','current','occupied','','49','Utah','VIII','4','West','8','Mountain','10');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('45','Vermont','VT','USA','states','10','current','occupied','','50','Vt.','I','1','Northeast','1','New England','2');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('46','Virginia','VA','USA','states','10','current','occupied','','51','Va.','III','3','South','5','South Atlantic','4');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('47','Washington','WA','USA','states','10','current','occupied','','53','Wash.','X','4','West','9','Pacific','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('48','West Virginia','WV','USA','states','10','current','occupied','','54','W.Va.','III','3','South','5','South Atlantic','4');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('49','Wisconsin','WI','USA','states','10','current','occupied','','55','Wis.','V','2','Midwest','3','East North Central','7');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('50','Wyoming','WY','USA','states','10','current','occupied','','56','Wyo.','VIII','4','West','8','Mountain','10');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('51','Washington DC','DC','USA','capitol','10','current','occupied','','11','','III','3','South','5','South Atlantic','D.C.');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('52','Puerto Rico','PR','USA','commonwealth','20','current','occupied','','72','','II','','','','','1');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('53','U.S. Virgin Islands','VI','USA','territory','20','current','occupied','','78','','II','','','','','3');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('54','American Samoa','AS','USA','territory','20','current','occupied','','60','','IX','','','','','');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('55','Guam','GU','USA','territory','20','current','occupied','','66','','IX','','','','','9');
INSERT INTO states (id,name,abbreviation,country,type,sort,status,occupied,notes,fips_state,assoc_press,standard_federal_region,census_region,census_region_name,census_division,census_division_name,circuit_court) VALUES ('56','Northern Mariana Islands','MP','USA','commonwealth','20','current','occupied','','69','','IX','','','','','9');




          

    
    
    



