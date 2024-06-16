https://blog.hubspot.com/website/html
# 容器
Flex 容器是使用 CSS flexbox 布局时，包含了一组 flex 项目（flex items）的父元素。在 flex 容器中，通过设置一些属性，如 display: flex;，可以改变其子元素的布局方式，使它们能够更灵活地响应不同屏幕尺寸和内容大小。

在 flex 容器中，子元素可以被设置为灵活地增长或缩小以填充可用空间，也可以通过设置对齐、排序等属性来控制它们的布局。==Flex 容器有两个轴：主轴（main axis）和交叉轴（cross axis）==，这两个轴的方向取决于 flex 容器的 flex-direction 属性设置。

Flex 容器的常见属性包括：

+ display: flex;：将元素设置为 flex 容器。
+ flex-direction：设置主轴的方向（水平或垂直）。 
+ justify-content：在主轴上对齐 flex 项目。
+ align-items：在交叉轴上对齐 flex 项目。
+ flex-wrap：设置是否换行。
+ align-content：在多根轴线的交叉轴上对齐 flex 容器内的内容。
使用 flexbox 布局可以更轻松地实现复杂的布局效果，如居中对齐、等高列、自适应布局等。