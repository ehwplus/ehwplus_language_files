// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'ehwplus_app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class EhwplusAppLocalizationsId extends EhwplusAppLocalizations {
  EhwplusAppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get accountAbout => 'Apa yang dapat dilakukan oleh akun pengguna EHW+?';

  @override
  String get accountBenefit1 => 'Pengakuan pembelian yang lebih andal';

  @override
  String get accountBenefit2 => 'Akses ke semua ekspansi yang dibeli di beberapa perangkat';

  @override
  String get accountButtonSetup => 'Menyiapkan akun pengguna EHW+';

  @override
  String get accountFaqA1 =>
      'Akun pengguna EHW+ menawarkan metode alternatif untuk memulihkan pembelian apabila pemulihan melalui App Store tidak memungkinkan, sehingga meningkatkan keandalan. Selain itu, akun ini memungkinkan pembelian dipulihkan pada perangkat yang awalnya tidak melakukan pembelian. Di waktu mendatang, juga dimungkinkan untuk menyimpan pengaturan dan banyak lagi.';

  @override
  String get accountFaqA2 =>
      'Ya, pembelian masih dapat dipulihkan pada perangkat Android melalui Play Store atau iPhone melalui App Store. Akun pengguna EHW+ menyediakan metode alternatif untuk memulihkan pembelian apabila pemulihan melalui App Store tidak memungkinkan, sehingga meningkatkan keandalan. Selain itu, akun ini memungkinkan pembelian dipulihkan pada perangkat yang awalnya tidak melakukan pembelian.';

  @override
  String get accountFaqQ1 => 'Apa yang dimaksud dengan akun pengguna EHW+?';

  @override
  String get accountFaqQ2 => 'Apakah saya masih bisa mengakses pembelian saya tanpa akun pengguna EHW+?';

  @override
  String get accountFaqTitle => 'Pertanyaan yang Sering Diajukan:';

  @override
  String get accountThankYouForPurchase =>
      'Terima kasih! Apakah Anda ingin mengamankan pembelian di akun pengguna EHW+ Anda sekarang?';

  @override
  String get accountUpdateInfo => 'Baru: Akun pengguna EHW+';

  @override
  String get activitiesDefinitionsTab => 'Kegiatan';

  @override
  String get activitiesDescription =>
      'Hubungkan pembacaan meteran dengan aktivitas, misalnya mencuci dengan meteran air dingin dan meteran listrik.';

  @override
  String get activitiesTimelineEmpty => 'Belum ada kegiatan yang tercatat.';

  @override
  String get activitiesTimelineTab => 'Garis waktu';

  @override
  String get activitiesTitle => 'Kegiatan saya';

  @override
  String get activityBath => 'Mandi';

  @override
  String get activityDishWasher => 'Mesin cuci piring';

  @override
  String get activityIron => 'Menyetrika';

  @override
  String get activityNameLabel => 'Nama kegiatan';

  @override
  String get activityOverview => 'Ikhtisar kegiatan';

  @override
  String get activitySettings => 'Pengaturan aktivitas';

  @override
  String get activityShower => 'Mandi';

  @override
  String get activityTitle => 'Aktivitas';

  @override
  String get activityWash => 'Mencuci';

  @override
  String get activityWashDuration => 'Durasi';

  @override
  String get activityWashDuration2hrs => '2h';

  @override
  String get activityWashRotations => 'Rotasi';

  @override
  String get activityWashShort => 'Program singkat';

  @override
  String get activityWashTemperature => 'Suhu';

  @override
  String get activityWithEnergyConsumption => 'Konsumsi daya hanya diukur untuk aktivitas';

  @override
  String get addActivity => 'Menambahkan aktivitas';

  @override
  String get addDetail => 'Tambahkan detail';

  @override
  String get addNewValue => 'Masukkan nilai baru';

  @override
  String get addressAdministrativeArea => 'Negara bagian / wilayah / provinsi';

  @override
  String get addressLocality => 'Kota / wilayah';

  @override
  String get addressStreet => 'Garis jalan / alamat';

  @override
  String addressValidationRequired(String label) {
    return '$label diperlukan';
  }

  @override
  String get advancePayment => 'Pembayaran di muka';

  @override
  String get advancePaymentDueDay => 'Hari jatuh tempo';

  @override
  String advancePaymentDueDayOptionDay(int day) {
    return 'Hari ke-$day';
  }

  @override
  String get advancePaymentDueDayOptionEndOfMonth => 'Akhir bulan';

  @override
  String get advancePaymentFirstDueDateOptional => 'Hari jatuh tempo pertama (opsional)';

  @override
  String get advancePaymentFirstDueInStartMonth =>
      'Pembayaran uang muka pertama jatuh tempo pada bulan kontrak dimulai.';

  @override
  String advancePaymentFirstDueOnDate(String date) {
    return 'Pembayaran uang muka pertama harus dilunasi pada tanggal $date.';
  }

  @override
  String advancePaymentRecommendationMonthly(String recommendedAmount, String currentAmount) {
    return 'Pembayaran di muka bulanan yang disarankan: $recommendedAmount, bukan $currentAmount';
  }

  @override
  String advancePaymentRecurringDue(int day, String cadence) {
    return 'Jatuh tempo pada hari ke-$day, bulan $cadence.';
  }

  @override
  String advancePaymentRecurringDueEndOfMonth(String cadence) {
    return 'Jatuh tempo pada hari terakhir bulan ini, $cadence.';
  }

  @override
  String advancePaymentRecurringDueEndOfMonthWithAmount(String amount, String cadence) {
    return 'Jumlah pembayaran di muka untuk program \"$amount\" harus dibayarkan pada hari terakhir bulan ini, $cadence.';
  }

  @override
  String advancePaymentRecurringDueWithAmount(String amount, int day, String cadence) {
    return 'Jumlah pembayaran di muka sebesar $amount harus dibayarkan pada hari ke-$day, bulan $cadence.';
  }

  @override
  String get ammeterConsumptionByDevices => 'Konsumsi listrik oleh perangkat';

  @override
  String get ammeterConsumptionByRooms => 'Konsumsi listrik berdasarkan kamar';

  @override
  String get appBarExpandedMode => 'Bilah aplikasi dengan gambar latar belakang';

  @override
  String get appDescriptionLong =>
      '<p>Selamat datang di <b>EHW+</b>, aplikasi pembacaan meteran Anda untuk <b>E</b>listrik, <b>H</b>makan dan <b>W</b>ater. Bersama kami, Anda dapat dengan mudah melacak</p> <p>berapa banyak yang Anda gunakan dan berapa</p> <p>biaya</p> <p>yang</p> <p>dikeluarkan secara gratis.';

  @override
  String get appDescriptionShort => 'Baik untuk dompet, baik untuk iklim';

  @override
  String get appName => 'EHW+ | Pembacaan konsumsi & meteran';

  @override
  String get appNameShort => 'EHW+';

  @override
  String get areYouSure => 'Apa kau yakin?';

  @override
  String get basePrice => 'Harga dasar';

  @override
  String basePriceMonthlyResult(String amount) {
    return 'Hal ini menghasilkan harga dasar sebesar $amount per bulan.';
  }

  @override
  String get bonus => 'Bonus';

  @override
  String get bonusInfoText =>
      'Tarif dengan bonus sering kali memungkinkan penghematan yang sangat tinggi ketika berganti penyedia. Namun, hal ini biasanya hanya terjadi karena adanya bonus satu kali. Itu artinya: Total biaya sangat rendah hanya pada tahun pertama penyediaan. Pekerjaan yang tinggi dan/atau harga dasar yang diberikan pada tahun kedua memberikan perhitungan yang jelas lebih tinggi. Oleh karena itu, dengan tarif bonus Anda harus merencanakan sejak awal untuk mengubahnya lagi setelah satu tahun. Tarif bonus dengan jangka waktu dua tahun, di mana pembatalan ini tidak mungkin dilakukan sama sekali, harus dipertanyakan secara kritis.';

  @override
  String get bonusInfoTitle => 'Informasi tentang tarif bonus';

  @override
  String get cancellationPeriod => 'Periode pembatalan';

  @override
  String get changeCounterOrder => 'Jika perlu, Anda dapat mengubah urutannya';

  @override
  String get chartDottedLinesNonSeasonal =>
      'Kurva putus-putus mewakili periode sebelumnya. Untuk pilihan \"14 hari terakhir\", misalnya, 28 hari terakhir akan muncul, dengan 14 hari yang lebih lama ditampilkan putus-putus.';

  @override
  String get chartDottedLinesSeasonal =>
      'Kurva putus-putus mewakili periode sebelumnya. Untuk pilihan \"14 hari terakhir\", misalnya, 28 hari terakhir akan muncul, dengan 14 hari yang lebih lama ditampilkan putus-putus.';

  @override
  String get chartHorizontalLineElectricityGas =>
      'Garis hijau berarti konsumsi yang sangat baik, garis kuning untuk konsumsi yang baik, garis merah untuk konsumsi rata-rata Jerman.';

  @override
  String get chartHorizontalLineWater =>
      'Rata-rata, setiap orang di Jerman menggunakan 127 liter air minum di rumah tangga setiap hari. Garis biru menunjukkan air dingin (60%), garis merah air panas (40%), diekstrapolasikan ke jumlah hari dalam periode tersebut dan jumlah orang.';

  @override
  String get chartHorizontalLines =>
      'Garis putus-putus dimaksudkan untuk memberikan umpan balik mengenai konsumsi Anda.';

  @override
  String get chooseActivity => 'Pilih aktivitas';

  @override
  String get chooseActivityIcon => 'Memilih ikon';

  @override
  String get coldWater => 'Air dingin';

  @override
  String get cometConsentScreenAcceptButton => 'Saya ingin memberikan umpan balik';

  @override
  String get cometConsentScreenDataCanBeUsedForTraining =>
      'Data dapat digunakan untuk mengoptimalkan prediksi di masa mendatang';

  @override
  String get cometConsentScreenDeclineButton => 'Saya tidak ingin memberikan umpan balik';

  @override
  String get cometConsentScreenFeedbackDescription =>
      'Penggunaan prakiraan ini gratis, tetapi tim peneliti membutuhkan umpan balik tentang seberapa baik layanan ini bekerja.';

  @override
  String get cometConsentScreenFeedbackMethod =>
      'Umpan balik diberikan secara otomatis ketika Anda menggunakan layanan prediksi dan menyetujui pengoptimalan.';

  @override
  String get cometConsentScreenFeedbackTitle => 'Goethe University membutuhkan umpan balik Anda:';

  @override
  String get cometConsentScreenHeader => 'Baru: Perkiraan konsumsi yang lebih baik';

  @override
  String get cometConsentScreenHowItWorksTitle => 'Bagaimana cara kerjanya?';

  @override
  String get cometConsentScreenOfflineDescription =>
      'Prakiraan lokal yang disederhanakan akan dihitung pada perangkat Anda.';

  @override
  String get cometConsentScreenOfflineDescriptionTitle => 'Tanpa koneksi internet:';

  @override
  String get cometConsentScreenOnlineDescription =>
      'Data konsumsi Anda akan dikirim ke Goethe University Frankfurt, di mana ramalan individu akan dibuat dan ditampilkan di aplikasi.';

  @override
  String get cometConsentScreenOnlineDescriptionTitle => 'Dengan koneksi Internet:';

  @override
  String get cometConsentScreenToggleLabel => 'Gunakan layanan perkiraan';

  @override
  String get cometSettingsIsPredictionsApiEnabled => 'Gunakan API Prakiraan Komet dari Goethe Institute';

  @override
  String get comment => 'Catatan';

  @override
  String get commonAnd => 'dan';

  @override
  String get commonBack => 'Kembali';

  @override
  String get commonCancel => 'Batal';

  @override
  String get commonChange => 'Perubahan';

  @override
  String get commonChangeSaved => 'Perubahan disimpan';

  @override
  String get commonClose => 'Tutup';

  @override
  String get commonCollapse => 'Runtuh';

  @override
  String get commonContinue => 'Lanjutkan';

  @override
  String get commonCopiedToClipboard => 'Disalin ke papan klip';

  @override
  String get commonDay => 'hari';

  @override
  String get commonDelete => 'Menghapus';

  @override
  String get commonLearnMore => 'Pelajari lebih lanjut';

  @override
  String get commonLoadingData => 'Memuat data';

  @override
  String get commonLoggingIn => 'Mendaftarkan Anda...';

  @override
  String get commonLoggingOut => 'Menandatangani Anda keluar...';

  @override
  String get commonLogin => 'Masuk';

  @override
  String get commonLogout => 'Keluar';

  @override
  String get commonMaximum => 'Nilai harian tertinggi';

  @override
  String get commonMinimum => 'Nilai harian terendah';

  @override
  String get commonMonth => 'bulan';

  @override
  String get commonMore => 'Lebih lanjut';

  @override
  String get commonNo => 'tidak';

  @override
  String get commonNotAuthenticated => 'Anda tidak diautentikasi.';

  @override
  String get commonOk => 'BAIKLAH.';

  @override
  String get commonOpen => 'Buka';

  @override
  String get commonSave => 'Simpan';

  @override
  String get commonSend => 'Kirim';

  @override
  String get commonShare => 'Bagikan';

  @override
  String get commonUpdateNow => 'Perbarui sekarang';

  @override
  String get commonUserLogin => 'Login pengguna';

  @override
  String commonUserLoginDescriptionLoggedInNotSubmittedPurchases(int notSubmitted, int total) {
    return 'Anda sedang menggunakan akun EHW+. $notSubmitted dari $total produk yang dibeli tidak dapat disimpan di server EHW+. Kami berharap dapat segera memperbaiki masalah ini.';
  }

  @override
  String commonUserLoginDescriptionLoggedInRestoredPurchases(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Transaksi pembelian telah disinkronkan melalui akun EHW+.',
      one: 'Satu pembelian telah disinkronkan melalui akun EHW+.',
    );
    return '$_temp0';
  }

  @override
  String commonUserLoginDescriptionLoggedInSavedPurchases(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Anda sedang menggunakan akun EHW+. Produk yang dibeli melalui $count telah disimpan di server EHW+.',
      one: 'Anda sedang menggunakan akun EHW+. Produk yang dibeli di $count telah disimpan di server EHW+.',
      zero:
          'Anda menggunakan akun EHW+. Jika Anda membeli produk di masa mendatang, produk tersebut akan disinkronkan di semua perangkat Anda.',
    );
    return '$_temp0';
  }

  @override
  String get commonUserLoginDescriptionNotLoggedIn =>
      'Apakah Anda menggunakan aplikasi ini di beberapa perangkat? Dengan masuk ke akun EHW+, Anda dapat menyinkronkan pengaturan dan produk yang dibeli di semua perangkat.';

  @override
  String get commonYear => 'tahun';

  @override
  String get commonYes => 'Ya.';

  @override
  String get completeButton => 'Lengkap';

  @override
  String confirmDeleteAtCloud(String objectTitle) {
    return 'Apakah folder \"$objectTitle\" juga harus dihapus dari Google Drive?';
  }

  @override
  String get consent11AnalyticsTitle => 'Data analisis';

  @override
  String get consent12Analytics =>
      'Untuk mengevaluasi keberhasilan aplikasi atau fungsi individu, aplikasi mengirimkan statistik penggunaan yang dianonimkan. Data tersebut tidak dikirimkan ke pihak ketiga. Data tersebut digunakan untuk pengembangan aplikasi lebih lanjut.';

  @override
  String get consent13StromGedacht =>
      'StromGedacht, sebuah layanan yang disediakan oleh TransnetBW, memberikan informasi tentang stabilitas jaringan dan rekomendasi kapan listrik harus digunakan secara istimewa. Seiring dengan transisi energi yang semakin menantang bagi jaringan transmisi, rumah tangga di Jerman Barat Daya juga dilibatkan. Untuk menerima informasi lokasi Anda, kode pos Anda, jika dimasukkan di sini dalam aplikasi, akan dikirimkan ke API TransnetBW StromGedacht. Tidak ada data lain yang dikirimkan atau dihubungkan.';

  @override
  String get consent13StromGedachtTitle => 'Pemberitahuan stabilitas jaringan dari StromGedacht';

  @override
  String get consent1Hello => 'Halo.';

  @override
  String get consent2ThankYou => 'Terima kasih telah menggunakan EHW+!';

  @override
  String get consent3Video => 'Apakah Anda ingin menonton video perkenalan singkat?';

  @override
  String get consent4BeforeYouCanContinue => 'Sebelum Anda dapat melanjutkan';

  @override
  String get consent5ErrorReporting =>
      'Untuk meningkatkan aplikasi dengan andal, laporan kesalahan teknis dikirim ke EHW+ melalui Sentry (dihosting sendiri). Jika Anda menonaktifkan pelaporan kesalahan, kami mungkin tidak akan mengetahui kesalahan yang terjadi dan oleh karena itu tidak dapat memperbaikinya.';

  @override
  String get consent5ErrorReportingTitle => 'Laporan kesalahan';

  @override
  String get consent6ContractPricesPerUnitTitle => 'Harga listrik / air / gas';

  @override
  String get consent7ContractPricesPerUnit =>
      'Agar dapat memperkirakan berapa banyak yang Anda bayarkan saat ini dibandingkan dengan pengguna EHW+ lainnya, harga ditransfer ke server EHW+ di Jerman bersama dengan negara bagian dan negara. Hanya jika Anda menyetujui transfer tersebut, Anda dapat mengakses statistik harga. Untuk memastikan anonimitas, statistik hanya dapat ditampilkan setelah jumlah minimum harga yang dikirimkan.';

  @override
  String get consentTitle => 'Pengaturan Privasi';

  @override
  String get consumption => 'Konsumsi';

  @override
  String get consumptionCacheDebugViewCacheCleared => 'Cache erfolgreich geleert';

  @override
  String get consumptionCacheDebugViewClear => 'Löschen';

  @override
  String get consumptionCacheDebugViewClearCache => 'Cache leeren';

  @override
  String get consumptionCacheDebugViewClearCacheConfirmation =>
      'Dapatkah Anda menemukan semua data kata kerja yang diperlukan untuk objek ini? Semua data transaksi yang relevan akan ditampilkan.';

  @override
  String get consumptionCacheDebugViewEntries => 'Einträge';

  @override
  String get consumptionCacheDebugViewError => 'Fehler';

  @override
  String get consumptionCacheDebugViewTitle => 'Verbrauchscache';

  @override
  String get consumptionCacheManagementClearCacheAndSynchronizeButton => 'Hapus & sinkronisasi';

  @override
  String get consumptionCacheManagementClearCacheButton => 'Hapus cache';

  @override
  String get consumptionCacheManagementClearedSuccessfully => 'Tembolok berhasil dihapus';

  @override
  String get consumptionCacheManagementConfirmClearCacheAndSyncMessage =>
      'Semua data yang tersimpan dalam cache akan dihapus dan diunduh ulang dari server. Hal ini mungkin memerlukan waktu.';

  @override
  String get consumptionCacheManagementConfirmClearCacheAndSyncTitle => 'Hapus cache & sinkronisasi?';

  @override
  String get consumptionCacheManagementConfirmClearCacheMessage =>
      'Semua data konsumsi yang di-cache akan dihapus secara permanen. Anda dapat menyinkronkannya nanti.';

  @override
  String get consumptionCacheManagementConfirmClearCacheTitle => 'Hapus cache?';

  @override
  String get consumptionCacheToggleButtonDescription =>
      'Cache konsumsi yang dihitung dan gunakan kembali kapan pun diperlukan';

  @override
  String get consumptionCacheToggleButtonTitle => 'Verbrauchscache verwenden';

  @override
  String get consumptionHeatmap => 'Peta Panas Konsumsi';

  @override
  String get consumptionHeatmapYield => 'Peta Panas Hasil';

  @override
  String consumptionHeatpump(String formattedValue) {
    return 'Selain itu, konsumsi daya pompa panas mencapai $formattedValue kWh.';
  }

  @override
  String get consumptionIsNotExclusive =>
      'Jika konsumsi tidak eksklusif untuk aktivitas ini, maka akan ditampilkan peringatan.';

  @override
  String get consumptionIsNotExclusiveTitle => 'Apakah konsumsi eksklusif?';

  @override
  String consumptionPersonLabel(num count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'orang', one: 'orang');
    return '$_temp0';
  }

  @override
  String get consumptionWaterColdEqual => 'Air dingin: hampir sama dengan rumah tangga pada umumnya.';

  @override
  String consumptionWaterColdLess(Object percentage) {
    return 'Air dingin: $percentage lebih sedikit daripada rata-rata rumah tangga.';
  }

  @override
  String consumptionWaterColdMore(Object percentage) {
    return 'Air dingin: $percentage lebih banyak daripada rumah tangga pada umumnya.';
  }

  @override
  String consumptionWaterDailyMonthlyPerPerson(Object dailyLiters, Object monthlyCubicMeters, Object unitName) {
    return 'Per orang, jumlah ini setara dengan sekitar $dailyLiters liter per hari (≈ $monthlyCubicMeters $unitName per bulan).';
  }

  @override
  String consumptionWaterDailyMonthlySingle(Object dailyLiters, Object monthlyCubicMeters, Object unitName) {
    return 'Anda mengonsumsi sekitar $dailyLiters liter per hari (≈ $monthlyCubicMeters $unitName per bulan).';
  }

  @override
  String consumptionWaterOverallEqual(Object householdSize, Object ofRange, Object personLabel) {
    return 'Konsumsi air Anda $ofRange setara dengan konsumsi air rumah tangga rata-rata yang menggunakan $householdSize $personLabel.';
  }

  @override
  String consumptionWaterOverallLess(Object householdSize, Object ofRange, Object percentage, Object personLabel) {
    return 'Konsumsi air Anda $ofRange lebih rendah $percentage dibandingkan dengan rumah tangga rata-rata yang memiliki $householdSize $personLabel.';
  }

  @override
  String consumptionWaterOverallMore(Object householdSize, Object ofRange, Object percentage, Object personLabel) {
    return 'Konsumsi air Anda $ofRange $percentage lebih tinggi daripada konsumsi air rumah tangga rata-rata dengan $householdSize $personLabel.';
  }

  @override
  String consumptionWaterRangeUnknown(Object ofRange) {
    return 'Konsumsi air Anda $ofRange ...';
  }

  @override
  String get consumptionWaterWarmEqual => 'Air panas: hampir sama dengan rumah tangga pada umumnya.';

  @override
  String consumptionWaterWarmLess(Object percentage) {
    return 'Air panas: $percentage lebih sedikit daripada rumah tangga pada umumnya.';
  }

  @override
  String consumptionWaterWarmMore(Object percentage) {
    return 'Air panas: $percentage lebih banyak daripada rumah tangga pada umumnya.';
  }

  @override
  String consumptionYearly(Object consumption, Object ofRange) {
    return 'Konsumsi listrik Anda $ofRange mencapai $consumption kWh per tahun.';
  }

  @override
  String get consumptionYearlyDetailedAboutSame => 'hampir sama dengan';

  @override
  String consumptionYearlyDetailedAverageHousehold(Object householdSize, Object personLabel) {
    return 'Sebuah rumah tangga rata-rata dengan $householdSize $personLabel';
  }

  @override
  String consumptionYearlyDetailedComparisonEqual(Object householdSize, Object personLabel, Object verbSuffix) {
    return 'Anda mengonsumsi $verbSuffix kira-kira sebanyak yang dikonsumsi oleh sebuah rumah tangga rata-rata dengan $householdSize $personLabel.';
  }

  @override
  String consumptionYearlyDetailedComparisonLess(
    Object householdSize,
    Object percentage,
    Object personLabel,
    Object verbSuffix,
  ) {
    return 'Anda mengonsumsi $verbSuffix $percentage lebih sedikit daripada rumah tangga rata-rata dengan $householdSize $personLabel.';
  }

  @override
  String consumptionYearlyDetailedComparisonMore(
    Object householdSize,
    Object percentage,
    Object personLabel,
    Object verbSuffix,
  ) {
    return 'Anda mengonsumsi $verbSuffix $percentage lebih banyak daripada rumah tangga rata-rata yang menggunakan $householdSize $personLabel.';
  }

  @override
  String consumptionYearlyDetailedElectricity(
    Object consumptionLevel,
    Object monthlyConsumption,
    Object ofRange,
    Object totalConsumption,
    Object yearlyConsumption,
  ) {
    return 'Konsumsi listrik Anda $ofRange ($totalConsumption kWh ≈ $yearlyConsumption kWh/tahun ≈ $monthlyConsumption kWh/bulan) adalah $consumptionLevel.';
  }

  @override
  String consumptionYearlyDetailedGas(
    Object consumptionLevel,
    Object monthlyConsumption,
    Object ofRange,
    Object totalConsumption,
    Object yearlyConsumption,
  ) {
    return 'Konsumsi gas Anda $ofRange ($totalConsumption kWh ≈ $yearlyConsumption kWh/tahun ≈ $monthlyConsumption kWh/bulan) adalah $consumptionLevel.';
  }

  @override
  String consumptionYearlyDetailedLessThan(Object percentage) {
    return '$percentage kurang dari';
  }

  @override
  String get consumptionYearlyDetailedLevel0 => 'super rendah';

  @override
  String get consumptionYearlyDetailedLevel1 => 'rendah';

  @override
  String consumptionYearlyDetailedLevel1Suffix(String nextToOptimal) {
    return 'Anda akan mencapai tingkat konsumsi yang optimal jika mengonsumsi sekitar $nextToOptimal lebih sedikit.';
  }

  @override
  String get consumptionYearlyDetailedLevel2 => 'dalam kisaran normal';

  @override
  String consumptionYearlyDetailedLevel2Suffix(Object nextToOptimal) {
    return 'Sekitar $nextToOptimal tidak tersedia untuk konsumsi.';
  }

  @override
  String get consumptionYearlyDetailedLevel3 => 'relatif tinggi';

  @override
  String get consumptionYearlyDetailedLevel4 => 'dalam kisaran normal';

  @override
  String consumptionYearlyDetailedMoreThan(Object percentage) {
    return '$percentage lebih dari';
  }

  @override
  String get consumptionYearlyDetailedOptimalEnding => 'Itu bagus sekali!';

  @override
  String get consumptionYield => 'Hasil';

  @override
  String get contact =>
      'EHW+ Services GmbH\nGeorg-Herbert-Straße 8\n68519 Viernheim\n\nKontak\n\nTelepon 06204/7383382\nSurat: info@ehwplus.com';

  @override
  String get contactTitle => 'Diwakili oleh:';

  @override
  String get continueAcceptPart1 => 'Dengan menggunakan aplikasi EHW+, Anda menyetujui ketentuan';

  @override
  String get continueAcceptPart2 =>
      '. Untuk informasi lebih lanjut mengenai pengumpulan dan penggunaan data anonim dan data pribadi, silakan merujuk ke';

  @override
  String get contract => 'Kontrak';

  @override
  String get contractCopyDialogOptionNo => 'Tidak, batalkan.';

  @override
  String get contractCopyDialogOptionYes => 'Ya.';

  @override
  String get contractCopyDialogTitle => 'Apakah Anda ingin membuat salinan kontrak ini?';

  @override
  String get contractCopyDialogWhen => 'Kapan kontrak baru dimulai?';

  @override
  String get contractCosts => 'Harga satuan';

  @override
  String get contractCostsFeedIn => 'Harga remunerasi/harga dasar';

  @override
  String get contractDetails => 'Durasi dan detail kontrak';

  @override
  String get contractName => 'Nama penyedia/kontrak';

  @override
  String get contractNumber => 'Nomor kontrak';

  @override
  String get contractPeriod => 'Periode kontrak';

  @override
  String get contractReminder => 'Pengingat kontrak';

  @override
  String get contractStart => 'Tanggal mulai kontrak';

  @override
  String get contractType => 'Jenis kontrak';

  @override
  String get contractTypeElectricityProvider => 'Penyedia listrik';

  @override
  String get contractTypeGasProvider => 'Penyedia gas';

  @override
  String get contractTypeHeatingFees => 'Biaya pemanasan';

  @override
  String get contractTypeNetwork => 'Internet & telepon';

  @override
  String get contractTypeOilProvider => 'Penyedia minyak';

  @override
  String get contractTypeStove => 'Kompor';

  @override
  String get contractTypeWaterFees => 'Biaya air';

  @override
  String get contracts => 'Kontrak';

  @override
  String get corresponds => 'sesuai';

  @override
  String get costOverviewAdvancePaymentsBar => 'Pembayaran di muka dilakukan';

  @override
  String get costOverviewContractCostsBar => 'Biaya berbasis konsumsi + biaya dasar untuk periode kontrak';

  @override
  String get costSummary => 'Ringkasan biaya';

  @override
  String get costSummarySolarThermalSavings => 'Ringkasan tabungan';

  @override
  String get costSummaryYield => 'Harga remunerasi/harga dasar';

  @override
  String get costs => 'Biaya';

  @override
  String get costsUndefinedColdWater => 'Biaya air dingin';

  @override
  String get costsUndefinedElectricity => 'Biaya listrik';

  @override
  String get costsUndefinedFor => 'Biaya tidak ditentukan';

  @override
  String costsUndefinedForType(Object type) {
    return '$type untuk yang tidak terdefinisi';
  }

  @override
  String get costsUndefinedGas => 'Biaya gas';

  @override
  String get costsUndefinedHeater => 'Biaya pemanas';

  @override
  String get costsUndefinedNetworkCounter => 'Biaya internet';

  @override
  String get costsUndefinedOilHeating => 'Biaya minyak';

  @override
  String get costsUndefinedWarmWater => 'Biaya air hangat';

  @override
  String get counter => 'Penghitung';

  @override
  String get counterAmmeter => 'Alat pengukur listrik';

  @override
  String get counterBackgroundImage => 'Gambar latar belakang untuk penghitung';

  @override
  String get counterBackgroundImageOfObject => 'Gambar latar belakang untuk objek';

  @override
  String get counterColdWater => 'Pengukur air dingin';

  @override
  String get counterConsiderForTotalConsumptions => 'Pertimbangkan total konsumsi';

  @override
  String get counterConsiderForTotalElectricity => 'Pertimbangkan total konsumsi listrik';

  @override
  String get counterConsiderForTotalWater => 'Pertimbangkan total konsumsi air';

  @override
  String get counterContractCurrentlyUsed => 'Kontrak yang digunakan saat ini';

  @override
  String get counterDeleteConfirm => 'Hapus penghitung?';

  @override
  String get counterDirection => 'Arah';

  @override
  String get counterDirectionAscending => 'naik';

  @override
  String get counterDirectionDescending => 'turun';

  @override
  String get counterDirectionExplanation =>
      'Apakah nilainya berkurang seiring penggunaan (indikator level, dll.) atau apakah nilainya bertambah seiring penggunaan (jam burner, meteran oli, dll.) atau apakah setiap nilai pembacaan tidak tergantung (konsumsi/hasil)?';

  @override
  String counterDirectionNone(String consumptionElectricity, String consumptionSolar) {
    return '$consumptionElectricity/$consumptionSolar';
  }

  @override
  String get counterDistrictHeating => 'Pemanasan Distrik';

  @override
  String get counterEdit => 'Penghitung edit';

  @override
  String get counterElectricity => 'Meteran listrik';

  @override
  String get counterElectricityBack => 'Pengukur aliran listrik (PV)';

  @override
  String get counterElectricityGenerated => 'Meteran pembangkit listrik';

  @override
  String get counterExclude => 'Kecualikan';

  @override
  String get counterExcludedContracts => 'Kontrak yang dikecualikan';

  @override
  String get counterExplainSeasonal =>
      'Untuk prakiraan, ada perbedaan antara penghitung musiman dan non-musiman. Bergantung pada hal ini, prakiraan dihitung secara berbeda.\n\nYang selalu diklasifikasikan sebagai musiman adalah pemanas, gas, minyak. Pengukur non-musiman adalah listrik dan air.\n\nUntuk meteran non-musiman, konsumsi 90 hari terakhir sangat menentukan.\n\nUntuk meteran musiman, tahun-tahun sebelumnya dirata-ratakan (jika tersedia), dengan semua bulan di tahun-tahun sebelumnya dihitung sama. (Pengecualian: belum ada data untuk bulan di tahun sebelumnya, maka yang digunakan adalah rata-rata sebelumnya).';

  @override
  String get counterFactor => 'Faktor';

  @override
  String get counterFactorDescription =>
      'Apakah konsumsi hanya dialokasikan kepada Anda secara pro rata? Masukkan proporsi sebagai nilai antara 0,1 (10%) dan 1,0 (100%).';

  @override
  String get counterFractionDigits => 'Angka pecahan';

  @override
  String get counterGas => 'Meteran gas';

  @override
  String get counterGasCalorificValue => 'Nilai kalori';

  @override
  String get counterGasCalorificValueHelpText =>
      'Nilai pemanasan: Faktor tanpa dimensi untuk mengubah volume gas yang diukur menjadi energi. Gas alam: biasanya antara 9,0 dan 12,5 kWh/m³, LPG: antara 23,0 dan 33,0 kWh/m³';

  @override
  String get counterGasCalorificValueLabel => 'Nilai kalor*';

  @override
  String get counterGasConversionFactor => 'Faktor konversi';

  @override
  String get counterGasConversionFactorHelpText =>
      'Ca 1.0. Angka kondisi digunakan untuk mengubah volume operasi menjadi volume standar. Kondisi operasi adalah kondisi gas pada meteran dan tergantung pada tekanan (ketinggian) dan suhu yang ada.';

  @override
  String get counterGasConversionFactorLabel => 'Faktor konversi*';

  @override
  String get counterHeater => 'Pengukur radiator';

  @override
  String get counterInclude => 'Termasuk';

  @override
  String get counterIsOutdated => 'Penghitung sudah usang';

  @override
  String get counterLinkMoreRecent => 'Tautkan penghitung yang lebih baru';

  @override
  String get counterMessageRoomOptional => 'Penugasan ruangan membantu pengelompokan, tetapi bersifat opsional.';

  @override
  String get counterMeterId => 'ID Meteran';

  @override
  String get counterName => 'Nama penghitung';

  @override
  String get counterNew => 'Penghitung baru';

  @override
  String get counterNoContractSelected => 'Tidak ada kontrak yang dipilih';

  @override
  String get counterNoRoomConnection => 'Tidak ada koneksi kamar';

  @override
  String counterNum(int count) {
    return '$count penghitung';
  }

  @override
  String get counterOilHeating => 'Pemanasan minyak';

  @override
  String get counterOtherContracts => 'Kontrak lainnya';

  @override
  String counterOutdatedAndNextReminder(String date, String date2) {
    return 'Angka pada penghitung sudah tidak berlaku sejak $date, pengingat pembacaan berikutnya $date2.';
  }

  @override
  String get counterProportionateConsumption => 'Konsumsi yang proporsional';

  @override
  String get counterPvFeedInCounter => 'Energi terbarukan (tenaga surya dan panas dengan PV/sistem tenaga surya)';

  @override
  String get counterPvFeedInCounterExplanation =>
      'Gunakan meteran listrik untuk mencatat listrik yang dihasilkan dan disalurkan\ndengan sistem fotovoltaik. Pendapatan yang dihasilkan diimbangi dengan biaya\nlistrik yang diambil.';

  @override
  String get counterReadings => 'Bacaan';

  @override
  String get counterReallyDeleteLink => 'Hapus tautan?';

  @override
  String get counterReplacedBy => 'Digantikan oleh';

  @override
  String get counterRoom => 'Kamar';

  @override
  String get counterSelected => 'Dipilih';

  @override
  String get counterShowHeatmap => 'Tampilkan peta panas';

  @override
  String get counterTankCapacity => 'Kapasitas tangki';

  @override
  String get counterTankFillHeight => 'Ketinggian isi';

  @override
  String get counterTransducerFactor => 'Rasio transformator';

  @override
  String get counterTransducerFactorExplained =>
      'Jika trafo tegangan digunakan untuk menurunkan tegangan sebelum mencapai meteran, faktor konversi baru harus diterapkan untuk mendapatkan pembacaan yang benar. Contoh: meteran menampilkan 100.000 kWh dengan faktor konversi 20. Pembacaan yang benar adalah: 100.000 kWh x 20 = 2.000.000 kWh.';

  @override
  String get counterTypeLabel => 'Jenis penghitung';

  @override
  String get counterWarmWater => 'Pengukur air hangat';

  @override
  String get counterWarmWaterPlusColdWater => 'Tidak termasuk biaya air bersih dan air limbah';

  @override
  String get counterWater => 'Pengukur air';

  @override
  String get counterWaterExtraction => 'Pengukur ekstraksi air (taman)';

  @override
  String get counterWaterExtractionExplanation =>
      'Dengan meteran pengurangan, biaya air limbah dapat dikurangi. Dengan pembelian dalam aplikasi ini, Anda dapat menentukan biaya yang berbeda untuk air bersih dan air limbah dan pembacaan meteran dari meteran pengurangan akan diperhitungkan dalam biaya air.';

  @override
  String get counterWaterExtractionMinimumLevel => 'Tingkat minimum';

  @override
  String get counters => 'Meter';

  @override
  String get createAccount => 'Buat akun/gabung';

  @override
  String get csvImportWithFactor =>
      'Haruskah pembacaan meteran dikalikan dengan faktor yang tidak sama dengan 1,0? Misalnya, untuk mengonversi nilai dari Wh ke kWh, nilai tersebut harus dikalikan dengan 0,001.';

  @override
  String get currency => 'Mata uang';

  @override
  String get customerId => 'ID Pelanggan';

  @override
  String deleteObjectError(int errorCode) {
    return 'Tidak dapat menghapus objek ini (Kode $errorCode).';
  }

  @override
  String get detailWithMultiSelect => 'Izinkan banyak pilihan';

  @override
  String get detailsTitle => 'Detail';

  @override
  String get difference => 'Perbedaan';

  @override
  String get driveSignInWithGoogle => 'Masuk dengan Google';

  @override
  String get driveSyncNow => 'Sinkronisasi sekarang';

  @override
  String get driveSyncStatusComparing => 'Membandingkan dengan file di server';

  @override
  String get driveSyncStatusFailed => 'Gagal menyinkronkan';

  @override
  String driveSyncStatusLocalHasLatestNoCloud(String localDate) {
    return 'Berkas yang disimpan di perangkat ini dari $localDate tidak disimpan di cloud';
  }

  @override
  String driveSyncStatusLocalHasLatestWithCloud(String cloudDate, String localDate) {
    return 'Berkas yang disimpan di perangkat ini dari $localDate lebih baru daripada berkas di cloud dari $cloudDate';
  }

  @override
  String get driveSyncStatusNotSynced => 'Tidak disinkronkan';

  @override
  String driveSyncStatusRemoteHasLatestNoLocal(String cloudDate) {
    return 'File di cloud dari $cloudDate tidak tersimpan di perangkat ini';
  }

  @override
  String driveSyncStatusRemoteHasLatestWithLocal(String cloudDate, String localDate) {
    return 'Berkas di cloud dari $cloudDate lebih terbaru daripada berkas lokal dari $localDate';
  }

  @override
  String get driveSyncStatusSyncing => 'Sinkronisasi sedang berlangsung';

  @override
  String get driveSyncStatusTitle => 'Status sinkronisasi';

  @override
  String driveSyncStatusUpToDate(String localDate) {
    return 'Terbaru dari $localDate';
  }

  @override
  String get driveSyncWithGoogle => 'Sinkronisasi Google Drive';

  @override
  String get editDetailTitle => 'Edit detail';

  @override
  String get electricity => 'Listrik';

  @override
  String get electricityBack => 'Listrik yang dimasukkan ke dalam';

  @override
  String get electricityConsumption => 'Konsumsi daya';

  @override
  String get electricityGenerated => 'Listrik yang dihasilkan';

  @override
  String get enableCounterViewsMerging => 'Menggabungkan meteran listrik dengan nomor meteran yang sama';

  @override
  String get enterComment => 'Masukkan catatan';

  @override
  String get enterExistingReadingAgain => 'Masukkan kembali bacaan lama';

  @override
  String get enterObjectName => 'Beri nama objek baru';

  @override
  String get errorInvalidRange => 'Tidak ada rentang yang valid';

  @override
  String get errorNoInternet => 'Tidak ada jaringan';

  @override
  String get errorReportingAgreement => 'Saya menyetujui pengiriman laporan kesalahan teknis ke EHW+ Services GmbH.';

  @override
  String get euDisputeResolution =>
      'Penyelesaian Sengketa Uni Eropa\n\nKomisi Eropa menyediakan platform untuk penyelesaian sengketa online (OS): https://ec.europa.eu/consumers/odr/.\nAnda dapat menemukan alamat email kami pada cetakan di atas.\n\nPenyelesaian sengketa konsumen/badan penyelesaian sengketa universal\n\nKami tidak bersedia atau berkewajiban untuk berpartisipasi dalam proses penyelesaian sengketa di hadapan badan arbitrase konsumen.';

  @override
  String get existingPhoto => 'Lampirkan foto yang ada';

  @override
  String get existingPhotoOfMeterReading => 'Apakah Anda ingin melampirkan foto pembacaan meteran yang sudah ada?';

  @override
  String get explanationManageMoreThanOneObject =>
      'Anda memiliki lebih dari satu properti yang ingin Anda kelola? Beri nama objek saat ini lalu buat objek lain.';

  @override
  String get export => 'Ekspor';

  @override
  String get exportExplanation =>
      'Objek yang sudah ada yang ingin Anda ekspor, misalnya untuk ditransfer ke perangkat baru?';

  @override
  String exportObjectDescription(
    String countersText,
    String lastUpdated,
    String meterReadings,
    String timeLastUpdated,
  ) {
    return '$countersText, $meterReadings , $timeLastUpdated $lastUpdated';
  }

  @override
  String get exportOptionConsumptionsSubtitle => 'Nilai konsumsi untuk setiap hari sejak pembacaan pertama.';

  @override
  String get exportOptionConsumptionsTitle => 'Konsumsi harian';

  @override
  String get exportOptionExcel => 'File Excel';

  @override
  String exportOptionFileDescription(String fileType) {
    return 'Objek tersebut dibagikan sebagai berkas yang dapat diakses bersama ($fileType)';
  }

  @override
  String get exportOptionPdf => 'File PDF';

  @override
  String get exportOptionReadingsSubtitle =>
      'Biasanya pembacaan meteran atau konsumsi dengan interval yang tidak teratur.';

  @override
  String get exportOptionReadingsTitle => 'Membaca nilai-nilai';

  @override
  String get exportTabHowToExport => 'Bagaimana Anda ingin mengekspor data?';

  @override
  String exportTabHowToExportOptionSaveToDownloads(Object folder) {
    return 'Simpan ke folder $folder';
  }

  @override
  String get exportTabHowToExportOptionShare => 'Berbagi dengan aplikasi lain';

  @override
  String get exportTabSnackBarSaveResultMessageError => 'Terjadi kesalahan saat menyimpan data';

  @override
  String exportTabSnackBarSaveResultMessageSuccess(Object fileName, Object folder) {
    return 'Data telah berhasil disimpan sebagai `$fileName` di folder `$folder`';
  }

  @override
  String get exportWhere => 'Dalam format apa objek harus diekspor?';

  @override
  String get exportWhichValuesShouldBeExported => 'Nilai mana yang harus diekspor?';

  @override
  String get faqAboutDeveloperBody1 =>
      'Terima kasih atas ketertarikan Anda pada EHW+. EHW+ dirilis oleh saya, Timo Bähr, pada bulan Desember 2020. Saya adalah pengembang aplikasi penuh waktu dan mengerjakan EHW+ di waktu luang saya untuk berkontribusi pada perlindungan lingkungan. Sejak Mei 2022, pengembang kedua telah mengawasi pekerjaan saya, Thomas Hesse membangun backend untuk EHW+. Sejak April 2023, Janine Sinner telah menangani berbagai masukan dari pelanggan. Sejak Juli 2024, Artem Yuzhakov bergabung sebagai pengembang aplikasi.';

  @override
  String get faqAboutDeveloperBody2 =>
      'Lebih dari 26% dari semua emisi CO2 di Jerman disebabkan oleh rumah tangga. Jika setiap orang dapat mengurangi konsumsinya meskipun hanya sedikit, maka banyak hal yang dapat dicapai. Terima kasih banyak atas kontribusi Anda!';

  @override
  String get faqAboutDeveloperBody3 => 'Kami menerima saran untuk meningkatkan aplikasi ini.';

  @override
  String get faqAboutDeveloperBody4 =>
      'Namun, saya meminta pengertian Anda bahwa saya tidak dapat mengimplementasikan semua saran dan fungsi-fungsi baru membutuhkan waktu.';

  @override
  String get faqAboutDeveloperTitle => 'Siapa yang berada di balik EHW+?';

  @override
  String get faqTitle => 'PERTANYAAN YANG SERING DIAJUKAN';

  @override
  String get featureVoting => 'Fitur pemungutan suara';

  @override
  String get featureVotingIntro =>
      'Anda dapat berubah pikiran kapan saja. Suara akan dibebaskan ketika fitur yang Anda pilih diimplementasikan.';

  @override
  String get featureVotingLoginRequired =>
      'Masuk dengan akun EHW+ Anda untuk melihat dan memberikan suara pada saran fitur.';

  @override
  String get featureVotingOnlyOnGerman => 'Survei fitur ini tidak diterjemahkan ke dalam bahasa lain.';

  @override
  String get featureVotingUnderConstruction =>
      'Pilih fitur yang ingin Anda lihat berikutnya. Anda dapat mengubah pilihan Anda kapan saja. Suara Anda akan dibatalkan jika fitur yang Anda pilih telah diimplementasikan.';

  @override
  String get fedIn => 'Diumpankan ke dalam';

  @override
  String get firstName => 'Nama depan';

  @override
  String get firstReadingConsumption => 'Masukkan konsumsi pertama sekarang.';

  @override
  String get firstReadingCounter => 'Masukkan pembacaan penghitung pertama.';

  @override
  String get firstReadingYield => 'Masukkan hasil pertama sekarang.';

  @override
  String get forX => 'untuk';

  @override
  String get gas => 'Gas';

  @override
  String get generated => 'Dihasilkan';

  @override
  String get goetheDataDonationAcceptAll => 'Terima semua';

  @override
  String get goetheDataDonationAddressLabel => 'Alamat';

  @override
  String get goetheDataDonationApproveButton => 'Menyetujui';

  @override
  String get goetheDataDonationAudienceGovernmentalInstitution => 'Institusi pemerintah';

  @override
  String get goetheDataDonationAudienceNonprofitOrganization => 'Organisasi nirlaba';

  @override
  String get goetheDataDonationAudienceOther => 'Lainnya';

  @override
  String get goetheDataDonationAudiencePrivateCompany => 'Perusahaan swasta';

  @override
  String get goetheDataDonationAudiencePrivateResearchInstitute => 'Lembaga penelitian swasta';

  @override
  String get goetheDataDonationAudienceQuestion => 'Siapa yang dapat mengajukan permintaan data?';

  @override
  String get goetheDataDonationAudienceResearchInstitute => 'Lembaga penelitian';

  @override
  String get goetheDataDonationAudienceUniversity => 'Universitas';

  @override
  String get goetheDataDonationBackHome => 'Kembali ke rumah';

  @override
  String get goetheDataDonationBannerPending => 'Ada permintaan data baru.';

  @override
  String get goetheDataDonationCreatedAtLabel => 'Dibuat pada';

  @override
  String get goetheDataDonationDatasetDescriptionLabel => 'Data yang diminta';

  @override
  String get goetheDataDonationDisabled => 'Permintaan data saat ini tidak tersedia.';

  @override
  String get goetheDataDonationExplanation =>
      'Semua permintaan data dibuat dalam konteks proyek penelitian COMET. Proyek ini akan berakhir pada akhir Agustus. Diperkirakan hanya ada sedikit permintaan data dalam satu digit. Jika permintaan data diterima, data hanya akan dikirimkan sekali. Rangkaian waktu konsumsi harian untuk masing-masing meter dapat dibagikan.';

  @override
  String get goetheDataDonationHeader => 'Permintaan data';

  @override
  String get goetheDataDonationIntro =>
      'Tentukan apakah Anda ingin menerima permintaan data dan jenis organisasi serta tujuan apa saja yang diizinkan untuk memintanya.';

  @override
  String get goetheDataDonationMeterLabel => 'Meteran';

  @override
  String get goetheDataDonationPurposeAiTraining => 'Pelatihan AI';

  @override
  String get goetheDataDonationPurposeLabel => 'Tujuan';

  @override
  String get goetheDataDonationPurposeMarketResearch => 'Riset pasar';

  @override
  String get goetheDataDonationPurposePersonalizedMarketing => 'Pemasaran yang dipersonalisasi';

  @override
  String get goetheDataDonationPurposeProductDevelopment => 'Pengembangan produk';

  @override
  String get goetheDataDonationPurposeQuestion => 'Untuk tujuan apa?';

  @override
  String get goetheDataDonationPurposeResearch => 'Penelitian';

  @override
  String get goetheDataDonationReceiveQuestion => 'Apakah Anda ingin menerima permintaan data?';

  @override
  String get goetheDataDonationReceiveToggle => 'Menerima permintaan data';

  @override
  String get goetheDataDonationRejectButton => 'Menolak';

  @override
  String get goetheDataDonationRequestFallbackTitle => 'Permintaan data';

  @override
  String get goetheDataDonationRequestsApprovedEmpty => 'Tidak ada permintaan data yang disetujui.';

  @override
  String get goetheDataDonationRequestsApprovedTitle => 'Permintaan data yang disetujui';

  @override
  String get goetheDataDonationRequestsEmpty => 'Saat ini tidak ada permintaan data.';

  @override
  String get goetheDataDonationRequestsEnableHint =>
      'Aktifkan permintaan data di pengaturan terlebih dahulu untuk melihat dan mengelola permintaan.';

  @override
  String get goetheDataDonationRequestsLoadError => 'Permintaan data tidak dapat dimuat.';

  @override
  String get goetheDataDonationRequestsOpenSettings => 'Buka pengaturan';

  @override
  String get goetheDataDonationRequestsPendingEmpty => 'Tidak ada permintaan data yang tertunda.';

  @override
  String get goetheDataDonationRequestsPendingTitle => 'Permintaan data yang tertunda';

  @override
  String get goetheDataDonationRequestsRejectedEmpty => 'Tidak ada permintaan data yang ditolak.';

  @override
  String get goetheDataDonationRequestsRejectedTitle => 'Permintaan data yang ditolak';

  @override
  String get goetheDataDonationRequestsTitle => 'Permintaan data';

  @override
  String get goetheDataDonationResetDecisionButton => 'Tandai sebagai tertunda';

  @override
  String get goetheDataDonationSettingsSubtitle => 'Mengelola permintaan data penelitian Goethe';

  @override
  String get goetheDataDonationSettingsTitle => 'Permintaan data';

  @override
  String goetheDataDonationUploadCompleted(Object completed, Object total) {
    return 'Telah diunggah $completed dari permintaan data $total.';
  }

  @override
  String goetheDataDonationUploadFailed(Object completed, Object total, Object failed) {
    return 'Telah mengunggah $completed dari permintaan data $total, $failed gagal.';
  }

  @override
  String get goetheDataDonationUploadPreparing => 'Mempersiapkan permintaan data untuk diunggah.';

  @override
  String goetheDataDonationUploadProgress(Object current, Object total) {
    return 'Mengirimkan permintaan data ke $current di $total.';
  }

  @override
  String get googleAnalyticsAgreement =>
      'Saya menyetujui pengiriman data anonim tentang penggunaan aplikasi ke EHW+ Services GmbH.';

  @override
  String googleApiAgreement(String appNameShort) {
    return 'Penggunaan dan pengalihan informasi yang diterima dari Google API oleh $appNameShort ke aplikasi lain mana pun akan mematuhi Kebijakan Data Pengguna Layanan Google API, termasuk persyaratan Penggunaan Terbatas.';
  }

  @override
  String get gross => 'kotor';

  @override
  String get grossNetPrices => 'Harga kotor atau bersih';

  @override
  String get heatPump => 'Pompa panas';

  @override
  String get heater => 'Radiator';

  @override
  String get heatmapLegendDisclaimer =>
      'Info: Kotak yang diarsir berisi nilai perkiraan. Untuk membaca konsumsi/keluaran yang sebenarnya, silakan isi pembacaan meter yang hilang jika memungkinkan.';

  @override
  String get heatmapLegendTitle => 'Lebih lanjut tentang peta panas';

  @override
  String get homeAssistantAccessTokenLabel => 'Token akses berumur panjang';

  @override
  String get homeAssistantAccessTokenRequired => 'Masukkan token akses yang berumur panjang.';

  @override
  String get homeAssistantConfigureNow => 'Siapkan sekarang';

  @override
  String homeAssistantConfiguredSubtitle(String instanceName, String version) {
    return '$instanceName - Versi$version';
  }

  @override
  String homeAssistantConnectionFailed(String error) {
    return 'Koneksi gagal: $error';
  }

  @override
  String get homeAssistantConnectionSuccessful => 'Sambungan ke Home Assistant berhasil.';

  @override
  String get homeAssistantDefaultActivityLabel => 'Aktivitas default';

  @override
  String get homeAssistantHistoricalConsumptionsDescription =>
      'Pilih sensor konsumsi Home Assistant yang akan membuat dan memperbarui penghitung di objek EHW+ saat ini.';

  @override
  String get homeAssistantHistoricalConsumptionsTitle => 'Konsumsi EHW+ historis';

  @override
  String get homeAssistantLinkSensor => 'Sensor tautan';

  @override
  String get homeAssistantLiveMeasurementApparentPower => 'Kekuatan yang nyata';

  @override
  String get homeAssistantLiveMeasurementCurrent => 'Saat ini';

  @override
  String get homeAssistantLiveMeasurementPower => 'Daya';

  @override
  String get homeAssistantLiveMeasurementReactivePower => 'Daya reaktif';

  @override
  String get homeAssistantLiveMeasurementVoltage => 'Tegangan';

  @override
  String get homeAssistantLiveMeasurementsConnecting => 'Menghubungkan ke Asisten Rumah...';

  @override
  String get homeAssistantLiveMeasurementsError => 'Data langsung Home Assistant tidak dapat dimuat.';

  @override
  String get homeAssistantLiveMeasurementsNoData => 'Tidak ada nilai langsung yang terdeteksi untuk sensor ini.';

  @override
  String get homeAssistantLoadSensors => 'Sensor beban';

  @override
  String get homeAssistantLocalUrlWarning =>
      'Ini terlihat seperti URL lokal. Sinkronisasi hanya dilakukan saat perangkat tersambung ke jaringan lokal.';

  @override
  String get homeAssistantNoDefaultActivity => 'Tidak ada aktivitas default';

  @override
  String get homeAssistantNoPushCounters =>
      'Tidak ada penghitung dalam objek ini yang dapat didorong ke Home Assistant.';

  @override
  String get homeAssistantNoSensors => 'Tidak ditemukan sensor konsumsi yang sesuai.';

  @override
  String get homeAssistantNotConfiguredSubtitle =>
      'Menyinkronkan pembacaan meteran dan konsumsi dengan Home Assistant.';

  @override
  String get homeAssistantPlugTitle => 'Colokkan';

  @override
  String get homeAssistantPlugUnavailable => 'Steker tidak tersedia';

  @override
  String get homeAssistantPushCountersDescription =>
      'Pilih penghitung EHW+ yang statistik konsumsinya harus didorong ke Home Assistant setelah perubahan.';

  @override
  String get homeAssistantPushCountersTitle => 'Dorong penghitung EHW+';

  @override
  String get homeAssistantSettingsDescription =>
      'Hubungkan EHW+ dengan instans Home Assistant Anda untuk menarik pembacaan meteran dari sensor yang dipilih atau mendorong statistik EHW+.';

  @override
  String get homeAssistantSettingsTitle => 'Asisten Rumah Tangga';

  @override
  String get homeAssistantSubscriptionRequired => 'Diperlukan langganan aktif untuk sinkronisasi Home Assistant.';

  @override
  String get homeAssistantTitle => 'Asisten Rumah Tangga';

  @override
  String get homeAssistantTokenTest => 'Token uji';

  @override
  String get homeAssistantUnknownInstance => 'Contoh yang tidak diketahui';

  @override
  String get homeAssistantUnlink => 'Putuskan tautan';

  @override
  String get homeAssistantUrlInvalid => 'Masukkan URL Home Assistant yang valid.';

  @override
  String get homeAssistantUrlLabel => 'URL Asisten Rumah';

  @override
  String get homeAssistantUrlRequired => 'Masukkan URL Home Assistant.';

  @override
  String get houseName => 'Nama rumah';

  @override
  String get houseNameDescription => 'Nama rumah, misalnya nama jalan';

  @override
  String get houseNumber => 'Nomor rumah';

  @override
  String get import => 'Impor';

  @override
  String get importConfirm => 'Konfirmasi impor';

  @override
  String get importCounterAsCsv =>
      'Apakah Anda ingin mengimpor satu meter? Per meter yang didukung adalah file CSV dengan dua kolom, satu untuk waktu dan satu lagi untuk pembacaan meter.\n\nContoh data:\n2020-04-01T22:59:00,6790.855\n\"2020-04-01T23:59\";6795.421\n2020-04-01 22:22,6803.435\n20120401 13:27:00,6807.467\n2012-04-01,13:27:00,6807.467\n\"2020-04-01 23:02:00\",6812,036';

  @override
  String importErrorCsvIgnoredColumns(int columns) {
    String _temp0 = intl.Intl.pluralLogic(
      columns,
      locale: localeName,
      other: 'Hanya dua kolom pertama yang digunakan; kolom-kolom selebihny$columns.',
      one: 'Hanya dua kolom pertama yang digunakan. Kolom ketiga diabaikan.',
    );
    return '$_temp0';
  }

  @override
  String importErrorCsvIgnoredLines(int count, String lines) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count baris-baris berikut diabaikan: $lines',
      one: 'Satu baris diabaikan: $lines',
    );
    return '$_temp0';
  }

  @override
  String get importExplanation => 'Anda sudah membuat pembacaan kontra dan ingin menyisipkannya?';

  @override
  String get importExport => 'Pencadangan/Pemulihan';

  @override
  String get importNewOrExistingCounter => 'Menambah konter baru atau yang sudah ada?';

  @override
  String get importNotPossible => 'Impor tidak memungkinkan';

  @override
  String get importPickFile => 'Pilih file';

  @override
  String importSelectJson(String appName) {
    return 'Berkas JSON (dibuat menggunakan $appName)';
  }

  @override
  String get importSelectSingleCounter => 'Penghitung tunggal (file CSV)';

  @override
  String get importSuccessful => 'Impor berhasil';

  @override
  String importTabErrorMessageFileWithExtensionNotSelected(Object extension) {
    return 'Anda harus memiliki berkas berformat \"$extension\" untuk melanjutkan proses impor.';
  }

  @override
  String get importTheObject => 'Impor objek';

  @override
  String get importWhichCounterForCsv => 'Penghitung mana yang harus digunakan?';

  @override
  String get imprintTitle => 'Jejak';

  @override
  String get initialReading => 'Pembacaan awal';

  @override
  String get involvedCounters => 'Penghitung yang terlibat';

  @override
  String get isLastEntryAtFilteredList => 'Nilai tertua dalam daftar yang difilter';

  @override
  String get isOutdatedCounter => 'Penghitung tidak lagi digunakan';

  @override
  String get last12Months => '12 bulan terakhir';

  @override
  String get last12Weeks => '12 minggu terakhir';

  @override
  String get last2Weeks => '14 hari terakhir';

  @override
  String get lastName => 'Nama belakang';

  @override
  String get lastReading => 'bacaan terakhir';

  @override
  String get lastYear => 'Tahun lalu';

  @override
  String get lineChartAppearanceSettings => 'Penampilan grafik garis';

  @override
  String get lineChartAppearanceSettingsShowSpots => 'Menampilkan titik-titik (melingkar) pada garis grafik';

  @override
  String localWriteSubtitle(Object folder) {
    return 'Apakah objek dan foto harus disimpan di folder lokal \"$folder\" setiap kali ada perubahan?';
  }

  @override
  String get localWriteTitle => 'Simpan di folder unduhan lokal';

  @override
  String get manageMoreThanOneObjectStep1 => 'Mengelola lebih dari satu objek - Langkah 1';

  @override
  String get manageMoreThanOneObjectStep2 => 'Mengelola lebih dari satu objek - Langkah 2';

  @override
  String get marketLocationId => 'ID lokasi pasar';

  @override
  String get marketLocationIdDescription =>
      'ID lokasi pasar selalu terdiri dari 11 digit. Anda biasanya dapat menemukannya pada tagihan listrik atau gas terakhir Anda.';

  @override
  String get messageNoConsumptions =>
      'Statistik untuk semua jenis meter muncul di sini jika pembacaan yang dilakukan sudah cukup. Misalnya, dua meter air dingin, dua meter air panas, dan satu meter ekstraksi air ditampilkan dalam satu statistik air.';

  @override
  String get messageNoContracts => 'Belum ada kontrak.';

  @override
  String get messageNoCounterReadings => 'Anda belum memasukkan pembacaan penghitung.';

  @override
  String get messageNoCounters => 'Anda belum membuat penghitung.';

  @override
  String get messageNoRooms => 'Belum ada kamar. Kamar membantu kelompok pengukur.';

  @override
  String get messageNotEnoughData => 'Tidak cukup data untuk menampilkan grafik';

  @override
  String get meterCardLastUpdatedLabel => 'Diperbarui';

  @override
  String get meterId => 'Id penghitung';

  @override
  String get meterReadingSubmitted => 'Dikirim ke penyedia layanan';

  @override
  String get meterReadingsFilterAll => 'Tampilkan semua';

  @override
  String get meterReadingsFilterComments => 'Tampilkan hanya entri dengan komentar';

  @override
  String meterReadingsFilterSubmitted(String state) {
    return 'Tampilkan hanya \"$state\"';
  }

  @override
  String get meterReplacementCreateNew => 'Buat meteran berikutnya dengan tipe yang sama';

  @override
  String get meterReplacementDescription =>
      'Apakah meteran ini sudah ketinggalan zaman dan sudah diganti dengan meteran baru?';

  @override
  String monthEnd(Object month) {
    return 'Akhir dari \"$month\"';
  }

  @override
  String get myObjects => 'Benda-benda saya';

  @override
  String get net => 'bersih';

  @override
  String get networkCounter => 'Internet & telepon';

  @override
  String get newCounter => 'Membuat penghitung baru';

  @override
  String get newPhoto => 'Mengambil foto baru';

  @override
  String get newPhotoOfMeterReading => 'Apakah Anda ingin mengambil foto pembacaan meteran?';

  @override
  String get newReading => 'Masukkan pembacaan saat ini';

  @override
  String get newReadingShort => 'Bacaan baru';

  @override
  String get notifications => 'Pemberitahuan';

  @override
  String get notificationsEmpty => 'Tidak ada pemberitahuan';

  @override
  String get notificationsSmartMeterAlertFallback => 'Anda memiliki peringatan smart meter baru.';

  @override
  String numCounters(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count penghitung',
      one: '$count penghitung',
      zero: '$count penghitung',
    );
    return '$_temp0';
  }

  @override
  String numMeterReadings(int readings) {
    String _temp0 = intl.Intl.pluralLogic(
      readings,
      locale: localeName,
      other: '$readings pembacaan meter',
      one: '1 Pembacaan meteran',
      zero: '$readings pembacaan meter',
    );
    return '$_temp0';
  }

  @override
  String numberOfDetails(int count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: '$count rincian', one: '1 detail');
    return '$_temp0';
  }

  @override
  String ofRangeFrom(String range) {
    return 'dari $range';
  }

  @override
  String ofRangeLastDays(int days) {
    return 'dari hari-hari terakhir $days';
  }

  @override
  String ofRangeLastMonths(int months) {
    return 'selama $months bulan terakhir';
  }

  @override
  String get oil => 'Minyak';

  @override
  String get openNewCounter => 'Buka konter baru';

  @override
  String get outdated => 'ketinggalan jaman.';

  @override
  String get outdatedContracts => 'Kontrak yang sudah kedaluwarsa';

  @override
  String get outdatedCounters => 'Penghitung tidak lagi digunakan';

  @override
  String get paidAdvancePayments => 'Pembayaran di muka';

  @override
  String get parsingObjectError =>
      'Objek tidak dapat diuraikan. Silakan hubungi pengembang. Saat mencopot pemasangan aplikasi, data dapat hilang.';

  @override
  String get per => 'per';

  @override
  String perUnit(String unit) {
    return 'menurut $unit';
  }

  @override
  String get performMeterReplacement => 'Melakukan penggantian meteran';

  @override
  String get period => 'Periode';

  @override
  String get periodBimonthly => 'dua bulanan';

  @override
  String get periodBiweekly => 'dua mingguan';

  @override
  String get periodCustom => 'Ditentukan oleh pengguna';

  @override
  String get periodDaily => 'setiap hari';

  @override
  String periodEveryXMonths(String number) {
    return 'setiap $number bulan';
  }

  @override
  String get periodHalfYearly => 'setengah tahunan';

  @override
  String get periodHourly => 'per jam';

  @override
  String get periodMonthly => 'bulanan';

  @override
  String get periodQuarterly => 'triwulanan';

  @override
  String get periodWeekly => 'mingguan';

  @override
  String get periodYearly => 'tahunan';

  @override
  String get previouslyDeletedCounters => 'Pengukur yang baru saja dihapus';

  @override
  String priceComparisonDiffLess(Object countryName, Object diffWithCurrency) {
    return 'Anda membayar lebih murah daripada harga rata-rata di $diffWithCurrency di $countryName.';
  }

  @override
  String priceComparisonDiffMore(Object countryName, Object diffWithCurrency) {
    return 'Anda membayar $diffWithCurrency lebih mahal daripada rata-rata di $countryName.';
  }

  @override
  String priceComparisonEqual(String countryName) {
    return 'Anda membayar sekitar harga rata-rata di $countryName.';
  }

  @override
  String priceComparisonNotEnoughData(String countryCode, String countryName) {
    return 'Belum ada cukup data perbandingan untuk situs $countryName ($countryCode).';
  }

  @override
  String get pricePerUnit => 'Harga per unit';

  @override
  String get pricePerUnitFeedIn => 'Harga remunerasi';

  @override
  String get pricePerUnitFreshWater => 'Biaya untuk air bersih';

  @override
  String get pricePerUnitWasteWater => 'Harga air limbah';

  @override
  String get pricePerUnitWaterCold => 'Biaya air dingin';

  @override
  String get pricePerUnitWaterWarm => 'Biaya pemanas air panas';

  @override
  String get priceSubmissionAgreement => 'Saya setuju dengan transmisi harga listrik/gas/air per unit ke server EHW+';

  @override
  String privacyBlock1Text(String contact) {
    return 'Pengembang/penyedia aplikasi (selanjutnya disebut “aplikasi”) adalah, sesuai dengan Pasal 5 Undang-Undang Telemedia Jerman (TMG):\n\n$contact';
  }

  @override
  String get privacyBlock1Text2 =>
      'Penggunaan aplikasi ini mengharuskan Anda menyetujui persyaratan penggunaan berikut ini. Harap baca dengan cermat.';

  @override
  String get privacyBlock1Title => 'Pengembang';

  @override
  String get privacyBlock2Text =>
      'Perlindungan data Anda sangat penting bagi kami. Kebijakan privasi ini menjelaskan data pribadi apa saja yang dikumpulkan oleh EHW+ dan bagaimana data tersebut digunakan. Perubahan mendasar pada kebijakan privasi jarang terjadi, tetapi mungkin akan direvisi dari waktu ke waktu karena adanya fitur, teknologi, atau persyaratan hukum baru. Jadi, silakan periksa halaman ini dari waktu ke waktu untuk mendapatkan informasi terbaru. Jika kami melakukan perubahan yang signifikan, kami akan memberi tahu Anda dan, jika perlu, mendapatkan persetujuan Anda.';

  @override
  String get privacyBlock2Title => 'Umum';

  @override
  String privacyBlock3Title(String appNameShort) {
    return 'Data apa saja yang dikumpulkan oleh $appNameShort?';
  }

  @override
  String privacyBlock3aText(String appNameShort) {
    return 'Kami membuat $appNameShort agar Anda dapat dengan cepat dan mudah memasukkan pembacaan meteran Anda, lalu menggunakan statistik untuk mengetahui lebih lanjut mengenai konsumsi, biayanya, dan potensi penghematan. Artinya, Anda dapat memasukkan, menghitung, atau menyimpan data apa pun—yang kami sebut sebagai ‘konten’—di $appNameShort. Data ini hanya disimpan di ponsel Anda.\n\nSinkronisasi dengan Google Drive.\nJika Anda mengaktifkan sinkronisasi dengan Google Drive, konten tersebut juga akan secara otomatis dicadangkan dalam folder bernama ‘$appNameShort’ di Google Drive Anda, yang hanya dapat diakses oleh Anda. Dengan masuk menggunakan akun Google, alamat email Anda akan terlihat oleh pengembang.';
  }

  @override
  String privacyBlock3bText(String googleApiAgreement) {
    return '$googleApiAgreement\n\nData lokasi.\nUntuk memahami perilaku pengguna dan guna pengembangan fitur di masa mendatang, aplikasi ini mengirimkan data penggunaan yang telah dianonimkan. Data tersebut tidak dibagikan kepada pihak ketiga. Informasi yang mungkin dikumpulkan meliputi asal (negara dan kota), bahasa, sistem operasi, jenis perangkat, resolusi, pola klik, dan durasi penggunaan.\nData perangkat.\nKami mengumpulkan data mengenai jumlah dan jenis perangkat yang Anda gunakan untuk terhubung ke layanan, serta informasi mengenai sistem operasi pada perangkat tersebut (misalnya Android, iOS, Windows, atau macOS).\n\nDengan menggunakan aplikasi ini, Anda menyetujui pengumpulan data anonim sebagaimana dijelaskan di atas.';
  }

  @override
  String privacyBlock4DataUsage(String syncDriveDataUsage) {
    return 'Data anonim yang dikumpulkan digunakan untuk mengevaluasi perilaku pengguna. Selain itu, data tersebut tidak digunakan untuk tujuan lain.\n\n$syncDriveDataUsage';
  }

  @override
  String privacyBlock4DataUsageTitle(Object appNameShort) {
    return 'Bagaimana $appNameShort menggunakan data saya?';
  }

  @override
  String get privacyBlock5 =>
      'Durasi penyimpanan data pribadi ditentukan oleh periode penyimpanan menurut undang-undang yang berlaku (misalnya, periode penyimpanan menurut undang-undang komersial dan perpajakan). Setelah berakhirnya periode tersebut, data terkait akan dihapus secara rutin, asalkan tidak lagi diperlukan untuk pemenuhan atau inisiasi kontrak dan/atau kami tidak lagi memiliki kepentingan yang sah untuk terus menyimpannya.';

  @override
  String get privacyBlock5Title => 'Durasi penyimpanan data pribadi';

  @override
  String get privacyBlock6 =>
      'Ketika Anda menghubungi kami (misalnya melalui formulir kontak atau email), data pribadi dikumpulkan. Data yang dikumpulkan dalam kasus formulir kontak dapat dilihat pada formulir kontak masing-masing. Data ini disimpan dan digunakan secara eksklusif untuk tujuan menanggapi pertanyaan Anda atau untuk membangun kontak dan administrasi teknis terkait. Dasar hukum untuk pemrosesan data adalah kepentingan sah kami dalam menanggapi permintaan Anda sesuai dengan Art. 6 para. 1 lit. f GDPR. Jika kontak Anda ditujukan untuk membuat kontrak, dasar hukum tambahan untuk pemrosesan adalah Art. 6 para. 1 lit. b GDPR. Data Anda akan dihapus setelah pertanyaan Anda diproses, yang merupakan kasus jika dapat disimpulkan dari keadaan bahwa masalah yang dipermasalahkan akhirnya diklarifikasi dan asalkan tidak ada kewajiban hukum untuk menyimpan data.';

  @override
  String get privacyBlock6Title => 'Kontak';

  @override
  String get privacyBlock7 =>
      'Hukum perlindungan data yang berlaku memberi Anda hak-hak komprehensif sebagai subjek data (hak informasi dan intervensi) terhadap pengendali terkait pemrosesan data pribadi Anda, yang akan kami informasikan di bawah ini:\n\n- Hak atas informasi sesuai dengan Art. 15 GDPR: Secara khusus, Anda memiliki hak untuk mendapatkan informasi tentang data pribadi Anda yang kami proses, tujuan pemrosesan, kategori data pribadi yang diproses, penerima atau kategori penerima yang menerima data Anda yang telah atau akan diungkapkan, periode penyimpanan yang direncanakan atau kriteria untuk menentukan periode penyimpanan, adanya hak untuk perbaikan, penghapusan, pembatasan pemrosesan, keberatan atas pemrosesan, keluhan kepada otoritas pengawas, asal data Anda jika tidak dikumpulkan oleh kami dari Anda, adanya pengambilan keputusan otomatis, termasuk pembuatan profil, dan, jika berlaku, informasi yang bermakna tentang logika yang terlibat dan signifikansi serta konsekuensi yang dipertimbangkan dari pemrosesan tersebut untuk Anda, serta hak Anda untuk diberitahu tentang jaminan yang ada sesuai dengan Art. 46 GDPR ketika data Anda ditransfer ke negara ketiga;\n\n- Hak untuk perbaikan sesuai dengan Art. 16 GDPR: Anda memiliki hak untuk memperbaiki data yang tidak akurat tentang Anda tanpa penundaan dan/atau melengkapi data yang tidak lengkap yang kami simpan.\n\n- Hak untuk penghapusan sesuai dengan Art. 17 GDPR: Anda memiliki hak untuk meminta penghapusan data pribadi Anda jika ketentuan Art. 17 (1) GDPR terpenuhi. Namun, hak ini tidak berlaku khususnya jika pemrosesan diperlukan untuk melaksanakan hak kebebasan berekspresi dan informasi, untuk memenuhi kewajiban hukum, untuk alasan kepentingan publik atau untuk pendirian, pelaksanaan, atau pembelaan klaim hukum.\n\n- Hak untuk membatasi pemrosesan sesuai dengan Art. 18 GDPR: Anda memiliki hak untuk meminta pembatasan pemrosesan data pribadi Anda selama keakuratan data Anda diverifikasi jika Anda keberatan dengan penghapusan data Anda dengan alasan pemrosesan data yang tidak dapat diterima dan sebagai gantinya meminta pembatasan pemrosesan data Anda jika Anda memerlukan data Anda untuk pernyataan, pelaksanaan, atau pembelaan klaim hukum setelah kami tidak lagi membutuhkan data ini untuk memenuhi tujuan pengumpulannya, atau jika Anda mengajukan keberatan dengan alasan yang berkaitan dengan situasi khusus Anda, selama belum jelas apakah alasan sah kami yang berlaku;\n\n- Hak untuk diberi tahu sesuai dengan Art. 19 GDPR: Jika Anda telah menggunakan hak Anda untuk memperbaiki, menghapus, atau membatasi pemrosesan sehubungan dengan pengendali, pengendali berkewajiban untuk memberi tahu semua penerima yang kepadanya data pribadi Anda telah diungkapkan tentang perbaikan atau penghapusan data atau pembatasan pemrosesan ini, kecuali jika hal ini terbukti tidak mungkin dilakukan atau melibatkan upaya yang tidak proporsional. Anda berhak untuk diberi tahu tentang penerima ini.\n\n- Hak atas portabilitas data sesuai dengan Art. 20 GDPR: Anda memiliki hak untuk menerima data pribadi Anda yang telah Anda berikan kepada kami dalam format yang terstruktur, umum digunakan, dan dapat dibaca oleh mesin, atau untuk meminta pemindahannya ke pengontrol lain, jika memungkinkan secara teknis.\n\n- Hak untuk menarik persetujuan yang diberikan sesuai dengan Art. 7 (3) GDPR: Anda memiliki hak untuk menarik persetujuan Anda atas pemrosesan data kapan pun dengan efek yang berlaku di masa mendatang. Jika terjadi penarikan, kami akan menghapus data yang bersangkutan tanpa penundaan, kecuali jika pemrosesan lebih lanjut dapat didasarkan pada dasar hukum untuk pemrosesan tanpa persetujuan. Penarikan persetujuan tidak memengaruhi keabsahan pemrosesan berdasarkan persetujuan sebelum penarikan.\n\n- Hak untuk mengajukan keluhan sesuai dengan Art. 77 GDPR: Jika Anda yakin bahwa pemrosesan data pribadi Anda melanggar GDPR, Anda memiliki hak untuk mengajukan keluhan kepada otoritas pengawas, khususnya di Negara Anggota tempat tinggal Anda, tempat kerja Anda, atau tempat terjadinya pelanggaran, tanpa mengurangi upaya hukum administratif atau yudisial lainnya.';

  @override
  String get privacyBlock7Title => 'Hak-hak orang yang bersangkutan';

  @override
  String get privacyBlock8 =>
      'JIKA KAMI MEMPROSES DATA PRIBADI ANDA BERDASARKAN KEPENTINGAN SAH KAMI YANG UTAMA SEBAGAI BAGIAN DARI KESEIMBANGAN KEPENTINGAN, ANDA MEMILIKI HAK UNTUK MENOLAK PEMROSESAN INI KAPAN PUN KARENA ALASAN YANG TIMBUL DARI SITUASI KHUSUS ANDA, YANG BERLAKU DI MASA MENDATANG. JIKA ANDA MENGGUNAKAN HAK ANDA UNTUK MENOLAK, KAMI AKAN BERHENTI MEMPROSES DATA YANG BERSANGKUTAN. NAMUN, PEMEROSESAN LEBIH LANJUT TETAP DILAKUKAN JIKA KAMI DAPAT MEMBUKTIKAN ALASAN HUKUM YANG MEMUASKAN UNTUK PEMEROSESAN YANG MENGABAIKAN KEPENTINGAN, HAK ASASI, DAN KEBEBASAN ANDA, atau jika pemrosesan tersebut berfungsi untuk menyatakan, menjalankan, atau membela klaim hukum.\n\nJIKA KAMI MEMPROSES DATA PRIBADI ANDA UNTUK TUJUAN PEMASARAN LANGSUNG, ANDA MEMILIKI HAK UNTUK MENGAJUKAN KEBERATAN KAPAN PUN TERHADAP PEMROSESAN DATA PRIBADI MENGENAI ANDA UNTUK TUJUAN IKLAN TERSEBUT. ANDA DAPAT MENGGUNAKAN HAK ANDA UNTUK MENOLAK SEBAGAIMANA DIJELASKAN DI ATAS.\n\nJIKA ANDA MENGGUNAKAN HAK ANDA UNTUK MENOLAK, KAMI AKAN BERHENTI MEMPROSES DATA MENGENAI ANDA UNTUK TUJUAN PEMASARAN LANGSUNG.';

  @override
  String get privacyBlock8Title => 'Hak untuk mengajukan keberatan';

  @override
  String get privacyContractPriceSubmission =>
      'Ketika Anda, sebagai pengguna, menyimpan data kontrak Anda, harga per unit untuk kontrak listrik, air, dan gas dikirimkan ke server EHW+ di Jerman bersama dengan negara bagian dan federal. Data ini digunakan untuk menghitung statistik harga. Bagi pengguna aplikasi, statistik dapat dilihat dalam bentuk perbandingan harga pada tampilan kontrak.\n\nDengan menggunakan aplikasi ini, Anda menyetujui pengumpulan data anonim yang disebutkan di atas.';

  @override
  String get privacyTitle => 'Kebijakan privasi';

  @override
  String get purchasesBuyNow => 'Beli sekarang';

  @override
  String get purchasesDisabledOnIOS => 'Pembelian dalam aplikasi dinonaktifkan';

  @override
  String get purchasesDisabledOnIOSDescription =>
      'Periksa apakah pembelian dalam aplikasi dinonaktifkan di iPhone Anda (Pengaturan > Waktu Layar > Pembatasan > Instalasi & Pembelian Aplikasi > Izinkan Pembelian Dalam Aplikasi)';

  @override
  String get purchasesDisabledOnIOSDescriptionTestflight =>
      'Aplikasi ini diinstal melalui Testflight. Harap diperhatikan bahwa pembelian hanya dapat dilakukan di aplikasi jika Anda menginstal aplikasi melalui App Store.';

  @override
  String get purchasesEarlyBirdSubscription =>
      'Catatan: Jika langganan pelanggan pertama kali ini dibatalkan, pelanggan tidak dapat berlangganan lagi setelahnya.';

  @override
  String get purchasesExtensionMultipleObjectsDescription =>
      'Masukkan pembacaan meteran untuk apartemen/rumah/objek sebanyak yang Anda inginkan (bukan hanya untuk satu objek)';

  @override
  String get purchasesExtensionMultipleObjectsTitlePart => 'Mengelola beberapa objek';

  @override
  String get purchasesExtensionStatisticsDescription =>
      'Akses ke konsumsi tahunan/bulanan/mingguan listrik/gas/air/... + penyesuaian periode + ikhtisar biaya terperinci + ekspor Excel';

  @override
  String get purchasesExtensionStatisticsTitle => 'Statistik lanjutan';

  @override
  String get purchasesExtensionsInWork =>
      'Perluasan lebih lanjut sedang direncanakan. Berpartisipasilah dalam survei fitur untuk menyampaikan pendapat Anda.';

  @override
  String get purchasesExtensionsSubtitle => 'Beli sekali, gunakan secara permanen (tidak perlu berlangganan)';

  @override
  String get purchasesExtensionsTitle => 'Ekstensi tunggal';

  @override
  String get purchasesIOSRestorePurchases => 'Mengembalikan pembelian';

  @override
  String get purchasesIOSRestorePurchasesDescription =>
      'Jika Anda pernah membeli sesuatu di AppStore di masa lalu, Anda dapat memulihkan pembelian.';

  @override
  String get purchasesPurchased => 'Dibeli';

  @override
  String get purchasesPurchasedIncludedInPremium => 'Termasuk dalam Premium';

  @override
  String get purchasesPurchasedSubscribed => 'Berlangganan';

  @override
  String get purchasesRedeemCode => 'Tukarkan kode';

  @override
  String purchasesStatisticsWithPremium(int count, String years) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: ' dan lihat juga data historis untuk $years.',
      one: '.',
      zero: '.',
    );
    return 'Dengan Premium, Anda mendapatkan akses ke perbandingan bulanan$_temp0';
  }

  @override
  String get purchasesSubscribeNow => 'Berlangganan sekarang';

  @override
  String get purchasesSubscribePremium => 'Berlangganan Premium';

  @override
  String purchasesSubscribePremiumMonthly(String price) {
    return 'Langganan bulanan yang dapat dibatalkan kapan saja, hanya seharga $price per bulan';
  }

  @override
  String purchasesSubscribePremiumMonthlyWithNewPrice(String price, String priceNew) {
    return 'Langganan bulanan yang dapat dibatalkan kapan saja dengan harga khusus pelanggan setia sebesar $price per bulan, bukan $priceNew';
  }

  @override
  String get purchasesSubscribePremiumTextLong =>
      'Akses ke semua fitur berbayar selama periode berlangganan + suhu luar ruangan';

  @override
  String purchasesSubscribePremiumYearly(String price) {
    return 'Langganan yang dapat dibatalkan setiap tahun dengan biaya hanya $price per tahun';
  }

  @override
  String purchasesSubscribePremiumYearlyWithNewPrice(String price, String priceNew) {
    return 'Langganan tahunan yang dapat dibatalkan kapan saja dengan harga khusus pelanggan setia sebesar $price per tahun, bukan $priceNew';
  }

  @override
  String get purchasesUpgrade => 'Tingkatkan';

  @override
  String get purchasesWebLegalNote =>
      'Untuk alasan hukum, pembelian hanya dapat dilakukan untuk iPhone atau ponsel Android dengan layanan PlayStore.';

  @override
  String get purchasesWhyBuyText =>
      'Dengan membeli, Anda berpartisipasi dalam biaya yang saya keluarkan dengan menerbitkan aplikasi dan mendukung pengembangan lebih lanjut.';

  @override
  String get purchasesWhyBuyTitle => 'Mengapa saya harus membeli sesuatu?';

  @override
  String get purchasesYourPurchases => 'Anda memiliki akses ke paket premium berikut ini:';

  @override
  String get reading => 'Pembacaan penghitung';

  @override
  String get readingDeleteConfirm => 'Menghapus bacaan?';

  @override
  String get readingNew => 'Bacaan baru';

  @override
  String get readingPrefill => 'Pembacaan meteran pengisian otomatis';

  @override
  String get readingPrefillDescription => 'Pembacaan meteran pra-pengisian berdasarkan entri sebelumnya';

  @override
  String get readingPrefillDisableForAllCounters => 'Nonaktifkan pengisian otomatis untuk semua penghitung';

  @override
  String get readingPrefillDisabled => 'Pengisian otomatis dinonaktifkan';

  @override
  String get readingPrefillDisabledToast => 'Pengisian otomatis dinonaktifkan';

  @override
  String get readingPrefillEnableForAllCounters => 'Mengaktifkan pengisian otomatis untuk semua penghitung';

  @override
  String readingReminder(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Pengingat membaca',
      one: 'Pengingat membaca',
    );
    return '$_temp0';
  }

  @override
  String get readingReminderDisabled => 'Pengingat membaca tidak aktif';

  @override
  String readingReminderMultiBody(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baca pembacaan meteran dari $count sekarang',
      one: 'Lihat pembacaan meteran dari $count sekarang',
    );
    return '$_temp0';
  }

  @override
  String readingReminderSingleBody(String counterName) {
    return 'Baca nilai `$counterName` sekarang';
  }

  @override
  String get readingRemindersChannel => 'Pengingat membaca';

  @override
  String get readingSubmitted => 'Pembacaan meteran dikirimkan';

  @override
  String get readingTime => 'Waktu membaca';

  @override
  String get readingUpdate => 'Perbarui bacaan';

  @override
  String get readingWithFactor => 'Pembacaan penghitung dengan faktor';

  @override
  String get reallyDeleteActivity => 'Benarkah menghapus aktivitas ini?';

  @override
  String get reallyDeleteContract => 'Benarkah menghapus kontrak ini?';

  @override
  String get reallyDeleteCounter => 'Apakah Anda yakin ingin menghapus penghitung?';

  @override
  String get reallyDeleteCounterLink => 'Apakah Anda yakin ingin menghapus hubungan antara penghitung?';

  @override
  String get reallyDeleteDetail => 'Benarkah menghapus detail ini?';

  @override
  String get reallyDeleteObject => 'Apakah Anda yakin ingin menghapus objek tersebut?';

  @override
  String get reallyDeletePhoto => 'Apakah Anda yakin ingin menghapus foto pembacaan meteran?';

  @override
  String get reallyDeleteValue => 'Apakah Anda benar-benar ingin menghapus nilai ini?';

  @override
  String get refund => 'Pengembalian dana';

  @override
  String get reminderPeriod => 'Periode pengingat';

  @override
  String get reminderTime => 'Waktu pengingat';

  @override
  String get reminderWeekdayExplanation => 'Ada pengingat untuk membaca tidak lebih dari sekali sehari.';

  @override
  String get reminderWeekdayExplanationSeasonal =>
      'Untuk meteran dengan konsumsi musiman, pengingat hanya dikirim pada bulan-bulan dengan konsumsi (hanya berfungsi jika nilai tahun terakhir diberikan).';

  @override
  String get requestAccess => 'Meminta akses';

  @override
  String get reset => 'Atur ulang';

  @override
  String get resetActivities => 'Mengatur ulang semua aktivitas';

  @override
  String get residualConsumptionEstimated => 'Perkiraan konsumsi sisa';

  @override
  String get residualGenerationEstimated => 'Perkiraan pembangkitan sisa';

  @override
  String get restoreDeletedCounter => 'Apakah Anda ingin mengembalikan meteran yang telah dihapus ini?';

  @override
  String get room => 'Kamar';

  @override
  String get roomBathroom => 'Kamar mandi';

  @override
  String get roomBedroom => 'Kamar Tidur';

  @override
  String get roomChildrenRoom => 'Kamar anak-anak';

  @override
  String get roomDeleteConfirm => 'Hapus kamar?';

  @override
  String get roomDiningRoom => 'Ruang makan';

  @override
  String get roomGarden => 'Taman';

  @override
  String get roomKitchen => 'Dapur';

  @override
  String get roomLivingRoom => 'Ruang Tamu';

  @override
  String get roomName => 'Nama kamar';

  @override
  String get roomNameHint => 'Menetapkan nama ruangan secara opsional';

  @override
  String roomNamePart(String roomName) {
    return 'di $roomName';
  }

  @override
  String get roomNew => 'Kamar baru';

  @override
  String get roomOffice => 'Kantor';

  @override
  String get roomOther => 'Lainnya';

  @override
  String get roomStoreRoom => 'Ruang penyimpanan';

  @override
  String get roomType => 'Tipe kamar';

  @override
  String get roomWc => 'WC';

  @override
  String get rooms => 'Kamar';

  @override
  String get scanQrCode => 'Pindai kode qr aktivasi';

  @override
  String get seasonalCounter => 'Penghitung musiman';

  @override
  String get seasonalElectricityCounter => 'Penghitung listrik musiman';

  @override
  String selectedActivity(Object activityName) {
    return 'Aktivitas yang dipilih \"\$$activityName\"';
  }

  @override
  String get selectedAtAppStart => 'Objek paling atas dipilih pada saat memulai aplikasi';

  @override
  String get settingColor => 'Warna';

  @override
  String get settingCounterTypeColor => 'Warna untuk jenis penghitung ini';

  @override
  String get settingCounterTypeColorAdvanced => 'Pemilih warna untuk para ahli';

  @override
  String get settingCounterTypeColorDescription =>
      'Jika Anda tidak menyukai warna default untuk tipe penghitung ini, Anda dapat menetapkan warna yang berbeda.';

  @override
  String get settingEAuto => 'Mobil listrik';

  @override
  String get settingHouseholdSize => 'Ukuran rumah tangga';

  @override
  String get settingHouseholdSizeDescription => 'Jumlah orang dalam rumah tangga Anda.';

  @override
  String get settingLanguageMode => 'Bahasa';

  @override
  String get settingLivingArea => 'Ruang tamu';

  @override
  String get settingObjectLocation => 'Detail objek';

  @override
  String get settingObjectLocationExplanation =>
      'Memasukkan lokasi membantu menyesuaikan wawasan dan layanan ke area Anda.';

  @override
  String get settingObjectLocationTitle => 'Di manakah lokasi objek Anda?';

  @override
  String get settingObjectType => 'Jenis objek';

  @override
  String get settingObjectTypeFlat => 'Apartemen';

  @override
  String get settingObjectTypeHouse => 'Rumah';

  @override
  String get settingShowCounterReadingsChart => 'Menampilkan grafik pembacaan meteran';

  @override
  String get settingShowHeatmap => 'Tampilkan peta panas';

  @override
  String get settingShowPreliminaryCurve => 'Tampilkan kurva awal';

  @override
  String get settingUiColorPalette => 'Palet warna';

  @override
  String get settingUiMode => 'Antarmuka pengguna';

  @override
  String get settingUiModeDark => 'Gelap';

  @override
  String get settingUiModeDarkOrLight => 'Antarmuka pengguna gelap/terang';

  @override
  String get settingUiModeLight => 'Cahaya';

  @override
  String get settingUiModeOsDefault => 'Sistem';

  @override
  String get settingWaterHeater => 'Pemanas air';

  @override
  String get settingYearlyReset => 'Pengaturan ulang tahunan';

  @override
  String get settingYearlyResetOn => 'pada';

  @override
  String get settings => 'Pengaturan';

  @override
  String get settingsExternalServices => 'Layanan eksternal';

  @override
  String get settingsShowStromGedacht => 'Haruskah tips dari StromGedacht tentang jaringan listrik ditampilkan?';

  @override
  String get settingsShowTabNewsDetailed => 'Haruskah tab Berita/Tips terlihat?';

  @override
  String get showAllYears => 'Tampilkan semua tahun';

  @override
  String get signInWithApple => 'Masuk dengan Apple';

  @override
  String get signInWithGithub => 'Masuk dengan GitHub';

  @override
  String get signInWithGoogle => 'Masuk dengan Google';

  @override
  String get signInWithSocialAccount =>
      'Akun sosial mana yang ingin Anda gunakan untuk membuat atau masuk ke akun EHW+ Anda?';

  @override
  String get sinceInitialReading => 'Sejak pembacaan awal';

  @override
  String get smartMeterCountersTitle => 'Pengukur air radio';

  @override
  String get smartMeterErrorNoData => 'Sayangnya, tidak ada data yang dapat ditampilkan oleh aplikasi ini.';

  @override
  String get smartMeterMisconfiguredWidgetCardButton => 'Mengatur pengukur pintar';

  @override
  String get smartMeterMisconfiguredWidgetCardTitle => 'Harap atur smart meter Anda dengan benar.';

  @override
  String get smartMeterObtainDataAutomatically => 'Mendapatkan data secara otomatis';

  @override
  String get smartMeterProviderTibber => 'Tibber';

  @override
  String get smartMeterProviderUndefined => 'Tidak diatur';

  @override
  String get smartMeterProviderWtl => 'Wasserverband Tecklenburger Land';

  @override
  String get smartMeterProviderWwgl => 'Wasserwerk Gerauer Land';

  @override
  String get smartMeterReadingsSyncFailed => 'Sinkronisasi smart meter gagal';

  @override
  String get smartMeterServiceProvider => 'Penyedia Layanan';

  @override
  String get smartMeterSettingsScreenSyncButton => 'Menyinkronkan data konsumsi';

  @override
  String get smartMeterSettingsScreenSyncingDialogError => 'Kesalahan';

  @override
  String smartMeterSettingsScreenSyncingDialogErrorMessage(Object errorMessage) {
    return 'Terjadi kesalahan berikut saat sinkronisasi: $errorMessage';
  }

  @override
  String get smartMeterSettingsScreenSyncingDialogErrorOkButton => 'Baiklah.';

  @override
  String get smartMeterSettingsScreenSyncingDialogHeader => 'Sinkronisasi sedang berlangsung';

  @override
  String smartMeterSettingsScreenSyncingDialogProgress(Object progressInPercent) {
    return 'Kemajuan: $progressInPercent %';
  }

  @override
  String get smartMeterTabConsumptions => 'Konsumsi';

  @override
  String get smartMeterTabProductions => 'Produksi';

  @override
  String smartmeterInfocodeBannerText(String infocode, String smartmeterId) {
    return 'Smartmeter $smartmeterId menerima kode informasi: $infocode';
  }

  @override
  String smartmeterInfocodeBannerTextInfocodeFrost(Object smartmeterId) {
    return 'Suhu meteran air Anda $smartmeterId telah turun di bawah 3°C. Ada risiko terjadinya embun beku! Lindungi meteran dan pipa-pipa tersebut dengan isolasi atau hangatkan area tersebut untuk mencegah kerusakan.';
  }

  @override
  String smartmeterInfocodeBannerTextInfocodeLeckage(Object smartmeterId) {
    return 'Meteran air Anda $smartmeterId telah mendeteksi aliran air yang terus-menerus. Hal ini mungkin menandakan adanya kebocoran. Mohon periksa instalasi air di rumah Anda untuk memastikan tidak ada kebocoran. Toilet dan keran yang menetes adalah penyebab yang umum.';
  }

  @override
  String smartmeterInfocodeBannerTextInfocodeRohrbruch(Object smartmeterId) {
    return 'Meteran air Anda $smartmeterId telah mendeteksi konsumsi air yang sangat tinggi, yang mungkin menandakan adanya pipa yang pecah. Mohon periksa instalasi air di rumah Anda untuk memastikan tidak ada kebocoran atau kerusakan yang parah. Peringatan ini juga dapat muncul jika Anda telah menggunakan air dalam jumlah besar, misalnya untuk mengisi kolam renang.';
  }

  @override
  String smartmeterInfocodeBannerTextInfocodeRohrbruchPoolVorhanden(Object smartmeterId) {
    return 'Meteran air Anda $smartmeterId telah mendeteksi konsumsi air yang sangat tinggi, yang mungkin menandakan adanya pipa yang pecah atau pengisian kolam renang. Mohon periksa instalasi air di rumah Anda untuk memastikan tidak ada kebocoran atau kerusakan yang parah.';
  }

  @override
  String get soFar => 'sejauh ini';

  @override
  String get social => 'Media Sosial';

  @override
  String get socialEmail => 'Email';

  @override
  String get socialFacebook => 'Facebook';

  @override
  String get socialInstagram => 'Instagram';

  @override
  String get socialLinkedIn => 'LinkedIn';

  @override
  String get socialTwitter => 'X';

  @override
  String get socialYouTube => 'YouTube';

  @override
  String get solarThermalCollector => 'Kolektor Panas Surya';

  @override
  String get sortActivities => 'Memodifikasi urutan kegiatan';

  @override
  String get source => 'Sumber:';

  @override
  String get startOfTheWeek => 'Awal minggu';

  @override
  String get stove => 'Kompor';

  @override
  String get stromGedachtAgreement =>
      'Saya setuju bahwa kode pos saya (jika tersedia) akan dikirimkan ke TransnetBW untuk mendapatkan pemberitahuan StromGedacht.';

  @override
  String get subscribeToSmartMeterInfocodeEvents => 'Saya ingin diberitahu tentang konsumsi yang tidak terduga';

  @override
  String get supplementaryPayment => 'Pembayaran tambahan';

  @override
  String get support => 'Dukungan / Umpan Balik';

  @override
  String get supportBug => 'Bug';

  @override
  String get supportGivePraise => 'Berikan pujian';

  @override
  String get supportGivePraiseLong => 'Apakah Anda menyukai aplikasi ini? Terima kasih! Sebarkan berita ini!';

  @override
  String supportGivePraiseRating(String store) {
    return 'Berikan penilaian untuk aplikasi ini di $store.';
  }

  @override
  String get supportGivePraiseRecommendation =>
      'Rekomendasikan aplikasi ini kepada teman dan keluarga. Terima kasih atas rekomendasi Anda!';

  @override
  String get supportMakeSuggestion => 'Sarankan sesuatu';

  @override
  String get supportMakeSuggestionLong => 'Aplikasi ini hidup dari saran pengguna. Apakah Anda punya saran?';

  @override
  String get supportQuestion => 'Ajukan pertanyaan';

  @override
  String get supportQuestionBox => 'Apa yang bisa saya bantu?';

  @override
  String get supportQuestionLong => 'Bagaimana cara kerjanya? Apakah mungkin sama sekali? Inilah jawabannya.';

  @override
  String get supportQuestionNotFound => 'Pertanyaan Anda tidak terjawab? Saya akan dengan senang hati membantu.';

  @override
  String get supportRecommend =>
      'Saya menggunakan aplikasi pembacaan meteran EHW+ untuk melacak konsumsi energi saya dan biaya yang terkait. Mungkin itu juga bisa menjadi sesuatu untuk Anda?\n\nInfo lebih lanjut di https://www.ehwplus.com';

  @override
  String get supportReportBug => 'Melaporkan bug melalui email';

  @override
  String get supportReportBugAffectedPages => 'Pada halaman mana kesalahan terjadi? (jika ada)';

  @override
  String get supportReportBugLong =>
      'Aplikasi yang bagus! Namun tentu saja, ada saja yang tidak beres. Jika Anda melaporkan bug, Anda membuat aplikasi menjadi lebih baik.';

  @override
  String get supportReportBugScreenshotsPlease =>
      'Lampirkan tangkapan layar melalui email, sebaiknya dengan penandaan kesalahan.';

  @override
  String get supportReportBugTextIs =>
      'Jelaskan secara singkat perilaku yang salah saat ini, yaitu kesalahan itu sendiri.';

  @override
  String get supportReportBugTextShould =>
      'Jelaskan secara singkat perilaku yang diinginkan, yaitu bagaimana seharusnya perilaku tersebut.';

  @override
  String get swimmingPool => 'Kolam renang';

  @override
  String get sync => 'Sinkronisasi';

  @override
  String get syncAutomaticTitle => 'Data lokal dapat ditimpa';

  @override
  String get syncDriveDataUsage =>
      'Jika Anda memberikan akses EHW+ ke Google Drive, aplikasi ini akan memiliki akses baca dan tulis ke file yang dibuat oleh aplikasi itu sendiri. Sayangnya, file yang dibuat oleh orang lain melalui aplikasi ini tidak dapat dilihat oleh aplikasi ini, yang berarti berbagi data di antara beberapa akun melalui Google Drive tidak dapat dilakukan.';

  @override
  String get syncDriveLoggedIn =>
      'Data Anda secara otomatis disinkronkan di beberapa perangkat. Akun Google berikut ini digunakan:';

  @override
  String get syncDriveLoggedInNoAuto =>
      'Data Anda secara otomatis diunggah ke Google Drive setelah dilakukan perubahan. Data yang lebih baru dari cloud hanya menimpa data lokal saat Anda mengeklik objek. Akun Google berikut ini digunakan:';

  @override
  String get syncObjectIsLocked => 'Data objek sedang diperbarui dan tidak dapat diedit selama waktu ini.';

  @override
  String get syncShareWithOthersNotInWeb => 'Pemberian akses saat ini hanya dapat dilakukan melalui aplikasi.';

  @override
  String get syncShareWithOthersSubtitle =>
      'Jika Anda ingin memasukkan pembacaan meteran bersama dengan pengguna Google lainnya, EHW+ harus diberikan akses penuh ke Google Drive.';

  @override
  String get syncShareWithOthersTitle => 'Berbagi dengan orang lain?';

  @override
  String get syncStatusFailedLong => 'Gagal menyinkronkan, pengeditan merupakan risiko Anda sendiri';

  @override
  String get syncStatusFailedLongNoAutoSync => 'Gagal menyinkronkan, pengeditan merupakan risiko Anda sendiri';

  @override
  String get syncStatusSyncRemoteHasLatest => 'File di awan lebih mutakhir daripada file lokal';

  @override
  String get syncWithGoogleDriveDescription =>
      'Karena akan sangat disayangkan jika pembacaan meteran hilang, sinkronkan objek Anda dengan Google Drive sekarang juga!';

  @override
  String get tabCounters => 'Meter';

  @override
  String get tabNews => 'Tips/Berita';

  @override
  String get tabObject => 'Objek';

  @override
  String get tabStatistics => 'Statistik';

  @override
  String get taxRate => 'Tarif pajak';

  @override
  String get teaserPurchaseRenewableEnergies => 'Penghitung energi terbarukan membutuhkan Premium.';

  @override
  String get teaserPurchaseVirtualCounter => 'Tambahkan penghitung virtual dengan Premium.';

  @override
  String get teaserPurchaseWaterExtractionCounter => 'Buka penghitung ekstraksi air dengan Premium.';

  @override
  String termsOfUsageBlock1(String contact) {
    return 'Hak untuk mengajukan keberatan';
  }

  @override
  String get termsOfUsageBlock1Title => 'Ketentuan umum penggunaan untuk penggunaan aplikasi';

  @override
  String get termsOfUsageBlock2 =>
      'Aplikasi dan fungsinya tidak boleh digunakan dengan cara yang tidak pantas. Harap gunakan aplikasi hanya dalam lingkup yang diizinkan secara hukum dan sesuai dengan ketentuan penggunaan kami. Jika terjadi pelanggaran terhadap hukum Jerman yang berlaku atau ketentuan penggunaan kami, penyedia berhak untuk mengecualikan Anda dari penggunaan aplikasi.';

  @override
  String get termsOfUsageBlock2Title => 'Informasi umum tentang penggunaan';

  @override
  String termsOfUsageBlock2a(String privacyBlock3Title) {
    return 'Data penggunaan yang dianonimkan\nKami menggunakan alat analisis internal kami untuk terus meningkatkan aplikasi ini. Hanya data yang telah dianonimkan yang dikirimkan. Data tersebut tidak akan diteruskan kepada pihak ketiga. Untuk informasi lebih lanjut, buka Pengaturan &gt; Privasi &gt; $privacyBlock3Title';
  }

  @override
  String termsOfUsageBlock2b(String privacyBlock3Title) {
    return 'Laporan kesalahan\\nSentry (yang dihosting sendiri) digunakan untuk terus meningkatkan aplikasi ini. Laporan kesalahan tidak diproses maupun dibagikan kepada pihak ketiga. Untuk informasi lebih lanjut, buka Pengaturan &gt; Privasi &gt; $privacyBlock3Title';
  }

  @override
  String termsOfUsageBlock2c(String privacyBlock3Title) {
    return 'Informasi pribadi\nJika Anda menggunakan Google Drive Sync, EHW+ tetap tidak memiliki akses ke data yang telah Anda masukkan. Untuk informasi lebih lanjut, buka Pengaturan &gt; Privasi &gt; $privacyBlock3Title.';
  }

  @override
  String get termsOfUsageBlock3 =>
      'Penyedia tidak menjamin ketersediaan, keandalan, fungsionalitas, atau kesesuaian aplikasi untuk tujuan Anda. Tanggung jawab dikecualikan kecuali jika diwajibkan oleh Undang-Undang Kewajiban Produk, karena kesengajaan, kelalaian berat, cedera terhadap nyawa, anggota tubuh atau kesehatan, asumsi jaminan kualitas, penyembunyian cacat secara curang, atau pelanggaran kewajiban kontrak yang penting. Kewajiban kontraktual esensial adalah kewajiban-kewajiban yang pemenuhannya sangat penting untuk pelaksanaan kontrak yang tepat dan yang kepatuhannya dapat diandalkan oleh para pihak yang berkontrak. Ganti rugi atas kerusakan akibat pelanggaran kewajiban kontraktual esensial terbatas pada kerusakan yang dapat diperkirakan yang biasa terjadi pada jenis kontrak ini, kecuali jika terdapat kesengajaan atau kelalaian berat.';

  @override
  String get termsOfUsageBlock3Title => 'Kewajiban';

  @override
  String get termsOfUsageBlock4 =>
      'Penyedia tidak menjamin keakuratan hasil perhitungan. Pengguna diharuskan untuk memperbarui harga yang tersimpan dalam aplikasi (harga dasar, harga konsumsi, dll.) dengan hati-hati dan atas tanggung jawab sendiri untuk memastikan bahwa faktur yang dihasilkan sesuai dengan jumlah yang sebenarnya.';

  @override
  String get termsOfUsageBlock4Title => 'Tanggung jawab pengguna';

  @override
  String get termsOfUsageTitle => 'Ketentuan umum penggunaan untuk penggunaan aplikasi';

  @override
  String get termsOfUsageTitleShort => 'Ketentuan penggunaan';

  @override
  String get tibberAccessToken => 'Token Akses';

  @override
  String get tibberActionSaveAuthorizationSettings => 'Menyimpan pengaturan otorisasi';

  @override
  String get tibberBasicAuth => 'Auth Dasar';

  @override
  String get tibberBasicAuthEnterPassword => 'Silakan masukkan kata sandi';

  @override
  String get tibberBasicAuthEnterUsername => 'Silakan masukkan nama pengguna';

  @override
  String get tibberBasicAuthPassword => 'Kata sandi';

  @override
  String get tibberBasicAuthUsername => 'Nama pengguna';

  @override
  String get tibberConsentScreenBenefit1Description =>
      'Lacak konsumsi Anda secara real time dan temukan pemboros energi yang tersembunyi.';

  @override
  String get tibberConsentScreenBenefit1Title => 'Lihat Konsumsi Listrik Anda';

  @override
  String get tibberConsentScreenConfigureLaterButton => 'Atur Nanti';

  @override
  String get tibberConsentScreenConfigureNowButton => 'Siapkan Tibber Pulse sekarang';

  @override
  String get tibberConsentScreenDescription =>
      'Apakah Anda pelanggan Tibber atau berencana untuk menjadi pelanggan? Kami sekarang mendukung Pulse untuk pemantauan energi yang lebih baik. Harap diperhatikan bahwa data historis dari Pulse sayangnya hanya tersedia untuk pelanggan dengan kontrak Tibber yang aktif.';

  @override
  String get tibberConsentScreenGoetheStudyBenefit1Description =>
      'Konsumsi per jam Anda mulai tanggal 1 Maret akan dianonimkan dan disediakan untuk penelitian Goethe.';

  @override
  String get tibberConsentScreenGoetheStudyBenefit1Title => 'Apakah Anda ingin berpartisipasi dalam Studi Goethe?';

  @override
  String get tibberConsentScreenGoetheStudyParticipationConsentToggle =>
      'Ya, saya ingin berpartisipasi dalam Studi Goethe';

  @override
  String get tibberConsentScreenGoetheStudySectionHeader => 'Partisipasi dalam Proyek penelitian';

  @override
  String get tibberConsentScreenHeader => 'Fitur Baru: Data Konsumsi dari Tibber Pulse';

  @override
  String get tibberConsentScreenStoreLink => 'Kunjungi Tibber Store';

  @override
  String tibberConsumptionEntryTotalCost(Object totalCost) {
    return 'Total biaya: $totalCost';
  }

  @override
  String tibberConsumptionEntryTotalProfit(Object totalProfit) {
    return 'Total keuntungan: $totalProfit';
  }

  @override
  String tibberConsumptionEntryViewTimeSpan24Hours(Object date, Object startTime) {
    return '24 jam dari $startTime di $date';
  }

  @override
  String tibberConsumptionEntryViewTimeSpanDefault(Object endDate, Object startTime) {
    return 'Dari: $startTime ke $endDate';
  }

  @override
  String tibberConsumptionEntryViewTimeSpanMonth(Object month) {
    return '$month';
  }

  @override
  String tibberConsumptionEntryViewTimeSpanMonthStartingAt(Object month) {
    return 'Satu bulan mulai sa$month';
  }

  @override
  String tibberConsumptionEntryViewTimeSpanOneHour(Object date, Object startTime) {
    return 'Satu jam dari $startTime di $date';
  }

  @override
  String tibberConsumptionEntryViewTimeSpanYear(Object year) {
    return 'Tahun $year';
  }

  @override
  String tibberConsumptionEntryViewTimeSpanYearStartingAt(Object year) {
    return 'Satu tahun terhitung sejak $year';
  }

  @override
  String get tibberEnterAccessToken => 'Silakan masukkan token akses';

  @override
  String get tibberErrorAccessTokenInvalid => 'Sepertinya token akses tidak valid';

  @override
  String get tibberErrorConnectivityShowCacheInstead =>
      'Tidak dapat mengambil data konsumsi terbaru. Sebagai gantinya, menampilkan nilai cache.';

  @override
  String get tibberErrorNoHomes => 'Tidak ada rumah yang terkait dengan akun ini';

  @override
  String get tibberErrorNoSubscription =>
      'Untuk mendapatkan akses penuh ke data historis melalui API, Anda memerlukan kontrak listrik Tibber yang aktif untuk rumah yang dipilih.';

  @override
  String get tibberErrorRateLimit =>
      'Batas kecepatan API Tibber terlampaui. Mohon tunggu setidaknya 5 menit sebelum mencoba kembali.';

  @override
  String get tibberErrorSmartMeterMisconfigured => 'Smart meter Anda tampaknya salah konfigurasi.';

  @override
  String tibberErrorUndefined(Object error) {
    return 'Terjadi kesalahan yang tidak terduga: $error';
  }

  @override
  String tibberHomeSelectorHomeId(Object homeId) {
    return 'ID Rumah: $homeId';
  }

  @override
  String get tibberHomeSelectorLabel => 'Beranda';

  @override
  String get tibberLiveAndHistoricalMeasurementsWidgetNotSupported =>
      'Rumah ini tidak mendukung pengukuran langsung atau data konsumsi historis. Silakan pilih rumah lain.';

  @override
  String get tibberLiveMeasurementCounterCardViewFooter => 'Pengukuran Langsung';

  @override
  String get tibberLiveMeasurementWidgetAccumulatedConsumption => 'Total Konsumsi (sejak tengah malam)';

  @override
  String get tibberLiveMeasurementWidgetAccumulatedConsumptionLastHour => 'Konsumsi (satu jam terakhir)';

  @override
  String get tibberLiveMeasurementWidgetAccumulatedCost => 'Akumulasi Biaya';

  @override
  String get tibberLiveMeasurementWidgetAccumulatedProduction => 'Total Produksi (sejak tengah malam)';

  @override
  String get tibberLiveMeasurementWidgetAccumulatedProductionLastHour => 'Produksi (satu jam terakhir)';

  @override
  String get tibberLiveMeasurementWidgetAccumulatedReward => 'Akumulasi Hadiah';

  @override
  String get tibberLiveMeasurementWidgetAveragePower => 'Daya rata-rata';

  @override
  String get tibberLiveMeasurementWidgetCurrentL1 => 'Saat ini (L1)';

  @override
  String get tibberLiveMeasurementWidgetCurrentL2 => 'Saat ini (L2)';

  @override
  String get tibberLiveMeasurementWidgetCurrentL3 => 'Saat ini (L3)';

  @override
  String get tibberLiveMeasurementWidgetLastMeterConsumption => 'Pembacaan Meteran (Konsumsi)';

  @override
  String get tibberLiveMeasurementWidgetLastMeterProduction => 'Pembacaan Meteran (Produksi)';

  @override
  String get tibberLiveMeasurementWidgetMaxPower => 'Daya Maks';

  @override
  String get tibberLiveMeasurementWidgetMinPower => 'Daya Min';

  @override
  String get tibberLiveMeasurementWidgetPower => 'Daya';

  @override
  String get tibberLiveMeasurementWidgetPowerFactor => 'Faktor Daya';

  @override
  String get tibberLiveMeasurementWidgetPowerProduction => 'Produksi Daya';

  @override
  String get tibberLiveMeasurementWidgetTimestamp => 'Cap waktu';

  @override
  String tibberLiveMeasurementWidgetTitle(Object time) {
    return 'Konsumsi/produksi saat ini di $time';
  }

  @override
  String get tibberLiveMeasurementWidgetUnitA => 'A';

  @override
  String get tibberLiveMeasurementWidgetUnitV => 'V';

  @override
  String get tibberLiveMeasurementWidgetUnitW => 'W';

  @override
  String get tibberLiveMeasurementWidgetVoltagePhase1 => 'Tegangan (Fase 1)';

  @override
  String get tibberLiveMeasurementWidgetVoltagePhase2 => 'Tegangan (Fase 2)';

  @override
  String get tibberLiveMeasurementWidgetVoltagePhase3 => 'Tegangan (Fase 3)';

  @override
  String get tibberLiveMeasurementsWidgetConnecting => 'Menghubungkan ke Tibber Pulse...';

  @override
  String get tibberLiveMeasurementsWidgetError =>
      'Terjadi kesalahan saat menghubungkan ke Tibber Pulse. Periksa token akses dan koneksi internet Anda.';

  @override
  String get tibberLiveMeasurementsWidgetNotSupported => 'Pengukuran langsung tidak didukung untuk rumah ini.';

  @override
  String get tibberMessageAccessTokenUpdated => 'Berhasil memperbarui token akses';

  @override
  String get tibberStatusWidgetTibberSubscriptionStatus => 'Status Langganan Tibber';

  @override
  String get tibberStatusWidgetTitle => 'Manajemen Cache';

  @override
  String get tibberSubscriptionStatusActive => 'aktif';

  @override
  String get tibberSubscriptionStatusInactive => 'tidak aktif';

  @override
  String get tibberSubscriptionStatusLoading => 'Loading...';

  @override
  String get tibberWhereIsMyAccessToken => 'Di mana saya dapat menemukan \"token akses\" saya?';

  @override
  String get timeBefore => 'Sebelum';

  @override
  String get timeCalendarWeekAbbreviation => 'wk';

  @override
  String get timeDayAgo => 'satu hari yang lalu';

  @override
  String get timeDays => 'hari';

  @override
  String timeDaysAgo(int days) {
    return '$days beberapa hari yang lalu';
  }

  @override
  String get timeDaysWithin => 'hari';

  @override
  String get timeForFirstYear => 'untuk tahun pertama';

  @override
  String get timeFriday => 'Jumat';

  @override
  String timeFromDate(String date) {
    return 'Dari $date';
  }

  @override
  String get timeFromUndefined => 'Tidak terdefinisi';

  @override
  String get timeHours => 'jam';

  @override
  String timeHoursAgo(int hours) {
    return '$hours beberapa jam yang lalu';
  }

  @override
  String get timeInFuture => 'Di masa depan';

  @override
  String get timeJustNow => 'baru saja';

  @override
  String get timeLastUpdated => 'terakhir diperbarui';

  @override
  String get timeMinutes => 'menit';

  @override
  String timeMinutesAgo(int minutes) {
    return '$minutes beberapa menit yang lalu';
  }

  @override
  String get timeMonday => 'Senin';

  @override
  String get timeMonth => 'bulan';

  @override
  String get timeMonths => 'bulan';

  @override
  String timeMonthsAgo(int months) {
    return '$months beberapa bulan yang lalu';
  }

  @override
  String get timeMonthsWithin => 'bulan';

  @override
  String get timePeriodYearStart => 'tahunan';

  @override
  String get timeReminderAtEnd => 'Pada akhirnya';

  @override
  String get timeReminderAtStart => 'Saat memulai';

  @override
  String get timeRightNow => 'Sekarang';

  @override
  String get timeSaturday => 'Sabtu';

  @override
  String get timeSeconds => 'detik';

  @override
  String get timeSunday => 'Minggu';

  @override
  String get timeThursday => 'Kamis';

  @override
  String get timeToday => 'hari ini';

  @override
  String get timeTuesday => 'Selasa';

  @override
  String timeUntilDate(String date) {
    return 'Sampai $date';
  }

  @override
  String get timeUntilUnlimited => 'Tidak terbatas';

  @override
  String get timeWednesday => 'Rabu';

  @override
  String get timeWeek => 'minggu';

  @override
  String get timeWeeks => 'minggu';

  @override
  String timeWithin(String duration) {
    return 'Di dalam buku *$duration*';
  }

  @override
  String get timeYesterday => 'kemarin';

  @override
  String get unitCm => 'cm';

  @override
  String get unitCmLong => 'cm';

  @override
  String get unitCmShort => 'cm';

  @override
  String unitCubicMetersLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Meter kubik (m³)',
      one: 'Meter kubik (m³)',
    );
    return '$_temp0';
  }

  @override
  String get unitCubicMetersShort => 'm³';

  @override
  String unitGJLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Gigajoule (GJ)', one: 'Gigajoule (GJ)');
    return '$_temp0';
  }

  @override
  String get unitGJShort => 'GJ';

  @override
  String get unitGigaByteLong => 'GB';

  @override
  String get unitGigaByteShort => 'GB';

  @override
  String unitHoursLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Jam (jam)', one: 'Jam');
    return '$_temp0';
  }

  @override
  String get unitHoursShort => 'h';

  @override
  String unitKWhLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kilowatt jam (kWh)',
      one: 'Kilowatt jam (kWh)',
    );
    return '$_temp0';
  }

  @override
  String get unitKWhShort => 'kWh';

  @override
  String unitKgLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Kilogram (kg)', one: 'Kilogram (kg)');
    return '$_temp0';
  }

  @override
  String get unitKgShort => 'kg';

  @override
  String get unitLiters => 'liter';

  @override
  String unitLitersLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'Liter (ℓ)', one: 'Liter (ℓ)');
    return '$_temp0';
  }

  @override
  String get unitLitersShort => 'ℓ';

  @override
  String unitMWhLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Megawatt jam (MWh)',
      one: 'Megawatt jam (MWh)',
    );
    return '$_temp0';
  }

  @override
  String get unitMWhShort => 'MWh';

  @override
  String get unitMegaByteLong => 'MB';

  @override
  String get unitMegaByteShort => 'MB';

  @override
  String get unitNone => 'tidak ada';

  @override
  String unitNoneFormatted(num count) {
    String _temp0 = intl.Intl.pluralLogic(count, locale: localeName, other: 'unit', one: 'unit');
    return '$_temp0';
  }

  @override
  String get unitPercentLong => 'Persen (%)';

  @override
  String get unitPercentShort => '%';

  @override
  String get unitSquareMeters => 'meter persegi';

  @override
  String unitSquareMetersLong(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Meter persegi (m²)',
      one: 'Meter persegi (m²)',
    );
    return '$_temp0';
  }

  @override
  String get unitSquareMetersShort => 'm²';

  @override
  String updateAvailable(String newVersion, String oldVersion) {
    return 'Aplikasi versi $oldVersion belum diperbarui. Anda dapat memperbarui ke versi $newVersion.';
  }

  @override
  String get updateObjectName => 'Mengubah nama objek';

  @override
  String get upgradeDescription =>
      'Aplikasi ini dapat melakukan lebih banyak hal. Ikhtisar biaya yang lebih baik, lebih banyak statistik, ekspor Excel, lebih banyak penghitung, ...';

  @override
  String get useDismissibleSettings => 'Menghapus dengan gerakan mengusap';

  @override
  String get useDismissibleSettingsDetailed =>
      'Penghitung, kontrak, dll. dapat dihapus dengan gerakan mengusap ke samping';

  @override
  String get usedForPaymentsRepayments => 'Harga dasar dan bonus';

  @override
  String valueLess(String value) {
    return '$value kurang';
  }

  @override
  String valueMore(String value) {
    return '$value lebih';
  }

  @override
  String versionIsUpToDate(String version) {
    return 'Versi aplikasi terbaru yang telah dirilis untuk semua pengguna adalah $version.';
  }

  @override
  String get virtualCounter => 'Pengukur virtual';

  @override
  String get virtualCounterMasterCounter => 'Pengukur utama';

  @override
  String get virtualCounterMasterCounterAttach => 'Pilih pengukur utama';

  @override
  String get virtualCounterMasterCounterDescription =>
      'Info: Meteran utama menjadi dasar perhitungan meteran virtual, misalnya meteran listrik utama atau meteran air utama.';

  @override
  String get virtualCounterMetersToBeAdded => 'Meter yang akan ditambahkan';

  @override
  String get virtualCounterMetersToBeAddedDescription =>
      'Pembacaan meter mana yang harus ditambahkan ke meteran utama, misalnya meteran pembangkit listrik.';

  @override
  String get virtualCounterMetersToBeSubtracted => 'Meter yang akan dikurangi';

  @override
  String get virtualCounterMetersToBeSubtractedDescription =>
      'Pembacaan meter mana yang harus dikurangi dari meteran utama, misalnya, \"meteran pompa panas\", \"meteran listrik\".';

  @override
  String get virtualCounterNotConfigured =>
      'Silakan periksa pengaturan meteran virtual Anda. Tidak ada yang dapat dihitung.';

  @override
  String get wallbox => 'Kotak dinding';

  @override
  String get warmWater => 'Air hangat';

  @override
  String get warning => 'Peringatan';

  @override
  String get warningCounterReplacementDetected =>
      'Nilai yang baru lebih rendah dari pembacaan meter sebelumnya. Apakah meteran sudah diganti?';

  @override
  String warningNextReminderText(String date) {
    return 'Pengingat berikutnya dijadwalkan pada $date.';
  }

  @override
  String warningOutdatedSinceText(String date) {
    return 'sejak $date';
  }

  @override
  String warningReadingBiggerThanOldValue(String isOilCounter) {
    String _temp0 = intl.Intl.selectLogic(isOilCounter, {'true': ' Sudahkah Anda mengisi ulang tangki?', 'other': ''});
    return 'Nilai yang baru lebih tinggi daripada pembacaan meter sebelumnya.$_temp0';
  }

  @override
  String get warningReadingBiggerThanOldValueOilVolume =>
      'Nilai yang baru lebih tinggi dari pembacaan meter sebelumnya. Sudahkah Anda mengisi ulang tangki?';

  @override
  String warningReadingOutdatedForYearlyResetCounter(String deviceTypeName, String lastYear, String roomNamePart) {
    return 'Pembacaan meter akhir untuk tahun $lastYear untuk $deviceTypeName $roomNamePart belum tercatat. Data ini diperlukan untuk menghitung konsumsi tahunan secara akurat.';
  }

  @override
  String warningReadingOutdatedFrequency(String deviceTypeName, String outdatedSinceText, String whenNotifyDateText) {
    return 'Pembacaan meteran terbaru untuk Asosiasi Pengguna Listrik ($deviceTypeName) sudah tidak berlaku lagi $outdatedSinceText. $whenNotifyDateText';
  }

  @override
  String get warningReadingSeemsTooBig => 'Nilai baru ini cukup tinggi. Apakah pembacaan diambil dengan benar?';

  @override
  String get warningReadingSeemsTooSmall => 'Nilai yang baru cukup rendah. Apakah sudah dibaca dengan benar?';

  @override
  String get warningReadingSmallerThanOldValue2 =>
      'Nilai yang baru lebih rendah dari pembacaan meter sebelumnya. Apakah pembacaan dilakukan dengan benar?';

  @override
  String get warningYearlyReset => 'Pembacaan nol di awal tahun';

  @override
  String get wasteWaterPriceEnabled =>
      'Biaya air bersih dan air limbah ditampilkan secara terpisah (relevan untuk meteran pengurangan)';

  @override
  String get waterConsumption => 'Konsumsi air';

  @override
  String get waterExtractionMinimumLevelLower =>
      'Tidak ada pengurangan yang diterapkan karena konsumsi di bawah ambang batas minimum.';

  @override
  String waterMeterEventsInformation(num count, String waterSupplier) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Meteran air nirkabel Anda $waterSupplier dapat mendeteksi konsumsi yang tidak terduga. Jika diinginkan, Anda akan menerima pemberitahuan dalam kasus seperti itu.',
      one:
          'Meteran air nirkabel Anda $waterSupplier dapat mendeteksi konsumsi yang tidak terduga. Jika diinginkan, Anda akan menerima pemberitahuan dalam hal tersebut.',
    );
    return '$_temp0';
  }

  @override
  String get waterSupplier => 'Pemasok air';

  @override
  String get waterSupplierAlreadySignedIn => 'Anda sudah masuk.';

  @override
  String get waterSupplierCreateAccountRequired => 'Silakan buat akun EHW+ atau masuk agar Anda dapat melanjutkan.';

  @override
  String get waterSupplierHint => 'Pemasok air lokal Anda, misalnya Stadtwerke Musterstadt';

  @override
  String get waterSupplierReauthenticationRequired =>
      'Silakan masuk lagi untuk melanjutkan penggunaan meteran air pintar yang sudah ada.';

  @override
  String get waterSupplierUnknown =>
      'Sayangnya, kami belum mengetahui pemasok air Anda. Jangan ragu untuk menghubungi kami. Pemasok yang hanya menawarkan listrik dan gas tidak muncul di sini.';

  @override
  String get watersupplierAccessRequestApprovedPendingOnboarding =>
      'Your access request has been approved. Complete the setup now!';

  @override
  String get watersupplierAccessRequestDenied => 'Permintaan akses Anda ditolak. Anda dapat menghapus pengukur ini.';

  @override
  String get watersupplierAccessRequestPending => 'Permintaan akses Anda masih dalam proses. Mohon bersabar.';

  @override
  String get watersupplierAccessRequestPostponed => 'Your access request is still being checked. Please be patient.';

  @override
  String get watersupplierAccessRequestQ1 =>
      'Apakah Anda pemilik properti di daerah tangkapan air dari pemasok air dan ingin memiliki akses ke pembacaan meteran radio?';

  @override
  String get watersupplierAccessRequestQ2 =>
      'Apakah Anda sudah meminta akses? Selanjutnya, Anda perlu membuat akun pengguna EHW+.';

  @override
  String get watersupplierAccessRequestQ3 => 'Apakah Anda sudah meminta akses dan menerima kode QR?';

  @override
  String get watersupplierAccessRequestQ4 =>
      'Apakah Anda ingin menerima peringatan meteran sehingga Anda dapat bereaksi jika terjadi kebocoran pipa atau toilet yang sedang mengalir, misalnya?';

  @override
  String get watersupplierCompleteMeterIdServerErrorTryAgain =>
      'Maaf, sayangnya hal itu tidak berhasil. Hal ini disebabkan oleh server kami. Lebih baik coba lagi di lain waktu!';

  @override
  String get watersupplierCompleteMeterIdTryAgain =>
      'Anda tidak akan lulus! Masukkan kembali tiga digit terakhir id meteran Anda!';

  @override
  String get watersupplierMeterIdValidationStep => 'Kami sedang memeriksa id meteran Anda.';

  @override
  String get watersupplierNoAccess => 'Anda tidak lagi memiliki otorisasi untuk mengambil data.';

  @override
  String get watersupplierNoAccessDetailedMessage =>
      'Jika Anda yakin bahwa Anda masih memiliki akses, silakan pindai kembali kode aktivasi Anda. Jika kode akses sudah tidak berlaku, silakan kirimkan permintaan akses baru.';

  @override
  String get watersupplierOpenReminderSettings => 'Buka pengaturan';

  @override
  String get watersupplierRadioMeterDefaultName => 'Pengukur air dingin radio';

  @override
  String get watersupplierScanQrCodeApprovalInProgress =>
      'Kami sekarang mengotorisasi akun Anda sehingga Anda dapat mengakses pembacaan meteran radio di masa mendatang.';

  @override
  String get watersupplierScanQrCodeCommand => 'Pindai kode QR sebelah kiri (kode aktivasi)!';

  @override
  String get watersupplierScanQrCodeOffboardingSuccessful => 'Akses ke meteran air radio Anda telah dibatalkan.';

  @override
  String get watersupplierScanQrCodeScanSuccessful =>
      'Wow, kode aktivasi terlihat sangat bagus! Masukkan tiga digit terakhir dari id meteran Anda!';

  @override
  String get watersupplierScanQrCodeScanSuccessfulNoteAboutMeterIds =>
      'Catatan: Id meteran asli Anda dapat memiliki lebih dari 8 karakter.';

  @override
  String get watersupplierScanQrCodeTitle => 'Aktivasi Pengukur Radio';

  @override
  String get watersupplierScanQrCodeTitleColdWaterMeterAdded =>
      'Ya! Pengukur air radio Anda yang bertipe \"Air Dingin\" telah berhasil ditambahkan. Anda dapat menemukannya di antara meter lainnya.';

  @override
  String get watersupplierScanQrCodeValidation => 'Kode QR terdeteksi, mari kita validasi.';

  @override
  String get watersupplierScanQrCodeValidationFailed => 'Maaf, kode tidak valid. Apakah Anda ingin mencoba lagi?';

  @override
  String get watersupplierScanQrCodeValidationFailedOnboardingScanned =>
      'Anda memindai kode aktivasi, bukan kode pencabutan. Silakan coba lagi!';

  @override
  String get watersupplierScanQrCodeValidationFailedRevokeScanned =>
      'Anda memindai kode pencabutan, bukan kode aktivasi. Silakan coba lagi!';

  @override
  String get watersupplierScanRevokeQrCodeCommand => 'Pindai kode QR yang tepat (cabut kode)!';

  @override
  String get watersupplierUnlinkRadioMeterButtonDelete => 'Menghapus meteran radio';

  @override
  String get watersupplierUnlinkRadioMeterButtonRevoke => 'Memindai kode pencabutan';

  @override
  String get watersupplierUnlinkRadioMeterDescription1 =>
      'Apakah Anda ingin menghapus meteran radio tanpa membatalkan kode aktivasi?';

  @override
  String get watersupplierUnlinkRadioMeterDescription2 =>
      'Apakah Anda tidak lagi menginginkan akses ke data meteran radio Anda? Harap diperhatikan: setelah kode pencabutan dipindai, kode aktivasi menjadi tidak valid. Setiap akun pengguna yang menggunakan kode aktivasi akan kehilangan akses.';

  @override
  String get watersupplierUnlinkRadioMeterFailure => 'Meter radio tidak dapat dihapus. Silakan coba lagi nanti.';

  @override
  String get watersupplierUnlinkRadioMeterTitle => 'Menghentikan Akses Pengukur Radio';

  @override
  String get watersupplierUnlinkRadioMeterWtlDescription =>
      'Jika Anda menghapus meter radio ini, akses Anda ke pembacaan meter radio akan dicabut. Anda dapat mengajukan permintaan akses baru nanti.';

  @override
  String get withoutRoomAssignment => 'Tanpa penugasan kamar';

  @override
  String get wtlAccessRequestFailure => 'Permintaan akses tidak dapat dibuat.';

  @override
  String get wtlAccessRequestMeterId => 'Nomor meteran WV';

  @override
  String get wtlAccessRequestMissingAccountData => 'Akun Anda tidak memiliki alamat email.';

  @override
  String get wtlAccessRequestMissingInput =>
      'Masukkan nomor WV meter Anda dengan tepat 6 digit dan nomor pelanggan Anda.';

  @override
  String get wtlAccessRequestOnlineOnlyDescription => 'Permintaan akses online untuk Wasserverband Tecklenburger Land.';

  @override
  String get wtlAccessRequestSuccess => 'Permintaan akses dibuat.';

  @override
  String get wtlAccessRequestTitle => 'Permintaan akses WTL';

  @override
  String get wtlMeterOnboardingStepDescriptionApproved =>
      'Your access request has been confirmed. Enter the last three digits of your meter number to gain access to meter readings.';

  @override
  String get wtlMeterOnboardingStepDescriptionPending => 'Your access request is still open. Please be patient.';

  @override
  String get yearlyConsumption => 'Konsumsi tahunan sejauh ini';

  @override
  String get yearlyCosts => 'Biaya konsumsi tahunan sejauh ini';

  @override
  String get youtubeConsent1 =>
      'Kami memerlukan persetujuan Anda untuk menampilkan konten Youtube yang disematkan. Anda dapat menampilkannya (dan juga semua konten Youtube lainnya di aplikasi) dengan satu klik dan juga menonaktifkannya kembali.';

  @override
  String get youtubeConsent2 => 'Selalu tampilkan konten Youtube';

  @override
  String get youtubeConsent3 =>
      'Saya menyetujui konten eksternal ditampilkan kepada saya. Hal ini dapat mengakibatkan data pribadi dikirimkan ke platform pihak ketiga. Lebih lanjut mengenai hal ini di bagian';

  @override
  String get zipCode => 'kode pos';

  @override
  String get zipCodeValidationGeneral => 'Masukkan kode pos yang valid';

  @override
  String zipCodeValidationLength(int digits) {
    return 'Silakan masukkan kode pos yang terdiri dari $digits digit';
  }

  @override
  String get zipCodeValidationOnlyNumbers => 'Kode pos yang valid hanya terdiri dari angka';
}
