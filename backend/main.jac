# Nodes
node root {}
node user {}
node mood {}

# Edges
edge has_mood {}

# Walkers
walker init_app {
    can start with `root entry {
        # Minimal initialization echo
        std.emit("MindMate Harmony Space initialized");
    }
}

walker create_demo_user {
    can start with `root entry {
        # Example demo user
        std.emit("Demo user created");
    }
}

walker log_mood {
    has mood_text: str;

    can start with `root entry {
        # Minimal echo of mood_text
        std.emit(mood_text);
    }
}