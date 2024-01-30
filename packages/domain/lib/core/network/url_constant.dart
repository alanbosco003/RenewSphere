class UrlConstants {
  static final UrlConstants _sInstance = UrlConstants();

  static UrlConstants getInstance() {
    return _sInstance;
  }

  static const String getLoginURL = '/securelk-gold/auth/login';
  static const String getAddCustomerURL = '/securelk-gold/customer/add';
}
