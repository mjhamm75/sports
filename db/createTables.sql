-- Created by Vertabelo (http://vertabelo.com)
-- Script type: create
-- Scope: [tables, references]
-- Generated at Wed Dec 10 05:08:19 UTC 2014




-- tables
-- Table: activity_types
CREATE TABLE activity_types (
    id serial  NOT NULL,
    name varchar(200)  NOT NULL,
    description text,
    CONSTRAINT activity_types_pk PRIMARY KEY (id)
);



-- Table: competition_groups
CREATE TABLE competition_groups (
    group_id int  NOT NULL,
    competition_id int  NOT NULL,
    is_winner boolean  NULL,
    score varchar(255)  NULL,
    start_time time  NULL,
    end_time time  NULL,
    CONSTRAINT competition_groups_pk PRIMARY KEY (group_id,competition_id)
);



-- Table: competition_types
CREATE TABLE competition_types (
    id serial  NOT NULL,
    name varchar(255)  NOT NULL,
    CONSTRAINT competition_types_pk PRIMARY KEY (id)
);



-- Table: competitions
CREATE TABLE competitions (
    id serial  NOT NULL,
    event_id int  NOT NULL,
    competition_type_id int  NOT NULL,
    CONSTRAINT competitions_pk PRIMARY KEY (id)
);



-- Table: contact_info
CREATE TABLE contact_info (
    id serial  NOT NULL,
    email varchar(255)  NOT NULL,
    phone varchar(50)  NULL,
    zipcode varchar(50)  NULL,
    CONSTRAINT contact_info_pk PRIMARY KEY (id)
);



-- Table: event_responsibilities
CREATE TABLE event_responsibilities (
    event_id int  NOT NULL,
    responsibility_type_id int  NOT NULL,
    user_id int  NOT NULL,
    details text  NOT NULL,
    CONSTRAINT event_responsibilities_pk PRIMARY KEY (event_id,responsibility_type_id,user_id)
);



-- Table: event_types
CREATE TABLE event_types (
    id int  NOT NULL,
    name varchar(255)  NOT NULL,
    description text  NOT NULL,
    CONSTRAINT event_types_pk PRIMARY KEY (id)
);



-- Table: events
CREATE TABLE events (
    id serial  NOT NULL,
    location_id int  NOT NULL,
    event_type_id int  NOT NULL,
    date date  NOT NULL,
    start_time time  NOT NULL,
    end_time time  NULL,
    description text  NULL,
    CONSTRAINT events_pk PRIMARY KEY (id)
);



-- Table: group_events
CREATE TABLE group_events (
    group_id int  NOT NULL,
    event_id int  NOT NULL,
    CONSTRAINT group_events_pk PRIMARY KEY (group_id,event_id)
);



-- Table: groups
CREATE TABLE groups (
    id serial  NOT NULL,
    activity_type_id int  NOT NULL,
    name varchar(255)  NOT NULL,
    location varchar(255)  NULL,
    logo bytea  NULL,
    description text  NULL,
    from_age int  NULL,
    to_age int  NULL,
    join_fee int  NULL,
    monthly_fee int  NULL,
    annual_fee int  NULL,
    CONSTRAINT groups_pk PRIMARY KEY (id)
);



-- Table: locations
CREATE TABLE locations (
    id serial  NOT NULL,
    name varchar(255)  NOT NULL,
    street_address varchar(255)  NOT NULL,
    city varchar(255)  NOT NULL,
    state_id int  NOT NULL,
    zipcode varchar(20)  NOT NULL,
    coordinates varchar(255),
    CONSTRAINT locations_pk PRIMARY KEY (id)
);



-- Table: parent_children
CREATE TABLE parent_children (
    parent_id int  NOT NULL,
    child_id int  NOT NULL,
    CONSTRAINT parent_children_pk PRIMARY KEY (parent_id,child_id)
);



-- Table: responsibility_types
CREATE TABLE responsibility_types (
    id serial  NOT NULL,
    name varchar(255)  NOT NULL,
    CONSTRAINT responsibility_types_pk PRIMARY KEY (id)
);



-- Table: roles
CREATE TABLE roles (
    id serial  NOT NULL,
    name varchar(50)  NOT NULL,
    CONSTRAINT roles_pk PRIMARY KEY (id)
);



-- Table: states
CREATE TABLE states (
    id integer NOT NULL,
    name varchar(255),
    abbreviation varchar(255),
    country varchar(255),
    type varchar(255),
    sort integer, 
    status varchar(255), 
    occupied varchar(255), 
    notes varchar(255), 
    fips_state varchar(255), 
    assoc_press varchar(255), 
    standard_federal_region varchar(255), 
    census_region varchar(255), 
    census_region_name varchar(255), 
    census_division varchar(255), 
    census_division_name varchar(255), 
    circuit_court varchar(255),
    CONSTRAINT states_pk PRIMARY KEY (id)
);




-- Table: user_roles
CREATE TABLE user_roles (
    role_id int  NOT NULL,
    group_id int  NOT NULL,
    user_id int  NOT NULL,
    description text  NULL,
    CONSTRAINT user_roles_pk PRIMARY KEY (role_id,group_id,user_id)
);



-- Table: users
CREATE TABLE users (
    id serial  NOT NULL,
    first_name varchar(50)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    gender varchar(50)  NULL,
    dob date  NULL,
    bio text  NULL,
    pic bytea  NULL,
    contact_info_id int  NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY (id)
);







-- foreign keys
-- Reference:  competition_groups_competitions (table: competition_groups)


ALTER TABLE competition_groups ADD CONSTRAINT competition_groups_competitions 
    FOREIGN KEY (competition_id)
    REFERENCES competitions (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  competition_groups_groups (table: competition_groups)


ALTER TABLE competition_groups ADD CONSTRAINT competition_groups_groups 
    FOREIGN KEY (group_id)
    REFERENCES groups (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  competitions_competition_types (table: competitions)


ALTER TABLE competitions ADD CONSTRAINT competitions_competition_types 
    FOREIGN KEY (competition_type_id)
    REFERENCES competition_types (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  competitions_events (table: competitions)


ALTER TABLE competitions ADD CONSTRAINT competitions_events 
    FOREIGN KEY (event_id)
    REFERENCES events (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  event_responsibilities_events (table: event_responsibilities)


ALTER TABLE event_responsibilities ADD CONSTRAINT event_responsibilities_events 
    FOREIGN KEY (event_id)
    REFERENCES events (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  event_responsibilities_responsibility_types (table: event_responsibilities)


ALTER TABLE event_responsibilities ADD CONSTRAINT event_responsibilities_responsibility_types 
    FOREIGN KEY (responsibility_type_id)
    REFERENCES responsibility_types (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  events_event_types (table: events)


ALTER TABLE events ADD CONSTRAINT events_event_types 
    FOREIGN KEY (event_type_id)
    REFERENCES event_types (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  group_events_events (table: group_events)


ALTER TABLE group_events ADD CONSTRAINT group_events_events 
    FOREIGN KEY (event_id)
    REFERENCES events (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  group_events_groups (table: group_events)


ALTER TABLE group_events ADD CONSTRAINT group_events_groups 
    FOREIGN KEY (group_id)
    REFERENCES groups (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  groups_activity_types (table: groups)


ALTER TABLE groups ADD CONSTRAINT groups_activity_types 
    FOREIGN KEY (activity_type_id)
    REFERENCES activity_types (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  groups_user_roles (table: user_roles)


ALTER TABLE user_roles ADD CONSTRAINT groups_user_roles 
    FOREIGN KEY (group_id)
    REFERENCES groups (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  locations_events (table: events)


ALTER TABLE events ADD CONSTRAINT locations_events 
    FOREIGN KEY (location_id)
    REFERENCES locations (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  locations_states (table: locations)


ALTER TABLE locations ADD CONSTRAINT locations_states 
    FOREIGN KEY (state_id)
    REFERENCES states (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  parents_children_users (table: parent_children)


ALTER TABLE parent_children ADD CONSTRAINT parents_children_users 
    FOREIGN KEY (parent_id)
    REFERENCES users (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  user_roles_roles (table: user_roles)


ALTER TABLE user_roles ADD CONSTRAINT user_roles_roles 
    FOREIGN KEY (role_id)
    REFERENCES roles (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  user_roles_users (table: user_roles)


ALTER TABLE user_roles ADD CONSTRAINT user_roles_users 
    FOREIGN KEY (user_id)
    REFERENCES users (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  users_contact_info (table: users)


ALTER TABLE users ADD CONSTRAINT users_contact_info 
    FOREIGN KEY (contact_info_id)
    REFERENCES contact_info (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  users_event_responsibilities (table: event_responsibilities)


ALTER TABLE event_responsibilities ADD CONSTRAINT users_event_responsibilities 
    FOREIGN KEY (user_id)
    REFERENCES users (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  users_parents_children (table: parent_children)


ALTER TABLE parent_children ADD CONSTRAINT users_parents_children 
    FOREIGN KEY (child_id)
    REFERENCES users (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;




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


-- End of file.

