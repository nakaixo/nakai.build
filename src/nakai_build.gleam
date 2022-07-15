import gleam/io
import gleam/path
import gleam/string
import gleam/uri
import nakai
import pages/docs
import pages/home
import pages/not_found

pub fn main(url: String) {
  assert Ok(parsed_url) = uri.parse(url)
  let route = path.from_string(parsed_url.path)
  assert path.Absolute(route_segments) = route

  io.println(string.append("get: ", path.to_string(route)))

  case route_segments {
    [] -> home.page()
    ["docs"] -> docs.page()
    _ -> not_found.page()
  }
  |> nakai.render
}
