import nakai/html.{Node}
import nakai/html/attrs
import gleam/io
import gleam/string

pub fn og_meta(property property: String, content: String) -> Node(a) {
  html.LeafElement(
    "meta",
    [
      attrs.Attr("property", string.append("og:", property)),
      attrs.Attr("content", content),
    ],
  )
}

pub fn document(children: List(Node(a))) {
  io.println("hi")

  html.Fragment([
    html.head(
      [],
      [
        html.title("Nakai. ✨"),
        html.LeafElement(
          "meta",
          [
            attrs.Attr("name", "viewport"),
            attrs.Attr("content", "width=device-width, initial-scale=1"),
          ],
        ),
        og_meta("title", "Nakai. ✨"),
        og_meta(
          "description",
          "A server-side rendering framework for building web apps with Gleam ✨",
        ),
        og_meta("type", "website"),
        og_meta("url", "https://nakai.build"),
        og_meta("image", "https://cdn.mckayla.cloud/nakai/Nakai-Banner@2x.webp"),
        og_meta(
          "image:secure_url",
          "https://cdn.mckayla.cloud/nakai/Nakai-Banner@2x.webp",
        ),
        html.link([
          attrs.rel("shortcut icon"),
          attrs.href("https://cdn.mckayla.cloud/nakai/favicon.ico"),
        ]),
        html.link([attrs.rel("stylesheet"), attrs.href("/style.css")]),
        html.link([
          attrs.rel("preconnect"),
          attrs.href("https://fonts.googleapis.com"),
        ]),
        html.link([
          attrs.rel("preconnect"),
          attrs.href("https://fonts.gstatic.com"),
          attrs.Attr("crossorigin", "true"),
        ]),
        html.link([
          attrs.rel("preconnect"),
          attrs.href("https://cdn.mckayla.cloud"),
          attrs.Attr("crossorigin", "true"),
        ]),
        html.link([
          attrs.rel("stylesheet"),
          attrs.href(
            "https://fonts.googleapis.com/css2?family=Neuton&family=Nunito&display=swap",
          ),
        ]),
      ],
    ),
    html.body(
      [
        attrs.Attr(
          "style",
          "
          font-family: 'Nunito', sans-serif;
          margin: 0;
          ",
        ),
      ],
      [
        html.img([
          attrs.Attr(
            "style",
            "
            position: relative;
            z-index: -2;
            width: 100vw;
            height: 50vh;
            object-fit: cover;
            user-select: none;
            ",
          ),
          attrs.src("https://cdn.mckayla.cloud/nakai/Nakai-Background.svg"),
        ]),
        html.div(
          [
            attrs.Attr(
              "style",
              "
              position: absolute;
              left: 0;
              top: 0;
              z-index: -1;
              width: 100vw;
              height: 50vh;
              object-fit: cover;
              user-select: none;
              background-image: linear-gradient(
                0deg,
                rgb(255 255 255 / 0.6) 0%,
                rgb(255 255 255 / 0.4) 20%,
                rgb(255 255 255 / 0) 50%,
                rgb(255 255 255 / 0)
              );
              box-shadow: 0 0 36px #0002;
              ",
            ),
          ],
          [],
        ),
        html.div(
          [
            attrs.Attr(
              "style",
              "
              max-width: 900px;
              margin: auto;
              margin-top: -300px;
              padding: 24px;
              ",
            ),
          ],
          [html.Fragment(children), footer()],
        ),
      ],
    ),
  ])
}

fn footer() {
  html.Fragment([
    html.Element(
      "footer",
      [
        attrs.Attr(
          "style",
          "
          color: #999;
          padding-top: 192px;
          font-size: 18px;
          ",
        ),
      ],
      [
        html.Element(
          "span",
          [],
          [html.Text("Made with 💕 by queer people 🏳️‍🌈")],
        ),
        html.ul(
          [
            attrs.Attr(
              "style",
              "
              list-style-type: none;
              padding-left: 0;
              display: flex;
              flex-direction: row;
              gap: 24px;
              ",
            ),
          ],
          [
            html.li([], [html.a([attrs.href("/")], [html.Text("Home")])]),
            html.li([], [html.a([attrs.href("/docs")], [html.Text("Docs")])]),
            html.li(
              [],
              [
                html.a(
                  [attrs.href("https://github.com/nakaibuild")],
                  [html.Text("Github")],
                ),
              ],
            ),
            html.li(
              [],
              [
                html.a(
                  [
                    attrs.href("https://discord.gg/Fm8Pwmy"),
                    attrs.Attr("title", "It's just the Gleam Discord :p"),
                  ],
                  [html.Text("Discord")],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ])
}
