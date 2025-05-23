class AirbnbListing {
  String? name;
  String? distance;
  String? date;
  String? price;
  double? rating;
  String? image;
  String? href;

  AirbnbListing({
    this.name,
    this.distance,
    this.date,
    this.price,
    this.rating,
    this.image,
    this.href,
  });

  factory AirbnbListing.fromMap(Map<String, dynamic> json) {
    return AirbnbListing(
      name: json['name'],
      distance: json['dis'],
      date: json['date'],
      price: json['price'],
      rating: double.tryParse(json['rat'].toString()),
      image: json['img'],
      href: json['url'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'dis': distance,
      'date': date,
      'price': price,
      'rat': rating,
      'img': image,
      'url': href,
    };
  }

  AirbnbListing copyWith({
    String? name,
    String? distance,
    String? date,
    String? price,
    double? rating,
    String? image,
    String? href,
  }) {
    return AirbnbListing(
      name: name ?? this.name,
      distance: distance ?? this.distance,
      date: date ?? this.date,
      price: price ?? this.price,
      rating: rating ?? this.rating,
      image: image ?? this.image,
      href: href ?? this.href,
    );
  }
}

List<AirbnbListing> airbnbList = airbnbJson
    .map(
      (e) => AirbnbListing.fromMap(e),
    )
    .toList();

List<Map<String, dynamic>> airbnbJson = [
  {
    "name": "Nilgiris, India",
    "dis": "200 kilometres away",
    "date": "7–12 Aug",
    "price": "₹4,617",
    "rat": 4.8,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-42283687/original/2a853001-0612-4d3a-a612-ed939842d588.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/42283687"
  },
  {
    "name": "Mananthavady, India",
    "dis": "213 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,138",
    "rat": 4.83,
    "img": "https://a0.muscache.com/im/pictures/98b07151-de89-4415-be1a-ad4710acdf63.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/26109146"
  },
  {
    "name": "Thadakalu, India",
    "dis": "191 kilometres away",
    "date": "5–10 Aug",
    "price": "₹4,587",
    "rat": 4.91,
    "img": "https://a0.muscache.com/im/pictures/d01f836d-ac90-4b4a-b686-ba6fd9669052.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/54102967"
  },
  {
    "name": "Srirangapatna, India",
    "dis": "116 kilometres away",
    "date": "27 Aug – 1 Sep",
    "price": "₹3,309",
    "rat": 4.87,
    "img": "https://a0.muscache.com/im/pictures/a6e9ab77-4626-4cc7-bd57-bfbf1dba49b4.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/44949215"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "304 kilometres away",
    "date": "19–24 Jul",
    "price": "₹3,424",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-816434298154754774/original/9e12e636-ad22-4c70-bc0f-5caf98f3ee23.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/816434298154754774"
  },
  {
    "name": "Madikeri, India",
    "dis": "219 kilometres away",
    "date": "2–7 Aug",
    "price": "₹6,284",
    "rat": 4.97,
    "img": "https://a0.muscache.com/im/pictures/c8d9b763-d1d8-401b-990c-f1c2825e0bc5.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/722799272542145949"
  },
  {
    "name": "Kottappadi part, India",
    "dis": "225 kilometres away",
    "date": "30 Jul – 4 Aug",
    "price": "₹3,138",
    "rat": 4.92,
    "img": "https://a0.muscache.com/im/pictures/161db9f0-5f67-4240-b4b7-f4f74d78e3a7.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45808969"
  },
  {
    "name": "Chambebellur, India",
    "dis": "211 kilometres away",
    "date": "16–22 Jul",
    "price": "₹4,089",
    "rat": 4.85,
    "img": "https://a0.muscache.com/im/pictures/537254cf-13e5-47f2-b7b9-4670f66dcac1.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/35748410"
  },
  {
    "name": "Ooty, India",
    "dis": "201 kilometres away",
    "date": "1–6 Aug",
    "price": "₹5,135",
    "rat": 4.84,
    "img": "https://a0.muscache.com/im/pictures/3ec05463-d104-4a09-a52a-516ec6965937.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/28660336"
  },
  {
    "name": "Mysore, India",
    "dis": "153 kilometres away",
    "date": "30 Jul – 4 Aug",
    "price": "₹4,451",
    "rat": 4.81,
    "img": "https://a0.muscache.com/im/pictures/bd9b2efd-0046-4b2e-ac7e-de59f6458521.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/44623481"
  },
  {
    "name": "Bilagola, India",
    "dis": "210 kilometres away",
    "date": "22–27 Jul",
    "price": "₹3,431",
    "rat": 4.96,
    "img": "https://a0.muscache.com/im/pictures/310071fb-23cd-4e8d-8fe7-961aaad367fc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/804934854034152061"
  },
  {
    "name": "Nandi Hills, India",
    "dis": "47 kilometres away",
    "date": "30 Jul – 4 Aug",
    "price": "₹5,783",
    "rat": 4.8,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-50647280/original/835e0c25-e982-45d7-a185-96ec53c9cf57.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/50647280"
  },
  {
    "name": "Hoskeri, India",
    "dis": "204 kilometres away",
    "date": "23–28 Jul",
    "price": "₹4,793",
    "rat": 4.79,
    "img": "https://a0.muscache.com/im/pictures/ba830110-b3db-44e3-86ed-c55d69c87711.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48899404"
  },
  {
    "name": "Nilgiris, India",
    "dis": "200 kilometres away",
    "date": "22–27 Jul",
    "price": "₹4,565",
    "rat": 4.86,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-42366067/original/0973118e-332e-4f01-a6a2-fd91795d2228.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/42366067"
  },
  {
    "name": "Alakabelalu, India",
    "dis": "23 kilometres away",
    "date": "24–29 Jul",
    "price": "₹4,005",
    "rat": 4.88,
    "img": "https://a0.muscache.com/im/pictures/3fa3e962-a758-402f-bc9c-49a4ced23626.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/27530015"
  },
  {
    "name": "Krishnagiri, India",
    "dis": "211 kilometres away",
    "date": "23–28 Jul",
    "price": "₹2,853",
    "rat": 4.93,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-38657965/original/886306c2-f21f-4caa-a7f3-bc22666a6045.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/38657965"
  },
  {
    "name": "Chikka Mudhawadi, India",
    "dis": "45 kilometres away",
    "date": "23–29 Jul",
    "price": "₹5,336",
    "rat": 4.89,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-766531802156580786/original/89897ca5-458f-4c99-bb31-a9cb1633ab3d.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/766531802156580786"
  },
  {
    "name": "Kudige, India",
    "dis": "187 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,135",
    "rat": 4.94,
    "img": "https://a0.muscache.com/im/pictures/d74a9c9c-a149-483e-9e4e-c70bbdf314b0.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/35884028"
  },
  {
    "name": "Biligeri, India",
    "dis": "212 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,282",
    "rat": 4.82,
    "img": "https://a0.muscache.com/im/pictures/993b5b4a-b24d-4811-aa4d-5a67a79655e9.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52257617"
  },
  {
    "name": "Idukki, India",
    "dis": "334 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,595",
    "rat": 4.88,
    "img": "https://a0.muscache.com/im/pictures/f5601b94-e144-4aab-bdc7-31e79e14a322.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/38281216"
  },
  {
    "name": "Kodagu, India",
    "dis": "196 kilometres away",
    "date": "25–30 Jul",
    "price": "₹2,298",
    "rat": 4.84,
    "img": "https://a0.muscache.com/im/pictures/6c91874c-c64d-473f-b9e7-e71f3171b03e.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/27736435"
  },
  {
    "name": "Chikmagalur, India",
    "dis": "212 kilometres away",
    "date": "6–11 Aug",
    "price": "₹5,248",
    "rat": 4.9,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-26888809/original/85e85c8d-09ee-46e7-b437-477bc8a36883.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/26888809"
  },
  {
    "name": "Mysuru, India",
    "dis": "112 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,235",
    "rat": 4.84,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-35495782/original/92a7897f-a1de-4899-a32b-2a026464cd31.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/35495782"
  },
  {
    "name": "Kodagu, India",
    "dis": "197 kilometres away",
    "date": "18–23 Jul",
    "price": "₹2,339",
    "rat": 4.84,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-24165500/original/cf4fd9f9-4a78-4beb-b382-a03a2856ea21.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/24165500"
  },
  {
    "name": "Alanthurai, India",
    "dis": "246 kilometres away",
    "date": "30 Jul – 4 Aug",
    "price": "₹4,336",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/b9199c97-f25e-4cbb-a6cb-0fd2968ea67c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51745463"
  },
  {
    "name": "Kotagiri, India",
    "dis": "192 kilometres away",
    "date": "17–23 Jul",
    "price": "₹2,397",
    "rat": 4.83,
    "img": "https://a0.muscache.com/im/pictures/10958760/18fd838e_original.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/780414"
  },
  {
    "name": "Biligeri, India",
    "dis": "210 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,296",
    "rat": 4.9,
    "img": "https://a0.muscache.com/im/pictures/2e707fc5-091e-4386-b0bf-d4bace57d60a.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/20880693"
  },
  {
    "name": "Sakleshpur, India",
    "dis": "194 kilometres away",
    "date": "1–6 Sep",
    "price": "₹3,438",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/ea55a7c0-28a4-486e-a19c-698cbcae3a9d.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/15709322"
  },
  {
    "name": "Balur, India",
    "dis": "225 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,766",
    "rat": 4.77,
    "img": "https://a0.muscache.com/im/pictures/d666aa6d-e34b-4216-91f7-cc55d5434578.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/556473687561954206"
  },
  {
    "name": "KR Pete, India",
    "dis": "199 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,191",
    "rat": 4.91,
    "img": "https://a0.muscache.com/im/pictures/acf322a2-1c1e-4436-809a-51f0634bf650.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45644496"
  },
  {
    "name": "Anaikatti, India",
    "dis": "227 kilometres away",
    "date": "17–22 Jul",
    "price": "₹4,593",
    "rat": 4.86,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-53124529/original/5c37e3d4-2ed5-45c2-9345-238e8c6b9664.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53124529"
  },
  {
    "name": "Idukki, India",
    "dis": "334 kilometres away",
    "date": "20–25 Jul",
    "price": "₹2,944",
    "rat": 4.85,
    "img": "https://a0.muscache.com/im/pictures/5511934e-e50d-4e67-b642-f16f203b7601.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40994991"
  },
  {
    "name": "Cherukattoor, India",
    "dis": "213 kilometres away",
    "date": "24–29 Jul",
    "price": "₹5,134",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-846706803355755358/original/3758fabc-7ccd-4fcb-aa24-39e68dd3497b.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/846706803355755358"
  },
  {
    "name": "Doddamulagudu, India",
    "dis": "112 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,235",
    "rat": 4.92,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-35495782/original/92a7897f-a1de-4899-a32b-2a026464cd31.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/681624896813098302"
  },
  {
    "name": "Munnar, India",
    "dis": "329 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,078",
    "rat": 4.89,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-46737083/original/ab6970d7-7877-45e7-a76f-1f2f333e6b52.png?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46737083"
  },
  {
    "name": "Ooty, India",
    "dis": "200 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,568",
    "rat": 4.81,
    "img": "https://a0.muscache.com/im/pictures/c94e3619-53b7-40c0-9512-6d58e79e0c8c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/17359186"
  },
  {
    "name": "Hosur, India",
    "dis": "48 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,282",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-783766627335344907/original/a58684cb-7eee-4d74-b606-a5bc9f274e1e.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/783766627335344907"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "311 kilometres away",
    "date": "14–21 Jul",
    "price": "₹4,108",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/53d2c767-1c06-4dfe-b3a9-9b0bc13648f9.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/804717817340999099"
  },
  {
    "name": "Chikmagalur , India",
    "dis": "223 kilometres away",
    "date": "18–23 Jul",
    "price": "₹3,428",
    "rat": 4.9,
    "img": "https://a0.muscache.com/im/pictures/d5f16fe1-dab7-4b57-887d-3322486e8b20.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40545751"
  },
  {
    "name": "Idukki, India",
    "dis": "330 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,853",
    "rat": 4.9,
    "img": "https://a0.muscache.com/im/pictures/41e34c53-1fbc-46dd-adea-762ed1fe02ea.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/8944236"
  },
  {
    "name": "Idukki, India",
    "dis": "330 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,853",
    "rat": 4.9,
    "img": "https://a0.muscache.com/im/pictures/41e34c53-1fbc-46dd-adea-762ed1fe02ea.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/8944236"
  },
  {
    "name": "Somwarpet, India",
    "dis": "192 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,296",
    "rat": 4.86,
    "img": "https://a0.muscache.com/im/pictures/0b2fef0a-64f2-4c23-8540-a06f0488c56f.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/567748261593694154"
  },
  {
    "name": "Kuklur, India",
    "dis": "212 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,511",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/a4efeb88-7730-426a-a871-4416b5124362.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/738325162860499883"
  },
  {
    "name": "Mysuru, India",
    "dis": "123 kilometres away",
    "date": "22–27 Jul",
    "price": "₹6,299",
    "rat": 4.97,
    "img": "https://a0.muscache.com/im/pictures/29b7d0b8-3a38-4579-ae58-a7bf32faba83.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/4837680"
  },
  {
    "name": "KR Pete, India",
    "dis": "199 kilometres away",
    "date": "17–22 Jul",
    "price": "₹5,500",
    "rat": 4.95,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-46722023/original/a704743e-589c-47af-b393-a10a3dfd4ba8.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46722023"
  },
  {
    "name": "Bettadamalali, India",
    "dis": "216 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,994",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/a37837e4-6135-4285-ae4d-04e31ee9bb31.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/7715960"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "301 kilometres away",
    "date": "20–26 Jul",
    "price": "₹4,489",
    "rat": 4.88,
    "img": "https://a0.muscache.com/im/pictures/ea656817-7316-474d-a206-9614c74d0523.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46702864"
  },
  {
    "name": "Palakkad, India",
    "dis": "263 kilometres away",
    "date": "14–19 Jul",
    "price": "₹3,424",
    "rat": 4.92,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-52702834/original/47eefab0-13c8-486d-85eb-d97b06cb57e4.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52702834"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "302 kilometres away",
    "date": "23–29 Jul",
    "price": "₹4,279",
    "rat": 4.8,
    "img": "https://a0.muscache.com/im/pictures/ffe35b52-32d8-4b81-b49b-39495abf8bb3.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/9057645"
  },
  {
    "name": "Madikeri, India",
    "dis": "206 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,565",
    "rat": 4.85,
    "img": "https://a0.muscache.com/im/pictures/5c94024a-78fd-4336-8556-f00f890acbcc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46827662"
  },
  {
    "name": "Krishnagiri, India",
    "dis": "42 kilometres away",
    "date": "14–19 Jul",
    "price": "₹4,122",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-877202921407960036/original/01ee084a-ab35-442a-b07f-7a19f43f1d3a.png?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/877202921407960036"
  },
  {
    "name": "Dindigul, India",
    "dis": "299 kilometres away",
    "date": "24–29 Jul",
    "price": "₹2,226",
    "rat": 4.85,
    "img": "https://a0.muscache.com/im/pictures/33b997d8-80f5-4ff6-9c29-3d5770b0fcc4.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/32416271"
  },
  {
    "name": "Valat, India",
    "dis": "225 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,853",
    "rat": 4.93,
    "img": "https://a0.muscache.com/im/pictures/41ae9fbc-4ce7-452f-88fe-7949ab5a0bbc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/27924681"
  },
  {
    "name": "Harohalli, India",
    "dis": "40 kilometres away",
    "date": "13–19 Jul",
    "price": "₹6,162",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-806219891477710215/original/6d6e4a0b-b193-43c2-a80b-2278c759cd44.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/806219891477710215"
  },
  {
    "name": "KR Pete, India",
    "dis": "199 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,853",
    "rat": 4.88,
    "img": "https://a0.muscache.com/im/pictures/db4c68c3-1955-46ba-9968-4fbb8b0b7a80.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46481014"
  },
  {
    "name": "Vythiri, India",
    "dis": "230 kilometres away",
    "date": "17–22 Jul",
    "price": "₹4,933",
    "rat": 4.85,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-521395359800455028/original/176068a6-5e3e-460d-a3ee-beeafae95d23.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/521395359800455028"
  },
  {
    "name": "Sakleshpur, India",
    "dis": "208 kilometres away",
    "date": "16–21 Jul",
    "price": "₹6,291",
    "rat": 4.83,
    "img": "https://a0.muscache.com/im/pictures/beac6633-3344-4da5-9120-dfd2cdfcffda.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/31129609"
  },
  {
    "name": "KR Pete, India",
    "dis": "199 kilometres away",
    "date": "17–22 Jul",
    "price": "₹5,752",
    "rat": 4.89,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-45666234/original/433d2938-90c1-4def-97e2-e313f869aa3a.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45666234"
  },
  {
    "name": "Cheeral, India",
    "dis": "205 kilometres away",
    "date": "19–25 Jul",
    "price": "₹6,277",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/a03230d9-5b91-4047-8e33-f0468ca21394.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/17412656"
  },
  {
    "name": "Kutta, India",
    "dis": "201 kilometres away",
    "date": "25–30 Jul",
    "price": "₹3,338",
    "rat": 4.74,
    "img": "https://a0.muscache.com/im/pictures/895b8093-5b5a-448d-9aa3-402c15036b25.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/6579154"
  },
  {
    "name": "Cheeral, India",
    "dis": "205 kilometres away",
    "date": "19–25 Jul",
    "price": "₹6,277",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/a03230d9-5b91-4047-8e33-f0468ca21394.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/17412656"
  },
  {
    "name": "Kutta, India",
    "dis": "201 kilometres away",
    "date": "25–30 Jul",
    "price": "₹3,338",
    "rat": 4.74,
    "img": "https://a0.muscache.com/im/pictures/895b8093-5b5a-448d-9aa3-402c15036b25.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/6579154"
  },
  {
    "name": "Kanakapura, India",
    "dis": "51 kilometres away",
    "date": "14–19 Jul",
    "price": "₹3,880",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/bd47a0b2-a85f-4b07-b5be-7eede8ea00b0.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53852256"
  },
  {
    "name": "Aldur, India",
    "dis": "212 kilometres away",
    "date": "14–21 Jul",
    "price": "₹3,081",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/4322ef6d-4650-4786-b568-2970ab32b9e5.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45413389"
  },
  {
    "name": "Munnar, India",
    "dis": "334 kilometres away",
    "date": "14–19 Jul",
    "price": "₹3,012",
    "rat": 4.96,
    "img": "https://a0.muscache.com/im/pictures/02f008de-62c7-4c38-8853-747a8697d5b3.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22019223"
  },
  {
    "name": "Kaniyambetta, India",
    "dis": "216 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,853",
    "rat": 4.93,
    "img": "https://a0.muscache.com/im/pictures/e0d064ae-787f-472a-b694-b80dba4df9d8.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/19024459"
  },
  {
    "name": "Bengaluru, India",
    "dis": "16 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,394",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/776847f4-a811-4c59-a633-5fff87412fad.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/26891806"
  },
  {
    "name": "Kushalnagar, India",
    "dis": "196 kilometres away",
    "date": "17–22 Jul",
    "price": "₹3,138",
    "rat": 4.93,
    "img": "https://a0.muscache.com/im/pictures/962f41e5-6c14-4f9e-b639-5e19cf7e4732.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/26672192"
  },
  {
    "name": "Vellarimala, India",
    "dis": "225 kilometres away",
    "date": "14–21 Jul",
    "price": "₹6,156",
    "rat": 4.75,
    "img": "https://a0.muscache.com/im/pictures/9da9b0ce-2e7b-474e-881c-9bd427d0b0ab.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/42007941"
  },
  {
    "name": "Kyathanahalli, India",
    "dis": "117 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,366",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/2dedefd1-efa2-4885-aa94-10a9a9d48116.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/859902797594156461"
  },
  {
    "name": "Pollibetta, India",
    "dis": "198 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,853",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-653447339210532615/original/5d97bce1-fb4e-4a5b-b42f-ac88eb0fcae4.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/653447339210532615"
  },
  {
    "name": "Chithirapuram, India",
    "dis": "333 kilometres away",
    "date": "14–19 Jul",
    "price": "₹6,230",
    "rat": 4.87,
    "img": "https://a0.muscache.com/im/pictures/13ee6036-9db5-49ba-8fd7-195304955bc0.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/19801382"
  },
  {
    "name": "Muttil North, India",
    "dis": "214 kilometres away",
    "date": "14–21 Jul",
    "price": "₹3,150",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-49009923/original/6f6d2ed8-7f86-4032-bed0-2c4c7eccf97e.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/49009923"
  },
  {
    "name": "Irale Valamudi, India",
    "dis": "204 kilometres away",
    "date": "29 Jul – 3 Aug",
    "price": "₹5,421",
    "rat": 4.92,
    "img": "https://a0.muscache.com/im/pictures/c08329c5-5f9f-4c85-b5ed-9faefc9bd3fe.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/21902961"
  },
  {
    "name": "Vagamon, India",
    "dis": "374 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,880",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/b2fc1d62-40bb-42e7-9703-53a2e93e6bef.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/785467087194630204"
  },
  {
    "name": "Wayanad, India",
    "dis": "209 kilometres away",
    "date": "24–29 Jul",
    "price": "₹3,994",
    "rat": 4.88,
    "img": "https://a0.muscache.com/im/pictures/dac1902b-3850-49d9-baa2-d55737b3cf07.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/7055798"
  },
  {
    "name": "Kotagiri, India",
    "dis": "193 kilometres away",
    "date": "16–22 Jul",
    "price": "₹2,682",
    "rat": 4.86,
    "img": "https://a0.muscache.com/im/pictures/2eca57ab-1e1b-493f-9b8b-fe0d69ef4116.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40435614"
  },
  {
    "name": "KR Pete, India",
    "dis": "199 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,555",
    "rat": 4.76,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-48251657/original/65aace21-9393-4a82-a77a-8ffc800ec646.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48251657"
  },
  {
    "name": "Munnar, India",
    "dis": "332 kilometres away",
    "date": "27 Jul – 1 Aug",
    "price": "₹2,092",
    "rat": 4.87,
    "img": "https://a0.muscache.com/im/pictures/f3bbd8c7-717e-48ae-9a83-b93db7679b33.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/41354343"
  },
  {
    "name": "Kodagu, India",
    "dis": "194 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,526",
    "rat": 4.89,
    "img": "https://a0.muscache.com/im/pictures/b378a3a4-5f53-4a17-b5f8-db3631f6762a.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/34893719"
  },
  {
    "name": "Ibnivalvadi Rural, India",
    "dis": "205 kilometres away",
    "date": "24–29 Jul",
    "price": "₹2,999",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-50495856/original/9e1b612b-643a-4ccb-ac32-7b28a6b4e795.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/50495856"
  },
  {
    "name": "Magadi, India",
    "dis": "28 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,511",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-51979117/original/a07b9286-16c6-44c4-b53b-388aa160152e.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52248103"
  },
  {
    "name": "Srimangala, India",
    "dis": "203 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,282",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/f6bda044-9ddc-4dc3-89d1-539c677fdf37.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/41159692"
  },
  {
    "name": "Bengaluru Urban, India",
    "dis": "22 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,054",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/285f41f4-1c3b-4430-9741-e6a380de91bb.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/878260738850217207"
  },
  {
    "name": "Thondernad, India",
    "dis": "236 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,195",
    "rat": 4.96,
    "img": "https://a0.muscache.com/im/pictures/ffb781bc-1131-4667-8be5-dd0b30497f9e.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/32120919"
  },
  {
    "name": "Madikeri, India",
    "dis": "216 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,511",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-810132346932186293/original/12d69e82-b4ff-49bd-be85-4e872d770a95.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/810132346932186293"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "210 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,852",
    "rat": 4.83,
    "img": "https://a0.muscache.com/im/pictures/68f7b987-f4d3-467b-a1d9-4586a346c5b4.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/19114693"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "214 kilometres away",
    "date": "13–20 Jul",
    "price": "₹3,675",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/6f55823f-d507-4d9a-a3b5-15e252078618.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33827935"
  },
  {
    "name": "Basarikatte, India",
    "dis": "241 kilometres away",
    "date": "13–20 Jul",
    "price": "₹4,793",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-52045433/original/4aebcab0-28f4-4ebc-b489-e49d670874d3.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52045433"
  },
  {
    "name": "Soochipara, India",
    "dis": "225 kilometres away",
    "date": "13–18 Jul",
    "price": "₹5,706",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-822862966663468048/original/b91b9e93-6e36-478a-8e4e-a099d8d53028.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/822862966663468048"
  },
  {
    "name": "Madikeri, India",
    "dis": "210 kilometres away",
    "date": "13–19 Jul",
    "price": "₹2,624",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/50058896-8d49-40be-9a8c-5212d84d88a0.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/41457837"
  },
  {
    "name": "Nedumkandam, India",
    "dis": "353 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,431",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-54116110/original/85894107-2525-41e9-b928-ef3078f60131.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/54116110"
  },
  {
    "name": "Gudalur, India",
    "dis": "202 kilometres away",
    "date": "14–19 Jul",
    "price": "₹4,004",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-319016/original/f5bc6578-3d23-481e-b024-8a15841618b0.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/789329214776077625"
  },
  {
    "name": "Kaggodlu, India",
    "dis": "209 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,149",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/7b89d7f4-7770-4b63-8797-8c91a999de68.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33564131"
  },
  {
    "name": "Vagamon, India",
    "dis": "369 kilometres away",
    "date": "4–9 Oct",
    "price": "₹4,582",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-46403883/original/b25bc582-60f5-457e-8ad8-511fed035cb4.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46403883"
  },
  {
    "name": "Kotagiri, India",
    "dis": "192 kilometres away",
    "date": "17–24 Jul",
    "price": "₹2,493",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/0d511c5e-f347-4de0-bb76-151d06ed4f90.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40456502"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "305 kilometres away",
    "date": "13–18 Jul",
    "price": "₹5,029",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-603422057981221501/original/86f8cd12-89e8-40b8-a10c-a2f83bfae782.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/603422057981221501"
  },
  {
    "name": "Kottathara, India",
    "dis": "228 kilometres away",
    "date": "17–22 Jul",
    "price": "₹4,279",
    "rat": 4.93,
    "img": "https://a0.muscache.com/im/pictures/3dde83ae-425f-40cb-b917-81a8f36c259b.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/27176037"
  },
  {
    "name": "Kalikavu, India",
    "dis": "241 kilometres away",
    "date": "18–23 Jul",
    "price": "₹2,511",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-647553846290777559/original/76202267-6cb5-465f-9fb9-f5f51b6843cb.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/647553846290777559"
  },
  {
    "name": "Gonikopalu, India",
    "dis": "199 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,138",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/632dd24c-1215-4921-8bf3-10c7407689dc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53174709"
  },
  {
    "name": "Kalikavu, India",
    "dis": "241 kilometres away",
    "date": "18–23 Jul",
    "price": "₹2,511",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-647553846290777559/original/76202267-6cb5-465f-9fb9-f5f51b6843cb.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/647553846290777559"
  },
  {
    "name": "Gonikopalu, India",
    "dis": "199 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,138",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/632dd24c-1215-4921-8bf3-10c7407689dc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53174709"
  },
  {
    "name": "Mundaje, India",
    "dis": "239 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,867",
    "rat": 4.96,
    "img": "https://a0.muscache.com/im/pictures/fc36633e-7d35-4e64-8201-e39ce4ae8fe2.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16742736"
  },
  {
    "name": "Kozhikode, India",
    "dis": "234 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,508",
    "rat": 4.94,
    "img": "https://a0.muscache.com/im/pictures/505b146b-15a4-4acb-a88c-3cb5a2816eeb.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/25217633"
  },
  {
    "name": "Attappadi, India",
    "dis": "233 kilometres away",
    "date": "13–19 Jul",
    "price": "₹4,299",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-52103810/original/10bba0d0-a572-4e26-92e4-ea3daa3356a9.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52103810"
  },
  {
    "name": "Ernakulam, India",
    "dis": "341 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,876",
    "rat": 4.9,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-31297954/original/9ac050e5-5d42-4f73-85f4-3d2f8c204219.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/31297954"
  },
  {
    "name": "Konavakorai, India",
    "dis": "190 kilometres away",
    "date": "24–29 Jul",
    "price": "₹5,173",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/9c0f840e-a89d-4a11-9f78-9f152f69d8e8.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/30801771"
  },
  {
    "name": "Bangalore Rural, India",
    "dis": "27 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,008",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-827403984860932538/original/e62ae9cb-acb9-49e9-b37a-1acb8a21be56.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/827403984860932538"
  },
  {
    "name": "Bidadi, India",
    "dis": "30 kilometres away",
    "date": "16–23 Jul",
    "price": "₹5,135",
    "rat": 4.87,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-46537991/original/f174b324-9092-4cc4-8004-af6d1e6a1c4f.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46537991"
  },
  {
    "name": "IN, India",
    "dis": "205 kilometres away",
    "date": "19–24 Jul",
    "price": "₹5,991",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/ec7b19b0-7731-4af7-95d2-ffd3cc5f924d.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/21115776"
  },
  {
    "name": "Kaniyambetta, India",
    "dis": "214 kilometres away",
    "date": "13–18 Jul",
    "price": "₹6,048",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-51093384/original/2aefa6df-7ea2-4d8e-af7b-316f6030d3fb.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51093384"
  },
  {
    "name": "Cherukattoor, India",
    "dis": "213 kilometres away",
    "date": "17–23 Jul",
    "price": "₹5,134",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-846226851337921836/original/42706da7-9c4b-477f-bcc6-3ab135f2c22c.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/846708353945377007"
  },
  {
    "name": "Mysuru, India",
    "dis": "123 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,424",
    "rat": 4.91,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-37271604/original/671f3bf9-4c5d-42e0-a0bb-66750bef22ed.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/37271604"
  },
  {
    "name": "Arimbur, India",
    "dis": "316 kilometres away",
    "date": "27 Jan – 1 Feb",
    "price": "₹2,881",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/65fb4285-bb9b-40ca-a589-1f52b37abd0b.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/34492975"
  },
  {
    "name": "Ibnivalvadi Rural, India",
    "dis": "205 kilometres away",
    "date": "14–19 Jul",
    "price": "₹4,256",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/af92b87a-0d54-455a-a565-b27ddb755dae.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/41870181"
  },
  {
    "name": "Karada, India",
    "dis": "221 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,424",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-21275516/original/e2e4edda-b76e-4ae9-ace0-87c4862b05cf.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/21275516"
  },
  {
    "name": "Krishnagiri, India",
    "dis": "68 kilometres away",
    "date": "3–8 Sep",
    "price": "₹3,108",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-862247001135855708/original/105adfd4-6fc1-4158-8dda-2eeef0486609.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/862247001135855708"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "303 kilometres away",
    "date": "18–23 Jul",
    "price": "₹6,072",
    "rat": 4.77,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-33972640/original/2b6303b7-069a-4f44-a502-6952300199dc.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33972640"
  },
  {
    "name": "Cherambadi, India",
    "dis": "216 kilometres away",
    "date": "14–21 Jul",
    "price": "₹2,099",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/6fde2a90-6062-4df6-9ef2-748a0586899e.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/31196039"
  },
  {
    "name": "Kotagiri, India",
    "dis": "192 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,967",
    "rat": 4.91,
    "img": "https://a0.muscache.com/im/pictures/293f5c88-0895-44c7-ac32-f025a2425728.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40435256"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "212 kilometres away",
    "date": "15–20 Jul",
    "price": "₹3,081",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/db419e84-87f7-4044-8d82-4fd0f224646f.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46760237"
  },
  {
    "name": "Javali, India",
    "dis": "230 kilometres away",
    "date": "16–23 Jul",
    "price": "₹2,281",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/36b4b2ab-72c7-4c3e-9aee-28d53fca4456.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/14160435"
  },
  {
    "name": "20 Acre, India",
    "dis": "334 kilometres away",
    "date": "20–26 Aug",
    "price": "₹2,536",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/26887dd6-46bd-4ca6-ad34-69611aa09f0e.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/23438674"
  },
  {
    "name": "Attappadi, India",
    "dis": "239 kilometres away",
    "date": "14–19 Jul",
    "price": "₹3,599",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-52105114/original/9f26dba9-e1c0-46d6-ac55-882c82c58344.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52105114"
  },
  {
    "name": "KR Pete, India",
    "dis": "199 kilometres away",
    "date": "16–22 Jul",
    "price": "₹2,872",
    "rat": 4.88,
    "img": "https://a0.muscache.com/im/pictures/afeebe3f-5fe6-431e-b757-7d88070ec70f.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48277243"
  },
  {
    "name": "Mondipalayam, India",
    "dis": "193 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,100",
    "rat": 4.86,
    "img": "https://a0.muscache.com/im/pictures/51e8d0f2-975f-4944-874d-a0e3055fcd5a.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/28818965"
  },
  {
    "name": "Masagodu, India",
    "dis": "191 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,282",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-817739935904042883/original/34e72d77-ea19-46ac-931e-403fd76b3893.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/817739935904042883"
  },
  {
    "name": "Kaniyambetta, India",
    "dis": "216 kilometres away",
    "date": "16–21 Jul",
    "price": "₹5,706",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/8bddebe7-388a-4620-acc7-cd5c5fc8a5fb.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/18821001"
  },
  {
    "name": "Parudur, India",
    "dis": "288 kilometres away",
    "date": "1–6 Aug",
    "price": "₹3,321",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-50262433/original/e6c8b667-f1a2-4f66-b0ef-a5cf9297878a.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/50262433"
  },
  {
    "name": "Napoklu, India",
    "dis": "218 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,195",
    "rat": 4.92,
    "img": "https://a0.muscache.com/im/pictures/75333945/b862bfb1_original.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/6046277"
  },
  {
    "name": "Magadi, India",
    "dis": "27 kilometres away",
    "date": "14–21 Jul",
    "price": "₹2,282",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-51979117/original/5ac6e30d-dbe0-4994-8c34-ee556c461b9e.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51979117"
  },
  {
    "name": "Kodagu, India",
    "dis": "211 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,767",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/bca4aa1a-6908-4ecf-aab5-d7b34f4faadd.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46126386"
  },
  {
    "name": "Madikeri, India",
    "dis": "209 kilometres away",
    "date": "14–21 Jul",
    "price": "₹3,595",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/9a10acca-d17a-42ea-9be9-abc5abed0b89.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53882726"
  },
  {
    "name": "Cherambadi, India",
    "dis": "216 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,500",
    "rat": 5.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-34556614/original/ff0ae0e4-652a-4c6b-9b4c-987c70bfb959.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/34556614"
  },
  {
    "name": "Bengaluru, India",
    "dis": "35 kilometres away",
    "date": "1–6 Sep",
    "price": "₹4,336",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-719160306863036965/original/4002383d-e6a8-48cf-b44c-898c18aff1b7.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/719160306863036965"
  },
  {
    "name": "Shoranur, India",
    "dis": "281 kilometres away",
    "date": "15–20 Jul",
    "price": "₹3,309",
    "rat": 4.96,
    "img": "https://a0.muscache.com/im/pictures/82859503/58117d14_original.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/6579483"
  },
  {
    "name": "Somwarpet, India",
    "dis": "192 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,568",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-45459229/original/390d7ee9-5269-44c7-a195-4968c10c8ed8.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45459229"
  },
  {
    "name": "Palukunnu, India",
    "dis": "216 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,625",
    "rat": 4.88,
    "img": "https://a0.muscache.com/im/pictures/d3cb4643-1830-44c9-8d27-ba41e4becfa2.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/38987886"
  },
  {
    "name": "Vīrarājendrapet, India",
    "dis": "213 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,200",
    "rat": 4.93,
    "img": "https://a0.muscache.com/im/pictures/3900a00f-9741-478a-8c89-ba0c77c5770e.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33658078"
  },
  {
    "name": "Bengaluru, India",
    "dis": "26 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,705",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/2d9129fb-ab94-4828-b8cf-900b0ef08e88.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46575922"
  },
  {
    "name": "Bengaluru, India",
    "dis": "26 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,705",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/2d9129fb-ab94-4828-b8cf-900b0ef08e88.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46575922"
  },
  {
    "name": "Pollibetta, India",
    "dis": "197 kilometres away",
    "date": "14–19 Jul",
    "price": "₹6,276",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/f62ee749-5207-468b-a115-cbfd62436a0a.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/21018347"
  },
  {
    "name": "Bilikere, India",
    "dis": "143 kilometres away",
    "date": "16–22 Jul",
    "price": "₹4,577",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/2c43b150-d9b8-4ca7-82ed-01a124ca3e0b.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/688302447745105228"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "308 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,399",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/50a5277a-fe0e-4cae-8bdd-a73d58dbb2ea.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/605142896831876765"
  },
  {
    "name": "Kaniyambetta, India",
    "dis": "215 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,309",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/7618621a-e3ca-490b-98ad-efbc186449d9.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/23531639"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "206 kilometres away",
    "date": "14–19 Jul",
    "price": "₹3,424",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/e55c182d-6bef-4ff0-9754-e9f6f9635b96.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/36475873"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "217 kilometres away",
    "date": "13–19 Jul",
    "price": "₹2,853",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/6778a2c6-3f06-48ba-9ae3-2260e6c93b41.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/11601424"
  },
  {
    "name": "Madikeri, India",
    "dis": "205 kilometres away",
    "date": "13–18 Jul",
    "price": "₹6,276",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/6dd9c6dc-c546-4241-add6-ddbcded1c10e.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/32713544"
  },
  {
    "name": "Bengaluru, India",
    "dis": "11 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,853",
    "rat": 4.57,
    "img": "https://a0.muscache.com/im/pictures/41f1e55c-c638-4c9b-8657-59d0eec0d0b3.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/29841081"
  },
  {
    "name": "Bengaluru, India",
    "dis": "17 kilometres away",
    "date": "8–13 Jan",
    "price": "₹2,292",
    "rat": 4.94,
    "img": "https://a0.muscache.com/im/pictures/78fffff5-801e-484c-b018-45818a6a2ce1.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/3865653"
  },
  {
    "name": "Wayanad, India",
    "dis": "216 kilometres away",
    "date": "15–20 Jul",
    "price": "₹4,350",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-742472734264422226/original/fb9bfac8-bbd4-4e89-a51e-982ee7d59668.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/742472734264422226"
  },
  {
    "name": "Kirugunda, India",
    "dis": "202 kilometres away",
    "date": "14–21 Jul",
    "price": "₹3,469",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-47016404/original/ef4beef3-757c-4a46-b80e-66d4db3241a9.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/47016404"
  },
  {
    "name": "Panamaram, India",
    "dis": "214 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,853",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/95a7a70b-f279-4859-b043-8ea96dd9f0fd.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45859874"
  },
  {
    "name": "Hanumanthapuram, India",
    "dis": "67 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,852",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/23594bc7-ec4d-4da6-86e3-afb2e6e20536.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/39985842"
  },
  {
    "name": "Anaikatti, India",
    "dis": "227 kilometres away",
    "date": "14–20 Jul",
    "price": "₹2,877",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-589034127598545547/original/26e854f9-a4c1-4769-9b87-feefd3d10060.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/589034127598545547"
  },
  {
    "name": "Hassan, India",
    "dis": "209 kilometres away",
    "date": "15–20 Jul",
    "price": "₹4,500",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/3671d8fe-0ecf-4299-951d-53d297d8cf98.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16746160"
  },
  {
    "name": "Madikeri, India",
    "dis": "209 kilometres away",
    "date": "14–21 Jul",
    "price": "₹2,853",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/091a762a-1758-42ff-9fd9-f42f1be62537.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/27227492"
  },
  {
    "name": "Mettupalayam, India",
    "dis": "198 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,503",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/b997c40b-e327-46c2-ac2f-ed343b829f55.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45917923"
  },
  {
    "name": "Chikmagalur, India",
    "dis": "204 kilometres away",
    "date": "16–21 Jul",
    "price": "₹5,478",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/a9abb1af-6d5c-4559-ba54-14bd5b14d8f1.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/49242659"
  },
  {
    "name": "Gonikoppal, India",
    "dis": "200 kilometres away",
    "date": "15–22 Jul",
    "price": "₹4,108",
    "rat": 4.89,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-27893356/original/21c4d398-3cd8-456c-93a5-c120232eb4be.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/27893356"
  },
  {
    "name": "Aluva, India",
    "dis": "345 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,600",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/4b7881ad-15f6-4cb1-8450-9710b2ea0fe8.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/21168107"
  },
  {
    "name": "Bangalore Urban, India",
    "dis": "22 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,293",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/f30c1b6b-620c-4566-8ada-253cefe86f7b.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51074387"
  },
  {
    "name": "Kalpetta, India",
    "dis": "222 kilometres away",
    "date": "15–20 Jul",
    "price": "₹2,966",
    "rat": 4.76,
    "img": "https://a0.muscache.com/im/pictures/8993540e-b41d-4a2a-a345-468a959dcd3c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/19791320"
  },
  {
    "name": "Meppadi, India",
    "dis": "223 kilometres away",
    "date": "13–18 Jul",
    "price": "₹5,706",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/4a98e257-5ca6-4a2a-a60d-6ab98544af86.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/32863553"
  },
  {
    "name": "Munnar, India",
    "dis": "332 kilometres away",
    "date": "13–20 Jul",
    "price": "₹6,304",
    "rat": 4.75,
    "img": "https://a0.muscache.com/im/pictures/8f13b132-2a4f-4393-b8fe-fb33de0ea5b8.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/6129399"
  },
  {
    "name": "Panamaram, India",
    "dis": "214 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,625",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/109dfbc7-aa85-4e46-a472-3e2ba9570dcc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46724574"
  },
  {
    "name": "Sholayoor, India",
    "dis": "234 kilometres away",
    "date": "13–20 Jul",
    "price": "₹3,994",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-644105072473306485/original/0da15d82-1315-4311-b7a3-750c084a0e31.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/738373072522018717"
  },
  {
    "name": "Kotagiri, India",
    "dis": "192 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,374",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/3ae6bd98-a47f-4a87-b491-a9398204b701.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40459740"
  },
  {
    "name": "Munnar- Maryaoor , India",
    "dis": "304 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,565",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/455dc129-876b-4d37-b691-2a692a11b532.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/41464849"
  },
  {
    "name": "Munnar, India",
    "dis": "330 kilometres away",
    "date": "14–21 Jul",
    "price": "₹5,706",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/fc16567f-fbcb-4748-b54d-b66c779eeebb.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/14409563"
  },
  {
    "name": "Wayanad, India",
    "dis": "226 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,425",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/8c07dbd8-d3af-4718-980f-458cfa850a06.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/41281836"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "304 kilometres away",
    "date": "14–21 Jul",
    "price": "₹3,705",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/86dfc7bc-f608-4583-a8b9-00bf95948bac.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/14807867"
  },
  {
    "name": "Dakshina Kannada, India",
    "dis": "240 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,135",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/85080dc5-19e0-4a3c-94da-5f868a93ce8b.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/43886625"
  },
  {
    "name": "Kaniyambetta, India",
    "dis": "216 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,994",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/7ea48eb4-90c5-4a90-bc63-81cb26dfc44e.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/23532048"
  },
  {
    "name": "Biligeri, India",
    "dis": "213 kilometres away",
    "date": "1–6 Aug",
    "price": "₹3,446",
    "rat": 4.9,
    "img": "https://a0.muscache.com/im/pictures/78e22169-72cf-4942-87ae-d55c882327a4.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/23625378"
  },
  {
    "name": "Mandya, India",
    "dis": "91 kilometres away",
    "date": "13–19 Jul",
    "price": "₹4,565",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/727c1f82-825c-4c18-b9eb-93b87af1dc04.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52670872"
  },
  {
    "name": "Anaviratty, India",
    "dis": "336 kilometres away",
    "date": "15–20 Jul",
    "price": "₹2,282",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/3c8800a7-de76-4c15-bcb8-080cf95ba2d2.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/34664168"
  },
  {
    "name": "Munnar, India",
    "dis": "327 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,565",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/b0a8bec1-6a89-449d-825f-87b15f8453d5.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/31456768"
  },
  {
    "name": "Aigur, India",
    "dis": "195 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,994",
    "rat": null,
    "img": "https://a0.muscache.com/im/pictures/2b49db67-4acb-4935-ac3a-e49bc7ffbf68.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/731649681957151442"
  },
  {
    "name": "Kottathara, India",
    "dis": "225 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,710",
    "rat": null,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-797448207801152036/original/232d104d-7e58-45d6-8f3c-89ab884f8fd5.jpeg?im_w=720",
    "url": ""
  },
  {
    "name": "Vagamon, India",
    "dis": "375 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,784",
    "rat": 3.67,
    "img": "https://a0.muscache.com/im/pictures/d35b1dc9-2810-407a-b78e-c22ccfb6a019.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/804901022528155670"
  },
  {
    "name": "Aldur, India",
    "dis": "212 kilometres away",
    "date": "14–19 Jul",
    "price": "₹3,195",
    "rat": 4.73,
    "img": "https://a0.muscache.com/im/pictures/4d0136a0-96e2-4e67-aa47-914e09740341.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33813317"
  },
  {
    "name": "Mudigere, India",
    "dis": "224 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,565",
    "rat": 4.38,
    "img": "https://a0.muscache.com/im/pictures/a18ea476-bced-4953-9c39-b17948424a60.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33192174"
  },
  {
    "name": "Madikeri, India",
    "dis": "210 kilometres away",
    "date": "6–11 Aug",
    "price": "₹2,852",
    "rat": 4.78,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-618012167522601497/original/3a16b307-03d6-4b26-8d63-76193037f634.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/618012167522601497"
  },
  {
    "name": "Kodagu, India",
    "dis": "201 kilometres away",
    "date": "31 Jul – 5 Aug",
    "price": "₹5,266",
    "rat": 4.82,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-602316007525284167/original/22459175-8f82-405c-b86a-db468385b9f3.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/602316007525284167"
  },
  {
    "name": "Kunchithanny, India",
    "dis": "335 kilometres away",
    "date": "17–23 Jul",
    "price": "₹5,553",
    "rat": 4.71,
    "img": "https://a0.muscache.com/im/pictures/dd21bb9b-dd0b-450e-9645-3bc610eaf1a9.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51715564"
  },
  {
    "name": "Bengaluru, India",
    "dis": "28 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,424",
    "rat": 4.83,
    "img": "https://a0.muscache.com/im/pictures/747446ed-0dcc-4789-82e2-a15663b5b92c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/29256197"
  },
  {
    "name": "Ragihalli State Forest, India",
    "dis": "47 kilometres away",
    "date": "15–20 Jul",
    "price": "₹4,038",
    "rat": 4.53,
    "img": "https://a0.muscache.com/im/pictures/ae524c0e-aa6c-4f81-9623-e588e8216cf1.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45171525"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "199 kilometres away",
    "date": "29 Jul – 3 Aug",
    "price": "₹3,424",
    "rat": 4.87,
    "img": "https://a0.muscache.com/im/pictures/27fb3a6e-3938-4af3-a090-20c9793c1c1f.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/700565836765485535"
  },
  {
    "name": "Siddapura, India",
    "dis": "201 kilometres away",
    "date": "3–8 Aug",
    "price": "₹5,435",
    "rat": 4.76,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-50664991/original/7bae405f-96a9-4a6b-b9cb-16a6966b2f99.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/50673096"
  },
  {
    "name": "Munnar, India",
    "dis": "328 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,852",
    "rat": 4.47,
    "img": "https://a0.muscache.com/im/pictures/94ad37b0-f26b-44c9-a948-4af090e899d8.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/17234604"
  },
  {
    "name": "Bylakere, India",
    "dis": "16 kilometres away",
    "date": "27 Jul – 1 Aug",
    "price": "₹4,564",
    "rat": 4.59,
    "img": "https://a0.muscache.com/im/pictures/9e6e559c-1e6e-44ae-a5d1-b10c1d0b6a7c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40388474"
  },
  {
    "name": "Mananthavady, India",
    "dis": "213 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,853",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/b506d0d1-643b-4414-b904-1aa378ffe56a.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16374009"
  },
  {
    "name": "Irumbakachola, India",
    "dis": "247 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,373",
    "rat": 4.56,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-53617967/original/65458cf5-bcb6-4343-bcf4-a763668b0464.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/731382755823203243"
  },
  {
    "name": "Srirangapatna, India",
    "dis": "116 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,195",
    "rat": 4.71,
    "img": "https://a0.muscache.com/im/pictures/46a42029-e16c-4ae2-9d07-792d22f94fd4.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48690311"
  },
  {
    "name": "Maldare, India",
    "dis": "192 kilometres away",
    "date": "19–25 Jul",
    "price": "₹3,800",
    "rat": 4.49,
    "img": "https://a0.muscache.com/im/pictures/a2e4a15f-fe4d-418a-b864-0b89b5218ae6.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45682563"
  },
  {
    "name": "Bengaluru, India",
    "dis": "24 kilometres away",
    "date": "26–31 Jul",
    "price": "₹4,579",
    "rat": 4.42,
    "img": "https://a0.muscache.com/im/pictures/0e93cb0b-add4-444f-9949-1caa5a82f8fd.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/54010113"
  },
  {
    "name": "Vythiri, India",
    "dis": "231 kilometres away",
    "date": "6–11 Aug",
    "price": "₹4,944",
    "rat": 4.72,
    "img": "https://a0.muscache.com/im/pictures/aa642eb1-fc8c-40c3-ba95-37b3aa060be5.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/11689607"
  },
  {
    "name": "Ooty, India",
    "dis": "200 kilometres away",
    "date": "4–9 Aug",
    "price": "₹4,622",
    "rat": 4.81,
    "img": "https://a0.muscache.com/im/pictures/6cb66bc8-0c21-47be-bfca-691138cb4a7d.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/34349284"
  },
  {
    "name": "Ooty, India",
    "dis": "201 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,282",
    "rat": 4.83,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-682532062642282436/original/4386488d-4b07-4624-b4c3-f03880075491.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/682532062642282436"
  },
  {
    "name": "Wayanad, India",
    "dis": "209 kilometres away",
    "date": "30 Jul – 4 Aug",
    "price": "₹3,433",
    "rat": 4.69,
    "img": "https://a0.muscache.com/im/pictures/3579e694-d0c2-4bb5-b6fb-f478cba7d797.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/13210224"
  },
  {
    "name": "Madikeri, India",
    "dis": "209 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,281",
    "rat": 4.72,
    "img": "https://a0.muscache.com/im/pictures/375925f1-7186-4f96-8abb-610f737b14a5.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/39363932"
  },
  {
    "name": "Madikeri, India",
    "dis": "209 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,565",
    "rat": 4.76,
    "img": "https://a0.muscache.com/im/pictures/9a10acca-d17a-42ea-9be9-abc5abed0b89.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/47042759"
  },
  {
    "name": "Bengaluru, India",
    "dis": "20 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,815",
    "rat": 4.91,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-640330917090448841/original/189c9709-cb43-4065-af8c-c04d2e96e185.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/640330917090448841"
  },
  {
    "name": "Bavali, India",
    "dis": "203 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,518",
    "rat": 4.53,
    "img": "https://a0.muscache.com/im/pictures/2b8e71ec-977e-4cab-9a36-8eac09a73c93.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/11307711"
  },
  {
    "name": "Nanjarayapatna, India",
    "dis": "195 kilometres away",
    "date": "17–22 Jul",
    "price": "₹6,123",
    "rat": 4.7,
    "img": "https://a0.muscache.com/im/pictures/dd8f09f2-3974-49ed-9751-49265a90cf65.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/46649586"
  },
  {
    "name": "Kallarkutty, India",
    "dis": "339 kilometres away",
    "date": "18–23 Jul",
    "price": "₹6,105",
    "rat": 4.78,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-53330245/original/e49dc824-6e22-42ea-b06c-196c09b1ac15.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53330245"
  },
  {
    "name": "Kozhikode, India",
    "dis": "267 kilometres away",
    "date": "14–21 Jul",
    "price": "₹4,211",
    "rat": 4.36,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-48915890/original/64a6fbc3-bd76-4731-bacf-acb706fa4245.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48915890"
  },
  {
    "name": "Mysore, India",
    "dis": "132 kilometres away",
    "date": "19–24 Jul",
    "price": "₹2,522",
    "rat": 4.62,
    "img": "https://a0.muscache.com/im/pictures/cc30825c-e1ef-4aca-ba14-e10bfbc52418.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/42945389"
  },
  {
    "name": "Daradahalli, India",
    "dis": "215 kilometres away",
    "date": "15–20 Jul",
    "price": "₹2,282",
    "rat": 4.59,
    "img": "https://a0.muscache.com/im/pictures/b35e162e-2ceb-4815-81ba-e15dd1a652f9.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16919220"
  },
  {
    "name": "Kattabettu, India",
    "dis": "193 kilometres away",
    "date": "1–6 Aug",
    "price": "₹2,511",
    "rat": 4.29,
    "img": "https://a0.muscache.com/im/pictures/4b6e0ea1-acc2-4b36-956e-1102e91f20a8.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51777076"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "199 kilometres away",
    "date": "14–21 Jul",
    "price": "₹2,504",
    "rat": 4.69,
    "img": "https://a0.muscache.com/im/pictures/f26611ad-2b16-40bf-bd5e-dc17c7a8a2f8.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/9354085"
  },
  {
    "name": "Kotagiri, India",
    "dis": "192 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,282",
    "rat": 4.8,
    "img": "https://a0.muscache.com/im/pictures/af55ad6f-26bf-4814-9099-909a5f6e34a6.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/15707476"
  },
  {
    "name": "Ooty, India",
    "dis": "201 kilometres away",
    "date": "23–28 Jul",
    "price": "₹4,565",
    "rat": 4.77,
    "img": "https://a0.muscache.com/im/pictures/3ec05463-d104-4a09-a52a-516ec6965937.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/28260912"
  },
  {
    "name": "Kattabettu, India",
    "dis": "193 kilometres away",
    "date": "1–8 Aug",
    "price": "₹2,511",
    "rat": 4.13,
    "img": "https://a0.muscache.com/im/pictures/814ba73b-dc34-46c4-aa8a-282c7a74c07d.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51776944"
  },
  {
    "name": "Bavali, India",
    "dis": "203 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,153",
    "rat": 4.54,
    "img": "https://a0.muscache.com/im/pictures/ac3fde68-1bdc-4c05-8d24-260b7c6a5c87.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/11594219"
  },
  {
    "name": "Munnar, India",
    "dis": "332 kilometres away",
    "date": "20–26 Jul",
    "price": "₹5,000",
    "rat": 4.38,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-2374731/original/12515760-e05b-42ca-bf09-431370bcb3e1.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/2374731"
  },
  {
    "name": "Periya, India",
    "dis": "226 kilometres away",
    "date": "17–22 Jul",
    "price": "₹3,424",
    "rat": 4.35,
    "img": "https://a0.muscache.com/im/pictures/08b5e8da-0053-4415-9239-692f5a5570e2.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22622803"
  },
  {
    "name": "Madikeri, India",
    "dis": "203 kilometres away",
    "date": "25–30 Jul",
    "price": "₹3,422",
    "rat": 4.78,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-6476101/original/af90c244-546b-448a-9551-d286e61a9423.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/6476101"
  },
  {
    "name": "Vagamon, India",
    "dis": "368 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,766",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/0104a3f1-5169-44cf-b876-a71c8228e931.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/800511525537012135"
  },
  {
    "name": "Vagamon, India",
    "dis": "368 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,766",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/0104a3f1-5169-44cf-b876-a71c8228e931.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/800511525537012135"
  },
  {
    "name": "Meenangadi, India",
    "dis": "211 kilometres away",
    "date": "17–22 Jul",
    "price": "₹2,853",
    "rat": 4.84,
    "img": "https://a0.muscache.com/im/pictures/69437905/bc958746_original.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/681309"
  },
  {
    "name": "Mudumalai, India",
    "dis": "188 kilometres away",
    "date": "14–19 Jul",
    "price": "₹3,138",
    "rat": 4.68,
    "img": "https://a0.muscache.com/im/pictures/2b091a1a-50ba-4326-a7b4-08249768a280.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40763591"
  },
  {
    "name": "Madikeri, India",
    "dis": "202 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,853",
    "rat": 4.48,
    "img": "https://a0.muscache.com/im/pictures/7e56da46-f5a0-4c2a-877a-e0928c8026d0.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/18577131"
  },
  {
    "name": "Bylakere, India",
    "dis": "16 kilometres away",
    "date": "27 Jul – 1 Aug",
    "price": "₹3,697",
    "rat": 4.43,
    "img": "https://a0.muscache.com/im/pictures/8452a790-ae99-4d44-b0fa-6ee6c9435045.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/11727064"
  },
  {
    "name": "Ernakulam, India",
    "dis": "341 kilometres away",
    "date": "15–20 Jul",
    "price": "₹3,880",
    "rat": 4.58,
    "img": "https://a0.muscache.com/im/pictures/c0abaed1-4524-49fb-b869-5f0a3a94d3cf.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/14861456"
  },
  {
    "name": "Nandi Hills, India",
    "dis": "47 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,374",
    "rat": 4.85,
    "img": "https://a0.muscache.com/im/pictures/aa0395a4-a23c-4254-a0b2-b8cb3c534ee1.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16253939"
  },
  {
    "name": "Munnar, India",
    "dis": "327 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,424",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/e97bd92b-b786-4480-b842-feadeb23864c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/52782060"
  },
  {
    "name": "Munnar, India",
    "dis": "335 kilometres away",
    "date": "13–20 Jul",
    "price": "₹4,697",
    "rat": 4.59,
    "img": "https://a0.muscache.com/im/pictures/01220fcc-1855-4639-ab27-17963006dd98.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33256157"
  },
  {
    "name": "Nilgiris, India",
    "dis": "198 kilometres away",
    "date": "20–25 Jul",
    "price": "₹4,724",
    "rat": 4.71,
    "img": "https://a0.muscache.com/im/pictures/760e1bdf-e20d-464a-8177-e3bfb27f2f1a.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/19797516"
  },
  {
    "name": "Thathaguni, India",
    "dis": "22 kilometres away",
    "date": "16–21 Jul",
    "price": "₹5,500",
    "rat": 4.52,
    "img": "https://a0.muscache.com/im/pictures/abef8d07-9a5b-4a98-81dd-10c9d9046456.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/563532853401544842"
  },
  {
    "name": "Irumbakachola, India",
    "dis": "247 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,282",
    "rat": 4.67,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-53617967/original/a5962c30-3515-48a7-b774-61aac39aa3f1.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/711775348197331132"
  },
  {
    "name": "Chikmagalur, India",
    "dis": "205 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,108",
    "rat": 4.63,
    "img": "https://a0.muscache.com/im/pictures/01d0bf46-0666-4f0e-a01c-23ddbaed123b.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/21059713"
  },
  {
    "name": "Kodaikanal, India",
    "dis": "301 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,682",
    "rat": 4.92,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-607756043687663034/original/5a33e9cc-fc81-496b-9b7b-35a02c373384.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/607756043687663034"
  },
  {
    "name": "Mallandur, India",
    "dis": "206 kilometres away",
    "date": "17–22 Jul",
    "price": "₹5,620",
    "rat": 4.65,
    "img": "https://a0.muscache.com/im/pictures/4e6e06db-a80c-4bdd-b45c-5a02fdca6e4d.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/29091181"
  },
  {
    "name": "Mananthavady, India",
    "dis": "225 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,061",
    "rat": 4.6,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-700435632459371673/original/4e5f1f39-bd7e-44f9-b198-a87c3b5ad1ca.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/719973607718170179"
  },
  {
    "name": "Chikkamagaluru, India",
    "dis": "214 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,793",
    "rat": 4.64,
    "img": "https://a0.muscache.com/im/pictures/904f9cb6-efce-469e-8b72-f7a595ff53b4.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/47208527"
  },
  {
    "name": "Ooty, India",
    "dis": "200 kilometres away",
    "date": "19–24 Jul",
    "price": "₹4,108",
    "rat": 4.78,
    "img": "https://a0.muscache.com/im/pictures/6cb66bc8-0c21-47be-bfca-691138cb4a7d.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33083648"
  },
  {
    "name": "Kuntbommanahalli, India",
    "dis": "45 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,394",
    "rat": 4.75,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-45459845/original/b119f2cb-8a68-43e7-a5ec-d69e072dc178.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/609990831261106436"
  },
  {
    "name": "Kodagu, India",
    "dis": "220 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,440",
    "rat": 4.65,
    "img": "https://a0.muscache.com/im/pictures/f4637ede-c821-4cc3-8306-cab7b6e58447.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22185006"
  },
  {
    "name": "Kodagu, India",
    "dis": "220 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,440",
    "rat": 4.65,
    "img": "https://a0.muscache.com/im/pictures/f4637ede-c821-4cc3-8306-cab7b6e58447.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22185006"
  },
  {
    "name": "Bylakere, India",
    "dis": "16 kilometres away",
    "date": "17–22 Jul",
    "price": "₹4,108",
    "rat": 4.45,
    "img": "https://a0.muscache.com/im/pictures/f5bce984-d37b-4b9f-8f4b-0b1e67736f9a.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/11722376"
  },
  {
    "name": "Pollibetta, India",
    "dis": "198 kilometres away",
    "date": "17–22 Jul",
    "price": "₹6,397",
    "rat": 4.75,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-52765425/original/50e5d846-6ac4-461f-9261-b73a1f739031.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53057470"
  },
  {
    "name": "Wayanad, India",
    "dis": "226 kilometres away",
    "date": "17–22 Jul",
    "price": "₹3,001",
    "rat": 4.55,
    "img": "https://a0.muscache.com/im/pictures/77f63428-f55e-4d03-a82d-93f18845113b.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/30917374"
  },
  {
    "name": "Ooty, India",
    "dis": "200 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,660",
    "rat": 4.58,
    "img": "https://a0.muscache.com/im/pictures/3a385e36-7974-48f1-8ecc-7323abb42054.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48502218"
  },
  {
    "name": "Madikeri , India",
    "dis": "208 kilometres away",
    "date": "1–6 Aug",
    "price": "₹6,172",
    "rat": 4.79,
    "img": "https://a0.muscache.com/im/pictures/19c6eac3-ad2c-403d-b07d-ca8e0eeed771.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/12413558"
  },
  {
    "name": "Kattabettu, India",
    "dis": "193 kilometres away",
    "date": "1–6 Aug",
    "price": "₹2,522",
    "rat": 4.17,
    "img": "https://a0.muscache.com/im/pictures/3ed404e7-1546-4b7b-9937-b12fd3bdfc61.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51761318"
  },
  {
    "name": "Kottigehara, India",
    "dis": "224 kilometres away",
    "date": "13–18 Jul",
    "price": "₹4,565",
    "rat": 4.23,
    "img": "https://a0.muscache.com/im/pictures/ef44f20a-9b03-4b73-b672-3d014999f8cd.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33191269"
  },
  {
    "name": "Nemmale East And West, India",
    "dis": "209 kilometres away",
    "date": "19–24 Jul",
    "price": "₹2,876",
    "rat": 4.69,
    "img": "https://a0.muscache.com/im/pictures/87c13883-0430-4e4f-95e0-5c904d579362.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16900449"
  },
  {
    "name": "KOTAGIRI, India",
    "dis": "188 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,135",
    "rat": 4.73,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-47539132/original/c99ea24f-1daf-491e-b16b-4159e018f17d.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/47539132"
  },
  {
    "name": "Elappully-II, India",
    "dis": "263 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,282",
    "rat": 4.83,
    "img": "https://a0.muscache.com/im/pictures/5b818cca-1ba3-4d3b-acf0-6a6396dea886.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/13026751"
  },
  {
    "name": "Kattabettu, India",
    "dis": "193 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,339",
    "rat": 4.0,
    "img": "https://a0.muscache.com/im/pictures/fd7e999f-33a2-4407-8d09-8592e8d1c23f.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51779137"
  },
  {
    "name": "Madikeri, India",
    "dis": "209 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,853",
    "rat": 4.56,
    "img": "https://a0.muscache.com/im/pictures/6433b4c0-0686-4c9b-abb8-fadf4bea49cc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/21267547"
  },
  {
    "name": "Bengaluru, India",
    "dis": "46 kilometres away",
    "date": "5–11 Sep",
    "price": "₹3,338",
    "rat": 4.7,
    "img": "https://a0.muscache.com/im/pictures/8dfbd5a0-3126-4ccb-9f7a-45a043cfd70f.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/31573240"
  },
  {
    "name": "Heggadadevankote, India",
    "dis": "169 kilometres away",
    "date": "13–18 Jul",
    "price": "₹6,026",
    "rat": 4.5,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-689676002184143728/original/ee909314-99ad-447b-be82-d9c7dbb5ec3d.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/689676002184143728"
  },
  {
    "name": "Ooty, India",
    "dis": "200 kilometres away",
    "date": "19–26 Jul",
    "price": "₹3,408",
    "rat": 4.77,
    "img": "https://a0.muscache.com/im/pictures/6cb66bc8-0c21-47be-bfca-691138cb4a7d.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33202899"
  },
  {
    "name": "Huligal, India",
    "dis": "204 kilometres away",
    "date": "1–6 Jan",
    "price": "₹3,994",
    "rat": 4.48,
    "img": "https://a0.muscache.com/im/pictures/3fa9d731-21fd-4e10-91dd-d9acc159ea36.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/29714108"
  },
  {
    "name": "Nilgiris, India",
    "dis": "195 kilometres away",
    "date": "16–21 Aug",
    "price": "₹2,853",
    "rat": 4.38,
    "img": "https://a0.muscache.com/im/pictures/3dbd5da7-15de-40a0-8935-b512c3e7c6a2.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/38012639"
  },
  {
    "name": "Nilgiris, India",
    "dis": "200 kilometres away",
    "date": "16–23 Jul",
    "price": "₹4,275",
    "rat": 4.73,
    "img": "https://a0.muscache.com/im/pictures/b6ec0ebd-a2e2-412b-a84c-4df5f519c7f2.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/658608273381081241"
  },
  {
    "name": "Nandi Hills, India",
    "dis": "46 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,282",
    "rat": 4.77,
    "img": "https://a0.muscache.com/im/pictures/4e228ec7-3b21-4334-a365-55df7e76cf58.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/41036320"
  },
  {
    "name": "Hale Heggudilu, India",
    "dis": "169 kilometres away",
    "date": "13–20 Jul",
    "price": "₹3,766",
    "rat": 4.44,
    "img": "https://a0.muscache.com/im/pictures/0f9fd1d5-6ab1-49cb-a86a-5a5b3be392ec.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33358105"
  },
  {
    "name": "Hassan, India",
    "dis": "194 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,993",
    "rat": 4.0,
    "img": "https://a0.muscache.com/im/pictures/44361b49-160e-4c4f-9c81-42b341e10aed.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/32228478"
  },
  {
    "name": "Kuntbommanahalli, India",
    "dis": "45 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,350",
    "rat": 4.2,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-593951052196671373/original/6f6e2cee-b901-40fc-b0d8-a5b8692ab745.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/593951052196671373"
  },
  {
    "name": "Karnataka, India",
    "dis": "203 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,555",
    "rat": 4.72,
    "img": "https://a0.muscache.com/im/pictures/f496b01e-0f34-4168-adb2-4bfda672f640.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/20494188"
  },
  {
    "name": "Southegowdanahalli, India",
    "dis": "44 kilometres away",
    "date": "16–21 Jul",
    "price": "₹5,705",
    "rat": 4.1,
    "img": "https://a0.muscache.com/im/pictures/13d466c2-4c18-43da-8163-bd8ce91de581.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48874054"
  },
  {
    "name": "Heggadadevankote, India",
    "dis": "177 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,948",
    "rat": 4.59,
    "img": "https://a0.muscache.com/im/pictures/8e030c29-c659-47d9-9311-8d07183ced84.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/42591424"
  },
  {
    "name": "Munnar, India",
    "dis": "335 kilometres away",
    "date": "13–19 Jul",
    "price": "₹2,583",
    "rat": 4.82,
    "img": "https://a0.muscache.com/im/pictures/aac9f261-8996-441a-bd42-3cf5ad976823.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22667277"
  },
  {
    "name": "Kotagiri, India",
    "dis": "191 kilometres away",
    "date": "15–20 Jul",
    "price": "₹2,693",
    "rat": 4.0,
    "img": "https://a0.muscache.com/im/pictures/ef82702d-79b5-491b-8c3c-d6ba7ad59677.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/47147738"
  },
  {
    "name": "Mandya, India",
    "dis": "121 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,145",
    "rat": 4.51,
    "img": "https://a0.muscache.com/im/pictures/a3bb8222-8d79-463e-a8d0-ec33383b4b9c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/4246260"
  },
  {
    "name": "Padichira, India",
    "dis": "196 kilometres away",
    "date": "15–20 Jul",
    "price": "₹5,135",
    "rat": 4.67,
    "img": "https://a0.muscache.com/im/pictures/7bfb5a60-f319-4d79-bbe8-28c357a79f84.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/28764424"
  },
  {
    "name": "Kenichira, India",
    "dis": "209 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,168",
    "rat": 4.67,
    "img": "https://a0.muscache.com/im/pictures/d6b1b2cc-f731-4f80-babb-90a03bad9604.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/788159913954832242"
  },
  {
    "name": "Gonikoppa, India",
    "dis": "199 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,994",
    "rat": 4.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-750751809708423031/original/2fc6b740-8e08-428d-bc53-01e201f83fb3.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/750751809708423031"
  },
  {
    "name": "Panamaram, India",
    "dis": "214 kilometres away",
    "date": "16–21 Jul",
    "price": "₹5,135",
    "rat": 4.63,
    "img": "https://a0.muscache.com/im/pictures/109dfbc7-aa85-4e46-a472-3e2ba9570dcc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45844254"
  },
  {
    "name": "Krishnarajpete, India",
    "dis": "130 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,853",
    "rat": 4.75,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-53370359/original/80b10dcf-4b69-4271-8dab-2b636668558d.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53370359"
  },
  {
    "name": "Mudigere, India",
    "dis": "214 kilometres away",
    "date": "13–20 Jul",
    "price": "₹3,081",
    "rat": 4.0,
    "img": "https://a0.muscache.com/im/pictures/173ccca4-eace-47ca-9442-0504c1f3c901.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40319458"
  },
  {
    "name": "Ibnivalvadi Rural, India",
    "dis": "203 kilometres away",
    "date": "1–6 Sep",
    "price": "₹2,853",
    "rat": 4.77,
    "img": "https://a0.muscache.com/im/pictures/b433c004-44b6-43fc-bb89-b61863bfc445.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16238527"
  },
  {
    "name": "Coimbatore, India",
    "dis": "234 kilometres away",
    "date": "13–18 Jul",
    "price": "₹5,021",
    "rat": 4.51,
    "img": "https://a0.muscache.com/im/pictures/edfbf1ed-9838-4da8-b5cf-7a2e6e7dd4c3.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/30678954"
  },
  {
    "name": "Nanjarayapatna, India",
    "dis": "195 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,195",
    "rat": 4.58,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-25846516/original/886f83cb-68da-4211-9734-64817aa0ea38.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/25846516"
  },
  {
    "name": "Thirunelly, India",
    "dis": "209 kilometres away",
    "date": "21–26 Jul",
    "price": "₹3,994",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/792fe9ef-26a2-420a-bcf3-ec0d5ca2d883.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22859261"
  },
  {
    "name": "Mysuru, India",
    "dis": "111 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,958",
    "rat": 2.33,
    "img": "https://a0.muscache.com/im/pictures/b1b98c3c-6488-4310-8ff5-f4c7c6922e17.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51168874"
  },
  {
    "name": "Hale Heggudilu, India",
    "dis": "169 kilometres away",
    "date": "13–20 Jul",
    "price": "₹3,766",
    "rat": 4.44,
    "img": "https://a0.muscache.com/im/pictures/0f9fd1d5-6ab1-49cb-a86a-5a5b3be392ec.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/33358105"
  },
  {
    "name": "Hassan, India",
    "dis": "194 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,993",
    "rat": 4.0,
    "img": "https://a0.muscache.com/im/pictures/44361b49-160e-4c4f-9c81-42b341e10aed.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/32228478"
  },
  {
    "name": "Kuntbommanahalli, India",
    "dis": "45 kilometres away",
    "date": "16–21 Jul",
    "price": "₹4,350",
    "rat": 4.2,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-593951052196671373/original/6f6e2cee-b901-40fc-b0d8-a5b8692ab745.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/593951052196671373"
  },
  {
    "name": "Karnataka, India",
    "dis": "203 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,555",
    "rat": 4.72,
    "img": "https://a0.muscache.com/im/pictures/f496b01e-0f34-4168-adb2-4bfda672f640.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/20494188"
  },
  {
    "name": "Southegowdanahalli, India",
    "dis": "44 kilometres away",
    "date": "16–21 Jul",
    "price": "₹5,705",
    "rat": 4.1,
    "img": "https://a0.muscache.com/im/pictures/13d466c2-4c18-43da-8163-bd8ce91de581.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/48874054"
  },
  {
    "name": "Heggadadevankote, India",
    "dis": "177 kilometres away",
    "date": "14–19 Jul",
    "price": "₹5,948",
    "rat": 4.59,
    "img": "https://a0.muscache.com/im/pictures/8e030c29-c659-47d9-9311-8d07183ced84.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/42591424"
  },
  {
    "name": "Munnar, India",
    "dis": "335 kilometres away",
    "date": "13–19 Jul",
    "price": "₹2,583",
    "rat": 4.82,
    "img": "https://a0.muscache.com/im/pictures/aac9f261-8996-441a-bd42-3cf5ad976823.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22667277"
  },
  {
    "name": "Kotagiri, India",
    "dis": "191 kilometres away",
    "date": "15–20 Jul",
    "price": "₹2,693",
    "rat": 4.0,
    "img": "https://a0.muscache.com/im/pictures/ef82702d-79b5-491b-8c3c-d6ba7ad59677.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/47147738"
  },
  {
    "name": "Mandya, India",
    "dis": "121 kilometres away",
    "date": "13–18 Jul",
    "price": "₹2,145",
    "rat": 4.51,
    "img": "https://a0.muscache.com/im/pictures/a3bb8222-8d79-463e-a8d0-ec33383b4b9c.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/4246260"
  },
  {
    "name": "Padichira, India",
    "dis": "196 kilometres away",
    "date": "15–20 Jul",
    "price": "₹5,135",
    "rat": 4.67,
    "img": "https://a0.muscache.com/im/pictures/7bfb5a60-f319-4d79-bbe8-28c357a79f84.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/28764424"
  },
  {
    "name": "Kenichira, India",
    "dis": "209 kilometres away",
    "date": "13–20 Jul",
    "price": "₹2,168",
    "rat": 4.67,
    "img": "https://a0.muscache.com/im/pictures/d6b1b2cc-f731-4f80-babb-90a03bad9604.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/788159913954832242"
  },
  {
    "name": "Gonikoppa, India",
    "dis": "199 kilometres away",
    "date": "13–18 Jul",
    "price": "₹3,994",
    "rat": 4.0,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-750751809708423031/original/2fc6b740-8e08-428d-bc53-01e201f83fb3.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/750751809708423031"
  },
  {
    "name": "Panamaram, India",
    "dis": "214 kilometres away",
    "date": "16–21 Jul",
    "price": "₹5,135",
    "rat": 4.63,
    "img": "https://a0.muscache.com/im/pictures/109dfbc7-aa85-4e46-a472-3e2ba9570dcc.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/45844254"
  },
  {
    "name": "Krishnarajpete, India",
    "dis": "130 kilometres away",
    "date": "16–21 Jul",
    "price": "₹2,853",
    "rat": 4.75,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-53370359/original/80b10dcf-4b69-4271-8dab-2b636668558d.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/53370359"
  },
  {
    "name": "Mudigere, India",
    "dis": "214 kilometres away",
    "date": "13–20 Jul",
    "price": "₹3,081",
    "rat": 4.0,
    "img": "https://a0.muscache.com/im/pictures/173ccca4-eace-47ca-9442-0504c1f3c901.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/40319458"
  },
  {
    "name": "Ibnivalvadi Rural, India",
    "dis": "203 kilometres away",
    "date": "1–6 Sep",
    "price": "₹2,853",
    "rat": 4.77,
    "img": "https://a0.muscache.com/im/pictures/b433c004-44b6-43fc-bb89-b61863bfc445.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/16238527"
  },
  {
    "name": "Coimbatore, India",
    "dis": "234 kilometres away",
    "date": "13–18 Jul",
    "price": "₹5,021",
    "rat": 4.51,
    "img": "https://a0.muscache.com/im/pictures/edfbf1ed-9838-4da8-b5cf-7a2e6e7dd4c3.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/30678954"
  },
  {
    "name": "Nanjarayapatna, India",
    "dis": "195 kilometres away",
    "date": "16–21 Jul",
    "price": "₹3,195",
    "rat": 4.58,
    "img":
        "https://a0.muscache.com/im/pictures/miso/Hosting-25846516/original/886f83cb-68da-4211-9734-64817aa0ea38.jpeg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/25846516"
  },
  {
    "name": "Thirunelly, India",
    "dis": "209 kilometres away",
    "date": "21–26 Jul",
    "price": "₹3,994",
    "rat": 5.0,
    "img": "https://a0.muscache.com/im/pictures/792fe9ef-26a2-420a-bcf3-ec0d5ca2d883.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/22859261"
  },
  {
    "name": "Mysuru, India",
    "dis": "111 kilometres away",
    "date": "14–19 Jul",
    "price": "₹2,958",
    "rat": 2.33,
    "img": "https://a0.muscache.com/im/pictures/b1b98c3c-6488-4310-8ff5-f4c7c6922e17.jpg?im_w=720",
    "url": "https://www.airbnb.co.in/rooms/51168874"
  }
];
