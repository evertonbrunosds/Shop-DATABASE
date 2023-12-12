/* public: */

CREATE TABLE product (
    id uuid not null default uuid_generate_v4() PRIMARY KEY,
    name varchar(64) not null,
    description text not null,
    price double precision not null check(price >= 0),
    image_url varchar(512) not null,
    is_favorite boolean not null default false
);