def read_db()
    file = File.read("./details.json")
    db = JSON.parse(file)
    return db
end

def write_db(db)
    File.write("./details.json",JSON.dump(db))
end