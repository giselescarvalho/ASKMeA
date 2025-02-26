-- Write your migrate up statements here

---- create above / drop below ----

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.

CREATE TABLE IF NOT EXISTS messages(
    "id" uuid PRIMARY KEY NOT NULL DEFAULT gen_random_uuid(),
    "room_id" uuid NOT NULL 

    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

DROP TABLE IF EXITS messages;