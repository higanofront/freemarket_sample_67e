# 1番目商品
Item.create!(
  name: "レディース/靴/パンプス商品",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 0, # 0は発送者負担、1は購入者負担
  area: 1,
  day: 1,
  price: 20000,
  category_id: 68,
  user_id: 1,
  buyer: nil,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)

# 2番目商品
Item.create!(
  name: "メンズ/時計/腕時計(アナログ)",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 0, # 0は発送者負担、1は購入者負担
  area: 2,
  day: 2,
  price: 1000000,
  category_id: 324,
  user_id: 2,
  buyer: nil,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)

# 3番目商品
Item.create!(
  name: "ベビー・キッズ1/おむつ/おむつ商品",
  text: "数回しか使っていません",
  condition: "普通",
  burden: 0, # 0は発送者負担、1は購入者負担
  area: 3,
  day: 3,
  price: 1200,
  category_id: 442,
  user_id: 3,
  buyer: nil,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)
# 4番目商品
Item.create!(
  name: "インテリア・住まい・小物/寝具/枕",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 0, # 0は発送者負担、1は購入者負担
  area: 4,
  day: 4,
  price: 4500,
  category_id: 577,
  user_id: 4,
  buyer: nil,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)
# 5番目商品
Item.create!(
  name: "本･音楽･ゲーム/漫画/少年漫画",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 0, # 0は発送者負担、1は購入者負担
  area: 5,
  day: 5,
  price: 500,
  category_id: 644,
  user_id: 5,
  buyer: nil,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)

# 6番目商品
Item.create!(
  name: "おもちゃ・ホビー・グッズ/フィギュア/コミック・アニメ",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 1, # 0は発送者負担、1は購入者負担
  area: 6,
  day: 6,
  price: 12000,
  category_id: 728,
  user_id: 1,
  buyer: nil,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)

# 7番目商品
Item.create!(
  name: "コスメ・香水・美容/香水/香水(女性用)",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 1, # 0は発送者負担、1は購入者負担
  area: 7,
  day: 7,
  price: 5000,
  category_id: 837,
  user_id: 2,
  buyer: nil,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)

# 8番目商品
Item.create!(
  name: "家電・スマホ・カメラ/スマートフォン・携帯電話/スマートフォン本体",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 1, # 0は発送者負担、1は購入者負担
  area: 8,
  day: 8,
  price: 35000,
  category_id: 900,
  user_id: 3,
  buyer: 1,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)

# 9番目商品
Item.create!(
  name: "スポーツ・レジャー/自転車/自転車本体",
  text: "数回しか使っていません",
  condition: "良好",
  burden: 1, # 0は発送者負担、1は購入者負担
  area: 9,
  day: 9,
  price: 100000,
  category_id: 1002,
  user_id: 4,
  buyer: 2,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)

# 10番目商品
Item.create!(
  name: "チケット/音楽/女性アイドル",
  text: "希少",
  condition: "残りわずか",
  burden: 1, # 0は発送者負担、1は購入者負担
  area: 10,
  day: 10,
  price: 15000,
  category_id: 1150,
  user_id: 5,
  buyer: 3,
  created_at: "2020-02-07",
  updated_at: "2020-02-07"
)
