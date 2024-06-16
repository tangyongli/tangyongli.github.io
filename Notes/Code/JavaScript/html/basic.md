<!-- The <!DOCTYPE> declaration represents the document type, and helps browsers to display web pages correctly. -->
<!DOCTYPE html>
<!-- <html lang="en-US"> -->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
</head>

<body style="background-color:powderblue;">
    <h1>My First Heading</h1>
    
    <!-- The <br> tag defines a line break, and
is an empty element without a closing tag: -->
    <p>This is a <br> paragraph with a line break.</p>
    <p>My first paragraph.</p>

    <hr>
    <p style="color:red;" title='John "ShotGun" Nelson'>This is a red paragraph.</p>
    <p title='John "ShotGun" Nelson'>John with double quotes</p>
    <p title="John 'ShotGun' Nelson">John with single quotes</p>
    <h2>This is heading 2</h2>
    <hr>
    <h3>This is heading 3</h3>
    <h4>This is heading 4</h4>
    <h5>This is heading 5</h5>
    <a href="https://www.w3schools.com">This is a link</a>
    <br>
    <p>This is<br>a paragraph<br>with line breaks.</p>
    
    <!-- text -->
    <p><b>This text is bold.</b></p>
    <p><strong>This text is important!</strong></p>
    <p><i>This text is italic.</i></p>
    <p><em>This text is emphasized.</em></p>
    <p><small>This is some smaller text.</small></p>
    <p>Do not forget to buy <mark>milk</mark> today.</p>
    <p>My favorite color is <del>blue</del> red.</p>
    <p>My favorite color is <del>blue</del> <ins>red</ins>.</p>
    <p>This is <sub>subscripted</sub> text.</p>
    <p>This is <sup>superscripted</sup> text.</p>
    <p>H<sub>2</sub><sup>O</sup></p>
    <p>H<sub>2</sub>O</p>
        


    <!-- style --tagname style="property:value;" 
    Use the style attribute for styling HTML elements
    Use background-color for background color
    Use color for text colors
    Use font-family for text fonts
    Use font-size for text sizes
    Use text-align for text alignment

    -->
    <h1 style="border:2px solid Tomato;">Hello World</h1>
    <h1 style="background-color:powderblue;color:blue;font-size:10;font-family:courier;text-align:center;" ><i><b></b>This is a heading</i></b> </h1>
    <p style="background-color:tomato;">This is a paragraph.</p>
 
    <h1 style="font-size:60px;">Heading 1</h1>
    <p>I am normal</p>
    <p style="color:red;">I am red</p>
    <p style="color:blue;">I am blue</p>
    <p style="color:brown;">l am brown</p>
    <p style="font-size:50px;">I am big</p>
    <h1 style="background-color:rgb(255, 99, 71);">rgb(255, 99, 71)</h1>
    <h1 style="background-color:#ff6347;">#ff6347</h1>
    <!-- 20%透明度 -->
    <h1 style="background-color:hsl(9, 100%, 64%,0.2);">hsl(9, 100%, 64%)</h1>
    <!-- grey 
    对于八进制，三个颜色一样；值越低，越灰；
    对于16进制[HEX]，三对颜色一样的；Shades of gray are often defined using equal values for all three parameters:
    
    -->
    <h1 style="background-color:rgb(60, 60, 60);">rgb(60, 60, 60)</h1>
    <h1 style="background-color:rgb(100, 100, 100);">rgb(100, 100, 100)</h1>
    <h1 style="background-color:#404040;">#404040</h1>
    <h1 style="background-color:#686868;">#686868</h1>

   
    <hr>
    <p>The pre tag preserves both spaces and line breaks:</p>
    <pre>
    My Bonnie lies over the ocean.

    My Bonnie lies over the sea.

    My Bonnie lies over the ocean.
    
    Oh, bring back my Bonnie to me.
    </pre>

    <!-- quote -->
    <p>Here is a quote from WWF's website:</p>
    <blockquote cite="http://www.worldwildlife.org/who/index.html">
    For 60 years, WWF has worked to help people.
    </blockquote>

    <hr>
    <!-- short quote -->
    <p>WWF's goal is to: <q>Build a future where people live in harmony with nature.</q></p>
    <hr>
    <p>The <abbr title="World Health Organization">WHO</abbr> was founded in 1948.</p>

    <address>
        Written by John Doe.<br>
        Visit us at:<br>
        Example.com<br>
        Box 564, Disneyland<br>
        USA
    </address>

    <img src="img_the_scream.jpg" width="220" height="277" alt="The Scream">
    <!-- cite for书名，斜 -->
    <p><cite>The Scream</cite> by Edvard Munch. Painted in 1893.</p>

    <bdo dir="rtl">This text will be written from right to left</bdo>

    <br>

 






    <!-- 如果image不存在，alt中的内容将被展示 -->
    <img src="img_girl.jpg" alt='that girl' width="500" height="600">
    <img src="data:image/png;base64,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" alt="W3Schools.com" width="104" height="142">


    
</body>
</html>

<!-- 
 <hr> 分割线
 <br> 换行
 
 html的标签标准格式将要显示在web；tyle="property1:value1;property2:value2"是这个标签的属性
 <tagname style="property1:value1;property2:value2"> html的标签标准格式</tagname>



 -->