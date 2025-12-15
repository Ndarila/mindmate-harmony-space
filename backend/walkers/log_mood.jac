walker log_mood {
    has emotion;
    has intensity;
    has timestamp;

    can user {
        m = spawn mood(
            emotion=emotion,
            intensity=intensity,
            timestamp=timestamp
        );
        user ++> experiences ++> m;
        report "Mood logged successfully";
    }
}
