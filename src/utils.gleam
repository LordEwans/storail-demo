import decode/zero as de
import gleam/json

pub type Streamer {
  Streamer(name: String, subscribers: Int)
}

pub fn data_to_json() {
  fn(streamer: Streamer) {
    json.object([
      #("name", json.string(streamer.name)),
      #("subscribers", json.int(streamer.subscribers)),
    ])
  }
}

pub fn data_decoder() {
  {
    use name <- de.field("name", de.string)
    use subscribers <- de.field("subscribers", de.int)
    de.success(Streamer(name:, subscribers:))
  }
}
