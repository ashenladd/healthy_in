import 'package:get/get.dart';
import 'package:healthy_in/Models/webinar_models.dart';
import 'package:healthy_in/Pages/Webinar%20Page/pilih_metode_pembayaran_page.dart';

class DetailPembayaranController extends GetxController {
  DetailPembayaranController({required this.webinar});
  Webinar webinar;

  bool isPaid = false;

  MetodePembayaran? _metodePembayaran;

  void set metodePembayaran(MetodePembayaran? payment) {
    _metodePembayaran = payment;
    update();
  }

  String get finalPrice => webinar.stringPrice;

  String get selectedPayment {
    if (_metodePembayaran == MetodePembayaran.bni) {
      return "BNI Virtual Account";
    }

    if (_metodePembayaran == MetodePembayaran.bca) {
      return "BCA Virtual Account";
    }

    if (_metodePembayaran == MetodePembayaran.mandiri) {
      return "Mandiri Virtual Account";
    }

    return "Pilih metode pembayaran";
  }
}
