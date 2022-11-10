<?php
session_start();
$servername="localhost";
$username="root";
$password="qwerty@123";
$dbname="shop";
$per_page=10;
if(isset($_GET["page"])) $start_page=$_GET["page"]*$per_page;
else $start_page=0;
$con=mysqli_connect($servername,$username,$password,$dbname);
if(!$con) die("Connnect mysql database fail!!".mysqli_connect_error());
// echo "Connect mysql successfully!";
$sql="SELECT * FROM product";
$result=mysqli_query($con,$sql);
$numrow=mysqli_num_rows($result);

echo "<br>".$numrow." Records<br>";
for($i=0;$i<ceil($numrow/$per_page);$i++)
    echo "<a href='show_product.php?page=$i'>[".($i+1)."]</a>";
$sql="SELECT *  FROM product LIMIT $start_page,$per_page";
$result=mysqli_query($con,$sql);
if(mysqli_num_rows($result)>0){
    
    echo "<table border=1><tr><th>id</th><th>name</th><th>image</th><th>description</th><th>price</th><th>ADD</th></tr>";
    while($row=mysqli_fetch_assoc($result)){
    echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td>";
    echo "<td>"."<img src='".$row["image"]."'>"."</td><td>".$row["description"]."</td>";
    echo "<td>".$row["price"]."</td>";
    echo "<td><a href='add_product.php?id=".$row["id"]."'>ใส่ตระกร้า</td></tr>";
    }
    echo "</table>";
}else{
    echo "0 results";
}

echo "<div>";
    for($i=0;$i<ceil($numrow/$per_page);$i++){
        if($i == 0){
            if($page ==0){
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".(0)." > < </a>";
            }else{
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".($page-1)." > < </a>";
            }
            
        }
       
        echo "<a href=".$_SERVER['PHP_SELF']."?page=".($i)." >".($i+1)."</a>";
        if($i == 5){
            if($page == 5){
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".(5)." > > </a>";
            }else{
                echo "<a href=".$_SERVER['PHP_SELF']."?page=".($page+1)." > > </a>";
            }
            
        }
    }
if(isset($_SESSION["cart"])){
$total=0;
echo "<h1>ตระกร้าสินค้า</h1>";
echo "<table><tr><th>ลำดับ</th><th>id</th><th>name</th><th>description</th><th>price</th><th>remove</th></tr>";
    for($i=0;$i<count($_SESSION["cart"]);$i++)
    {
        $item=$_SESSION["cart"][$i];
        echo "<tr><td>".($i+1)."</td>";
        echo "<td>".$item['id']."</td>";
        echo "<td>".$item['name']."</td>";
        echo "<td>".$item['description']."</td>";
        echo "<td>".$item['price']."</td>";
        echo "<td> <a href='del_cart.php?i=".$i."'> <font color='red'> นำสินค้าออก[X]</font></td></a></td></tr>";
        $total+=$item['price'];
    }
echo "</table>";
echo "<h1>ราคาสิ้นค้า $total บาท</h1>";
echo "<h2><a href='delall.php'>ลบทั้งหมด</a></h2>";
echo "<h2><a href='checkout.php'>สั่งซื้อ</a></h2>";
}
mysqli_close($con);
?>