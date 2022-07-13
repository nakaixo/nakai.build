import components
import nakai/html
import nakai/html/attrs
import nakai/html/events
import pages/base

pub type Action {
  Hello
}

pub fn docs() {
  base.document([
    components.header("Documentation"),
    html.p([], [html.Text("Super good and thorough :)")]),
    html.button([events.on_click(Hello)], [html.Text("Hello")]),
  ])
}

pub fn not_found() {
  base.document([
    components.header("404"),
    html.p([], [html.Text("This is the not found page.")]),
  ])
}

pub fn home() {
  base.document([
    components.header("Nakai."),
    html.div(
      [],
      [
        html.p(
          [],
          [
            html.Text(
              "A server-side rendering framework for building web apps with Gleam ✨",
            ),
          ],
        ),
        html.p(
          [],
          [
            html.Text("Run into a bug?"),
            html.space(),
            html.a(
              [attrs.href("https://github.com/nakaibuild/nakai/issues")],
              [html.Text("Report it!")],
            ),
          ],
        ),
        html.p(
          [],
          [
            html.Text("Want to contribute?"),
            html.space(),
            html.a(
              [attrs.href("https://github.com/nakaibuild/nakai")],
              [html.Text("Please do!")],
            ),
          ],
        ),
        html.p(
          [],
          [
            html.Text("Looking for our documentation?"),
            html.space(),
            html.a([attrs.href("/docs")], [html.Text("Over here!")]),
          ],
        ),
      ],
    ),
  ])
}
