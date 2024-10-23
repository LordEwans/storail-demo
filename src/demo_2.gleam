import storail
import utils

const config = storail.Config(
  data_directory: "/storage",
  temporary_directory: "/tmp/storail",
)

pub fn new_collection(name: String) {
  storail.Collection(
    name:,
    to_json: utils.data_to_json,
    decoder: utils.data_decoder,
    config:,
  )
}

pub fn write_data(key_name: String, data: String) {
  let key = storail.key(collection, key_name)

  let assert Ok(Nil) = storail.write(key, utils.Data(data, 5))
}

pub fn main() {
  todo
}
