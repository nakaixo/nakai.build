import nakai/html
import nakai/html/attrs

pub fn header(text: String) {
  html.h1(
    [
      attrs.Attr(
        "style",
        "
        color: #331f26;
        font-family: 'Neuton', serif;
        font-size: 128px;
        font-weight: 400;
        ",
      ),
    ],
    [html.Text(text)],
  )
}
