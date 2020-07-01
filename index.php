<?php


session_start();
if (
  !isset($_SESSION["chk_ssid"]) || $_SESSION["chk_ssid"] != session_id()
) {
  echo "LOGIN ERROR";
  exit('<br><a href="login.php">ログイン</a>');
}else{
  session_regenerate_id(true);
  $_SESSION["chk_ssid"] = session_id();
}


// 関数ファイルの読み込み
include('functions.php');

// DB接続
$pdo = connect_to_db();
$output = $_SESSION["username"]

?>
<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>トップページ</title>
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <header>
        <nav>
            <div>
                <a href="logout.php">ログアウト</a>
            </div>
            <?= $output?>さん、こんにちは。
        </nav>
    </header>

    <form action="select_origin.php" method="POST">
    <fieldset>
      <legend>創始者を調べる</legend>
      <div>
        <input type="text" name="origin_word">という言葉を最初に発言した人を
      </div>
      <div>
        <input type="submit" value="チェック">
      </div>
    </fieldset>
  </form>


  <form action="insert3.php" method="POST">
    <fieldset>
      <legend>投稿する（お題３）</legend>
      <a href="select3.php">みんなの投稿を確認</a>
      <div>
        コメント: <textarea name="comment" cols="40" rows="10"></textarea>
      </div>
      <div>
        ハッシュタグ: <textarea name="hashtag" cols="35" rows="1"></textarea>
      </div>
      <div>
        <input type="submit" value="投稿">
      </div>
    </fieldset>
  </form>


  <form action="insert2.php" method="POST">
    <fieldset>
      <legend>投稿する（お題２）</legend>
      <a href="select2.php">みんなの投稿を確認</a>
      <div>
        コメント: <textarea name="comment" cols="40" rows="10"></textarea>
      </div>
      <div>
        ハッシュタグ: <textarea name="hashtag" cols="35" rows="1"></textarea>
      </div>
      <div>
        <input type="submit" value="投稿">
      </div>
    </fieldset>
  </form>


  <form action="insert1.php" method="POST">
    <fieldset>
      <legend>投稿する（お題１）</legend>
      <a href="select1.php">みんなの投稿を確認</a>
      <div>
        コメント: <textarea name="comment" cols="40" rows="10"></textarea>
      </div>
      <div>
        ハッシュタグ: <textarea name="hashtag" cols="35" rows="1"></textarea>
      </div>
      <div>
        <input type="submit" value="投稿">
      </div>
    </fieldset>
  </form>


</body>

</html>

