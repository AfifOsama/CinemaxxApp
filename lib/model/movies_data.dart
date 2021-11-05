class MoviesData {
  String nama;
  String genre;
  String durasi;
  String sutradara;
  String ratingUsia;
  double ratingImdb;
  String sinopsis;
  String images;
  List<String> imagesUrls;

  MoviesData(
      {required this.nama,
      required this.genre,
      required this.durasi,
      required this.sutradara,
      required this.ratingUsia,
      required this.ratingImdb,
      required this.sinopsis,
      required this.images,
      required this.imagesUrls});
}

var moviesDataList = [
  MoviesData(
    nama: "Paranormal Activity: Next of Kin",
    genre: "Horror",
    durasi: "98 Minutes",
    sutradara: "William Eubank",
    ratingUsia: "R",
    ratingImdb: 4.3,
    sinopsis:
        "Margot, seorang pembuat film dokumenter, pergi ke komunitas Amish yang terpencil dengan harapan dapat mengetahui tentang ibu dan keluarga besarnya yang telah lama hilang. Setelah serangkaian kejadian dan penemuan aneh, dia menyadari bahwa komunitas ini mungkin tidak seperti yang terlihat.",
    images: 'assets/images/paranormal-activity/poster.jpg',
    imagesUrls: [
      'assets/images/paranormal-activity/Screenshot_1.png',
      'assets/images/paranormal-activity/Screenshot_2.png',
      'assets/images/paranormal-activity/Screenshot_3.png',
      'assets/images/paranormal-activity/Screenshot_4.png',
      'assets/images/paranormal-activity/Screenshot_5.png'
    ],
  ),
  MoviesData(
    nama: "Zack Snyder's Justice League",
    genre: "Action",
    durasi: "242 Minutes",
    sutradara: "Zack Snyder",
    ratingUsia: "R",
    ratingImdb: 8.4,
    sinopsis:
        "Bertekad untuk memastikan pengorbanan terakhir Superman tidak sia-sia, Bruce Wayne menyelaraskan pasukan dengan Diana Prince dengan rencana untuk merekrut tim metahuman untuk melindungi dunia dari ancaman yang mendekat dengan proporsi bencana.",
    images: 'assets/images/justice-league/poster.jpg',
    imagesUrls: [
      'assets/images/justice-league/Screenshot_1.png',
      'assets/images/justice-league/Screenshot_2.png',
      'assets/images/justice-league/Screenshot_3.png',
      'assets/images/justice-league/Screenshot_4.png',
      'assets/images/justice-league/Screenshot_6.png'
    ],
  ),
  MoviesData(
    nama: "Stillwater",
    genre: "Crime",
    durasi: "139 Minutes",
    sutradara: "Tom McCarthy",
    ratingUsia: "R",
    ratingImdb: 6.8,
    sinopsis:
        "Film thriller dramatis yang disutradarai oleh pemenang Academy Award®️ Tom McCarthy dan dibintangi oleh Matt Damon, Stillwater berkisah tentang seorang pekerja kasar rig minyak dari Oklahoma -Amerika Serikat yang melakukan perjalanan ke Marseille untuk mengunjungi putrinya yang terasing, ia di penjara karena dituduh melakukan pembunuhan.",
    images: 'assets/images/stillwater/poster.jpg',
    imagesUrls: [
      'assets/images/stillwater/Screenshot_1.png',
      'assets/images/stillwater/Screenshot_2.png',
      'assets/images/stillwater/Screenshot_3.png',
      'assets/images/stillwater/Screenshot_4.png',
      'assets/images/stillwater/Screenshot_5.png'
    ],
  ),
  MoviesData(
    nama: "Army of Thieves",
    genre: "Action",
    durasi: "128 Minutes",
    sutradara: "Matthias Schweighöfer",
    ratingUsia: "R",
    ratingImdb: 6.2,
    sinopsis:
        "Seorang wanita misterius merekrut teller bank Ludwig Dieter untuk memimpin sekelompok pencuri yang bercita-cita tinggi dalam pencurian rahasia selama tahap awal kiamat zombie.",
    images: 'assets/images/army-of-thieves/poster.jpg',
    imagesUrls: [
      'assets/images/army-of-thieves/Screenshot_1.png',
      'assets/images/army-of-thieves/Screenshot_2.png',
      'assets/images/army-of-thieves/Screenshot_3.png',
      'assets/images/army-of-thieves/Screenshot_4.png',
      'assets/images/army-of-thieves/Screenshot_5.png'
    ],
  ),
  MoviesData(
    nama: "Lamb",
    genre: "Mystery",
    durasi: "107 Minutes",
    sutradara: "Valdimar Jóhannsson",
    ratingUsia: "R",
    ratingImdb: 6.6,
    sinopsis:
        "Mengisahkan tentang pasangan tanpa anak, María dan Ingvar yang menemukan bayi baru lahir yang secara misterius di pertanian mereka di Islandia.",
    images: 'assets/images/lamb/poster.jpg',
    imagesUrls: [
      'assets/images/lamb/Screenshot_1.png',
      'assets/images/lamb/Screenshot_2.png',
      'assets/images/lamb/Screenshot_3.png',
      'assets/images/lamb/Screenshot_4.png',
      'assets/images/lamb/Screenshot_6.png'
    ],
  ),
  MoviesData(
    nama: "Titane",
    genre: "Fantasy",
    durasi: "108 Minutes",
    sutradara: "Julia Ducournau",
    ratingUsia: "R",
    ratingImdb: 7.1,
    sinopsis:
        "Seorang wanita dengan pelat logam di kepalanya dari kecelakaan mobil masa kanak-kanak memulai perjalanan aneh, membawanya ke dalam kontak dengan petugas pemadam kebakaran yang bersatu kembali dengan putranya yang hilang setelah 10 tahun.",
    images: 'assets/images/titanes/poster.jpg',
    imagesUrls: [
      'assets/images/titanes/Screenshot_1.png',
      'assets/images/titanes/Screenshot_2.png',
      'assets/images/titanes/Screenshot_3.png',
      'assets/images/titanes/Screenshot_4.png',
      'assets/images/titanes/Screenshot_6.png'
    ],
  ),
  MoviesData(
    nama: "Mile 22",
    genre: "Action",
    durasi: "95 Minutes",
    sutradara: "Peter Berg",
    ratingUsia: "R",
    ratingImdb: 6.1,
    sinopsis:
        "Seorang agen CIA, James Silva (Mark Wahlberg) dibantu unit komando taktis rahasia ditugaskan untuk menyeludupkan membawa seorang polisi bernama Li Noor (Iko Uwais) yakni saksi kunci atau informan penting, dari pusat kota menuju pesawat yang sudah menunggunya di bandara. Jarak yang mereka tempuh dari pusat kota ke bandara yakni 22 mil.",
    images: 'assets/images/mile-22/poster.jpg',
    imagesUrls: [
      'assets/images/mile-22/Screenshot_1.png',
      'assets/images/mile-22/Screenshot_2.png',
      'assets/images/mile-22/Screenshot_3.png',
      'assets/images/mile-22/Screenshot_4.png',
      'assets/images/mile-22/Screenshot_6.png'
    ],
  ),
  MoviesData(
    nama: "Don't Breathe 2",
    genre: "Thriller",
    durasi: "98 Minutes",
    sutradara: "Rodo Sayagues",
    ratingUsia: "R-18",
    ratingImdb: 6.3,
    sinopsis:
        "Don’t Breathe 2 ini melanjutkan kembali kisah kehidupan seorang kakek buta bernama Norman Nordstrom yang tinggal dalam sebuah pondokan kecil di tempat terpencil. Meski buta, Norman memiliki kemampuan luar biasa dalam melindungi dan mengenali sekitarnya hanya melalui hembusan napas.",
    images: 'assets/images/dont-breathe-2/poster.jpg',
    imagesUrls: [
      'assets/images/dont-breathe-2/Screenshot_1.png',
      'assets/images/dont-breathe-2/Screenshot_2.png',
      'assets/images/dont-breathe-2/Screenshot_3.png',
      'assets/images/dont-breathe-2/Screenshot_4.png',
      'assets/images/dont-breathe-2/Screenshot_5.png'
    ],
  ),
  MoviesData(
    nama: "Sinkhole",
    genre: "Drama",
    durasi: "117 Minutes",
    sutradara: "Ji-hoon Kim",
    ratingUsia: "R",
    ratingImdb: 6.2,
    sinopsis:
        "Park Dong-won (Kim Sung-kyun), seorang pria biasa dan keluarganya pindah ke sebuah rumah yang dibeli setelah 11 tahun bekerja. Mereka mengadakan pesta pindah rumah dan mengundang semua teman. Lalu hujan deras semalaman menciptakan lubang pembuangan yang sangat besar, dan hanya dalam satu menit, itu menelan seluruh rumah dengan orang-orang di dalamnya.",
    images: 'assets/images/sinkhole/poster.jpg',
    imagesUrls: [
      'assets/images/sinkhole/Screenshot_1.png',
      'assets/images/sinkhole/Screenshot_2.png',
      'assets/images/sinkhole/Screenshot_3.png',
      'assets/images/sinkhole/Screenshot_4.png',
      'assets/images/sinkhole/Screenshot_6.png'
    ],
  ),
  MoviesData(
    nama: "Dune",
    genre: "Science Fiction",
    durasi: "155 Minutes",
    sutradara: "Denis Villeneuve",
    ratingUsia: "R",
    ratingImdb: 8.3,
    sinopsis:
        "Perjalanan pahlawan mitis dan emosional, Dune”menceritakan kisah Paul Atreides, seorang pemuda cerdas dan berbakat yang lahir dalam takdir besar di luar pemahamannya, yang harus melakukan perjalanan ke planet paling berbahaya di alam semesta untuk memastikan masa depannya.",
    images: 'assets/images/dune/poster.jpg',
    imagesUrls: [
      'assets/images/dune/Screenshot_1.png',
      'assets/images/dune/Screenshot_2.png',
      'assets/images/dune/Screenshot_3.png',
      'assets/images/dune/Screenshot_4.png',
      'assets/images/dune/Screenshot_5.png'
    ],
  ),
];
