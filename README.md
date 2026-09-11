OceanEmbed — STABLE FRONTEND PROTOTYPE

This build specifically fixes the endless "BUILDING OCEAN FIELD" problem.

What changed:
- Removed dependency on an external MapLibre basemap style.
- MapLibre now uses an inline style, so the map itself initializes without waiting for a remote tile/style server.
- The 0.25° temperature field is rendered as a small canvas image instead of ~24,000 GeoJSON polygons. This is much faster.
- Land silhouettes and the OceanEmbed domain frame are local GeoJSON.
- Depth slider remains vertical on the RIGHT.
- Date slider remains horizontal at the BOTTOM.
- All demo values are browser-generated.

Run:
1. Extract the ZIP.
2. Open the folder in VS Code.
3. Start Live Server.
4. Open index.html through http://localhost/... .
5. Do not double-click the HTML file.

External libraries loaded by CDN:
- MapLibre GL JS
- Plotly.js (only needed for the point-analysis chart)

If Plotly cannot load, the map and controls still work; only the profile chart is unavailable.
