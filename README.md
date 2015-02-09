# Jp

Maybe parse some Japanese?

## Installation

First you're going to need `mecab`. 

On Os X, brew seems to work fine:

```
brew install mecab
```

On Linux (Ubuntu) I had to build it:

```
curl -o mecab-0.996.tar.gz https://mecab.googlecode.com/files/mecab-0.996.tar.gz
tar zxf mecab-0.996.tar.gz
cd mecab-0.996
./configure --with-charset=utf8 --enable-utf8-only
make
sudo make install
```

Add this line to your application's Gemfile:

```ruby
gem 'jp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jp

## Usage

```
require 'jp'

Jp.parse("まではタイムラインは『タップしてツイートを読み込む』って出て来て見ることが出来たのに、、、\n今は出てこないで時間空けてTL見ると、すべて見れないんですけど💢早く元通りにしてください！")
#=> ["まで", "は", "タイム", "ライン", "は", "『", "タップ", "し", "て", "ツイート", "を", "読み込む", "』", "って", "出", "て", "来", "て", "見る", "こと", "が", "出来", "た", "のに", "、", "、", "、", "今", "は", "出", "て", "こ", "ない", "で", "時間", "空け", "て", "TL", "見る", "と", "、", "すべて", "見れ", "ない", "ん", "です", "けど", "💢", "早く", "元通り", "に", "し", "て", "ください", "！"]
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/jp/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
