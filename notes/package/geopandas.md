## Export 
geopandas中存储的列可以以列表或者元组形式存在，但是导出为shp or geopackage will rasie one error,ValueError: Invalid field type <class 'list'>.
so before exporting, assigning one driver.

```python
countries_gdf.to_file("countries.shp")
countries_gdf.to_file("countries.geojson", driver='GeoJSON')
## 导出为csv
# 提取经度和纬度作为新的列
gdf['lon'] = gdf['geometry'].x
gdf['lat'] = gdf['geometry'].y
# 选择要保存的列
columns_to_export = ['class', 'lon', 'lat']
# 将结果保存为 CSV 文件
with open(config_path, 'r') as file:
    config = yaml.safe_load(file)
    gdf[columns_to_export].to_csv(path, index=False)
```

## CREATE GRID IN GEOPANDAS  
![alt text](image-1.png)
```python
import geopandas as gpd
from shapely.geometry import Point, Polygon
# 创建表示 8x7 网格的网格多边形
grid_rows = 5
grid_cols = 7
xmin, ymin, xmax, ymax = gdfline.total_bounds
x_step = (xmax - xmin) / grid_cols
y_step = (ymax - ymin) / grid_rows

# 生成网格多边形
grid_polys = []
for i in range(grid_rows):
    for j in range(grid_cols):
        xmin_grid = xmin + j * x_step
        xmax_grid = xmin + (j + 1) * x_step
        ymin_grid = ymin + i * y_step
        ymax_grid = ymin + (i + 1) * y_step
        grid_polys.append(Polygon([(xmin_grid, ymin_grid), (xmax_grid, ymin_grid), 
                                   (xmax_grid, ymax_grid), (xmin_grid, ymax_grid)]))

# 创建表示网格的 GeoDataFrame
grid_gdf = gpd.GeoDataFrame(geometry=grid_polys)
index_column = list(range(1, len(grid_gdf) + 1))
# Add the new column to the GeoDataFrame
grid_gdf['index'] = index_column
plt,ax=plt.subplots()
# without boundary, the boundary line among every poloy can't show
grid_gdf.boundary.plot(ax=ax, color='red', markersize=50)
## 在每个网格的中心添加标签，标注网格索引
for idx, row in grid_gdf.iterrows():
    centroid = row.geometry.centroid
    ax.text(centroid.x, centroid.y, str(row['index']), fontsize=8, ha='center', va='center')

plt.show()
```
## zonal statistic by grid

```python
# intersect points gdf with multi-poloygon grid_gdf,now the length of intersection gdf is the same with point gdf. The index_right is the index of grid. 
intersection = gpd.sjoin(gdf, grid_gdf, how="inner", op='intersects')
# add new column to store the spatial index of every poloygon
intersection['grid_index'] = intersection.index_right

intersection1=intersection[['point_property','geometry', 'grid_index']]
intersection_with_points = gpd.sjoin(intersection1, gdf, how="inner", op='contains')
intersection_point_counts = intersection_with_points.groupby('grid_index')['index_right'].count()

```
