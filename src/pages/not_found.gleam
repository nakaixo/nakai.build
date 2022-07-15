import nakai/html
import components/header
import pages/base

pub fn page() {
  base.document([
    header.default("404"),
    html.p_text([], "This is the not found page."),
  ])
}
