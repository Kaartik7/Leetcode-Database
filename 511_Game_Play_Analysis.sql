select player_id,
    event_date as first_login
from Activity
where (player_id, event_date) not in (
        select a.player_id,
            a.event_date
        from Activity a,
            Activity b
        where a.player_id = b.player_id
            and a.event_date > b.event_date
    );