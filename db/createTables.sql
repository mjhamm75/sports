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
    coordinates varchar(255)  NOT NULL,
    event_id int  NOT NULL,
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
    parents_children_parent_id int  NULL,
    parents_children_child_id int  NULL,
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






-- End of file.

