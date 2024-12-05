<?php
$data = [
    'name' => 'Sandy(｡•ㅅ•｡)ﾉ',
    'mobile' => '0911-222-333',
    'word1' => '你不用一開始就很厲害，但要開始才有辦法很厲害 ٩(˶╹ꇴ╹˶)و',
    'word2' => '✿ 每個人的花期不同，不必焦慮有人比你提前擁有！ก็ʕ•͡ᴥ•ʔก้ ✿',
];

function dd($data)
{
    echo "<pre>";
    print_r($data);
    echo "</pre>";
}

// dd($data);

$myJSON = json_encode($data);

echo $myJSON;