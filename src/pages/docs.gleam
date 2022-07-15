import nakai/html
import nakai/html/events
import components/header
import pages/base

pub type Action {
  Hello
}

pub fn page() {
  base.document([
    header.default("Documentation"),
    html.p_text([], "Super good and thorough :)"),
    html.button_text([events.on_click(Hello)], "Hello"),
  ])
}
