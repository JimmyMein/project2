def all_music
    run_sql("SELECT * FROM music ORDER BY id")
end


def create_music(name, image_url)
    run_sql("INSERT INTO music(name, image_url) VALUES($1, $2)", [name, image_url])
end

def edit_music(id)
    run_sql("SELECT * FROM music WHERE id = $1", [id])[0]
end

def update_music(name, image_url, id)
    run_sql("UPDATE music SET name = $1, image_url = $2 WHERE id = $3", [name, image_url, id])
end

def delete_music(id)
    run_sql("DELETE FROM music WHERE id =  $1", [id])
end