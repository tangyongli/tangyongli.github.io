https://blog.hubspot.com/website/html
# Tag
## div tag
Div是一个容器，它里面可以包括容器或者元素(<nav>, <header>, <footer>, and <form>)
Div是耦合

Div 元素有助于将代码组织成清晰标记的部分。他们还在内容之前和之后添加换行符。

# Attribute
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



<nav> 是 HTML 中用来表示导航链接的标签。它用来定义一个页面的导航部分，通常包含一组链接，用来指向其他页面或同一页面内的不同部分<br>
<li>是列表项，通常用在有序列表 <ol> 或无序列表 <ul> 中，用来包裹每一个列表项的内容,有.来表示每一项.<br>
```html
<nav>
    <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="contact.html">Contact</a></li>
    </ul>
</nav>
```