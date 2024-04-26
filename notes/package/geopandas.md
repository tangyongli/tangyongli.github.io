## export 
geopandas中存储的列可以以列表或者元组形式存在，但是导出为shp or geopackage will rasie one error,ValueError: Invalid field type <class 'list'>.
so before exporting, assigning one driver.

```python
countries_gdf.to_file("countries.shp")
countries_gdf.to_file("countries.geojson", driver='GeoJSON')

