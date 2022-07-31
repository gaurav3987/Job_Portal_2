<!DOCTYPE html>
<!-- Created By CodeWithNepal(codewithnepal.com) -->
<html lang="en" dir="ltr">

<head>
  <meta charset="utf-8">
  <title>ABC Jobs Pte Ltd</title>
 <link href='https://css.gg/briefcase.css' rel='stylesheet'>
 <link href='https://css.gg/add.css' rel='stylesheet'>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap');
*{
  margin:0px;
  padding:0px;
  box-sizing: border-box;
}
:root{
  --color-text: #616161;
  --color-text-btn: #ffffff;
  --card1-gradient-color1: #f12711;
  --card1-gradient-color2: #f5af19;
  --card2-gradient-color1: #7F00FF;
  --card2-gradient-color2: #E100FF;
  --card3-gradient-color1: #3f2b96;
  --card3-gradient-color2: #a8c0ff;
  --card4-gradient-color1: #11998e;
  --card4-gradient-color2: #38ef7d;
}
body{
  font-family: 'Roboto', sans-serif;
      background: linear-gradient(-135deg, #c850c0, #4158d0);
  height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-wrap: wrap;
  gap: 30px;
}
.card-wrap{
  width: 220px;
  background: #fff;
  border-radius: 20px;
  border: 5px solid #fff;
  overflow: hidden;
  color: var(--color-text);
  box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px,
              rgba(0, 0, 0, 0.23) 0px 6px 6px;
  cursor: pointer;
  transition: all .2s ease-in-out;
}
.card-wrap:hover{
  transform: scale(1.1);
}
.card-header{
  height: 200px;
  width: 100%;
  background: red;
  border-radius:100% 0% 100% 0% / 0% 50% 50% 100%;
  display: grid;
  place-items: center;

}

.card-header i{
  color: #fff;
  font-size: 72px;
}
.card-content{
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 60%;
  margin: 0 auto;
}
.card-title{
  text-align: center;
  text-transform: uppercase;
  font-size: 16px;
  margin-top: 10px;
  margin-bottom: 20px;
  
}
.card-text{
  text-align: center;
  font-size: 12px;
  margin-bottom: 20px;
}
.card-btn{
  border: none;
  border-radius: 100px;
  padding: 5px 30px;
  color: #fff;
  margin-bottom: 15px;
  text-transform: uppercase;
}
.card-header.one{
  background: linear-gradient(to bottom left, var(--card1-gradient-color1), var(--card1-gradient-color2));
}
.card-header.two{
  background: linear-gradient(to bottom left, var(--card2-gradient-color1), var(--card2-gradient-color2));
}
.card-header.three{
  background: linear-gradient(to bottom left, var(--card3-gradient-color1), var(--card3-gradient-color2));
}
.card-header.four{
  background: linear-gradient(to bottom left, var(--card4-gradient-color1), var(--card4-gradient-color2));
}

.card-btn.one{
  background: linear-gradient(to left, var(--card1-gradient-color1), var(--card1-gradient-color2));
}
.card-btn.two{
  background: linear-gradient(to left, var(--card2-gradient-color1), var(--card2-gradient-color2));
}
.card-btn.three{
  background: linear-gradient(to left, var(--card3-gradient-color1), var(--card3-gradient-color2));
}
.card-btn.four{
  background: linear-gradient(to left, var(--card4-gradient-color1), var(--card4-gradient-color2));
}
  </style>
</head>

<body>
  <div class="card-wrap">
    <div class="card-header one">
      <i class="gg-add"></i>
    </div>
    <div class="card-content">
      <h1 class="card-title">Post Jobs</h1>
      <p class="card-text">To alert potential applicants to a new position and encourage them to apply.</p>
      <a href="/createjobs"> <button class="card-btn one">Post</button> </a>
    </div>
  </div>
  <div class="card-wrap">
    <div class="card-header four">
      <i class="gg-briefcase"></i>
    </div>
    <div class="card-content">
      <h1 class="card-title">View Jobs</h1>
      <p class="card-text">To remove them as well as see all open positions of jobs in the system.</p>
      <a href="/viewjobs"><button class="card-btn four">View</button></a>
    </div>
  </div>
</body>

</html>