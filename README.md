# filmapi
api for filmapi.vercel.app  detailed information on various photo camera films in 35mm and 120 formats including brand name, film model, ISO, availability in different formats, black &amp; white or color specification, processing type, image, film description, and key features.
# Example
```nim
import asyncdispatch, filmapi, json, strutils
let data = waitFor all_films()
echo data
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```
