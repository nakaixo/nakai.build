import gleam/io
import gleam/path
import gleam/string
import gleam/uri
import nakai
import pages/app

pub fn main(url: String) {
  assert Ok(parsed_url) = uri.parse(url)
  let route = path.from_string(parsed_url.path)
  assert path.Absolute(route_segments) = route

  io.println(string.append("get: ", path.to_string(route)))

  case route_segments {
    [] -> app.home()
    ["docs"] -> app.docs()
    _ -> app.not_found()
  }
  |> nakai.render
}
