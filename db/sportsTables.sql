-- Created by Vertabelo (http://vertabelo.com)
-- Script type: create
-- Scope: [tables, references]
-- Generated at Tue Dec 09 04:52:11 UTC 2014




-- tables
-- Table: activity_types
CREATE TABLE activity_types (
    id int  NOT NULL,
    name varchar(200)  NOT NULL,
    description text  NOT NULL,
    CONSTRAINT activity_types_pk PRIMARY KEY (id)
);



-- Table: contact_info
CREATE TABLE contact_info (
    id int  NOT NULL,
    email varchar(50)  NOT NULL,
    phone varchar(9)  NULL,
    zipcode varchar(5)  NULL,
    CONSTRAINT contact_info_pk PRIMARY KEY (id)
);



-- Table: event_responsibilities
CREATE TABLE event_responsibilities (
    event_id int  NOT NULL,
    responsibility_type_id int  NOT NULL,
    user_id int  NOT NULL,
    details text  NOT NULL,
    events_id int  NOT NULL,
    CONSTRAINT event_responsibilities_pk PRIMARY KEY (event_id,responsibility_type_id,user_id)
);



-- Table: event_types
CREATE TABLE event_types (
    id int  NOT NULL,
    name varchar(200)  NOT NULL,
    description text  NOT NULL,
    CONSTRAINT event_types_pk PRIMARY KEY (id)
);



-- Table: events
CREATE TABLE events (
    id int  NOT NULL,
    group_id int  NOT NULL,
    location_id int  NULL,
    event_type_id int  NOT NULL,
    date date  NOT NULL,
    start_time time  NOT NULL,
    end_time time  NULL,
    description text  NULL,
    competition_id int  NULL,
    groups_id int  NOT NULL,
    CONSTRAINT events_pk PRIMARY KEY (id)
);



-- Table: groups
CREATE TABLE groups (
    id int  NOT NULL,
    activity_type_id int  NOT NULL,
    name varchar(255)  NOT NULL,
    location varchar(255)  NOT NULL,
    logo bytea  NOT NULL,
    description text  NOT NULL,
    age_range int  NOT NULL,
    join_fee int  NOT NULL,
    monthly_fee int  NOT NULL,
    annual_fee int  NOT NULL,
    CONSTRAINT groups_pk PRIMARY KEY (id)
);



-- Table: locations
CREATE TABLE locations (
    id int  NOT NULL,
    name varchar(200)  NOT NULL,
    street_address varchar(200)  NOT NULL,
    city varchar(50)  NOT NULL,
    state_id int  NOT NULL,
    zipcode varchar(20)  NOT NULL,
    coordinates varchar(200)  NOT NULL,
    events_id int  NOT NULL,
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
    id int  NOT NULL,
    name varchar(255)  NOT NULL,
    CONSTRAINT responsibility_types_pk PRIMARY KEY (id)
);



-- Table: roles
CREATE TABLE roles (
    id int  NOT NULL,
    name varchar(50)  NOT NULL,
    CONSTRAINT roles_pk PRIMARY KEY (id)
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
    id int  NOT NULL,
    first_name varchar(50)  NOT NULL,
    last_name varchar(50)  NOT NULL,
    gender int  NULL,
    dob date  NULL,
    bio text  NULL,
    pic bytea  NULL,
    parent_user_id int  NOT NULL,
    contact_info_id int  NOT NULL,
    parents_children_parent_id int  NOT NULL,
    parents_children_child_id int  NOT NULL,
    CONSTRAINT users_pk PRIMARY KEY (id)
);







-- foreign keys
-- Reference:  event_responsibilities_events (table: event_responsibilities)


ALTER TABLE event_responsibilities ADD CONSTRAINT event_responsibilities_events 
    FOREIGN KEY (events_id)
    REFERENCES events (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;

-- Reference:  event_responsibilities_responsibility_types (table: event_responsibilities)


ALTER TABLE event_responsibilities ADD CONSTRAINT event_responsibilities_responsibility_types 
    FOREIGN KEY (event_id)
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

-- Reference:  events_groups (table: events)


ALTER TABLE events ADD CONSTRAINT events_groups 
    FOREIGN KEY (groups_id)
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

-- Reference:  locations_events (table: locations)


ALTER TABLE locations ADD CONSTRAINT locations_events 
    FOREIGN KEY (events_id)
    REFERENCES events (id)
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
    FOREIGN KEY (role_id)
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

-- Reference:  users_parents_children (table: parent_children)


ALTER TABLE parent_children ADD CONSTRAINT users_parents_children 
    FOREIGN KEY (parent_id)
    REFERENCES users (id)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.

