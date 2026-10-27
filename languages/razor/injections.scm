; Keep each HTML element as an independent layer. This lets Zed recursively
; apply HTML's own injections: CSS in <style> and style="…", and JavaScript
; in <script> and on*="…" attributes.
((element) @injection.content
  (#set! injection.language "html"))

([
  (html_comment)
  (razor_comment)
] @injection.content
  (#set! injection.language "comment"))
