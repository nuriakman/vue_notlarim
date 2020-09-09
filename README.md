# Vue Notlarım
```
methods: {
  addItem(e) {
    e.preventDefault();
    this.list.push(this.item)
    this.item = "";
  }
}


v-on:click=""  ---> Aksiyon Yakalama
@:click=""     ---> Aksiyon Yakalama

v-bind:disable="newItem.length == 0 ? true : false"  ---> Dinamik bağlama
:disable="newItem.length == 0 ? true : false"        ---> Dinamik bağlama

```

https://jsfiddle.net/cemslord/me43swoo/




Template yapısına giriş: https://www.youtube.com/watch?v=hZAnKK32DcM&list=PLhLbfczNPVOKsDy-qb22aO-WxZUijmwTR&index=7&ab_channel=OmerSensoy

Komponentler arasında Eventler ile İletişim Kurmak: https://www.youtube.com/watch?v=TCBzFVoRAaU&list=PLhLbfczNPVOKsDy-qb22aO-WxZUijmwTR&index=2



### Özet ve güzel bir Vue JS Listesi:

ÖMER ŞENSOY https://www.youtube.com/watch?v=TCBzFVoRAaU&list=PLhLbfczNPVOKsDy-qb22aO-WxZUijmwTR&index=2

- Nedir bu Vue.js 2? | #1 Yükleme & v-model ile Hello World!
- Nedir bu Vue.js 2? | #2 v-for kullanarak arrayleri göstermek ve v-on ile etkileşim
- Nedir bu Vue.js 2? | #3 v-bind ile model ve attribute arasında bağlantı kurmak
- Nedir bu Vue.js 2? | #4 Dinamik hesaplanılan değişkenler oluşturmak
- Nedir bu Vue.js 2? | #5 v-if direktifi ile koşula bağlı işler
- Nedir bu Vue.js 2? | #6 Web Uygulamalarında Komponent Kafası
- Nedir bu Vue.js 2? | #7 Basit Komponentler Oluşturmak
- Nedir bu Vue.js 2? | #8 İç içe Geçmiş Komponentler ile Çalışmak
- Nedir bu Vue.js 2? | #9 Komponentler arasında Eventler ile İletişim Kurmak



## Webpack

Webpack, projedeki .js, .css dosyalarının birleştirilip tek bir dosya haline getirilmesini sağlar


```
sudo npm install -g webpack

npm init

npm install jquery --save
jquery'i yükler

npm install css-loader style-loader --save-dev


webpack app.js bundle.js
app.js dosyasını işler ve bundle.js dosyasını üretir.

webpack app.js bundle.js --watch
app.js dosyasının her değişikliğinde otomatik olarak işler ve bundle.js dosyasını üretir.

webpack
webpack.config.js dosyasına tanım yapılırsa sadece webpack yazarak çalıştırılabilir


npm run build
webpack.config.js dosyasında "script" başlığı altına "build: 'webpack' " eklenirse artık webpack yazmak yerine "npm build" yazmak yeterli olacak


sudo npm install -g webpack-dev-server --save-dev


npm run start
webpack.config.js dosyasında "script" başlığı altına "start: 'webpack-dev-server --entry ./src/js/app.js --output-file-name ./dist/budle.js' " eklenirse artık webpack yazmak yerine "npm start" yazmak yeterli olacak


npm install babel-core babel-loadre babel-preset-es2015 --save-dev
Babel yüklenmesi. es6'nın es5'e düşürülmesi için


```

