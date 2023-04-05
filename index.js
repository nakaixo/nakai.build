import { serve } from "std/http/server.ts";

function handler() {
	return new Response(
		'Moved to <a href="https://nakaixo.github.io">https://nakaixo.github.io</a>',
		{
			status: 301,
			headers: {
				"content-type": "text/html; charset=utf-8",
				location: "https://nakaixo.github.io",
			},
		},
	);
}

await serve(handler, {
	onListen() {
		console.log("Listening on http://localhost:8000");
	},
});
