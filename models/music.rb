def all_music
    run_sql("SELECT * FROM music ORDER BY id")
end


def create_music(name, sound_name, img_url, url)
    run_sql("INSERT INTO music(name, sound_name, img_url, url) VALUES($1, $2, $3, $4)", [name, sound_name, img_url, url])
end

def edit_music(id)
    run_sql("SELECT * FROM music WHERE id = $1", [id])[0]
end

def update_music(name, sound_name, img_url, url, id)
    run_sql("UPDATE music SET name = $1, sound_name = $2, img_url = $3, url = $4 WHERE id = $5", [name, sound_name, img_url, url, id])
end

def delete_music(id)
    run_sql("DELETE FROM music WHERE id =  $1", [id])
end

def all_music_suggestions
    run_sql("SELECT * FROM suggested_music ORDER BY id")
end

def add_sug_music(name, sound_name, img_url, url)
    run_sql("INSERT INTO suggested_music(name, sound_name, img_url, url) VALUES($1, $2, $3, $4)", [name, sound_name, img_url, url])
end