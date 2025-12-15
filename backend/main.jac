// MindMate Harmony Space
// Core Jac Backend

node root {
    has name = "MindMate Root";
}

node user {
    has user_id;
    has name;
}

node mood {
    has emotion;
    has intensity;
    has timestamp;
}

edge experiences {}

walker init_app {
    can root {
        report "MindMate Harmony Space initialized";
    }
}

walker create_user {
    has user_id;
    has name;

    can root {
        new_user = spawn user(user_id=user_id, name=name);
        root ++> experiences ++> new_user;
        report f"User {name} created successfully";
    }
}
