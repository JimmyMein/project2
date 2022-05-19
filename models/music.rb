def all_music
    run_sql("SELECT * FROM music ORDER BY id")
end


def create_music(name, sound_name)
    run_sql("INSERT INTO music(name, sound_name) VALUES($1, $2)", [name, sound_name])
end

def edit_music(id)
    run_sql("SELECT * FROM music WHERE id = $1", [id])[0]
end

def update_music(name, sound_name, id)
    run_sql("UPDATE music SET name = $1, sound_name = $2 WHERE id = $3", [name, sound_name, id])
end

def delete_music(id)
    run_sql("DELETE FROM music WHERE id =  $1", [id])
end