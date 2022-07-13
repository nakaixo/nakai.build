import { serve } from "std/http/server.ts";
import { main } from "./build/dev/javascript/nakai_build/dist/nakai_build.mjs";

function handler(req) {
	return new Response(main(req.url), {
		headers: { "content-type": "text/html; charset=utf-8" },
	});
}

await serve(handler, {
	onListen() {
		console.log("Listening on http://localhost:8000");
	},
});
