
## Webpack

Webpack, projedeki .js, .css dosyalarının birleştirilip tek bir dosya haline getirilmesini sağlar. Detaylı ve güzel bir anlatım şurada var: https://www.youtube.com/watch?v=UJnPLRM8SvU

### Örnek webpack.config.js içeriği:
```
const HtmlWebpackPlugin = require('html-webpack-plugin')
const path = require('path);

module.exports = {
  entry: ["babel-polyfill", "./index.js"],
  output: {
    path: path.resolve(__dirname, 'dist'), // Aktif dizini kullan
    filename: 'js/bundle.js'
  },
  mode: 'development', // Geliştirme aşamasındayız. Ürün modu için burada 'production' yazmalı
  devServer: {
    contentBase: './dist/',
  },
  plugins: {
    new HtmlWebpackPlugin({
      filename: 'index.html',
      template: './src/index.html'  // Bu dosya olmasa  da olur. Olursa, içine bundle.js otomatik eklenir
    })
  },
  rules: [
    { 
      test: /\.js$/, 
      exclude: /node_modules/, 
      loader: "babel-loader" 
    }
  ]
}
```
### .babelrc dosyası içeriği:
```
{
  "presets": ["@babel/preset-env"]  // standart olarak e6, es7 gibi türleri es5'e çevirme için yapılan varsayılan ortam tanımı
}
```

### package.json dosyası içeriği:
```
.....
  scripts: {
    'dev': 'webpack --mode development',
    'build': 'webpack --mode production'
    'start': 'webpack-dev-server --mode development --open'
  }
.....
```

npm run dev
npm run build
package.json dosyası içinde script başlığı altındaki komutlar bu şekilde çalıştırılır.


require('./kutuphane')
.js dosyası içinde başka bir dosyayı eklemek için kullanılır. Dosya adındaki .js yazılmasa da olur

live-server ??? Nereden kuruldu bilmiyorum...
 

```
npm init --yes


sudo npm install webpack --save-dev
sudo npm install webpack-cli --save-dev
sudo npm install webpack-dev-server --save-dev
sudo npm install html-webpack-plugin --save-dev
sudo npm install babel-loader @babel/core --save-dev
sudo npm install @babel/preset-env --save-dev
sudo npm install babel-polyfill --save
Burada, --save-dev yazarak Development Dependency yani geliştirme ortamı bağımlılıkları paketlerine eklemiş olduk
babel-loader, projedeki tüm .js dosyalarını tarar

npm run start
webpack.config.js dosyasında "script" başlığı altına "start: 'webpack-dev-server --entry ./src/js/app.js --output-file-name ./dist/budle.js' " eklenirse artık webpack yazmak yerine "npm start" yazmak yeterli olacak


npm install jquery --save
jquery'i yükler

npm install css-loader style-loader --save-dev

webpack app.js bundle.js
app.js dosyasını işler ve bundle.js dosyasını üretir.

webpack app.js bundle.js --watch
app.js dosyasının her değişikliğinde otomatik olarak işler ve bundle.js dosyasını üretir.

webpack
webpack.config.js dosyasına tanım yapılmadığı sürece sadece webpack yazarak çalıştırılabilir


npm install babel-core babel-loadre babel-preset-es2015 --save-dev
Babel yüklenmesi. es6'nın es5'e düşürülmesi için


```

## Dizin yapısı
```
/dist    --> Production için gereken dosyalar burada olur
/dist/js
/dist/css
/dist/img

/src   --> Kaynak dosyalar klasörü
/src/js    --> JS içine kaynak dosyalar klasörü
/src/css   --> CSS için kaynak dosyalar klasörü
.babelrc
package-lock.json
package.json
webpack.config.js
```

