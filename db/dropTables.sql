-- Created by Vertabelo (http://vertabelo.com)
-- Script type: drop
-- Scope: [tables, references]
-- Generated at Wed Dec 10 05:08:25 UTC 2014






-- foreign keys
ALTER TABLE competition_groups DROP CONSTRAINT competition_groups_competitions;

ALTER TABLE competition_groups DROP CONSTRAINT competition_groups_groups;

ALTER TABLE competitions DROP CONSTRAINT competitions_competition_types;

ALTER TABLE competitions DROP CONSTRAINT competitions_events;

ALTER TABLE event_responsibilities DROP CONSTRAINT event_responsibilities_events;

ALTER TABLE event_responsibilities DROP CONSTRAINT event_responsibilities_responsibility_types;

ALTER TABLE events DROP CONSTRAINT events_event_types;

ALTER TABLE group_events DROP CONSTRAINT group_events_events;

ALTER TABLE group_events DROP CONSTRAINT group_events_groups;

ALTER TABLE groups DROP CONSTRAINT groups_activity_types;

ALTER TABLE user_roles DROP CONSTRAINT groups_user_roles;

ALTER TABLE events DROP CONSTRAINT locations_events;

ALTER TABLE locations DROP CONSTRAINT locations_states;

ALTER TABLE parent_children DROP CONSTRAINT parents_children_users;

ALTER TABLE user_roles DROP CONSTRAINT user_roles_roles;

ALTER TABLE user_roles DROP CONSTRAINT user_roles_users;

ALTER TABLE users DROP CONSTRAINT users_contact_info;

ALTER TABLE event_responsibilities DROP CONSTRAINT users_event_responsibilities;

ALTER TABLE parent_children DROP CONSTRAINT users_parents_children;





-- tables
DROP TABLE activity_types;
DROP TABLE competition_groups;
DROP TABLE competition_types;
DROP TABLE competitions;
DROP TABLE contact_info;
DROP TABLE event_responsibilities;
DROP TABLE event_types;
DROP TABLE events;
DROP TABLE group_events;
DROP TABLE groups;
DROP TABLE locations;
DROP TABLE parent_children;
DROP TABLE responsibility_types;
DROP TABLE roles;
DROP TABLE states;
DROP TABLE user_roles;
DROP TABLE users;




-- End of file.
