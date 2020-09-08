
### String Interpolation
Ekrana çıktı vermek için kullanılır
```
{{ mesaj }}
{{ mesaj.length }}
{{ mesaj.split('') }}
{{ mesaj.split('').reverse }}
{{ sayi }}
{{ sayi + 10 }}
{{ sayi > 50 ? 'Çok Fazla' : 'Daha var' }}


let vm = new Vue({
	el: '#App',
	data: {
		mesaj: 'Selam!',
		sayi: 30,
		secim: [],
		isim: 'Nuri',
		BuyukFont: 48,
		StilTanimi: {
			color: 'red',
			fontSize: '24px'
		},
		ZeminTanimi: {
			backgroundColor: 'green'
		},
		isAktif: true,
		hasError: true,
		sehirler: ['Ankara', 'İstanbul', 'Bursa']
		plakalar: [
				{ id:  6, il: 'Ankara'},
				{ id: 34, il: 'İstanbul'},
				{ id: 16, il: 'Bursa'}
			],
	},
	methods: {
		Buyut: function() {
			console.log('Font büyültülüyor');
			this.sayi++;
		}
		Kucult() {
			console.log('Font küçültülüyor');
			this.sayi--;
		}
	},
	computed: {
		reverseMessage() {
			return this.mesaj.split('').reverse('').join('');
		}
	},
	watch: {
		durumAktif() {
			console.log('email gönderiyorum')
		}
	}
});

```

### Data Binding
html attribute'lerine değişken bağlamak için kullanılır

```
<a href='{{url}}'>{{url}}</a>   ---> Bu çalışmaz!

<a v-bind:href='url'>{{url}}</a>

<a :href='url'>{{url}}</a>

```

## 2 Way Data Binding
Form elemanı değişince değişken değişiyor,
Değişken değişince form elemanındaki değer değişiyor.

```

<input v-model="mesaj" type='text'>

{{ mesaj }}

```

```
<label><input type='checkbox' v-model='secim' value='Ankara'> Ankara </label>
<label><input type='checkbox' v-model='secim' value='Bursa'>  Bursa  </label>
<label><input type='checkbox' v-model='secim' value='İzmir'>  İzmir  </label>

<p>Seçtikleriniz: {{ secim.join(', ') }}</p>

```

### Directives
v-on: veya @: ile, bir event için (örnek: click) bir fonksiyon çağrısı oluşturabiliriz

```
<form action='' @submit.prevent="sayi++">
  <h1>{{sayi}}</h1>
  <h1 v-on:click="sayi++">Sayıyı Arttır</h1>
  <h1 v-on:click="sayi--">Sayıyı Azalt</h1>
  <h1 v-on:click="sayi++">{{sayi}}</h1>

  <h1 @:click="sayi++">Sayıyı Arttır</h1>
  <h1 @:click="sayi--">Sayıyı Azalt</h1>
  <h1 @:click="sayi++">{{sayi}}</h1>
</form>
```


### Inline style binding

Javascript ile style kullanmak istersek, ilgili özelliği camelCase olarak yazmak gerekiyor:
```
font-size         yerine fontSize
background-color  yerine backgroundColor
```

```
<style>
  .kirmizi { color: red;}
  .sarizemin { background-color: yellow}
  .uyari {
  	color: white;
  	background-color: red;
  }
  .aktif {color: green}
  .aktifDegil {color: red}
</style>

```

Aşağıda 3 farklı kullanım var.
- Değişken Bağlama: `:style="StilTanimi"`
- Nesne Bağlama: `:style="{color: 'red', fontSize: BuyukFont + 'px' }"`
- Dizi Bağlama: `:style="[StilTanimi, ZeminTanimi ]"`

```
<div :style="StilTanimi"> {{ mesaj }} </div>
<div :style="{color: 'red', fontSize: BuyukFont + 'px' }"> Merhaba </div>
<div :style="[StilTanimi, ZeminTanimi ]"> Merhaba </div>
```

`color: kirmizi` color Style elementi için "kirmizi" kullan.



### Class Binding Styling

Örnekte 1 2 ikinci satırlar normal html
3. satırda, `h1` elementine `'.aktif'` özelliğinin verilmesi, `isAktif` adlı değişkenin değerine bağlanmış.
`isAktif` değişkeninin değeri `TRUE` ise `<h1 class='aktif'>` olarak görünecek
4.Satırda, `:class` ile bind edilen stil, mevcut class olan BuyuYazi'ya eklenir. Onu silmez !!!
yani sonuç şöyle olur: `class="BuyukYazi uyari"`

```
<h1 class='aktif'>{{ mesaj }}</h1>
<h1 class='aktifDeğil'>{{ mesaj }}</h1>
<h1 :class='{aktif: isAktif}'>{{ mesaj }}</h1>
<h1 class='BuyukYazi' :class='{uyari: hasError'}'>{{ mesaj }}</h1>
<h1 :class='[isAktif ? 'aktif' : 'aktifDegil']'>{{ mesaj }}</h1>
```

### Event Binding


```
<button @click='Buyut'>Büyük</button>
<button @click='Kucult'>Küçük</button>

<h1 :style='{fontSize: sayi + 'px', color: 'red' }> Merhaba! </h1>
```


### Control Structures (Conditional Rendering)

```
<h1 v-if="isAktif">{{ mesaj }}</h1>
<h1 v-else-if="isim === 'Nuri' ">Selam Nuri!</h1>
<h1 v-else>Giriş yapılmadı</h1>
```

### List Rendering

```
<h1>Şehirler</h1>
<ol>
	<li v-for="sehir in sehirler">{{ sehir }}</li>
</ol>

<h1>Plakalar</h1>
<ol>
	<li v-for="sehir in sehirler" :key="sehir.id">{{ sehir.il }} plaka kodu: {{ sehir.il }}</li>
</ol>
```



### Computed Properties


```
<h1>{{ reverseMessage  }}</h1>
```


### Watchers ANLAMADIM

watch, takip edilen bir değişkenin değeri değiştiğinde işlem yapılmasını sağlar.

```
<h1>Nuri Akman {{ isAktif ? 'Çalışıyor' : 'Çalışmıyor' }}</h1>

<h1>Nuri Akman {{ isAktif ? 'Çalışıyor' : 'Çalışmıyor' }}</h1>
```



















