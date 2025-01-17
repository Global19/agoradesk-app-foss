import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'i18n_ar.dart';
import 'i18n_bg.dart';
import 'i18n_cs.dart';
import 'i18n_de.dart';
import 'i18n_en.dart';
import 'i18n_es.dart';
import 'i18n_fr.dart';
import 'i18n_hu.dart';
import 'i18n_it.dart';
import 'i18n_ja.dart';
import 'i18n_ko.dart';
import 'i18n_lv.dart';
import 'i18n_nl.dart';
import 'i18n_pl.dart';
import 'i18n_pt.dart';
import 'i18n_ro.dart';
import 'i18n_ru.dart';
import 'i18n_sk.dart';
import 'i18n_sw.dart';
import 'i18n_tl.dart';
import 'i18n_tr.dart';
import 'i18n_ur.dart';
import 'i18n_zh.dart';

/// Callers can lookup localized strings with an instance of I18n
/// returned by `I18n.of(context)`.
///
/// Applications need to include `I18n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/i18n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: I18n.localizationsDelegates,
///   supportedLocales: I18n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the I18n.supportedLocales
/// property.
abstract class I18n {
  I18n(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static I18n? of(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  static const LocalizationsDelegate<I18n> delegate = _I18nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bg'),
    Locale('cs'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hu'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('lv'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt', 'BR'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sw'),
    Locale('tl'),
    Locale('tr'),
    Locale('ur'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('zh')
  ];

  /// No description provided for @numSb404.
  ///
  /// In en, this message translates to:
  /// **'You have lost your way. This page doesn\'t exist.'**
  String get numSb404;

  /// No description provided for @about250Sbblock8722Sb18722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'At {appName}, our goal is to establish a safe and easy-to-use person-to-person platform to allow anyone to trade their local currency for Monero, anywhere. Our users post advertisements specifying their preferred method of payment (e.g. bank transfer, cash, online payment processor like PayPal, gift cards, etc), other users reply to these advertisements, {appName} takes an arbitration bond equal to the amount of the trade from the user that is the Monero seller in a given trade and the seller sends the Monero to the buyer when the seller confirms that they have received the payment from the buyer, upon which the arbitration bond is returned to the seller. {appName} can also step in to mediate any dispute that may arise.'**
  String about250Sbblock8722Sb18722Sbtext(Object appName);

  /// No description provided for @about250Sbblock8722Sb18722Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'At {appName}, our goal is to establish a safe and easy-to-use person-to-person platform to allow anyone to trade their local currency for cryptocurrency, anywhere. Our users post advertisements specifying their preferred method of payment (e.g. bank transfer, cash, online payment processor like PayPal, gift cards, etc), other users reply to these advertisements, {appName} takes an arbitration bond equal to the amount of the trade from the user that is the cryptocurrency seller in a given trade and the seller sends the cryptocurrency to the buyer when the seller confirms that they have received the payment from the buyer, upon which the arbitration bond is returned to the seller. {appName} can also step in to mediate any dispute that may arise.'**
  String about250Sbblock8722Sb18722Sbtext57Sbagoradesk(Object appName);

  /// No description provided for @about250Sbblock8722Sb18722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Our Mission'**
  String get about250Sbblock8722Sb18722Sbtitle;

  /// No description provided for @about250Sbblock8722Sb28722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'On {appName} you are dealing with humans. Unlike centralized cryptocurrency exchanges, you make a trade directly with another person. This makes the process lean and fast, as there is no corporate overhead. You get your Monero instantly. Also, {appName} can support every payment method its user community supports, making it possible for users without access to traditional banking to also be able to buy or sell Monero. For every transaction, {appName} requires the seller to post an arbitration bond to protect the buyer of Monero.'**
  String about250Sbblock8722Sb28722Sbtext(Object appName);

  /// No description provided for @about250Sbblock8722Sb28722Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'On {appName} you are dealing with humans. Unlike centralized cryptocurrency exchanges, you make a trade directly with another person. This makes the process lean and fast, as there is no corporate overhead. You get your cryptocurrency instantly. Also, {appName} can support every payment method its user community supports, making it possible for users without access to traditional banking to also be able to trade cryptocurrency. For every transaction, {appName} requires the seller to post an arbitration bond to protect the buyer of cryptocurrency.'**
  String about250Sbblock8722Sb28722Sbtext57Sbagoradesk(Object appName);

  /// No description provided for @about250Sbblock8722Sb28722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How We Are Different'**
  String get about250Sbblock8722Sb28722Sbtitle;

  /// No description provided for @about250Sbcontact8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get about250Sbcontact8722Sbbtn;

  /// No description provided for @about250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'About us'**
  String get about250Sbtitle;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbbuy8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get ad8722Sblisting8722Sbtable250Sbbuy8722Sbbtn;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbbuyer.
  ///
  /// In en, this message translates to:
  /// **'Buyer'**
  String get ad8722Sblisting8722Sbtable250Sbbuyer;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbdistance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get ad8722Sblisting8722Sbtable250Sbdistance;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sblimits.
  ///
  /// In en, this message translates to:
  /// **'Limits'**
  String get ad8722Sblisting8722Sbtable250Sblimits;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sblocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get ad8722Sblisting8722Sbtable250Sblocation;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get ad8722Sblisting8722Sbtable250Sbmethod;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Price/{assetSymbol}'**
  String ad8722Sblisting8722Sbtable250Sbprice(Object assetSymbol);

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbsell8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get ad8722Sblisting8722Sbtable250Sbsell8722Sbbtn;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbseller.
  ///
  /// In en, this message translates to:
  /// **'Seller'**
  String get ad8722Sblisting8722Sbtable250Sbseller;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbshow8722Sbmore.
  ///
  /// In en, this message translates to:
  /// **'Show more...'**
  String get ad8722Sblisting8722Sbtable250Sbshow8722Sbmore;

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbshow8722Sbmore8722Sbby8722Sbuser.
  ///
  /// In en, this message translates to:
  /// **'Show more ads of this type by {user}...'**
  String ad8722Sblisting8722Sbtable250Sbshow8722Sbmore8722Sbby8722Sbuser(Object user);

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbshow8722Sbmore250Sball8722Sbin8722Sbcountry8722Sbor8722Sbcurrency.
  ///
  /// In en, this message translates to:
  /// **'All in {countryOrcurrency}'**
  String ad8722Sblisting8722Sbtable250Sbshow8722Sbmore250Sball8722Sbin8722Sbcountry8722Sbor8722Sbcurrency(Object countryOrcurrency);

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbsimilar8722Sbads8722Sbtoggle8722Sblabel250Sbhide.
  ///
  /// In en, this message translates to:
  /// **'Hide {username}\'s similar ads'**
  String ad8722Sblisting8722Sbtable250Sbsimilar8722Sbads8722Sbtoggle8722Sblabel250Sbhide(Object username);

  /// No description provided for @ad8722Sblisting8722Sbtable250Sbsimilar8722Sbads8722Sbtoggle8722Sblabel250Sbshow.
  ///
  /// In en, this message translates to:
  /// **'Show {numberOfSimilarAds} more similar ads by {username}'**
  String ad8722Sblisting8722Sbtable250Sbsimilar8722Sbads8722Sbtoggle8722Sblabel250Sbshow(Object numberOfSimilarAds, Object username);

  /// No description provided for @ad8722Sbpage250Sbcant8722Sbsend8722Sbtrade8722Sbrequest.
  ///
  /// In en, this message translates to:
  /// **'Cannot request a trade for this ad at the time'**
  String get ad8722Sbpage250Sbcant8722Sbsend8722Sbtrade8722Sbrequest;

  /// No description provided for @ad8722Sbpage250Sbedit8722Sbad8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Edit ad'**
  String get ad8722Sbpage250Sbedit8722Sbad8722Sbbtn;

  /// No description provided for @ad8722Sbpage250Sberror250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Trade request error'**
  String get ad8722Sbpage250Sberror250Sbtitle;

  /// No description provided for @ad8722Sbpage250Sbfirst8722Sbtime8722Sblimit8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'This trader allows maximum of {firstTimelimitxmr} for the first trade with him.'**
  String ad8722Sbpage250Sbfirst8722Sbtime8722Sblimit8722Sbtip(Object firstTimelimitxmr);

  /// No description provided for @ad8722Sbpage250Sbfluctuations8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Please note, the actual {assetSymbol} amount of the trade may slightly differ from the currently shown amount due to price and exchange rate fluctuations.'**
  String ad8722Sbpage250Sbfluctuations8722Sbtip(Object assetSymbol);

  /// No description provided for @ad8722Sbpage250Sbfor8722Sbtrusted.
  ///
  /// In en, this message translates to:
  /// **'For users trusted by {username} only'**
  String ad8722Sbpage250Sbfor8722Sbtrusted(Object username);

  /// No description provided for @ad8722Sbpage250Sbheading8722Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} for cash in {location} to {user} with {currency}'**
  String ad8722Sbpage250Sbheading8722Sblocal8722Sbbuy(Object assetName, Object location, Object user, Object currency);

  /// No description provided for @ad8722Sbpage250Sbheading8722Sblocal8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} with cash in {location} from {user} with {currency}'**
  String ad8722Sbpage250Sbheading8722Sblocal8722Sbsell(Object assetName, Object location, Object user, Object currency);

  /// No description provided for @ad8722Sbpage250Sbheading8722Sbonline8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} using {paymentMethod}{detail} with {currency}'**
  String ad8722Sbpage250Sbheading8722Sbonline8722Sbbuy(Object assetName, Object paymentMethod, Object detail, Object currency);

  /// No description provided for @ad8722Sbpage250Sbheading8722Sbonline8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} using {paymentMethod}{detail} with {currency}'**
  String ad8722Sbpage250Sbheading8722Sbonline8722Sbsell(Object assetName, Object paymentMethod, Object detail, Object currency);

  /// No description provided for @ad8722Sbpage250Sbhidden8722Sbwarning8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'This ad\'s visibility has been set to hidden. You can change that at the {editAd} page.'**
  String ad8722Sbpage250Sbhidden8722Sbwarning8722Sb0(Object editAd);

  /// No description provided for @ad8722Sbpage250Sbhidden8722Sbwarning8722Sb08722Sbedit8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'Edit ad'**
  String get ad8722Sbpage250Sbhidden8722Sbwarning8722Sb08722Sbedit8722Sbad;

  /// No description provided for @ad8722Sbpage250Sbhidden8722Sbwarning8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'This ad is not currently active. Please look for other offers or come back later.'**
  String get ad8722Sbpage250Sbhidden8722Sbwarning8722Sb1;

  /// No description provided for @ad8722Sbpage250Sbhow8722Sbmuch8722Sbdo8722Sbyou8722Sbwish8722Sbto8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'buy'**
  String get ad8722Sbpage250Sbhow8722Sbmuch8722Sbdo8722Sbyou8722Sbwish8722Sbto8722Sbbuy;

  /// No description provided for @ad8722Sbpage250Sbhow8722Sbmuch8722Sbdo8722Sbyou8722Sbwish8722Sbto8722Sbbuy57Sbsell.
  ///
  /// In en, this message translates to:
  /// **'How much do you wish to {buyOrsell}?'**
  String ad8722Sbpage250Sbhow8722Sbmuch8722Sbdo8722Sbyou8722Sbwish8722Sbto8722Sbbuy57Sbsell(Object buyOrsell);

  /// No description provided for @ad8722Sbpage250Sbhow8722Sbmuch8722Sbdo8722Sbyou8722Sbwish8722Sbto8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'sell'**
  String get ad8722Sbpage250Sbhow8722Sbmuch8722Sbdo8722Sbyou8722Sbwish8722Sbto8722Sbsell;

  /// No description provided for @ad8722Sbpage250Sbinfo250Sbpayment8722Sbwindow.
  ///
  /// In en, this message translates to:
  /// **'Payment window'**
  String get ad8722Sbpage250Sbinfo250Sbpayment8722Sbwindow;

  /// No description provided for @ad8722Sbpage250Sbinfo250Sbtrade8722Sblimits.
  ///
  /// In en, this message translates to:
  /// **'Trade limits'**
  String get ad8722Sbpage250Sbinfo250Sbtrade8722Sblimits;

  /// No description provided for @ad8722Sbpage250Sbinfo250Sbuser.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get ad8722Sbpage250Sbinfo250Sbuser;

  /// No description provided for @ad8722Sbpage250Sblimit8722Sbto8722Sbamounts.
  ///
  /// In en, this message translates to:
  /// **'This trader has limited possible trading amounts to {amounts} {currency}'**
  String ad8722Sbpage250Sblimit8722Sbto8722Sbamounts(Object amounts, Object currency);

  /// No description provided for @ad8722Sbpage250Sbmin8722Sbamount8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'You have to make a trade for at least {minimumAmount} with this advertisement.'**
  String ad8722Sbpage250Sbmin8722Sbamount8722Sbtip(Object minimumAmount);

  /// No description provided for @ad8722Sbpage250Sbmin8722Sbfeedback8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'This trader requires at least {minimumFeedbackscore} feedback score to trade.'**
  String ad8722Sbpage250Sbmin8722Sbfeedback8722Sbtip(Object minimumFeedbackscore);

  /// No description provided for @ad8722Sbpage250Sbreport8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'Report this advertisement by opening a ticket'**
  String get ad8722Sbpage250Sbreport8722Sbad;

  /// No description provided for @ad8722Sbpage250Sbrequest8722Sbtrade250Sbmin8722Sbrequired8722Sbbalance.
  ///
  /// In en, this message translates to:
  /// **'You need to have {amount} in your {appName} arbitration bond wallet to cover the 1% arbitration protection fee for this trade.'**
  String ad8722Sbpage250Sbrequest8722Sbtrade250Sbmin8722Sbrequired8722Sbbalance(Object amount, Object appName);

  /// No description provided for @ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbaccept8722Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Accept the price and continue'**
  String get ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbaccept8722Sbprice;

  /// No description provided for @ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbnew8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'New trade amount'**
  String get ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbnew8722Sbamount;

  /// No description provided for @ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbnew8722Sbprice.
  ///
  /// In en, this message translates to:
  /// **'New price'**
  String get ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbnew8722Sbprice;

  /// No description provided for @ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbold8722Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Old price'**
  String get ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbold8722Sbprice;

  /// No description provided for @ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbselect8722Sbadjustment.
  ///
  /// In en, this message translates to:
  /// **'Adjust the trade amount for'**
  String get ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbselect8722Sbadjustment;

  /// No description provided for @ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The price has changed'**
  String get ad8722Sbpage250Sbrequest8722Sbtrade250Sbprice8722Sbchanged250Sbtitle;

  /// No description provided for @ad8722Sbpage250Sbselect8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Select amount...'**
  String get ad8722Sbpage250Sbselect8722Sbamount;

  /// No description provided for @ad8722Sbpage250Sbsend8722Sbtrade8722Sbrequest8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Send trade request'**
  String get ad8722Sbpage250Sbsend8722Sbtrade8722Sbrequest8722Sbbtn;

  /// No description provided for @ad8722Sbpage250Sbshow8722Sbon8722Sbmap.
  ///
  /// In en, this message translates to:
  /// **'Show on map'**
  String get ad8722Sbpage250Sbshow8722Sbon8722Sbmap;

  /// No description provided for @ad8722Sbpage250Sbsign8722Sbup8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Sign up to start trading'**
  String get ad8722Sbpage250Sbsign8722Sbup8722Sbbtn;

  /// No description provided for @ad8722Sbpage250Sbterms8722Sbdialog250Sbagree8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Agree to terms and start trading'**
  String get ad8722Sbpage250Sbterms8722Sbdialog250Sbagree8722Sbbtn;

  /// No description provided for @ad8722Sbpage250Sbterms8722Sbdialog250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Do you agree to this trader\'s terms?'**
  String get ad8722Sbpage250Sbterms8722Sbdialog250Sbsubtitle;

  /// No description provided for @ad8722Sbpage250Sbterms8722Sbdialog250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Read the terms'**
  String get ad8722Sbpage250Sbterms8722Sbdialog250Sbtitle;

  /// No description provided for @ad8722Sbpage250Sbterms8722Sbof8722Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'Terms of trade with {username}'**
  String ad8722Sbpage250Sbterms8722Sbof8722Sbtrade(Object username);

  /// No description provided for @ad8722Sbpage250Sbtips.
  ///
  /// In en, this message translates to:
  /// **'Tips'**
  String get ad8722Sbpage250Sbtips;

  /// No description provided for @ad8722Sbpage250Sbtips8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Read the ad, and check the terms.'**
  String get ad8722Sbpage250Sbtips8722Sbtext8722Sb0;

  /// No description provided for @ad8722Sbpage250Sbtips8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Propose a meeting place and contact time, if physical cash is traded.'**
  String get ad8722Sbpage250Sbtips8722Sbtext8722Sb1;

  /// No description provided for @ad8722Sbpage250Sbtips8722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Watch for fraudsters! Check the profile feedback, and take extra caution with recently created accounts.'**
  String get ad8722Sbpage250Sbtips8722Sbtext8722Sb2;

  /// No description provided for @ad8722Sbpage250Sbtips8722Sbtext8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Note that rounding and price fluctuations might change the final {assetName} amount. The {assetName} amount is calculated based on the trade currency amount you\'ve entered.'**
  String ad8722Sbpage250Sbtips8722Sbtext8722Sb3(Object assetName);

  /// No description provided for @ad250Sbconfirmation250Sbaccept8722Sbterms8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Accept terms'**
  String get ad250Sbconfirmation250Sbaccept8722Sbterms8722Sbbtn;

  /// No description provided for @ad250Sbconfirmation250Sbprovide8722Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Provide the settlement {asset} wallet address'**
  String ad250Sbconfirmation250Sbprovide8722Sbaddress(Object asset);

  /// No description provided for @ad250Sbconfirmation250Sbprovide8722Sbaddress250Sbsubtitile.
  ///
  /// In en, this message translates to:
  /// **'The address is going to be used to receive the {asset} you\'ve bought. Make sure the address is correct and you have access to the wallet, otherwise the coins may be irretrievably lost.'**
  String ad250Sbconfirmation250Sbprovide8722Sbaddress250Sbsubtitile(Object asset);

  /// No description provided for @ad250Sbconfirmation250Sbprovide8722Sbaddress250Sbyou8722Sbown.
  ///
  /// In en, this message translates to:
  /// **'By beginning the trade you confirm that the receiving wallet belongs to you'**
  String get ad250Sbconfirmation250Sbprovide8722Sbaddress250Sbyou8722Sbown;

  /// No description provided for @ad250Sbdeleted.
  ///
  /// In en, this message translates to:
  /// **'This ad has been deleted'**
  String get ad250Sbdeleted;

  /// No description provided for @ad250Sbhomepage8722Sblisting250Sblocal8722Sbbuy8722Sbheading.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} for cash in {country}'**
  String ad250Sbhomepage8722Sblisting250Sblocal8722Sbbuy8722Sbheading(Object assetName, Object country);

  /// No description provided for @ad250Sbhomepage8722Sblisting250Sblocal8722Sbsell8722Sbheading.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} with cash in {country}'**
  String ad250Sbhomepage8722Sblisting250Sblocal8722Sbsell8722Sbheading(Object assetName, Object country);

  /// No description provided for @ad250Sbhomepage8722Sblisting250Sbonline8722Sbbuy8722Sbheading.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} online in {country}'**
  String ad250Sbhomepage8722Sblisting250Sbonline8722Sbbuy8722Sbheading(Object assetName, Object country);

  /// No description provided for @ad250Sbhomepage8722Sblisting250Sbonline8722Sbsell8722Sbheading.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} online in {country}'**
  String ad250Sbhomepage8722Sblisting250Sbonline8722Sbsell8722Sbheading(Object assetName, Object country);

  /// No description provided for @ad250Sblinks250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t find the deal you were looking for? These {appName} listings have more {assetName} trade deals similar to this one:'**
  String ad250Sblinks250Sbsubtitle(Object appName, Object assetName);

  /// No description provided for @ad250Sblinks250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Listings with this ad'**
  String get ad250Sblinks250Sbtitle;

  /// No description provided for @ad250Sblisting250Sbinsufficient8722Sbbalance.
  ///
  /// In en, this message translates to:
  /// **'Trader has insufficient balance'**
  String get ad250Sblisting250Sbinsufficient8722Sbbalance;

  /// No description provided for @ad250Sbno8722Sbmax8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'any amount '**
  String get ad250Sbno8722Sbmax8722Sbamount;

  /// No description provided for @ad250Sbno8722Sbmin8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Up to '**
  String get ad250Sbno8722Sbmin8722Sbamount;

  /// No description provided for @ad250Sbno8722Sbterms.
  ///
  /// In en, this message translates to:
  /// **'No terms of trade specified. '**
  String get ad250Sbno8722Sbterms;

  /// No description provided for @ad250Sbnotice250Sbprotected.
  ///
  /// In en, this message translates to:
  /// **'This trade is protected by an {link}'**
  String ad250Sbnotice250Sbprotected(Object link);

  /// No description provided for @ad250Sbnotice250Sbprotected250Sblink.
  ///
  /// In en, this message translates to:
  /// **'arbitration bond'**
  String get ad250Sbnotice250Sbprotected250Sblink;

  /// No description provided for @ad250Sbself8722Sbvacation8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'This ad is not visible to the public because you\'re currently on vacation. You can change that in the settings or on the dashboard.'**
  String get ad250Sbself8722Sbvacation8722Sbnotice;

  /// No description provided for @ad250Sbverified8722Sbemail.
  ///
  /// In en, this message translates to:
  /// **'Your email needs to be verified to open a trade with this ad'**
  String get ad250Sbverified8722Sbemail;

  /// No description provided for @address8722Sbinput250Sbbuyer8722Sbsettlement8722Sbaddress250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Settlement {asset} wallet address'**
  String address8722Sbinput250Sbbuyer8722Sbsettlement8722Sbaddress250Sblabel(Object asset);

  /// No description provided for @affiliate250Sbbanner250Sbcode.
  ///
  /// In en, this message translates to:
  /// **'Banner code:'**
  String get affiliate250Sbbanner250Sbcode;

  /// No description provided for @affiliate250Sbbanner250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Banners promote {appName} with your affiliate. You can add HTML banners to your blogs and websites. {linebreak}  {iframe} banner for your advertisement (size 234 x 60 pixels, half-banner unit):'**
  String affiliate250Sbbanner250Sbtext(Object appName, Object linebreak, Object iframe);

  /// No description provided for @affiliate250Sbbanner250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Banner'**
  String get affiliate250Sbbanner250Sbtitle;

  /// No description provided for @affiliate250Sbenable8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Enable affiliate program'**
  String get affiliate250Sbenable8722Sbbtn;

  /// No description provided for @affiliate250Sbenabled.
  ///
  /// In en, this message translates to:
  /// **'Your affiliate program is enabled, and you can earn commissions by adding your affiliate tag {refCode} to any {appName} URL.'**
  String affiliate250Sbenabled(Object refCode, Object appName);

  /// No description provided for @affiliate250Sbexample250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'You get two users, buyer and seller of the {assetName} registered on {appName}, and they do one trade valued 100 {assetSymbol}. You earn 20% commission on the {appName} trading fees from both participants, in total 40% of the {appName} fee. Your earned sum is 0.4 {assetSymbol}. Only finalized sales that go though our transaction process matter. Payouts are made daily. {linebreak}  {appName} {support} is more than willing to help you with any questions.'**
  String affiliate250Sbexample250Sbtext(Object assetName, Object appName, Object assetSymbol, Object linebreak, Object support);

  /// No description provided for @affiliate250Sbexample250Sbtext8722Sbsupport.
  ///
  /// In en, this message translates to:
  /// **'support'**
  String get affiliate250Sbexample250Sbtext8722Sbsupport;

  /// No description provided for @affiliate250Sbexample250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Commission example'**
  String get affiliate250Sbexample250Sbtitle;

  /// No description provided for @affiliate250Sbinstructions8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Affiliation is registered when any user signs up after landing on the site from a link with your referral code.'**
  String get affiliate250Sbinstructions8722Sb0;

  /// No description provided for @affiliate250Sbinstructions8722Sblink8722Sbtype8722Sbregular8722Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Regular:'**
  String get affiliate250Sbinstructions8722Sblink8722Sbtype8722Sbregular8722Sbsubtitle;

  /// No description provided for @affiliate250Sbinstructions8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'You can use any of the {appName} links, for example:'**
  String affiliate250Sbinstructions8722Sbtext(Object appName);

  /// No description provided for @affiliate250Sbinstructions8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Example links'**
  String get affiliate250Sbinstructions8722Sbtitle;

  /// No description provided for @affiliate250Sblogged8722Sbout.
  ///
  /// In en, this message translates to:
  /// **'You can enable the affiliate program after you {signUp} or {logIn}.'**
  String affiliate250Sblogged8722Sbout(Object signUp, Object logIn);

  /// No description provided for @affiliate250Sblogged8722Sbout8722Sblog8722Sbin.
  ///
  /// In en, this message translates to:
  /// **'log in'**
  String get affiliate250Sblogged8722Sbout8722Sblog8722Sbin;

  /// No description provided for @affiliate250Sblogged8722Sbout8722Sbsign8722Sbup.
  ///
  /// In en, this message translates to:
  /// **'sign up'**
  String get affiliate250Sblogged8722Sbout8722Sbsign8722Sbup;

  /// No description provided for @affiliate250Sbpayouts250Sbnone.
  ///
  /// In en, this message translates to:
  /// **'No payouts yet'**
  String get affiliate250Sbpayouts250Sbnone;

  /// No description provided for @affiliate250Sbpayouts250Sbtable250Sbdate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get affiliate250Sbpayouts250Sbtable250Sbdate;

  /// No description provided for @affiliate250Sbpayouts250Sbtable250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get affiliate250Sbpayouts250Sbtable250Sbdescription;

  /// No description provided for @affiliate250Sbpayouts250Sbtable250Sbdescription8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Affiliate program commission payout'**
  String get affiliate250Sbpayouts250Sbtable250Sbdescription8722Sbtext;

  /// No description provided for @affiliate250Sbpayouts250Sbtable250Sbreceived.
  ///
  /// In en, this message translates to:
  /// **'Received '**
  String get affiliate250Sbpayouts250Sbtable250Sbreceived;

  /// No description provided for @affiliate250Sbpayouts250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Payouts'**
  String get affiliate250Sbpayouts250Sbtitle;

  /// No description provided for @affiliate250Sbref8722Sbcode.
  ///
  /// In en, this message translates to:
  /// **'Your referral code is: {refCode}'**
  String affiliate250Sbref8722Sbcode(Object refCode);

  /// No description provided for @affiliate250Sbterms250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'• You can link to any individual page, such as country listing or payment method listing, or anything else on {appName}. <br/>• You will earn {assetName} from the users who arrive to the site through your affiliate link register and make trades. <br/>• Payouts will be made daily to your {appName} wallet as {assetName}. <br/>• Commissions will be paid for one year from the user\'s registration. Commission is based on the income the new user brings for {appName} (trading fees). <br/>• If you have active coupons, your total coupon rebates for a given period will be subtracted from your affiliate earnings for the same given period. If your total rebate amount for a given period is greater than or equal to the affiliate earnings for the same given period, you will not receive any affiliate earnings for that given period. <br/>• Any foul play, such as misleading advertising, is forbidden. <br/>• Spamming is forbidden. Spamming includes sending unsubscribed private or public messages on forums/reddit, unsubscribed mass-mail, etc. <br/>• Adding hidden iframes on a website in order to capture affiliates is forbidden. Only affiliate iframes or direct links to the webpage are allowed. <br/>• {appName} has the right to disable any affiliate user at any given time. If you breach the terms, your affiliate program will be terminated.'**
  String affiliate250Sbterms250Sbtext(Object appName, Object assetName);

  /// No description provided for @affiliate250Sbterms250Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'• You can link to any individual page, such as country listing or payment method listing, or anything else on {appName}. <br/>• You will earn cryptocurrency from the users who arrive to the site through your affiliate link register and make trades. <br/>• Payouts will be made daily to your {appName} wallet in the relevant cryptocurrencies. <br/>• Commissions will be paid for one year from the user\'s registration. Commission is based on the income the new user brings for {appName} (trading fees). <br/>• Any foul play, such as misleading advertising, is forbidden. <br/>• Spamming is forbidden. Spamming includes sending unsubscribed private or public messages on forums/reddit, unsubscribed mass-mail, etc. <br/>• Adding hidden iframes on a website in order to capture affiliates is forbidden. Only affiliate iframes or direct links to the webpage are allowed. <br/>• {appName} has the right to disable any affiliate user at any given time. If you breach the terms, your affiliate program will be terminated.'**
  String affiliate250Sbterms250Sbtext57Sbagoradesk(Object appName);

  /// No description provided for @affiliate250Sbterms250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Affiliate program terms'**
  String get affiliate250Sbterms250Sbtitle;

  /// No description provided for @affiliate250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Affiliate program'**
  String get affiliate250Sbtitle;

  /// No description provided for @affiliate250Sbusers250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'You are currently registered as an affiliate for {number} users and will earn commissions from all trades done by these.'**
  String affiliate250Sbusers250Sbtext(Object number);

  /// No description provided for @affiliate250Sbusers250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get affiliate250Sbusers250Sbtitle;

  /// No description provided for @agoradesk250Sbad8722Sbpage250Sbhow8722Sbmuch8722Sbnotional8722Sbamount250Sbor.
  ///
  /// In en, this message translates to:
  /// **'or'**
  String get agoradesk250Sbad8722Sbpage250Sbhow8722Sbmuch8722Sbnotional8722Sbamount250Sbor;

  /// No description provided for @agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sbads250Sball.
  ///
  /// In en, this message translates to:
  /// **'SHOW ALL ADS'**
  String get agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sbads250Sball;

  /// No description provided for @agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sbads250Sbcoin.
  ///
  /// In en, this message translates to:
  /// **'{assetSymbol} ADS ONLY'**
  String agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sbads250Sbcoin(Object assetSymbol);

  /// No description provided for @agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sball.
  ///
  /// In en, this message translates to:
  /// **'SHOW ALL'**
  String get agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sball;

  /// No description provided for @agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sbcoin.
  ///
  /// In en, this message translates to:
  /// **'{assetSymbol} ONLY'**
  String agoradesk250Sbasset8722Sbfilter8722Sbtoggle250Sbcoin(Object assetSymbol);

  /// No description provided for @agoradesk250Sbasset250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency asset'**
  String get agoradesk250Sbasset250Sblabel;

  /// No description provided for @agoradesk250Sbguide250Sbad8722Sbpage250Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'buy'**
  String get agoradesk250Sbguide250Sbad8722Sbpage250Sbbuy;

  /// No description provided for @agoradesk250Sbguide250Sbad8722Sbpage250Sbbuyer.
  ///
  /// In en, this message translates to:
  /// **'buyer'**
  String get agoradesk250Sbguide250Sbad8722Sbpage250Sbbuyer;

  /// No description provided for @agoradesk250Sbguide250Sbad8722Sbpage250Sbgeneral.
  ///
  /// In en, this message translates to:
  /// **'After you press the \'{buy_or_sell_button_name}\' button you\'ll see more information about the advertisement, including the terms of the trade. Read through them before submitting the trade request, if you don\'t agree with them you can go back to the previous page and choose another advertisement.'**
  String agoradesk250Sbguide250Sbad8722Sbpage250Sbgeneral(Object buy_or_sell_button_name);

  /// No description provided for @agoradesk250Sbguide250Sbad8722Sbpage250Sbgeneral250Sbhow8722Sbto8722Sbstart.
  ///
  /// In en, this message translates to:
  /// **'To start the trade, type in how much {asset} you want to {buy_or_sell} and click the \'Send trade request\' button to the start the trade.'**
  String agoradesk250Sbguide250Sbad8722Sbpage250Sbgeneral250Sbhow8722Sbto8722Sbstart(Object asset, Object buy_or_sell);

  /// No description provided for @agoradesk250Sbguide250Sbad8722Sbpage250Sbsell.
  ///
  /// In en, this message translates to:
  /// **'sell'**
  String get agoradesk250Sbguide250Sbad8722Sbpage250Sbsell;

  /// No description provided for @agoradesk250Sbguide250Sbad8722Sbpage250Sbseller.
  ///
  /// In en, this message translates to:
  /// **'seller'**
  String get agoradesk250Sbguide250Sbad8722Sbpage250Sbseller;

  /// No description provided for @agoradesk250Sbguide250Sbbtc8722Sbas8722Sban8722Sbexample.
  ///
  /// In en, this message translates to:
  /// **'For the purpose of this guide we\'ll use BTC as a base currency, but the same rules apply to XMR.'**
  String get agoradesk250Sbguide250Sbbtc8722Sbas8722Sban8722Sbexample;

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sball8722Sbmethods8722Sbbuyer.
  ///
  /// In en, this message translates to:
  /// **'If you\'re unsure how you want to pay, choose \'All online offers\' as your payment method.'**
  String get agoradesk250Sbguide250Sbsearch250Sball8722Sbmethods8722Sbbuyer;

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sball8722Sbmethods8722Sbseller.
  ///
  /// In en, this message translates to:
  /// **'If you\'re unsure how you want to be paid, choose \'All online offers\' as your payment method.'**
  String get agoradesk250Sbguide250Sbsearch250Sball8722Sbmethods8722Sbseller;

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sbbuy8722Sbtab8722Sbname.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get agoradesk250Sbguide250Sbsearch250Sbbuy8722Sbtab8722Sbname;

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sbchoose8722Sbad8722Sbtype.
  ///
  /// In en, this message translates to:
  /// **'In the left column you should then select the \'{buy_or_sell_tab_name}\' tab. If you wish to change the country,currency, payment method or specify the needed amount, click on the \'Show search menu\' button, choose the desired parameters, and press the search button.'**
  String agoradesk250Sbguide250Sbsearch250Sbchoose8722Sbad8722Sbtype(Object buy_or_sell_tab_name);

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sbchoose8722Sbasset.
  ///
  /// In en, this message translates to:
  /// **'Then, select the cryptocurrency you want to trade by pressing the corresponding tab on the row above the ads table. For this example we\'ll choose BTC.'**
  String get agoradesk250Sbguide250Sbsearch250Sbchoose8722Sbasset;

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sbmain8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'Go to the main page.'**
  String get agoradesk250Sbguide250Sbsearch250Sbmain8722Sbpage;

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sbsearch8722Sbresults.
  ///
  /// In en, this message translates to:
  /// **'The site will list traders available in your region.'**
  String get agoradesk250Sbguide250Sbsearch250Sbsearch8722Sbresults;

  /// No description provided for @agoradesk250Sbguide250Sbsearch250Sbsell8722Sbtab8722Sbname.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get agoradesk250Sbguide250Sbsearch250Sbsell8722Sbtab8722Sbname;

  /// No description provided for @agoradesk250Sbindex250Sbad8722Sbselectors250Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get agoradesk250Sbindex250Sbad8722Sbselectors250Sbbuy;

  /// No description provided for @agoradesk250Sbindex250Sbad8722Sbselectors250Sbcoins.
  ///
  /// In en, this message translates to:
  /// **'Trade coins'**
  String get agoradesk250Sbindex250Sbad8722Sbselectors250Sbcoins;

  /// No description provided for @agoradesk250Sbindex250Sbad8722Sbselectors250Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get agoradesk250Sbindex250Sbad8722Sbselectors250Sbsell;

  /// No description provided for @agoradesk250Sbindex250Sbads8722Sbtable250Sbitm8722Sbotm8722Sbseparator250Sbcurrent8722Sbmarket8722Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Market price'**
  String get agoradesk250Sbindex250Sbads8722Sbtable250Sbitm8722Sbotm8722Sbseparator250Sbcurrent8722Sbmarket8722Sbprice;

  /// No description provided for @agoradesk250Sbindex250Sbads8722Sbtable250Sbload8722Sbmor250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Load more...'**
  String get agoradesk250Sbindex250Sbads8722Sbtable250Sbload8722Sbmor250Sbbutton;

  /// No description provided for @agoradesk250Sbindex250Sbads8722Sbtable250Sbload8722Sbmore250Sbloading.
  ///
  /// In en, this message translates to:
  /// **'Please wait'**
  String get agoradesk250Sbindex250Sbads8722Sbtable250Sbload8722Sbmore250Sbloading;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbcta.
  ///
  /// In en, this message translates to:
  /// **'Sign up for free to start trading Bitcoin now'**
  String get agoradesk250Sblbc8722Sbalternative250Sbcta;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbdisputes250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'Our arbitration standards are very high, as<strong> we do not accept screenshots or other easily-falsifiable documents as proof in disputes</strong>. Because of this, we are able to deter a large amount of scammers from trying to scavenger on our platform. We respond quickly to user reports and we issue warnings in regions where there are sudden spikes of scammer activity.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbdisputes250Sbcontent;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbdisputes250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Fraud prevention'**
  String get agoradesk250Sblbc8722Sbalternative250Sbdisputes250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'No KYC/AML or verification'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb0;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Any currency, any payment method, anywhere'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb1;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb10.
  ///
  /// In en, this message translates to:
  /// **'{nojs} (loads by default when accessing from Tor or I2P)'**
  String agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb10(Object nojs);

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb108722Sb1.
  ///
  /// In en, this message translates to:
  /// **'No-JavaScript version of the site'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb108722Sb1;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb11.
  ///
  /// In en, this message translates to:
  /// **'Fully functional when Google is blocked'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb11;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb12.
  ///
  /// In en, this message translates to:
  /// **'{affiliate} - earn commission for inviting trading users'**
  String agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb12(Object affiliate);

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb128722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Affiliate program'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb128722Sb1;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb13.
  ///
  /// In en, this message translates to:
  /// **'Multilingual: we support English, Russian, Chinese (both simplified and traditional), Italian, Portuguese and Spanish'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb13;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb14.
  ///
  /// In en, this message translates to:
  /// **'Mobile notifications through {telegram}, so that you won\'t have to install yet another app on your phone just to get push notifications about your trades (LocalBitcoins implemented this feature after us)'**
  String agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb14(Object telegram);

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb15.
  ///
  /// In en, this message translates to:
  /// **'Beautiful ads through the use of Markdown'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb15;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb16.
  ///
  /// In en, this message translates to:
  /// **'2FA (with TOTP apps like Google Authenticator or andOTP)'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb16;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb17.
  ///
  /// In en, this message translates to:
  /// **'Withdraw currencies other than BTC '**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb17;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb18.
  ///
  /// In en, this message translates to:
  /// **'Complicated pricing mechanisms through the use of price formulas'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb18;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb19.
  ///
  /// In en, this message translates to:
  /// **'and more...'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb19;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Online Bitcoin trading'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb2;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb20.
  ///
  /// In en, this message translates to:
  /// **'Fully functional {api} modeled after LocalBitcoins API for easy transition'**
  String agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb20(Object api);

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb208722Sb1.
  ///
  /// In en, this message translates to:
  /// **'API'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb208722Sb1;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Offline cash face-to-face Bitcoin trading'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb3;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'Full arbitration bond protection on all online trades'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb4;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'No deposit fees, fair withdrawal fees'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb5;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'Fast and responsive support'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb6;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb7.
  ///
  /// In en, this message translates to:
  /// **'No email during registration'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb7;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb8.
  ///
  /// In en, this message translates to:
  /// **'Onion portal'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb8;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb9.
  ///
  /// In en, this message translates to:
  /// **'I2P portal'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures8722Sb9;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfeatures250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'AgoraDesk\'s features include:'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfeatures250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfees250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'<i>Unlike</i> LocalBitcoins, however, we do not charge exorbitant fees when you deposit or withdraw Bitcoins to/from our arbitration bond wallet. There is <strong> no deposit fee, and the withdrawal fee is very close to the fee you’d be paying on a normal transaction</strong>. Transfers to the wallets of other AgoraDesk users carry no fees at all.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfees250Sbcontent;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbfees250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Fair fees'**
  String get agoradesk250Sblbc8722Sbalternative250Sbfees250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbhtml8722Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Looking for a LocalBitcoins analogue to trade Bitcoins peer-to-peer without KYC/AML or verification? AgoraDesk is a new P2P platform for trading Bitcoin that was created by the team behind LocalMonero, Monero\'s equivalent of LocalBitcoins. We offer the same fast and easy Bitcoin trading experience that LocalBitcoins used to provide, and more.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbhtml8722Sbdescription;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbintroduction.
  ///
  /// In en, this message translates to:
  /// **'Looking for a {lbc} analogue to trade Bitcoins peer-to-peer without KYC/AML or verification? AgoraDesk is a new P2P platform for trading Bitcoin that was created by the team behind {lm}, Monero\'s equivalent of LocalBitcoins.'**
  String agoradesk250Sblbc8722Sbalternative250Sbintroduction(Object lbc, Object lm);

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbno8722Sbkyc250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'AgoraDesk is committed to maintaining the simplicity and straight-forwardness that made the original LocalBitcoins so popular. <strong> We do not employ KYC/AML, nor do we ever plan on doing so</strong>. We firmly believe that the very concept of KYC/AML is completely antithetical to the very idea of a peer-to-peer over-the-counter exchange such as our own, and until there are no more legal ways on <i>planet Earth</i> to avoid implementing KYC/AML we will do everything we legally can to provide you with a hassle-free experience.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbno8722Sbkyc250Sbcontent;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbno8722Sbkyc250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'No KYC/AML'**
  String get agoradesk250Sblbc8722Sbalternative250Sbno8722Sbkyc250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbnojs250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **' Since AgoraDesk is made by a team with a background in the privacy-oriented Monero community, AgoraDesk inherits the same privacy-oriented bent that LocalMonero has. A user that fully blocks Google services will be able to use our platform without a problem.  <strong> Our platform is even fully functional without JavaScript</strong>, which ensures a level of security and privacy that will <i>never</i> be achievable on other platforms that require JavaScript to operate.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbnojs250Sbcontent;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbnojs250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Works without JavaScript'**
  String get agoradesk250Sblbc8722Sbalternative250Sbnojs250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'Our site is easily accessible through our {tor_link} (which is tuned for maximum performance for your comfort through our use of {advanced_routing}) and even  through an {i2p_link}. This ensures not only that you will be able to conceal your true IP from us (which we never associate with your account anyway), but that if for whatever reason our normal domain becomes inaccessible to you, there will be other ways for you to access our service. We value your privacy so much, {dont_ask_email}.'**
  String agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent(Object tor_link, Object advanced_routing, Object i2p_link, Object dont_ask_email);

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbadvanced8722Sbrouting.
  ///
  /// In en, this message translates to:
  /// **'advanced onion routing features'**
  String get agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbadvanced8722Sbrouting;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbi2p8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'I2P portal'**
  String get agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbi2p8722Sblink;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbno8722Sbemail.
  ///
  /// In en, this message translates to:
  /// **'we don’t even require you to provide an email when registering'**
  String get agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbno8722Sbemail;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbtor8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'Tor portal'**
  String get agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbcontent250Sbtor8722Sblink;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy-centric, censorship-resistant'**
  String get agoradesk250Sblbc8722Sbalternative250Sbprivacy250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'We offer the same fast and easy Bitcoin trading experience that LocalBitcoins used to provide, and more.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbsubtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbsupport250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'Our support team is fast, responsive and always eager to please. <strong> We’ve never had a support ticket that wasn’t answered within 24 hours</strong>. We are always easily reachable through social media, we listen intently to your criticisms and we always implement good user suggestions in record time.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbsupport250Sbcontent;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbsupport250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Stellar support'**
  String get agoradesk250Sblbc8722Sbalternative250Sbsupport250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'LocalBitcoins Alternative'**
  String get agoradesk250Sblbc8722Sbalternative250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbtrading250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'Just like LocalBitcoins, we support <strong> any payment method, any currency, anywhere</strong>. We do not remove payment methods, and, <i>unlike</i> LocalBitcoins, we <strong>fully support face-to-face cash trades</strong>. All of our trades are protected by arbitration bond. Thanks to the fact that we require funds to be held in arbitration bond before a trade can start, we ensure a smooth and quick experience for the buyer, which is essential for the popularity of the platform and repeat customers for the sellers.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbtrading250Sbcontent;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbtrading250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Safe and smooth trading'**
  String get agoradesk250Sblbc8722Sbalternative250Sbtrading250Sbtitle;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbtrust250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'LocalMonero has operated for over two years, survived the Great Cryptocurrency Market Crash of 2018, and through its <strong>community-oriented diligent service</strong> became one of the most <strong>trusted</strong> names in the <i>extremely skeptical</i> Monero community.'**
  String get agoradesk250Sblbc8722Sbalternative250Sbtrust250Sbcontent;

  /// No description provided for @agoradesk250Sblbc8722Sbalternative250Sbtrust250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted by the community'**
  String get agoradesk250Sblbc8722Sbalternative250Sbtrust250Sbtitle;

  /// No description provided for @agoradesk250Sbleft8722Sbmenu250Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'Trade'**
  String get agoradesk250Sbleft8722Sbmenu250Sbtrade;

  /// No description provided for @agoradesk250Sblink8722Sbfrom8722Sblocalmonero.
  ///
  /// In en, this message translates to:
  /// **'Trade BTC'**
  String get agoradesk250Sblink8722Sbfrom8722Sblocalmonero;

  /// No description provided for @agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Buy coins for cash (locally)'**
  String get agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sblocal8722Sbbuy;

  /// No description provided for @agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sblocal8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Sell coins for cash (locally)'**
  String get agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sblocal8722Sbsell;

  /// No description provided for @agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sbonline8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Buy coins online'**
  String get agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sbonline8722Sbbuy;

  /// No description provided for @agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sbonline8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Sell coins online'**
  String get agoradesk250Sbpost8722Sbad250Sbtrade8722Sbtype250Sbnojs250Sbonline8722Sbsell;

  /// No description provided for @agoradesk250Sbstart250Sbcoins.
  ///
  /// In en, this message translates to:
  /// **'{appName} coin trading guides'**
  String agoradesk250Sbstart250Sbcoins(Object appName);

  /// No description provided for @agoradesk250Sbtrade250Sbaction250Sberror8722Sbdialog250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'Your action has caused an error, please reload the page.'**
  String get agoradesk250Sbtrade250Sbaction250Sberror8722Sbdialog250Sbcontent;

  /// No description provided for @agoradesk250Sbtrade250Sboption250Sbcall250Sbseller250Sbconfirm8722Sbpayment8722Sband8722Sbrelease.
  ///
  /// In en, this message translates to:
  /// **'The buyer has marked the payment complete at {date}. Make sure you\'ve received the money and finalize the trade.'**
  String agoradesk250Sbtrade250Sboption250Sbcall250Sbseller250Sbconfirm8722Sbpayment8722Sband8722Sbrelease(Object date);

  /// No description provided for @agoradesk250Sbtrade250Sboption250Sbcall250Sbstep8722Sbfive250Sbbuyer250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Pay the seller'**
  String get agoradesk250Sbtrade250Sboption250Sbcall250Sbstep8722Sbfive250Sbbuyer250Sbtitle;

  /// No description provided for @agoradesk250Sbtrade250Sboption250Sbcall250Sbstep8722Sbfive250Sbseller250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the buyer to pay'**
  String get agoradesk250Sbtrade250Sboption250Sbcall250Sbstep8722Sbfive250Sbseller250Sbtitle;

  /// No description provided for @agoradesk250Sbtrade250Sboption250Sbcall250Sbstep8722Sbsix250Sbseller250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm payment'**
  String get agoradesk250Sbtrade250Sboption250Sbcall250Sbstep8722Sbsix250Sbseller250Sbtitle;

  /// No description provided for @agoradesk250Sbtrade250Sboption250Sblast8722Sbstep250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Trade completed'**
  String get agoradesk250Sbtrade250Sboption250Sblast8722Sbstep250Sbtitle;

  /// No description provided for @agoradesk250Sbtrade250Sboption250Sbpayer8722Sbcancel8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'Made a mistake or want to try another trader? If you have transferred the funds already and want to cancel now, you need to negotiate the return of your payment with your trading partner by yourself. <strong> Never cancel unless you are sure you have received your money back. </strong>'**
  String get agoradesk250Sbtrade250Sboption250Sbpayer8722Sbcancel8722Sbnotice;

  /// No description provided for @agoradesk250Sbtrade250Sboption250Sbpayment8722Sbreceiver8722Sbcancel8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'Never finalize a trade until you are 100% sure you have received the money. Scammers will try to <strong>trick you into finalizing early</strong>.'**
  String get agoradesk250Sbtrade250Sboption250Sbpayment8722Sbreceiver8722Sbcancel8722Sbnotice;

  /// No description provided for @agoradesk250Sbtrade250Sbstatus250Sbexercised250Sbcontent8722Sbbuyer.
  ///
  /// In en, this message translates to:
  /// **'buyer'**
  String get agoradesk250Sbtrade250Sbstatus250Sbexercised250Sbcontent8722Sbbuyer;

  /// No description provided for @agoradesk250Sbtrade250Sbstatus250Sbexercised250Sbcontent8722Sbseller.
  ///
  /// In en, this message translates to:
  /// **'seller'**
  String get agoradesk250Sbtrade250Sbstatus250Sbexercised250Sbcontent8722Sbseller;

  /// No description provided for @agoradesk250Sbwallet250Sbbtc250Sbsingle8722Sbuse8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'This address will automatically change after it\'s used. Despite this, If you send your {assetName} to a used deposit address, it will get credited to your account. We don\'t show used deposit addresses for privacy reasons. You may only send coins to this address from a wallet that is personally controlled by you.'**
  String agoradesk250Sbwallet250Sbbtc250Sbsingle8722Sbuse8722Sbnotice(Object assetName);

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @api8722Sbdocs250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'API docs'**
  String get api8722Sbdocs250Sblabel;

  /// No description provided for @api250Sbvalidation8722Sberror250Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Invalid address!'**
  String get api250Sbvalidation8722Sberror250Sbaddress;

  /// No description provided for @appbar8722Sbbtn250Sblogin.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get appbar8722Sbbtn250Sblogin;

  /// No description provided for @appbar8722Sbbtn250Sbsignup.
  ///
  /// In en, this message translates to:
  /// **'Sign up free'**
  String get appbar8722Sbbtn250Sbsignup;

  /// No description provided for @article250Sblast8722Sbupdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated'**
  String get article250Sblast8722Sbupdated;

  /// No description provided for @article250Sbpublished.
  ///
  /// In en, this message translates to:
  /// **'Published'**
  String get article250Sbpublished;

  /// No description provided for @as8722Sbseen8722Sbon.
  ///
  /// In en, this message translates to:
  /// **'As seen on:'**
  String get as8722Sbseen8722Sbon;

  /// No description provided for @asset8722Sbprops250Sbname250Sbasset.
  ///
  /// In en, this message translates to:
  /// **'coin'**
  String get asset8722Sbprops250Sbname250Sbasset;

  /// No description provided for @asset8722Sbprops250Sbname250Sbbtc.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin'**
  String get asset8722Sbprops250Sbname250Sbbtc;

  /// No description provided for @asset8722Sbprops250Sbname250Sbxmr.
  ///
  /// In en, this message translates to:
  /// **'Monero'**
  String get asset8722Sbprops250Sbname250Sbxmr;

  /// No description provided for @breadcrumbs250Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Sell {asset} for {currencyCode}'**
  String breadcrumbs250Sblocal8722Sbbuy(Object asset, Object currencyCode);

  /// No description provided for @breadcrumbs250Sblocal8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Buy {asset} for {currencyCode}'**
  String breadcrumbs250Sblocal8722Sbsell(Object asset, Object currencyCode);

  /// No description provided for @breadcrumbs250Sbonline8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Sell {asset} for {currencyCode}'**
  String breadcrumbs250Sbonline8722Sbbuy(Object asset, Object currencyCode);

  /// No description provided for @breadcrumbs250Sbonline8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Buy {asset} for {currencyCode}'**
  String breadcrumbs250Sbonline8722Sbsell(Object asset, Object currencyCode);

  /// No description provided for @button250Sbaccept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get button250Sbaccept;

  /// No description provided for @buy8722Sbmonero8722Sbin8722Sbany8722Sbcountry.
  ///
  /// In en, this message translates to:
  /// **'any country'**
  String get buy8722Sbmonero8722Sbin8722Sbany8722Sbcountry;

  /// No description provided for @buyer8722Sbsettlement8722Sbfee8722Sblevel250Sbcurrently.
  ///
  /// In en, this message translates to:
  /// **'currently'**
  String get buyer8722Sbsettlement8722Sbfee8722Sblevel250Sbcurrently;

  /// No description provided for @buyer8722Sbsettlement8722Sbfee8722Sblevel250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'<strong> Choose a fee level to be used during the trade settlement. </strong> The values shown here are the current rate estimations and may differ from those applied during the trade settlement. Should the amount of the trade be too low to settle the trade with the selected fee level, a lower fee level will be automatically selected during the settlement.'**
  String get buyer8722Sbsettlement8722Sbfee8722Sblevel250Sbdescription;

  /// No description provided for @buyer8722Sbsettlement8722Sbfee8722Sblevel250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Settlement fee level'**
  String get buyer8722Sbsettlement8722Sbfee8722Sblevel250Sbtitle;

  /// No description provided for @cancelled250Sbno8722Sbtrades.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t cancelled any trades yet'**
  String get cancelled250Sbno8722Sbtrades;

  /// No description provided for @cancelled250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your cancelled trades'**
  String get cancelled250Sbtitle;

  /// No description provided for @captcha250Sbhelper8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Enter the text on the image above'**
  String get captcha250Sbhelper8722Sbtext;

  /// No description provided for @chat250Sbattach.
  ///
  /// In en, this message translates to:
  /// **'Attach a file'**
  String get chat250Sbattach;

  /// No description provided for @chat250Sbattachment.
  ///
  /// In en, this message translates to:
  /// **'Attachment'**
  String get chat250Sbattachment;

  /// No description provided for @chat250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Send message'**
  String get chat250Sbbtn;

  /// No description provided for @chat250Sbcash8722Sbdeposit8722Sbseller8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'<strong>Warning:</strong> there have been cases of sellers getting a check deposited that was later reversed. Make sure to verify (e.g. by calling the bank) any deposit that you get!'**
  String get chat250Sbcash8722Sbdeposit8722Sbseller8722Sbwarning;

  /// No description provided for @chat250Sbeu8722Sbfraud8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'There seems to be a surge of bank account fraud in our European region right now. <br /> We advise all our traders in the European region to exercise extreme caution when dealing with new trading partners, such as asking for a photograph of themselves holding an ID and a piece of paper with trade information (such as trade ID, amount, username and date). Keep in mind that fraudsters might be in possession of leaked or stolen KYC documents. <br />'**
  String get chat250Sbeu8722Sbfraud8722Sbwarning;

  /// No description provided for @chat250Sbinput8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'<strong>Enter</strong> to start a new line, <strong>Alt+Enter</strong> to send a message. 65536 characters maximum. {appName} encrypts and stores chat messages for 180 days for dispute mediation purposes.'**
  String chat250Sbinput8722Sbtip(Object appName);

  /// No description provided for @chat250Sbinput8722Sbtip8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'{appName} encrypts and stores chat messages for 180 days for dispute mediation purposes.'**
  String chat250Sbinput8722Sbtip8722Sbshort(Object appName);

  /// No description provided for @chat250Sbinput8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Write a message...'**
  String get chat250Sbinput8722Sbtitle;

  /// No description provided for @chat250Sbmitm8722Sbcryptocurency8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'Warning: only get the seller\'s address in this trade chat or from the payment details section on this trade page and do not send payment transaction IDs outside of this trade chat! We also recommend that you keep all communications in this trade chat.'**
  String get chat250Sbmitm8722Sbcryptocurency8722Sbwarning;

  /// No description provided for @chat250Sbmitm8722Sbwarning250Sb0.
  ///
  /// In en, this message translates to:
  /// **'⚠️ PSA: there is a new scammer active that acts as a man in the middle. The scammer contacts you off-platform pretending to be a seller on the platform offering you to buy XMR from them in exchange for BTC at a reduced price (e.g. pay 8 XMR worth of BTC to buy 10 XMR). At the same time they open a trade with the seller that they\'re impersonating on the platform for the reduced amount.'**
  String get chat250Sbmitm8722Sbwarning250Sb0;

  /// No description provided for @chat250Sbmitm8722Sbwarning250Sb1.
  ///
  /// In en, this message translates to:
  /// **'<p>The scammer then tells the buyer to start the trade for the full amount and pay the reduced amount, while at the same time monitoring the seller\'s receiving address on the blockchain and watching for the legitimate buyer\'s reduced amount transaction. The scammer then takes the legitimate buyer\'s txid and provides it to the seller as proof of payment. The seller releases the coins to the scammer since they have two trades open, one for the full amount from the legitimate buyer and one for the reduced amount from the scammer, thinking that it was the scammer who paid because the amount matches their trade amount.</p>\n\n<p> <strong> DO NOT CONDUCT TRADES OFF-PLATFORM. IF SOMEONE APPROACHES YOU OFF-PLATFORM OPEN A TRADE WITH THEM ON THE PLATFORM AND VERIFY THAT THEY ARE WHO THEY SAY THEY ARE AND MAINTAIN ALL COMMUNICATIONS THERE. </strong> </p>\n\n<p> <strong> SELLERS WHO ACCEPT PAYMENTS ON TRANSPARENT CRYPTO CHAINS: MAKE SURE YOU DO ADEQUATE PAYMENT DIFFERENTIATION BETWEEN YOUR CLIENTS AND TRADES TO AVOID FALLING VICTIM TO THIS. </strong> </p>\n\n<p> Always use different addresses for each trade on a publicly searchable crypto like BTC. </p>'**
  String get chat250Sbmitm8722Sbwarning250Sb1;

  /// No description provided for @chat250Sbno8722Sbmessages.
  ///
  /// In en, this message translates to:
  /// **'No messages yet'**
  String get chat250Sbno8722Sbmessages;

  /// No description provided for @chat250Sbsecurity8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'Do not open any external links you receive in the chat or download any files received from other users externally. It is best to use a separate browser for all your {appName} activity.'**
  String chat250Sbsecurity8722Sbwarning(Object appName);

  /// No description provided for @chat250Sbselect8722Sbfile.
  ///
  /// In en, this message translates to:
  /// **'Select File...'**
  String get chat250Sbselect8722Sbfile;

  /// No description provided for @chat250Sbsend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get chat250Sbsend;

  /// No description provided for @chat250Sbshortcuts.
  ///
  /// In en, this message translates to:
  /// **'Enter: new line, Alt+Enter: send'**
  String get chat250Sbshortcuts;

  /// No description provided for @chat250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Send message to {user}'**
  String chat250Sbtitle(Object user);

  /// No description provided for @chat250Sbupload8722Sberror8722Sbdialog8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Attached files must be .jpg or .png and 5MB maximum.'**
  String get chat250Sbupload8722Sberror8722Sbdialog8722Sbtext;

  /// No description provided for @chat250Sbupload8722Sberror8722Sbdialog8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Uploading error'**
  String get chat250Sbupload8722Sberror8722Sbdialog8722Sbtitle;

  /// No description provided for @chat250Sbupload8722Sbfile.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get chat250Sbupload8722Sbfile;

  /// No description provided for @chat250Sbupload8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Accepted file types: .jpg, .png. 5MB maximum.'**
  String get chat250Sbupload8722Sbtip;

  /// No description provided for @chat250Sbzoom8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Tip: press on the message three times to zoom in'**
  String get chat250Sbzoom8722Sbtip;

  /// No description provided for @completed250Sbno8722Sbtrades.
  ///
  /// In en, this message translates to:
  /// **'You haven\'t completed any trades yet'**
  String get completed250Sbno8722Sbtrades;

  /// No description provided for @completed250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your completed trades'**
  String get completed250Sbtitle;

  /// No description provided for @contact250Sble.
  ///
  /// In en, this message translates to:
  /// **'For law enforcement inquires, please read {lawEnforcementinquiries}.'**
  String contact250Sble(Object lawEnforcementinquiries);

  /// No description provided for @contact250Sble250Sbpolicy8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'our policy'**
  String get contact250Sble250Sbpolicy8722Sblink;

  /// No description provided for @contact250Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'To contact our support you can {openAticket} or send an email to {email}'**
  String contact250Sbtext8722Sb0(Object openAticket, Object email);

  /// No description provided for @contact250Sbtext8722Sb08722Sbopen8722Sba8722Sbticket.
  ///
  /// In en, this message translates to:
  /// **'open a ticket'**
  String get contact250Sbtext8722Sb08722Sbopen8722Sba8722Sbticket;

  /// No description provided for @contact250Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'For business, press and other inquires contact us at {email}'**
  String contact250Sbtext8722Sb1(Object email);

  /// No description provided for @contact250Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'You can download the {appName} logo in high quality {here}.'**
  String contact250Sbtext8722Sb2(Object appName, Object here);

  /// No description provided for @contact250Sbtext8722Sb28722Sbhere.
  ///
  /// In en, this message translates to:
  /// **'here'**
  String get contact250Sbtext8722Sb28722Sbhere;

  /// No description provided for @contact250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get contact250Sbtitle;

  /// No description provided for @coupons250Sbcode8722Sbinput250Sbplaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type in your code here...'**
  String get coupons250Sbcode8722Sbinput250Sbplaceholder;

  /// No description provided for @coupons250Sbcoupon250Sbbutton250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get coupons250Sbcoupon250Sbbutton250Sblabel;

  /// No description provided for @coupons250Sbcoupon250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'{percent}% fee rebate on {assets} {types} trades.'**
  String coupons250Sbcoupon250Sbdescription(Object percent, Object assets, Object types);

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sblocal_buy.
  ///
  /// In en, this message translates to:
  /// **'local buy'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sblocal_buy;

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sblocal_sell.
  ///
  /// In en, this message translates to:
  /// **'local sell'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sblocal_sell;

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sbonline_buy.
  ///
  /// In en, this message translates to:
  /// **'online buy'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sbonline_buy;

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sbonline_sell.
  ///
  /// In en, this message translates to:
  /// **'online sell'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sbonline_sell;

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sbput_buy.
  ///
  /// In en, this message translates to:
  /// **'put option buy'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sbput_buy;

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sbput_sell.
  ///
  /// In en, this message translates to:
  /// **'put option sell'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sbput_sell;

  /// No description provided for @coupons250Sbcoupon250Sbexpired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get coupons250Sbcoupon250Sbexpired;

  /// No description provided for @coupons250Sbcoupon250Sbexpires.
  ///
  /// In en, this message translates to:
  /// **'Expires'**
  String get coupons250Sbcoupon250Sbexpires;

  /// No description provided for @coupons250Sbcoupon250Sbtitle250Sbactive.
  ///
  /// In en, this message translates to:
  /// **'Active coupon'**
  String get coupons250Sbcoupon250Sbtitle250Sbactive;

  /// No description provided for @coupons250Sbcoupon250Sbtitle250Sbexpired.
  ///
  /// In en, this message translates to:
  /// **'Expired coupon'**
  String get coupons250Sbcoupon250Sbtitle250Sbexpired;

  /// No description provided for @coupons250Sbcoupon250Sbtitle250Sbredeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem coupon'**
  String get coupons250Sbcoupon250Sbtitle250Sbredeem;

  /// No description provided for @coupons250Sberror250Sb175.
  ///
  /// In en, this message translates to:
  /// **'Invalid coupon code'**
  String get coupons250Sberror250Sb175;

  /// No description provided for @coupons250Sberror250Sb176.
  ///
  /// In en, this message translates to:
  /// **'Coupon has already expired'**
  String get coupons250Sberror250Sb176;

  /// No description provided for @coupons250Sberror250Sb177.
  ///
  /// In en, this message translates to:
  /// **'This coupon is out of stock'**
  String get coupons250Sberror250Sb177;

  /// No description provided for @coupons250Sberror250Sb179.
  ///
  /// In en, this message translates to:
  /// **'Invalid coupon code'**
  String get coupons250Sberror250Sb179;

  /// No description provided for @coupons250Sberror250Sb180.
  ///
  /// In en, this message translates to:
  /// **'Coupon has already expired'**
  String get coupons250Sberror250Sb180;

  /// No description provided for @coupons250Sberror250Sb181.
  ///
  /// In en, this message translates to:
  /// **'This coupon can only be redeemed during registration'**
  String get coupons250Sberror250Sb181;

  /// No description provided for @coupons250Sberror250Sb182.
  ///
  /// In en, this message translates to:
  /// **'You\'ve already redeemed this coupon'**
  String get coupons250Sberror250Sb182;

  /// No description provided for @coupons250Sberror250Sb183.
  ///
  /// In en, this message translates to:
  /// **'This coupon is out of stock'**
  String get coupons250Sberror250Sb183;

  /// No description provided for @coupons250Sberror250Sb184.
  ///
  /// In en, this message translates to:
  /// **'You can only have one active coupon at a time'**
  String get coupons250Sberror250Sb184;

  /// No description provided for @coupons250Sberror250Sbdialog250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Redeeming coupon error'**
  String get coupons250Sberror250Sbdialog250Sbtitle;

  /// No description provided for @coupons250Sberror250Sbgeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong while redeeming a coupon. If that doesn\'t seem right, please contact the support. Error code: {error_code}.'**
  String coupons250Sberror250Sbgeneric(Object error_code);

  /// No description provided for @coupons250Sbshow8722Sbexpired8722Sbbtn250Sbhide.
  ///
  /// In en, this message translates to:
  /// **'Hide your expired coupons'**
  String get coupons250Sbshow8722Sbexpired8722Sbbtn250Sbhide;

  /// No description provided for @coupons250Sbshow8722Sbexpired8722Sbbtn250Sbshow.
  ///
  /// In en, this message translates to:
  /// **'Show your expired coupons'**
  String get coupons250Sbshow8722Sbexpired8722Sbbtn250Sbshow;

  /// No description provided for @coupons250Sbsignup250Sbshow8722Sbcoupon8722Sbinput8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'I have a coupon code'**
  String get coupons250Sbsignup250Sbshow8722Sbcoupon8722Sbinput8722Sbbtn;

  /// No description provided for @coupons250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your active and expired coupons will be shown here. If you have a coupon code, you can redeem it here.'**
  String get coupons250Sbsubtitle;

  /// No description provided for @coupons250Sbterms8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'You can only have one coupon active at a time.'**
  String get coupons250Sbterms8722Sb0;

  /// No description provided for @coupons250Sbterms8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'You cannot deactivate a coupon after redeeming it.'**
  String get coupons250Sbterms8722Sb1;

  /// No description provided for @coupons250Sbterms8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Each coupon is only redeemable once per account.'**
  String get coupons250Sbterms8722Sb2;

  /// No description provided for @coupons250Sbterms8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'The fee is rebated only to the party which pays the arbitration protection fee for the trade originally.'**
  String get coupons250Sbterms8722Sb3;

  /// No description provided for @coupons250Sbterms8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'The fee rebate will happen when the trade closes.'**
  String get coupons250Sbterms8722Sb4;

  /// No description provided for @coupons250Sbterms8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'If you earn affiliate commissions, your total coupon rebates for a given period will be subtracted from your affiliate earnings for the same given period. If your total rebate amount for a given period is greater than or equal to the affiliate earnings for the same given period, you will not receive any affiliate earnings for that given period.'**
  String get coupons250Sbterms8722Sb5;

  /// No description provided for @coupons250Sbterms8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'{appName} reserves the right to deactivate your coupon at any time without notice or compensation.'**
  String coupons250Sbterms8722Sb6(Object appName);

  /// No description provided for @coupons250Sbterms250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Coupons terms and conditions'**
  String get coupons250Sbterms250Sbtitle;

  /// No description provided for @coupons250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Coupons'**
  String get coupons250Sbtitle;

  /// No description provided for @dashboard250Sbad250Sbdelete8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Delete ad'**
  String get dashboard250Sbad250Sbdelete8722Sbbtn;

  /// No description provided for @dashboard250Sbad250Sbdelete8722Sbdialog8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'This will delete the ad permanently. Consider hiding the ad by setting visibility to false.'**
  String get dashboard250Sbad250Sbdelete8722Sbdialog8722Sbtext;

  /// No description provided for @dashboard250Sbad250Sbdelete8722Sbdialog8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm delete'**
  String get dashboard250Sbad250Sbdelete8722Sbdialog8722Sbtitle;

  /// No description provided for @dashboard250Sbad250Sbemail8722Sbverified.
  ///
  /// In en, this message translates to:
  /// **'This ad is for users with verified email only'**
  String get dashboard250Sbad250Sbemail8722Sbverified;

  /// No description provided for @dashboard250Sbad250Sbfor8722Sbtrusted.
  ///
  /// In en, this message translates to:
  /// **'For trusted users only'**
  String get dashboard250Sbad250Sbfor8722Sbtrusted;

  /// No description provided for @dashboard250Sbad250Sbmethod250Sbcash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get dashboard250Sbad250Sbmethod250Sbcash;

  /// No description provided for @dashboard250Sbad250Sbprice8722Sbtype250Sbmarket8722Sbnegative.
  ///
  /// In en, this message translates to:
  /// **'Market {percent}'**
  String dashboard250Sbad250Sbprice8722Sbtype250Sbmarket8722Sbnegative(Object percent);

  /// No description provided for @dashboard250Sbad250Sbprice8722Sbtype250Sbmarket8722Sbpositive.
  ///
  /// In en, this message translates to:
  /// **'Market +{percent}'**
  String dashboard250Sbad250Sbprice8722Sbtype250Sbmarket8722Sbpositive(Object percent);

  /// No description provided for @dashboard250Sbad250Sbtable8722Sbcreated8722Sbat.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get dashboard250Sbad250Sbtable8722Sbcreated8722Sbat;

  /// No description provided for @dashboard250Sbad250Sbtable8722Sbid.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get dashboard250Sbad250Sbtable8722Sbid;

  /// No description provided for @dashboard250Sbad250Sbtable8722Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'Method'**
  String get dashboard250Sbad250Sbtable8722Sbmethod;

  /// No description provided for @dashboard250Sbad250Sbtable8722Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get dashboard250Sbad250Sbtable8722Sbprice;

  /// No description provided for @dashboard250Sbad250Sbtable8722Sbtype.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get dashboard250Sbad250Sbtable8722Sbtype;

  /// No description provided for @dashboard250Sbad250Sbtable8722Sbvisible.
  ///
  /// In en, this message translates to:
  /// **'Visible'**
  String get dashboard250Sbad250Sbtable8722Sbvisible;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbdelete8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'This will delete selected ads permanently. Consider hiding them by setting visibility to false.'**
  String get dashboard250Sbads250Sbbulk8722Sbdelete8722Sbwarning;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbapply.
  ///
  /// In en, this message translates to:
  /// **'Apply to selected'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbapply;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbboolean250Sbfalse.
  ///
  /// In en, this message translates to:
  /// **'False'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbboolean250Sbfalse;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbboolean250Sbtrue.
  ///
  /// In en, this message translates to:
  /// **'True'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbboolean250Sbtrue;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sberror.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong while updating multiple ads. Some or all of the ads might\'ve not been updated. You\'ve probably selected too many ads at once. Please refresh the page and try again.'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sberror;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbany.
  ///
  /// In en, this message translates to:
  /// **'Any ads'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbany;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbsame8722Sbasset8722Sbbuys.
  ///
  /// In en, this message translates to:
  /// **'Same-asset buy ads only'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbsame8722Sbasset8722Sbbuys;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbsame8722Sbcurrency.
  ///
  /// In en, this message translates to:
  /// **'Same-currency ads only'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbsame8722Sbcurrency;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbsells.
  ///
  /// In en, this message translates to:
  /// **'Sell ads only'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbgroup250Sbsells;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbsetting8722Sbselect250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Choose setting'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbsetting8722Sbselect250Sblabel;

  /// No description provided for @dashboard250Sbads250Sbbulk8722Sbedit250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage multiple ads'**
  String get dashboard250Sbads250Sbbulk8722Sbedit250Sbtitle;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbapply8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Apply filters'**
  String get dashboard250Sbads250Sbfilter250Sbapply8722Sbbtn;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbasset.
  ///
  /// In en, this message translates to:
  /// **'Asset'**
  String get dashboard250Sbads250Sbfilter250Sbasset;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbdelete8722Sbselected.
  ///
  /// In en, this message translates to:
  /// **'Delete selected'**
  String get dashboard250Sbads250Sbfilter250Sbdelete8722Sbselected;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbno8722Sbads.
  ///
  /// In en, this message translates to:
  /// **'No ads here'**
  String get dashboard250Sbads250Sbfilter250Sbno8722Sbads;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbreset8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Reset filters'**
  String get dashboard250Sbads250Sbfilter250Sbreset8722Sbbtn;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbsort.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get dashboard250Sbads250Sbfilter250Sbsort;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbtype.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get dashboard250Sbads250Sbfilter250Sbtype;

  /// No description provided for @dashboard250Sbads250Sbfilter250Sbvisibility.
  ///
  /// In en, this message translates to:
  /// **'Visibility'**
  String get dashboard250Sbads250Sbfilter250Sbvisibility;

  /// No description provided for @dashboard250Sbads250Sbload8722Sball.
  ///
  /// In en, this message translates to:
  /// **'Load all ads'**
  String get dashboard250Sbads250Sbload8722Sball;

  /// No description provided for @dashboard250Sbads250Sbshowing8722Sball.
  ///
  /// In en, this message translates to:
  /// **'Showing all ads'**
  String get dashboard250Sbads250Sbshowing8722Sball;

  /// No description provided for @dashboard250Sbblocked.
  ///
  /// In en, this message translates to:
  /// **'Blocked'**
  String get dashboard250Sbblocked;

  /// No description provided for @dashboard250Sbfilter250Sball.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get dashboard250Sbfilter250Sball;

  /// No description provided for @dashboard250Sbfilter250Sbrole250Sbboth.
  ///
  /// In en, this message translates to:
  /// **'Buying/Selling'**
  String get dashboard250Sbfilter250Sbrole250Sbboth;

  /// No description provided for @dashboard250Sbfilter250Sbrole250Sbbuying.
  ///
  /// In en, this message translates to:
  /// **'Buying'**
  String get dashboard250Sbfilter250Sbrole250Sbbuying;

  /// No description provided for @dashboard250Sbfilter250Sbrole250Sbselling.
  ///
  /// In en, this message translates to:
  /// **'Selling'**
  String get dashboard250Sbfilter250Sbrole250Sbselling;

  /// No description provided for @dashboard250Sbfilter250Sbvisibility250Sbhidden.
  ///
  /// In en, this message translates to:
  /// **'Hidden'**
  String get dashboard250Sbfilter250Sbvisibility250Sbhidden;

  /// No description provided for @dashboard250Sbfilter250Sbvisibility250Sbvisible.
  ///
  /// In en, this message translates to:
  /// **'Visible'**
  String get dashboard250Sbfilter250Sbvisibility250Sbvisible;

  /// No description provided for @dashboard250Sbopen8722Sbads8722Sbno8722Sbads.
  ///
  /// In en, this message translates to:
  /// **'You currently have no ads'**
  String get dashboard250Sbopen8722Sbads8722Sbno8722Sbads;

  /// No description provided for @dashboard250Sbopen8722Sbads8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your advertisements'**
  String get dashboard250Sbopen8722Sbads8722Sbtitle;

  /// No description provided for @dashboard250Sbopen8722Sbtrades8722Sbno8722Sbtrades.
  ///
  /// In en, this message translates to:
  /// **'You currently have no open trades'**
  String get dashboard250Sbopen8722Sbtrades8722Sbno8722Sbtrades;

  /// No description provided for @dashboard250Sbopen8722Sbtrades8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your open trades'**
  String get dashboard250Sbopen8722Sbtrades8722Sbtitle;

  /// No description provided for @dashboard250Sbpost8722Sbad8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Create new ad'**
  String get dashboard250Sbpost8722Sbad8722Sbbtn;

  /// No description provided for @dashboard250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard250Sbtitle;

  /// No description provided for @dashboard250Sbtrade250Sbcancelled8722Sbat.
  ///
  /// In en, this message translates to:
  /// **'Cancelled at'**
  String get dashboard250Sbtrade250Sbcancelled8722Sbat;

  /// No description provided for @dashboard250Sbtrade250Sbcompleted8722Sbat.
  ///
  /// In en, this message translates to:
  /// **'Completed at'**
  String get dashboard250Sbtrade250Sbcompleted8722Sbat;

  /// No description provided for @dashboard250Sbtrade250Sbcreated8722Sbat.
  ///
  /// In en, this message translates to:
  /// **'Creation time'**
  String get dashboard250Sbtrade250Sbcreated8722Sbat;

  /// No description provided for @dashboard250Sbtrade250Sbstatus250Sbcancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get dashboard250Sbtrade250Sbstatus250Sbcancelled;

  /// No description provided for @dashboard250Sbtrade250Sbstatus250Sbcompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get dashboard250Sbtrade250Sbstatus250Sbcompleted;

  /// No description provided for @dashboard250Sbtrade250Sbstatus250Sbdisputed.
  ///
  /// In en, this message translates to:
  /// **'Disputed'**
  String get dashboard250Sbtrade250Sbstatus250Sbdisputed;

  /// No description provided for @dashboard250Sbtrade250Sbstatus250Sbfunded.
  ///
  /// In en, this message translates to:
  /// **'Funded'**
  String get dashboard250Sbtrade250Sbstatus250Sbfunded;

  /// No description provided for @dashboard250Sbtrade250Sbstatus250Sbnot8722Sbpaid.
  ///
  /// In en, this message translates to:
  /// **'Waiting for payment'**
  String get dashboard250Sbtrade250Sbstatus250Sbnot8722Sbpaid;

  /// No description provided for @dashboard250Sbtrade250Sbstatus250Sbpaid.
  ///
  /// In en, this message translates to:
  /// **'Paid, waiting to finalize'**
  String get dashboard250Sbtrade250Sbstatus250Sbpaid;

  /// No description provided for @dashboard250Sbtrade250Sbstatus250Sbunfunded.
  ///
  /// In en, this message translates to:
  /// **'Unfunded'**
  String get dashboard250Sbtrade250Sbstatus250Sbunfunded;

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbamount8722Sbfiat58Sb.
  ///
  /// In en, this message translates to:
  /// **'Amount (currency)'**
  String get dashboard250Sbtrade250Sbtable8722Sbamount8722Sbfiat58Sb;

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbamount8722Sbxmr58Sb.
  ///
  /// In en, this message translates to:
  /// **'Amount ({assetSymbol})'**
  String dashboard250Sbtrade250Sbtable8722Sbamount8722Sbxmr58Sb(Object assetSymbol);

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbid58Sb.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get dashboard250Sbtrade250Sbtable8722Sbid58Sb;

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbmethod58Sb.
  ///
  /// In en, this message translates to:
  /// **'Method'**
  String get dashboard250Sbtrade250Sbtable8722Sbmethod58Sb;

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbpartner58Sb.
  ///
  /// In en, this message translates to:
  /// **'Trading partner'**
  String get dashboard250Sbtrade250Sbtable8722Sbpartner58Sb;

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbstatus58Sb.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get dashboard250Sbtrade250Sbtable8722Sbstatus58Sb;

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbtype58Sb.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get dashboard250Sbtrade250Sbtable8722Sbtype58Sb;

  /// No description provided for @dashboard250Sbtrade250Sbtable8722Sbview8722Sbbtn58Sb.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get dashboard250Sbtrade250Sbtable8722Sbview8722Sbbtn58Sb;

  /// No description provided for @dashboard250Sbtrade250Sbuser8722Sbdeleted.
  ///
  /// In en, this message translates to:
  /// **'[deleted]'**
  String get dashboard250Sbtrade250Sbuser8722Sbdeleted;

  /// No description provided for @dashboard250Sbtrades250Sbfilter250Sbno8722Sbtrades.
  ///
  /// In en, this message translates to:
  /// **'No trades here'**
  String get dashboard250Sbtrades250Sbfilter250Sbno8722Sbtrades;

  /// No description provided for @dashboard250Sbtrades250Sbfilter250Sbrole.
  ///
  /// In en, this message translates to:
  /// **'I am...'**
  String get dashboard250Sbtrades250Sbfilter250Sbrole;

  /// No description provided for @dashboard250Sbtrusted.
  ///
  /// In en, this message translates to:
  /// **'Trusted'**
  String get dashboard250Sbtrusted;

  /// No description provided for @dashboard250Sbtrusted8722Sbusers.
  ///
  /// In en, this message translates to:
  /// **'Your trusted/blocked users'**
  String get dashboard250Sbtrusted8722Sbusers;

  /// No description provided for @dashboard250Sbwarning250Sbno8722Sbbuyer8722Sbsettlement8722Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'URGENT ACTION NEEDED: one or more of your buy ads doesn\'t have a settlement wallet address set. Provide it as soon as possible to avoid having those ads hidden. You can use the filters and the mass ad edit feature to set it for all the relevant ads at once.'**
  String get dashboard250Sbwarning250Sbno8722Sbbuyer8722Sbsettlement8722Sbaddress;

  /// No description provided for @dashboards250Sbads250Sbfilter250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Filter ads'**
  String get dashboards250Sbads250Sbfilter250Sbtitle;

  /// No description provided for @dashboards250Sbtrades250Sbfilter250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Filter trades'**
  String get dashboards250Sbtrades250Sbfilter250Sbtitle;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Get Monero. Fast, easy and safe. Near you.'**
  String get description;

  /// No description provided for @description250Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'You earn 20% of trading fees generated by users that you referred. These payouts will be made on a daily basis as Monero into your {appName} wallet. Your referred users will generate commission for you for a period of 1 year from their date of registration.'**
  String description250Sbaffiliate(Object appName);

  /// No description provided for @description250Sbaffiliate57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'You earn 20% of trading fees generated by users that you referred. These payouts will be made on a daily basis as relevant cryptocurrencies into your {appName} wallet. Your referred users will generate commission for you for a period of 1 year from their date of registration.'**
  String description250Sbaffiliate57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbfaq.
  ///
  /// In en, this message translates to:
  /// **'Find answers to frequently asked questions about Monero trading, and other {appName}-related questions.'**
  String description250Sbfaq(Object appName);

  /// No description provided for @description250Sbfaq57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Find answers to frequently asked questions about cryptocurrency trading, and other {appName}-related questions.'**
  String description250Sbfaq57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbfee.
  ///
  /// In en, this message translates to:
  /// **'Registering, buying and selling Monero is completely free. {appName} users who create advertisements are charged a 1% arbitration protection fee for every completed trade.'**
  String description250Sbfee(Object appName);

  /// No description provided for @description250Sbfee57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Registering, buying and selling cryptocurrencies is completely free. {appName} users who create advertisements are charged a 1% arbitration protection fee for every completed trade.'**
  String description250Sbfee57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbguide250Sb2fa.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you set up Two Factor Authentication for your {appName} account.'**
  String description250Sbguide250Sb2fa(Object appName);

  /// No description provided for @description250Sbguide250Sbbtc.
  ///
  /// In en, this message translates to:
  /// **'Are the days when you could buy bitcoins with a credit card instantly and with no verification behind us? Not quite. Here, we present to you an easy, anonymous, private and quick way to acquire bitcoins with cash in just a few steps.'**
  String get description250Sbguide250Sbbtc;

  /// No description provided for @description250Sbguide250Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand how to buy Monero with popular online payment methods (such as bank transfer, PayPal, credit card etc.). {appName} is secure, fast and easy way to purchase Monero anonymously without ID verification. '**
  String description250Sbguide250Sbbuy(Object appName);

  /// No description provided for @description250Sbguide250Sbbuy57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand how to buy cryptocurrency with popular online payment methods (such as bank transfer, PayPal, credit card etc.). {appName} is secure, fast and easy way to purchase cryptocurrency anonymously without ID verification. '**
  String description250Sbguide250Sbbuy57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbguide250Sblocal.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand how to anonymously buy or sell Monero for cash via local meetup. {appName} is secure, fast and easy way to trade XMR without ID verification. '**
  String description250Sbguide250Sblocal(Object appName);

  /// No description provided for @description250Sbguide250Sblocal57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand how to anonymously buy or sell cryptocurrencies for cash via local meetup. At {appName} you can trade cryptocurrencies without ID verification. '**
  String description250Sbguide250Sblocal57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbguide250Sbsell.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand how to sell Monero with popular online payment methods (such as bank transfer, PayPal, credit card etc.). {appName} is secure, fast and easy way to sell Monero without ID verification. '**
  String description250Sbguide250Sbsell(Object appName);

  /// No description provided for @description250Sbguide250Sbsell57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand how to sell cryptocurrency with popular online payment methods (such as bank transfer, PayPal, credit card etc.). {appName} is secure, fast and easy way to sell cryptocurrency without ID verification. '**
  String description250Sbguide250Sbsell57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbguide250Sbtelegram.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you configure Telegram notifications for {appName}. '**
  String description250Sbguide250Sbtelegram(Object appName);

  /// No description provided for @description250Sbguide250Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand the basics of trading Monero on a P2P exchange {appName}.'**
  String description250Sbguide250Sbtrade(Object appName);

  /// No description provided for @description250Sbguide250Sbtrade57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'This guide will help you understand the basics of trading cryptocurrency on a P2P OTC desk {appName}.'**
  String description250Sbguide250Sbtrade57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbguide250Sbxmr.
  ///
  /// In en, this message translates to:
  /// **'How to buy Monero anonymously without ID? {appName} offers a way to buy XMR without KYC verification, so you can protect your privacy!'**
  String description250Sbguide250Sbxmr(Object appName);

  /// No description provided for @description250Sbhomepage.
  ///
  /// In en, this message translates to:
  /// **'Buy and sell Monero (XMR) online without ID verification - use PayPal, credit/debit card or bank transfer, gift cards, cash by mail, Venmo, BTC or any other method.'**
  String get description250Sbhomepage;

  /// No description provided for @description250Sbhomepage57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Buy and sell Bitcoin online without ID verification - use PayPal, credit/debit card or bank transfer, gift cards, cash by mail, Venmo or any other method.'**
  String get description250Sbhomepage57Sbagoradesk;

  /// No description provided for @description250Sblogin.
  ///
  /// In en, this message translates to:
  /// **'Login to your {appName} account to start trading now.'**
  String description250Sblogin(Object appName);

  /// No description provided for @description250Sbnew.
  ///
  /// In en, this message translates to:
  /// **'Create a new advertisement to buy or sell Monero locally for cash or online.'**
  String get description250Sbnew;

  /// No description provided for @description250Sbnew57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Create a new advertisement to buy or sell cryptocurrency.'**
  String get description250Sbnew57Sbagoradesk;

  /// No description provided for @description250Sbsignup.
  ///
  /// In en, this message translates to:
  /// **'Create a {appName} account — its completely free - and start trading Monero!'**
  String description250Sbsignup(Object appName);

  /// No description provided for @description250Sbsignup57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Create a {appName} account — its completely free - and start trading cryptocurrencies!'**
  String description250Sbsignup57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbstart.
  ///
  /// In en, this message translates to:
  /// **'{appName} guides to help you understand basic and advanced principles of buying or selling Monero.'**
  String description250Sbstart(Object appName);

  /// No description provided for @description250Sbstart57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'{appName} guides to help you understand basic and advanced principles of buying or selling Bitcoin and Monero.'**
  String description250Sbstart57Sbagoradesk(Object appName);

  /// No description provided for @description250Sbstatistics.
  ///
  /// In en, this message translates to:
  /// **'Get the average {appName} price based on all trades in the past 1, 6, 12 or 24 hours.'**
  String description250Sbstatistics(Object appName);

  /// No description provided for @description250Sbuser.
  ///
  /// In en, this message translates to:
  /// **'{user}\'s {appName} profile.'**
  String description250Sbuser(Object user, Object appName);

  /// No description provided for @description250Sbuser8722Sbads.
  ///
  /// In en, this message translates to:
  /// **'{user}\'s {appName} ads'**
  String description250Sbuser8722Sbads(Object user, Object appName);

  /// No description provided for @distance250Sbkilometers.
  ///
  /// In en, this message translates to:
  /// **'km'**
  String get distance250Sbkilometers;

  /// No description provided for @distance250Sbmeters.
  ///
  /// In en, this message translates to:
  /// **'m'**
  String get distance250Sbmeters;

  /// No description provided for @document8722Sbtitle250Sb404.
  ///
  /// In en, this message translates to:
  /// **'Page not found'**
  String get document8722Sbtitle250Sb404;

  /// No description provided for @document8722Sbtitle250Sbabout.
  ///
  /// In en, this message translates to:
  /// **'About us'**
  String get document8722Sbtitle250Sbabout;

  /// No description provided for @document8722Sbtitle250Sbad8722Sbdeleted.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get document8722Sbtitle250Sbad8722Sbdeleted;

  /// No description provided for @document8722Sbtitle250Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'Affiliate program'**
  String get document8722Sbtitle250Sbaffiliate;

  /// No description provided for @document8722Sbtitle250Sbcancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled trades'**
  String get document8722Sbtitle250Sbcancelled;

  /// No description provided for @document8722Sbtitle250Sbcompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed trades'**
  String get document8722Sbtitle250Sbcompleted;

  /// No description provided for @document8722Sbtitle250Sbcontact.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get document8722Sbtitle250Sbcontact;

  /// No description provided for @document8722Sbtitle250Sbdashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get document8722Sbtitle250Sbdashboard;

  /// No description provided for @document8722Sbtitle250Sbedit.
  ///
  /// In en, this message translates to:
  /// **'Edit an ad'**
  String get document8722Sbtitle250Sbedit;

  /// No description provided for @document8722Sbtitle250Sberror.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get document8722Sbtitle250Sberror;

  /// No description provided for @document8722Sbtitle250Sbfaq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get document8722Sbtitle250Sbfaq;

  /// No description provided for @document8722Sbtitle250Sbfee.
  ///
  /// In en, this message translates to:
  /// **'Fees'**
  String get document8722Sbtitle250Sbfee;

  /// No description provided for @document8722Sbtitle250Sbfeedback.
  ///
  /// In en, this message translates to:
  /// **'{user}\'s feedback'**
  String document8722Sbtitle250Sbfeedback(Object user);

  /// No description provided for @document8722Sbtitle250Sbguide250Sb2fa.
  ///
  /// In en, this message translates to:
  /// **'How to enable 2FA'**
  String get document8722Sbtitle250Sbguide250Sb2fa;

  /// No description provided for @document8722Sbtitle250Sbguide250Sbbtc.
  ///
  /// In en, this message translates to:
  /// **'How To Buy Bitcoins Anonymously (Without ID) Guide - The Most Private Way in {year}'**
  String document8722Sbtitle250Sbguide250Sbbtc(Object year);

  /// No description provided for @document8722Sbtitle250Sbguide250Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'How to buy Monero'**
  String get document8722Sbtitle250Sbguide250Sbbuy;

  /// No description provided for @document8722Sbtitle250Sbguide250Sbbuy57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How to buy cryptocurrency'**
  String get document8722Sbtitle250Sbguide250Sbbuy57Sbagoradesk;

  /// No description provided for @document8722Sbtitle250Sbguide250Sbsell.
  ///
  /// In en, this message translates to:
  /// **'How to sell Monero'**
  String get document8722Sbtitle250Sbguide250Sbsell;

  /// No description provided for @document8722Sbtitle250Sbguide250Sbsell57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How to sell cryptocurrency'**
  String get document8722Sbtitle250Sbguide250Sbsell57Sbagoradesk;

  /// No description provided for @document8722Sbtitle250Sbguide250Sbxmr.
  ///
  /// In en, this message translates to:
  /// **'How To Buy Monero (XMR) Anonymously (Without ID) Guide - The Most Private Way in {year}'**
  String document8722Sbtitle250Sbguide250Sbxmr(Object year);

  /// No description provided for @document8722Sbtitle250Sbindex.
  ///
  /// In en, this message translates to:
  /// **'Buy or Sell Monero Anonymously, Quick and Easy'**
  String get document8722Sbtitle250Sbindex;

  /// No description provided for @document8722Sbtitle250Sbindex57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Buy or Sell Bitcoins Anonymously, Quick and Easy'**
  String get document8722Sbtitle250Sbindex57Sbagoradesk;

  /// No description provided for @document8722Sbtitle250Sblogin.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get document8722Sbtitle250Sblogin;

  /// No description provided for @document8722Sbtitle250Sbpost8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'Post an ad'**
  String get document8722Sbtitle250Sbpost8722Sbad;

  /// No description provided for @document8722Sbtitle250Sbreset8722Sbpassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get document8722Sbtitle250Sbreset8722Sbpassword;

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbbuy250Sbcountry.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} in {country}'**
  String document8722Sbtitle250Sbsearch250Sbbuy250Sbcountry(Object assetName, Object country);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbbuy250Sbcountry8722Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} in {country} with {method}'**
  String document8722Sbtitle250Sbsearch250Sbbuy250Sbcountry8722Sbmethod(Object assetName, Object country, Object method);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbbuy250Sbcurrency.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} for {currency}'**
  String document8722Sbtitle250Sbsearch250Sbbuy250Sbcurrency(Object assetName, Object currency);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbbuy250Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} with {method}'**
  String document8722Sbtitle250Sbsearch250Sbbuy250Sbmethod(Object assetName, Object method);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} in {country}'**
  String document8722Sbtitle250Sbsearch250Sbsell(Object assetName, Object country);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbsell250Sbcountry.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} in {country}'**
  String document8722Sbtitle250Sbsearch250Sbsell250Sbcountry(Object assetName, Object country);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbsell250Sbcountry8722Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} in {country} with {method}'**
  String document8722Sbtitle250Sbsearch250Sbsell250Sbcountry8722Sbmethod(Object assetName, Object country, Object method);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbsell250Sbcurrency.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} for {currency}'**
  String document8722Sbtitle250Sbsearch250Sbsell250Sbcurrency(Object assetName, Object currency);

  /// No description provided for @document8722Sbtitle250Sbsearch250Sbsell250Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} with {method}'**
  String document8722Sbtitle250Sbsearch250Sbsell250Sbmethod(Object assetName, Object method);

  /// No description provided for @document8722Sbtitle250Sbsettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get document8722Sbtitle250Sbsettings;

  /// No description provided for @document8722Sbtitle250Sbsignup.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get document8722Sbtitle250Sbsignup;

  /// No description provided for @document8722Sbtitle250Sbsignup8722Sbsuccess.
  ///
  /// In en, this message translates to:
  /// **'Sign up success'**
  String get document8722Sbtitle250Sbsignup8722Sbsuccess;

  /// No description provided for @document8722Sbtitle250Sbstart.
  ///
  /// In en, this message translates to:
  /// **'{appName} guides: how to buy or sell Monero'**
  String document8722Sbtitle250Sbstart(Object appName);

  /// No description provided for @document8722Sbtitle250Sbstart57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'{appName} guides: how to buy or sell cryptocurrencies'**
  String document8722Sbtitle250Sbstart57Sbagoradesk(Object appName);

  /// No description provided for @document8722Sbtitle250Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'Trade {id}'**
  String document8722Sbtitle250Sbtrade(Object id);

  /// No description provided for @document8722Sbtitle250Sbuser8722Sbads.
  ///
  /// In en, this message translates to:
  /// **'{user}\'s ads'**
  String document8722Sbtitle250Sbuser8722Sbads(Object user);

  /// No description provided for @document8722Sbtitle250Sbverify8722Sbemail.
  ///
  /// In en, this message translates to:
  /// **'Verify email'**
  String get document8722Sbtitle250Sbverify8722Sbemail;

  /// No description provided for @document8722Sbtitle250Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get document8722Sbtitle250Sbwallet;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @dropdown250Sbany8722Sbcountry.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get dropdown250Sbany8722Sbcountry;

  /// No description provided for @dropdown250Sbany8722Sbcurrency.
  ///
  /// In en, this message translates to:
  /// **'Any'**
  String get dropdown250Sbany8722Sbcurrency;

  /// No description provided for @edit8722Sbad250Sbcancel8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Cancel changes'**
  String get edit8722Sbad250Sbcancel8722Sbbtn;

  /// No description provided for @edit8722Sbad250Sbcurrent8722Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Current ad price: '**
  String get edit8722Sbad250Sbcurrent8722Sbprice;

  /// No description provided for @edit8722Sbad250Sbdelete8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Delete ad'**
  String get edit8722Sbad250Sbdelete8722Sbbtn;

  /// No description provided for @edit8722Sbad250Sbdelete8722Sbdialog250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'This will delete the ad permanently. Consider hiding the ad by setting visibility to false.'**
  String get edit8722Sbad250Sbdelete8722Sbdialog250Sbtext;

  /// No description provided for @edit8722Sbad250Sbdelete8722Sbdialog250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm ad deletion'**
  String get edit8722Sbad250Sbdelete8722Sbdialog250Sbtitle;

  /// No description provided for @edit8722Sbad250Sbsave8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Save changes'**
  String get edit8722Sbad250Sbsave8722Sbbtn;

  /// No description provided for @edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto.
  ///
  /// In en, this message translates to:
  /// **'This ad is to {adType} {createdAt} {timeOfcreation}. In order to change ad type, please {createAnewad}'**
  String edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto(Object adType, Object createdAt, Object timeOfcreation, Object createAnewad);

  /// No description provided for @edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'buy {assetName} for cash (locally)'**
  String edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sblocal8722Sbbuy(Object assetName);

  /// No description provided for @edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sblocal8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'sell {assetName} for cash (locally)'**
  String edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sblocal8722Sbsell(Object assetName);

  /// No description provided for @edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sbonline8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'buy {assetName} online'**
  String edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sbonline8722Sbbuy(Object assetName);

  /// No description provided for @edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sbonline8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'sell {assetName} online'**
  String edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbad8722Sbtype8722Sbonline8722Sbsell(Object assetName);

  /// No description provided for @edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbcreate8722Sbnew.
  ///
  /// In en, this message translates to:
  /// **'create a new ad'**
  String get edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbcreate8722Sbnew;

  /// No description provided for @edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbcreated8722Sbat.
  ///
  /// In en, this message translates to:
  /// **'created at'**
  String get edit8722Sbad250Sbthis8722Sbad8722Sbis8722Sbto8722Sbcreated8722Sbat;

  /// No description provided for @edit8722Sbad250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Edit an advertisement'**
  String get edit8722Sbad250Sbtitle;

  /// No description provided for @edit8722Sbad250Sbupdated8722Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Updated ad price: '**
  String get edit8722Sbad250Sbupdated8722Sbprice;

  /// No description provided for @edit8722Sbad250Sbvisible.
  ///
  /// In en, this message translates to:
  /// **'Visible'**
  String get edit8722Sbad250Sbvisible;

  /// No description provided for @edit8722Sbad250Sbwarning250Sbno8722Sbbuyer8722Sbsettlement8722Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'URGENT ACTION NEEDED: This ad doesn\'t have a settlement wallet address set. Provide it as soon as possible to avoid having the ad hidden.'**
  String get edit8722Sbad250Sbwarning250Sbno8722Sbbuyer8722Sbsettlement8722Sbaddress;

  /// No description provided for @edit250Sberror250Sbinvalid8722Sbsettlement8722Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid settlement wallet address'**
  String get edit250Sberror250Sbinvalid8722Sbsettlement8722Sbaddress;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @error8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'Oops! Something went wrong. Please try again soon. Click anywhere on the page to reload.'**
  String get error8722Sbpage;

  /// No description provided for @error8722Sbpage250Sbsubtext.
  ///
  /// In en, this message translates to:
  /// **'If that doesn\'t help, try clearing your cookies or using a different browser. If that doesn\'t help either, please {open_a_ticket}'**
  String error8722Sbpage250Sbsubtext(Object open_a_ticket);

  /// No description provided for @error8722Sbpage250Sbsubtext250Sbticket.
  ///
  /// In en, this message translates to:
  /// **'open a support ticket.'**
  String get error8722Sbpage250Sbsubtext250Sbticket;

  /// No description provided for @error250Sbcaptcha.
  ///
  /// In en, this message translates to:
  /// **'Captcha failed, please try again'**
  String get error250Sbcaptcha;

  /// No description provided for @error250Sbedit250Sb244.
  ///
  /// In en, this message translates to:
  /// **'Provided settlement wallet address is invalid'**
  String get error250Sbedit250Sb244;

  /// No description provided for @error250Sbedit250Sb245.
  ///
  /// In en, this message translates to:
  /// **'Internal {appName} address can\'t be used for trade settlement. Please input an outside, non-{appName} {asset} address to continue.'**
  String error250Sbedit250Sb245(Object appName, Object asset);

  /// No description provided for @error250Sbedit250Sb245250Sbnojs.
  ///
  /// In en, this message translates to:
  /// **'Internal {appName} address can\'t be used for trade settlement. Please input an outside, non-{appName} address to continue.'**
  String error250Sbedit250Sb245250Sbnojs(Object appName);

  /// No description provided for @error250Sbedit250Sb249.
  ///
  /// In en, this message translates to:
  /// **'You must set a settlement wallet address to continue.'**
  String get error250Sbedit250Sb249;

  /// No description provided for @error250Sbpost8722Sbad250Sb107.
  ///
  /// In en, this message translates to:
  /// **'Can\'t track liquidity without setting maximum amount'**
  String get error250Sbpost8722Sbad250Sb107;

  /// No description provided for @error250Sbpost8722Sbad250Sb108.
  ///
  /// In en, this message translates to:
  /// **'Minimum transaction amount cannot be equal to or larger than maximum transaction amount'**
  String get error250Sbpost8722Sbad250Sb108;

  /// No description provided for @error250Sbpost8722Sbad250Sb114.
  ///
  /// In en, this message translates to:
  /// **'Payment window has to be 15-90 minutes'**
  String get error250Sbpost8722Sbad250Sb114;

  /// No description provided for @error250Sbpost8722Sbad250Sb132.
  ///
  /// In en, this message translates to:
  /// **'Can\'t create more than {maximumNumberOfAds} ads. Please delete one of your old ads to create this one.'**
  String error250Sbpost8722Sbad250Sb132(Object maximumNumberOfAds);

  /// No description provided for @error250Sbpost8722Sbad250Sb142.
  ///
  /// In en, this message translates to:
  /// **'Can\'t set a fiat limit that is less than minimum amount.'**
  String get error250Sbpost8722Sbad250Sb142;

  /// No description provided for @error250Sbpost8722Sbad250Sb143.
  ///
  /// In en, this message translates to:
  /// **'Can\'t set a fiat limit that is more than maximum amount.'**
  String get error250Sbpost8722Sbad250Sb143;

  /// No description provided for @error250Sbpost8722Sbad250Sb173.
  ///
  /// In en, this message translates to:
  /// **'Your ad\'s currency can\'t be the same as your ad\'s asset'**
  String get error250Sbpost8722Sbad250Sb173;

  /// No description provided for @error250Sbpost8722Sbad250Sb80.
  ///
  /// In en, this message translates to:
  /// **'Latitude or longitude was not set'**
  String get error250Sbpost8722Sbad250Sb80;

  /// No description provided for @error250Sbpost8722Sbad250Sb81.
  ///
  /// In en, this message translates to:
  /// **'Price value wasn\'t properly set'**
  String get error250Sbpost8722Sbad250Sb81;

  /// No description provided for @error250Sbpost8722Sbad250Sb86.
  ///
  /// In en, this message translates to:
  /// **'Illegal combinations of country, payment method, and currency'**
  String get error250Sbpost8722Sbad250Sb86;

  /// No description provided for @error250Sbpost8722Sbad250Sb87.
  ///
  /// In en, this message translates to:
  /// **'This payment method isn\'t valid for selected country'**
  String get error250Sbpost8722Sbad250Sb87;

  /// No description provided for @error250Sbpost8722Sbad250Sb88.
  ///
  /// In en, this message translates to:
  /// **'This currency isn\'t valid for selected payment method'**
  String get error250Sbpost8722Sbad250Sb88;

  /// No description provided for @error250Sbpost8722Sbad250Sb89.
  ///
  /// In en, this message translates to:
  /// **'Location was not properly set'**
  String get error250Sbpost8722Sbad250Sb89;

  /// No description provided for @error250Sbpost8722Sbad250Sbgeneric.
  ///
  /// In en, this message translates to:
  /// **'Errors in the form! Please check your ad again.'**
  String get error250Sbpost8722Sbad250Sbgeneric;

  /// No description provided for @error250Sbsettings250Sb220.
  ///
  /// In en, this message translates to:
  /// **'Disposable email addresses are not allowed'**
  String get error250Sbsettings250Sb220;

  /// No description provided for @error250Sbsignup250Sb219.
  ///
  /// In en, this message translates to:
  /// **'Disposable email addresses are not allowed'**
  String get error250Sbsignup250Sb219;

  /// No description provided for @error250Sbsignup250Sb47.
  ///
  /// In en, this message translates to:
  /// **'User with that username already exists.'**
  String get error250Sbsignup250Sb47;

  /// No description provided for @error250Sbsignup250Sb48.
  ///
  /// In en, this message translates to:
  /// **'User with that email already exists'**
  String get error250Sbsignup250Sb48;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb100.
  ///
  /// In en, this message translates to:
  /// **'Cannot request less than {min_asset_amount} {assetSymbol} for trade creation.'**
  String error250Sbtrade8722Sbrequest250Sb100(Object min_asset_amount, Object assetSymbol);

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb101.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is less than ad’s minimum transaction amount'**
  String get error250Sbtrade8722Sbrequest250Sb101;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb102.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is more than trader has available for this ad'**
  String get error250Sbtrade8722Sbrequest250Sb102;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb103.
  ///
  /// In en, this message translates to:
  /// **'This trader is currently not trading. Please check other ads or come back later.'**
  String get error250Sbtrade8722Sbrequest250Sb103;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb105.
  ///
  /// In en, this message translates to:
  /// **'This trader doesn\'t have enough balance to start a trade for this amount.'**
  String get error250Sbtrade8722Sbrequest250Sb105;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb106.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have enough balance in your {appName} wallet to start a trade!'**
  String error250Sbtrade8722Sbrequest250Sb106(Object appName);

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb109.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is more than trader has available for this ad'**
  String get error250Sbtrade8722Sbrequest250Sb109;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb110.
  ///
  /// In en, this message translates to:
  /// **'This trader requires higher feedback score to trade than you have at the moment. You can increase your feedback score by completing trades with traders who don\'t have such requirement.'**
  String get error250Sbtrade8722Sbrequest250Sb110;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb111.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is not one of the amount accepted by this trader'**
  String get error250Sbtrade8722Sbrequest250Sb111;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb112.
  ///
  /// In en, this message translates to:
  /// **'Can’t request a trade for an ad you posted yourself'**
  String get error250Sbtrade8722Sbrequest250Sb112;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb141.
  ///
  /// In en, this message translates to:
  /// **'Can\'t create a trade for an amount that’s less than the minimum allowed amount'**
  String get error250Sbtrade8722Sbrequest250Sb141;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb150.
  ///
  /// In en, this message translates to:
  /// **'You can\'t start a trade because this trader has blocked you. Try looking for other traders.'**
  String get error250Sbtrade8722Sbrequest250Sb150;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb151.
  ///
  /// In en, this message translates to:
  /// **'This ad is only for users trusted by the ad poster. Try looking for other ads.'**
  String get error250Sbtrade8722Sbrequest250Sb151;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb173.
  ///
  /// In en, this message translates to:
  /// **'You are not allowed to open more trades'**
  String get error250Sbtrade8722Sbrequest250Sb173;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb218.
  ///
  /// In en, this message translates to:
  /// **'This ad is only for users with verified email. Go to your account settings, set your email (if you haven\'t already), and verify it.'**
  String get error250Sbtrade8722Sbrequest250Sb218;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb232.
  ///
  /// In en, this message translates to:
  /// **'This user is currently prohibited from trading due to a restriction on their account'**
  String get error250Sbtrade8722Sbrequest250Sb232;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb237.
  ///
  /// In en, this message translates to:
  /// **'This user doesn\'t exist'**
  String get error250Sbtrade8722Sbrequest250Sb237;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb240.
  ///
  /// In en, this message translates to:
  /// **'Provided settlement wallet address is invalid'**
  String get error250Sbtrade8722Sbrequest250Sb240;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb241.
  ///
  /// In en, this message translates to:
  /// **'Internal {appName} address can\'t be used for trade settlement. Please input an outside, non-{appName} {asset} address to continue.'**
  String error250Sbtrade8722Sbrequest250Sb241(Object appName, Object asset);

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb246.
  ///
  /// In en, this message translates to:
  /// **'Can\'t open a trade: this trader hasn\'t yet provided a settlement address for this ad. Contact the seller if you can, or try again later, or look for another offer.'**
  String get error250Sbtrade8722Sbrequest250Sb246;

  /// No description provided for @error250Sbtrade8722Sbrequest250Sb99.
  ///
  /// In en, this message translates to:
  /// **'This trader requires lower transaction amount for the first trade with him. Please check the trade details below.'**
  String get error250Sbtrade8722Sbrequest250Sb99;

  /// No description provided for @error250Sbvalidation250Sbreputation8722Sbimport8722Sbplatform.
  ///
  /// In en, this message translates to:
  /// **'Please select one of the valid platforms: localbitcoins or paxful'**
  String get error250Sbvalidation250Sbreputation8722Sbimport8722Sbplatform;

  /// No description provided for @error250Sbwithdraw250Sb170.
  ///
  /// In en, this message translates to:
  /// **'Amount that has been requested for withdrawal is less than the minimum possible amount'**
  String get error250Sbwithdraw250Sb170;

  /// No description provided for @error250Sbwithdraw250Sb254.
  ///
  /// In en, this message translates to:
  /// **'You\'ve already sent this amount to this address within the last 10 minutes. Check your transactions, and if this wasn\'t a mistake, try repeating the withdrawal later.'**
  String get error250Sbwithdraw250Sb254;

  /// No description provided for @error250Sbwithdraw250Sb7338Sb140.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password/one-time password'**
  String get error250Sbwithdraw250Sb7338Sb140;

  /// No description provided for @error250Sbwithdraw250Sb7438Sb77.
  ///
  /// In en, this message translates to:
  /// **'Insufficient funds'**
  String get error250Sbwithdraw250Sb7438Sb77;

  /// No description provided for @error250Sbwithdraw250Sb75.
  ///
  /// In en, this message translates to:
  /// **'This address doesn\'t exist in the {appName} database'**
  String error250Sbwithdraw250Sb75(Object appName);

  /// No description provided for @error250Sbwithdraw250Sb76.
  ///
  /// In en, this message translates to:
  /// **'Attempting to withdraw arbitration bond to the same address as the account that’s requesting the withdrawal'**
  String get error250Sbwithdraw250Sb76;

  /// No description provided for @error250Sbwithdraw250Sbclosed8722Sbconnection.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong on the request, but the transaction might have already been sent. Please reload the page, check if the transaction has been sent and repeat it if needed. If the error persists please contact our support.'**
  String get error250Sbwithdraw250Sbclosed8722Sbconnection;

  /// No description provided for @error250Sbwithdraw250Sbgeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please check the receiving {assetName} address.'**
  String error250Sbwithdraw250Sbgeneric(Object assetName);

  /// No description provided for @faq8722Sbquestion8722Sb31.
  ///
  /// In en, this message translates to:
  /// **'What should I know about high-risk payment methods?'**
  String get faq8722Sbquestion8722Sb31;

  /// No description provided for @faq250Sbanswer8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'{appName} is a peer-to-peer Monero exchange. We are a marketplace where users can buy and sell Monero to and from each other. Users, called traders, create advertisements with the price and the payment method they want to offer. You can browse our website for trade advertisements and search for a payment method you prefer. You will find traders buying and selling Monero online for more than 60 different payment methods. If you\'re new to {appName} and want to buy Monero, please take a look at our how to buy guide to learn how to buy Monero.'**
  String faq250Sbanswer8722Sb0(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb057Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'{appName} is a peer-to-peer cryptocurrency OTC desk. We are a marketplace where users can buy and sell cryptocurrencies to and from each other. Users, called traders, create advertisements with the price and the payment method they want to offer. You can browse our website for trade advertisements and search for a payment method you prefer. You\'ll find traders buying and selling cryptocurrencies online for more than 60 different payment methods. If you\'re new to {appName} and want to buy cryptocurrencies, please take a look at our guides.'**
  String faq250Sbanswer8722Sb057Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'You can check our {buying} and {selling} guides to get started with trading Monero.'**
  String faq250Sbanswer8722Sb1(Object buying, Object selling);

  /// No description provided for @faq250Sbanswer8722Sb18722Sbbuying.
  ///
  /// In en, this message translates to:
  /// **'buying'**
  String get faq250Sbanswer8722Sb18722Sbbuying;

  /// No description provided for @faq250Sbanswer8722Sb18722Sbselling.
  ///
  /// In en, this message translates to:
  /// **'selling'**
  String get faq250Sbanswer8722Sb18722Sbselling;

  /// No description provided for @faq250Sbanswer8722Sb157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'You can check our {buying} and {selling} guides to get started with trading cryptocurrencies.'**
  String faq250Sbanswer8722Sb157Sbagoradesk(Object buying, Object selling);

  /// No description provided for @faq250Sbanswer8722Sb10.
  ///
  /// In en, this message translates to:
  /// **'If you purchase Monero using {appName}, the Monero will be sent to your provided Monero settlement wallet. From there you can send it wherever you wish. If you want to sell Monero, you first need to deposit XMR to your {appName} Monero wallet.'**
  String faq250Sbanswer8722Sb10(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb108722Sbwallet8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'wallet page'**
  String get faq250Sbanswer8722Sb108722Sbwallet8722Sbpage;

  /// No description provided for @faq250Sbanswer8722Sb1057Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'If you purchase cryptocurrency using {appName}, the coins will be sent to your provided settlement wallet. From there you can send it wherever you wish. If you want to sell cryptocurrency, you first need to deposit cryptocurrency to your relevant {appName} wallet.'**
  String faq250Sbanswer8722Sb1057Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb11.
  ///
  /// In en, this message translates to:
  /// **'In order to sell Monero on {appName} you\'ll first need to send some Monero for the arbitration bond to your {appName} wallet. To do that you\'ll need a {appName} account, access to Monero in another Monero wallet and you need to know your {appName} receiving address. To find your {appName} receiving address you need to go to visit the {walletPage}. The top of the page is divided in three parts allowing you to both send, receive Monero and view your transactions. On the \'Receive\' tab you\'ll find your receiving address. Once you know your {appName} receiving address, you can go to your other Monero wallet and use this address to send Monero to your {appName} address.'**
  String faq250Sbanswer8722Sb11(Object appName, Object walletPage);

  /// No description provided for @faq250Sbanswer8722Sb1157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'In order to sell cryptocurrencies on {appName} you\'ll first need to send some coins for the arbitration bond to your {appName} wallet. To do that you\'ll need a {appName} account, access to coins in another wallet and you need to know your {appName} receiving address. To find your {appName} receiving address you need to go to visit the {walletPage}. Select the relevant cryptocurrency, the top of the wallet page is divided in three parts allowing you to both send, receive cryptocurrency and view your transactions. On the \'Receive\' tab you\'ll find your receiving address. Once you know your {appName} receiving address, you can go to your other wallet and use this address to send the coins to your {appName} address.'**
  String faq250Sbanswer8722Sb1157Sbagoradesk(Object appName, Object walletPage);

  /// No description provided for @faq250Sbanswer8722Sb12.
  ///
  /// In en, this message translates to:
  /// **'Transactions take between 10-60 minutes when you\'re sending Monero to your {appName} wallet or when you\'re sending Monero out from your {appName} wallet.'**
  String faq250Sbanswer8722Sb12(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb1257Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Transactions take between 10-60 minutes when you\'re sending coins to your {appName} wallet or when you\'re sending coins out from your {appName} wallet.'**
  String faq250Sbanswer8722Sb1257Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb13.
  ///
  /// In en, this message translates to:
  /// **'The Monero network might be experiencing congestion, in this case transactions will take much longer to go through. Monero transactions have to be confirmed by the Monero network. When a transaction is made it gets sent into a transaction pool from where it is bundled up into blocks that Monero miners confirm through mining. Blocks get mined on average every two minutes. Once the transaction has been included in a block and has been mined, it has been confirmed once. When the confirmation count of the transaction reaches a certain threshold, currently 10 confirmations, the transaction appears in the receiving wallets. You can read more about confirmations on the Monero wikipedia and you can see the current number of unconfirmed transactions on the Monero network in your {wallet}.'**
  String faq250Sbanswer8722Sb13(Object wallet);

  /// No description provided for @faq250Sbanswer8722Sb138722Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'wallet'**
  String get faq250Sbanswer8722Sb138722Sbwallet;

  /// No description provided for @faq250Sbanswer8722Sb1357Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'The relevant cryptocurrency network might be experiencing congestion, in this case transactions will take much longer to go through. Cryptocurrency transactions have to be confirmed by the cryptocurrency network. When a transaction is made it gets sent into a transaction pool from where it is bundled up into blocks that miners confirm through mining. Once the transaction has been included in a block and has been mined, it has been confirmed once. When the confirmation count of the transaction reaches a certain threshold, the transaction appears in the receiving wallet. You can see the current number of unconfirmed transactions on the network in your {wallet}.'**
  String faq250Sbanswer8722Sb1357Sbagoradesk(Object wallet);

  /// No description provided for @faq250Sbanswer8722Sb17.
  ///
  /// In en, this message translates to:
  /// **'{appName} uses a feedback system that shows a score on your public profile. This score, a percentage, shows how much positive feedback a user has. You can only give one feedback to a user. The feedback can be one of three types: Positive, Neutral and Negative. Once given, feedback will be visible on a user\'s public profile if certain conditions are met, otherwise the feedback remains unconfirmed and does not affect the feedback score.'**
  String faq250Sbanswer8722Sb17(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb18.
  ///
  /// In en, this message translates to:
  /// **'Feedback that has been given can be either confirmed or unconfirmed. Confirmed feedback is shown on a user\'s public profile and affects the user\'s feedback score. For an unconfirmed feedback to become confirmed the total trade volume between the user giving and receiving feedback must be more than 100 USD equivalent.'**
  String get faq250Sbanswer8722Sb18;

  /// No description provided for @faq250Sbanswer8722Sb19.
  ///
  /// In en, this message translates to:
  /// **'Web notifications allow you to receive pop-up notifications through your browser whenever you get a new notification on {appName}. If you\'re trading and want to know immediately when something happens, {enableWebnotificationsfromyourprofile}. Flip the switch that says Enable Web notifications and when your browser asks you for permission to show web notifications, press accept. You\'re now all set and will start receiving web notifications.'**
  String faq250Sbanswer8722Sb19(Object appName, Object enableWebnotificationsfromyourprofile);

  /// No description provided for @faq250Sbanswer8722Sb198722Sbenable8722Sbweb8722Sbnotifications8722Sbfrom8722Sbyour8722Sbprofile.
  ///
  /// In en, this message translates to:
  /// **'enable web notifications from your profile'**
  String get faq250Sbanswer8722Sb198722Sbenable8722Sbweb8722Sbnotifications8722Sbfrom8722Sbyour8722Sbprofile;

  /// No description provided for @faq250Sbanswer8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Check out our {guide}.'**
  String faq250Sbanswer8722Sb2(Object guide);

  /// No description provided for @faq250Sbanswer8722Sb28722Sbguide.
  ///
  /// In en, this message translates to:
  /// **'two-factor authentication guide'**
  String get faq250Sbanswer8722Sb28722Sbguide;

  /// No description provided for @faq250Sbanswer8722Sb20.
  ///
  /// In en, this message translates to:
  /// **'Sometimes a trader may ask for your ID. If you\'re trading for the first time with a trader they may ask you to identify yourself. This is because in certain countries traders are required by local laws to know who their customers are. Most traders explain in the terms of the trade if they require ID verification or not. If you don\'t wish to give the trader your ID, you can always cancel the trade and search for a trader with less strict requirements. Always send your ID to the seller via the trade chat, our trade chat messages are kept encrypted on our servers and are deleted after 180 days. All photographs sent to the trade chat are also marked with a watermark to prevent misuse of the images.'**
  String get faq250Sbanswer8722Sb20;

  /// No description provided for @faq250Sbanswer8722Sb21.
  ///
  /// In en, this message translates to:
  /// **'The sellers usually finalize a trade as soon as they see your payment, which can sometimes take an hour or two. If you\'ve paid but are still waiting there is nothing to worry about, for all online trades are protected by the arbitration bond and the seller cannot run away without losing the bond. If there are any issues with a trade and the seller won\'t finalize it, you can dispute the trade to have {appName} support resolve it. If you are buying or selling Monero online, you can dispute the trade after you have marked the payment completed. A dispute can no longer be started if the trade has been finalized or if it\'s a local trade without arbitration bond protection enabled. When a trade you\'re involved in becomes disputed, you\'ll receive an email. A disputed trade is usually resolved within 24-48 hours.'**
  String faq250Sbanswer8722Sb21(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb2157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'The sellers usually finalize a trade as soon as they see your payment, which can sometimes take an hour or two. If you\'ve paid but are still waiting there is nothing to worry about, for all online trades are protected by the arbitration bond and the seller cannot run away without losing the bond. If there are any issues with a trade and the seller won\'t finalize it, you can dispute the trade to have {appName} support resolve it. If you are buying or selling cryptocurrency online, you can dispute the trade after you have marked the payment completed. A dispute can no longer be started if the trade has been finalized or if it\'s a local trade without arbitration bond protection enabled. When a trade you\'re involved in becomes disputed, you\'ll receive an email. A disputed trade is usually resolved within 24-48 hours.'**
  String faq250Sbanswer8722Sb2157Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb22.
  ///
  /// In en, this message translates to:
  /// **'We reserve a small amount of Monero from your wallet balance to pay the Monero transaction fee to the Monero network. Each Monero transaction has to pay a small fee to the network to be confirmed no matter from where it\'s sent. We reserve this fee in advance to prevent your wallet balance from becoming negative.'**
  String get faq250Sbanswer8722Sb22;

  /// No description provided for @faq250Sbanswer8722Sb2257Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'We reserve a small amount from your wallet balance to pay the network transaction fee. Each cryptocurrency transaction has to pay a small fee to the network to be confirmed no matter from where it\'s sent.'**
  String get faq250Sbanswer8722Sb2257Sbagoradesk;

  /// No description provided for @faq250Sbanswer8722Sb24.
  ///
  /// In en, this message translates to:
  /// **'This answer concerns the case when you are buying Monero online. After you send in a trade request to the seller of Monero, you have a time window to complete the payment before the seller is able to cancel the trade (the payment window varies depending on the payment method of the trade). During this time you need to complete your payment and press the I have paid button. The seller is notified that you\'ve made the payment and the Monero will be held in the bond until the seller finalizes the trade for you when seeing the payment in his/her account. If you paid for the purchase, but did not mark the payment complete before the payment time window expired, please contact the seller through the trade. You can contact the seller and your other existing trade contacts from the {dashboard} in your {appName} User Profile. Send a message to the seller and kindly explain the situation and why you couldn\'t complete payment within the time window. If the seller does not respond to this request please contact {appName} support using the {supportRequestform} and mention your trade ID.'**
  String faq250Sbanswer8722Sb24(Object dashboard, Object appName, Object supportRequestform);

  /// No description provided for @faq250Sbanswer8722Sb248722Sbdashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get faq250Sbanswer8722Sb248722Sbdashboard;

  /// No description provided for @faq250Sbanswer8722Sb248722Sbsupport8722Sbrequest8722Sbform.
  ///
  /// In en, this message translates to:
  /// **'support request form'**
  String get faq250Sbanswer8722Sb248722Sbsupport8722Sbrequest8722Sbform;

  /// No description provided for @faq250Sbanswer8722Sb2457Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'After you send a trade request, you have a time window to complete the payment before the other party is able to cancel the trade. During this time you need to complete your payment and press the \'I have paid button\'. The other party is notified that you\'ve made the payment and the coins will be held in the bond until the other party finalizes the trade for you after seeing the payment in their account. If you paid for the purchase, but didn\'t mark the payment complete before the payment time window expired, please contact the other party through the trade chat. You can contact the other party and your other existing trade contacts from the {dashboard}. Send a message to the other party and kindly explain the situation and why you couldn\'t complete payment within the time window. If the other party doesn\'t respond to this request please contact {appName} staff using the {supportRequestform} and mention your trade ID.'**
  String faq250Sbanswer8722Sb2457Sbagoradesk(Object dashboard, Object appName, Object supportRequestform);

  /// No description provided for @faq250Sbanswer8722Sb25.
  ///
  /// In en, this message translates to:
  /// **'When the buyer or seller initiate a dispute, an admin steps into the trade chat and asks both parties for evidence and takes into account chat history and reputation to make as fair of a decision as possible.'**
  String get faq250Sbanswer8722Sb25;

  /// No description provided for @faq250Sbanswer8722Sb26.
  ///
  /// In en, this message translates to:
  /// **'Monero transactions are irreversible, once you’ve sent money to another Monero address it is not possible for you or {appName} to reverse it.'**
  String faq250Sbanswer8722Sb26(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb2657Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency transactions are irreversible, once you’ve sent the coins to another address it\'s not possible for you or {appName} to reverse it.'**
  String faq250Sbanswer8722Sb2657Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb27.
  ///
  /// In en, this message translates to:
  /// **'Advertisement prices are based on Monero exchange rates. The Monero exchange rate is volatile and may change rapidly. {appName} updates its exchange rates and advertisement prices every ten minutes. Prices shown in the listings and on the front page are cached, and update a little slower. Sometimes when the Monero price is fluctuating rapidly, advertisements with the same price equation may display different price. Sometimes market data is not available for some currencies, which leads to delays updating the advertisement prices. However, when you open up the advertisement page itself the price will be more up to date. The price of the purchase is determined at the moment the Monero buyer sends in the trade request.'**
  String faq250Sbanswer8722Sb27(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb2757Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Advertisement prices are based on cryptocurrency exchange rates. The exchange rates are volatile and may change rapidly. {appName} updates its exchange rates and advertisement prices every twelve minutes. Prices shown in the listings and on the front page are cached, and update a little slower. Sometimes when the price is fluctuating rapidly, advertisements with the same price formula may display different prices. Sometimes market data is not available for some currencies, which leads to delays updating the advertisement prices. However, when you open up the advertisement page itself the price will be more up to date. The price is determined when the trade request is sent.'**
  String faq250Sbanswer8722Sb2757Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb28.
  ///
  /// In en, this message translates to:
  /// **'When the price is floating, the purchased Monero amount fluctuates with the Monero exchange rate. The traded Monero amount is determined when the trade is closed, instead of when the trade is opened. This reduces market rate risks in local cash transactions where the time between opening the trade and closing the trade can be several days.'**
  String get faq250Sbanswer8722Sb28;

  /// No description provided for @faq250Sbanswer8722Sb2857Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'When the price is floating, the purchased cryptocurrency amount fluctuates with the exchange rate. The traded amount is determined when the trade is closed, instead of when the trade is opened. This reduces market rate risks in local cash transactions where the time between opening the trade and closing the trade can be several days.'**
  String get faq250Sbanswer8722Sb2857Sbagoradesk;

  /// No description provided for @faq250Sbanswer8722Sb29.
  ///
  /// In en, this message translates to:
  /// **'You can check all the info on the current fees on our {feesPage}'**
  String faq250Sbanswer8722Sb29(Object feesPage);

  /// No description provided for @faq250Sbanswer8722Sb298722Sbfees8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'fees page'**
  String get faq250Sbanswer8722Sb298722Sbfees8722Sbpage;

  /// No description provided for @faq250Sbanswer8722Sb30.
  ///
  /// In en, this message translates to:
  /// **'At the moment, we don\'t have a standalone mobile app. But you can receive mobile notifications in {telegram}! {thisGuide} will take you through the Telegram notifications activation process (it\'s easy). Our bot will then send you notifications on your {appName} events.'**
  String faq250Sbanswer8722Sb30(Object telegram, Object thisGuide, Object appName);

  /// No description provided for @faq250Sbanswer8722Sb308722Sbthis8722Sbguide.
  ///
  /// In en, this message translates to:
  /// **'This guide'**
  String get faq250Sbanswer8722Sb308722Sbthis8722Sbguide;

  /// No description provided for @faq250Sbanswer8722Sb32.
  ///
  /// In en, this message translates to:
  /// **'The transaction priority is a setting used in Monero to set your payment apart from other payments in the Monero network (if there is any competition). Low priority transactions may take a longer time to complete.'**
  String get faq250Sbanswer8722Sb32;

  /// No description provided for @faq250Sbanswer8722Sb32250Sb1.
  ///
  /// In en, this message translates to:
  /// **'In Bitcoin, fee levels affect the speed at which your transaction is going to be confirmed by incentivizing miners to prioritize your transaction for a higher fee. A high fee transaction is estimated to be confirmed within a few blocks; A medium fee transaction is estimated to be confirmed within a day; A low fee transaction is estimated to be confirmed within a week.'**
  String get faq250Sbanswer8722Sb32250Sb1;

  /// No description provided for @faq250Sbanswer8722Sb33.
  ///
  /// In en, this message translates to:
  /// **'You can withdraw coins from the {appName} wallet to your personal wallet of a cryptocurrency different from the {appName} currency. To do so, first you need to tick the \"I want to receive another currency\" checkbox. Afterwards, select the desired receiving cryptocurrency and type in the address that the coins should be sent to. Then, choose whether you want to provide the amount in either coins sent from your wallet or in the converted coins received to your destination wallet and type in the quantity. Press \"Continue\", and you\'ll be shown the relevant offers fitting your requirements. If the list is empty, try adjusting the amount. The conversion rate will be displayed for each offer, and if it\'s acceptable, all you need to do is press \"Trade\", agree to the terms, and a trade for the relevant amount will be automatically created for you. The destination address will be automatically provided to the buyer through trade chat. The rest is handled just like any other trade on {appName} - the buyer will send the desired currency to the address you\'ve provided, and upon receiving the coins, you should finalize a trade. That\'s it!'**
  String faq250Sbanswer8722Sb33(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb338722Sbmorphtoken8722Sbfaq8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'Here you can read more about how ChangeNow works, their service and network fees'**
  String get faq250Sbanswer8722Sb338722Sbmorphtoken8722Sbfaq8722Sblink;

  /// No description provided for @faq250Sbanswer8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'If you have your backup code, use a QR generating service such as {value} to generate the QR from your backup code. Then scan the generated QR with your mobile 2FA app. If you don\'t have your backup code, it means that you\'ve lost access to your account. Unfortunately, it\'s impossible for us to be able to differentiate between a hacker pretending to be you and you actually being you.'**
  String faq250Sbanswer8722Sb4(Object value);

  /// No description provided for @faq250Sbanswer8722Sb48722Sbthis.
  ///
  /// In en, this message translates to:
  /// **'this'**
  String get faq250Sbanswer8722Sb48722Sbthis;

  /// No description provided for @faq250Sbanswer8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Yes, we do! Here it is: {onionUrl} (you need {tor} to open this link).'**
  String faq250Sbanswer8722Sb5(Object onionUrl, Object tor);

  /// No description provided for @faq250Sbanswer8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'Yes, we actually have two! Here they are: {b32I2purl} or {i2pUrl} (you need {i2p} to open these links).'**
  String faq250Sbanswer8722Sb6(Object b32I2purl, Object i2pUrl, Object i2p);

  /// No description provided for @faq250Sbanswer8722Sb7.
  ///
  /// In en, this message translates to:
  /// **'Yup! Check it out {here}.'**
  String faq250Sbanswer8722Sb7(Object here);

  /// No description provided for @faq250Sbanswer8722Sb78722Sbhere.
  ///
  /// In en, this message translates to:
  /// **'here'**
  String get faq250Sbanswer8722Sb78722Sbhere;

  /// No description provided for @faq250Sbanswer8722Sb8.
  ///
  /// In en, this message translates to:
  /// **'All online trades are protected by arbitration bonds. When a trade is started an amount of Monero equal to the amount of the trade is automatically reserved from the seller\'s {appName} Wallet as a bond. This means that if the seller runs away with your money and does not finalize the trade, {appName} support can direct the the Monero held in the arbitration bond to you. If you\'re selling Monero, never finalize the trade before you know that you have received money from the Monero buyer. Please note that local trades do not have arbitration bond protection enabled by default.'**
  String faq250Sbanswer8722Sb8(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb857Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'All online trades are protected by arbitration bonds. When a trade is started an amount of cryptocurrency equal to the amount of the trade is automatically reserved from the seller\'s {appName} Wallet as a bond. This means that if the seller runs away with your money and does not finalize the trade, {appName} support can direct the cryptocurrency held in the arbitration bond to you. If you\'re selling cryptocurrency, never finalize the trade before you know that you have received money from the buyer. Please note that local trades do not have arbitration bond protection enabled by default.'**
  String faq250Sbanswer8722Sb857Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbanswer8722Sb9.
  ///
  /// In en, this message translates to:
  /// **'We have two different types of trades on {appName}, local trades and online trades. Online trades occur online entirely through our trading platform without you ever meeting your trading partner. Arbitration bond protection is automatically enabled and funded for Online trades, meaning that as a buyer you’re automatically protected by our arbitration bond protection system. Most of trades on {appName} are online trades. Local trades are meant to be carried out face-to-face, and arbitration bond protection is not automatically enabled. Because of this it is not safe to pay the seller using an online payment method in a local trade. Online payment methods are, for example, bank transfers; PayPal; Gift card codes etc.'**
  String faq250Sbanswer8722Sb9(Object appName);

  /// No description provided for @faq250Sbmorph8722Sbdeposit250Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'If you wish to deposit coins to the {appName} wallet from a wallet of a different cryptocurrency you need to check the \'I want to deposit another currency\' box on the Receive tab of the wallet page. In the appeared section select the desired deposit currency, deposit amount (pay attention to the displayed limits), and enter the respective refund address that will be used if anything goes wrong with the transaction. After you\'ve done that, click on the \'Show me the deposit address!\' button, which will open a window where you\'ll see the deposit address. Send the coins from your wallet to the provided ChangeNow deposit address. At this point, ChangeNow will convert your coins and transfer them to your {appName} wallet.'**
  String faq250Sbmorph8722Sbdeposit250Sbcontent(Object appName);

  /// No description provided for @faq250Sbmorph8722Sbdeposit250Sbcontent57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'If you wish to deposit coins to the {appName} wallet from a wallet of a different cryptocurrency you need to check the \'I want to deposit another currency\' box on the Receive tab of the wallet page. In the appeared section select the desired deposit currency, deposit amount (pay attention to the displayed limits), and enter the respective refund address that will be used if anything goes wrong with the transaction. After you\'ve done that, click on the \'Show me the deposit address!\' button, which will open a window where you\'ll see the deposit address. Send the coins from your wallet to the provided ChangeNow deposit address. At this point, ChangeNow will convert your coins and transfer them to your {appName} wallet.'**
  String faq250Sbmorph8722Sbdeposit250Sbcontent57Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbmorph8722Sbdeposit250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I deposit other cryptocurrencies to the {appName} wallet?'**
  String faq250Sbmorph8722Sbdeposit250Sbtitle(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'What is {appName}?'**
  String faq250Sbquestion8722Sb0(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'How do I buy or sell Monero?'**
  String get faq250Sbquestion8722Sb1;

  /// No description provided for @faq250Sbquestion8722Sb157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How do I buy or sell cryptocurrencies?'**
  String get faq250Sbquestion8722Sb157Sbagoradesk;

  /// No description provided for @faq250Sbquestion8722Sb10.
  ///
  /// In en, this message translates to:
  /// **'How do I send Monero and how can I pay with Monero after buying them?'**
  String get faq250Sbquestion8722Sb10;

  /// No description provided for @faq250Sbquestion8722Sb1057Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How do I send cryptocurrencies and how can I pay with cryptocurrencies after buying them?'**
  String get faq250Sbquestion8722Sb1057Sbagoradesk;

  /// No description provided for @faq250Sbquestion8722Sb11.
  ///
  /// In en, this message translates to:
  /// **'How do I receive Monero to my {appName} Wallet?'**
  String faq250Sbquestion8722Sb11(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb1157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How do I receive cryptocurrency to my {appName} Wallet?'**
  String faq250Sbquestion8722Sb1157Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb12.
  ///
  /// In en, this message translates to:
  /// **'How long does it take to send or receive Monero to my {appName} Wallet?'**
  String faq250Sbquestion8722Sb12(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb1257Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How long does it take to send or receive cryptocurrencies to my {appName} Wallet?'**
  String faq250Sbquestion8722Sb1257Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb13.
  ///
  /// In en, this message translates to:
  /// **'I\'ve waited 60 minutes and my transaction is still pending, now what?'**
  String get faq250Sbquestion8722Sb13;

  /// No description provided for @faq250Sbquestion8722Sb17.
  ///
  /// In en, this message translates to:
  /// **'How does the feedback system work?'**
  String get faq250Sbquestion8722Sb17;

  /// No description provided for @faq250Sbquestion8722Sb18.
  ///
  /// In en, this message translates to:
  /// **'What is the difference between confirmed and unconfirmed feedback?'**
  String get faq250Sbquestion8722Sb18;

  /// No description provided for @faq250Sbquestion8722Sb19.
  ///
  /// In en, this message translates to:
  /// **'How do I enable web notifications?'**
  String get faq250Sbquestion8722Sb19;

  /// No description provided for @faq250Sbquestion8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'How am I protected from being scammed?'**
  String get faq250Sbquestion8722Sb2;

  /// No description provided for @faq250Sbquestion8722Sb20.
  ///
  /// In en, this message translates to:
  /// **'A trader is asking me for my ID, and I don\'t feel comfortable.'**
  String get faq250Sbquestion8722Sb20;

  /// No description provided for @faq250Sbquestion8722Sb21.
  ///
  /// In en, this message translates to:
  /// **'I\'ve paid the seller but I haven\'t received my Monero yet.'**
  String get faq250Sbquestion8722Sb21;

  /// No description provided for @faq250Sbquestion8722Sb2157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'I\'ve paid but I haven\'t received my coins yet.'**
  String get faq250Sbquestion8722Sb2157Sbagoradesk;

  /// No description provided for @faq250Sbquestion8722Sb22.
  ///
  /// In en, this message translates to:
  /// **'Why can\'t I send all the Monero that are in my wallet?'**
  String get faq250Sbquestion8722Sb22;

  /// No description provided for @faq250Sbquestion8722Sb2257Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Why can\'t I send all the coins that are in my wallet?'**
  String get faq250Sbquestion8722Sb2257Sbagoradesk;

  /// No description provided for @faq250Sbquestion8722Sb23.
  ///
  /// In en, this message translates to:
  /// **'I made a transaction from {appName} and it is not showing on the receiving end!'**
  String faq250Sbquestion8722Sb23(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb24.
  ///
  /// In en, this message translates to:
  /// **'I\'ve made my payment, but I forgot to press the I have paid button or I did not press it in time'**
  String get faq250Sbquestion8722Sb24;

  /// No description provided for @faq250Sbquestion8722Sb25.
  ///
  /// In en, this message translates to:
  /// **'How are disputes going to be handled?'**
  String get faq250Sbquestion8722Sb25;

  /// No description provided for @faq250Sbquestion8722Sb26.
  ///
  /// In en, this message translates to:
  /// **'I sent Monero to the wrong address, can I get them back?'**
  String get faq250Sbquestion8722Sb26;

  /// No description provided for @faq250Sbquestion8722Sb2657Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'I sent coins to the wrong address, can I get them back?'**
  String get faq250Sbquestion8722Sb2657Sbagoradesk;

  /// No description provided for @faq250Sbquestion8722Sb27.
  ///
  /// In en, this message translates to:
  /// **'How often are advertisement prices updated?'**
  String get faq250Sbquestion8722Sb27;

  /// No description provided for @faq250Sbquestion8722Sb28.
  ///
  /// In en, this message translates to:
  /// **'What is a floating price?'**
  String get faq250Sbquestion8722Sb28;

  /// No description provided for @faq250Sbquestion8722Sb29.
  ///
  /// In en, this message translates to:
  /// **'What are the fees?'**
  String get faq250Sbquestion8722Sb29;

  /// No description provided for @faq250Sbquestion8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'How do I activate two-factor authentication?'**
  String get faq250Sbquestion8722Sb3;

  /// No description provided for @faq250Sbquestion8722Sb30.
  ///
  /// In en, this message translates to:
  /// **'Do you have a mobile app? / How can I receive mobile notifications?'**
  String get faq250Sbquestion8722Sb30;

  /// No description provided for @faq250Sbquestion8722Sb32.
  ///
  /// In en, this message translates to:
  /// **'What is a transaction priority?'**
  String get faq250Sbquestion8722Sb32;

  /// No description provided for @faq250Sbquestion8722Sb32250Sb1.
  ///
  /// In en, this message translates to:
  /// **'What is a fee level?'**
  String get faq250Sbquestion8722Sb32250Sb1;

  /// No description provided for @faq250Sbquestion8722Sb33.
  ///
  /// In en, this message translates to:
  /// **'How can I withdraw Monero to another cryptocurrency wallet from my {appName} wallet?'**
  String faq250Sbquestion8722Sb33(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb3357Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How can I withdraw other cryptocurrencies from my {appName} wallet?'**
  String faq250Sbquestion8722Sb3357Sbagoradesk(Object appName);

  /// No description provided for @faq250Sbquestion8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'I have lost my second authentication factor, what should I do?'**
  String get faq250Sbquestion8722Sb5;

  /// No description provided for @faq250Sbquestion8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'Do you guys have a .onion site / Tor hidden service?'**
  String get faq250Sbquestion8722Sb6;

  /// No description provided for @faq250Sbquestion8722Sb7.
  ///
  /// In en, this message translates to:
  /// **'Do you guys have an I2P site?'**
  String get faq250Sbquestion8722Sb7;

  /// No description provided for @faq250Sbquestion8722Sb8.
  ///
  /// In en, this message translates to:
  /// **'Do you have an affiliate program?'**
  String get faq250Sbquestion8722Sb8;

  /// No description provided for @faq250Sbquestion8722Sb9.
  ///
  /// In en, this message translates to:
  /// **'What’s the difference between an online trade and a local trade?'**
  String get faq250Sbquestion8722Sb9;

  /// No description provided for @faq250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Frequently asked questions'**
  String get faq250Sbtitle;

  /// No description provided for @feedback250Sbnone.
  ///
  /// In en, this message translates to:
  /// **'No feedback yet'**
  String get feedback250Sbnone;

  /// No description provided for @feedback250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Feedback on {user}'**
  String feedback250Sbtitle(Object user);

  /// No description provided for @fees250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'{appName} fees'**
  String fees250Sbtitle(Object appName);

  /// No description provided for @fees250Sbtrading250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Registering, buying and selling Monero is completely <strong>free</strong>. <br/> {appName} users who create advertisements are charged a <strong> 1% arbitration protection fee </strong> for every completed trade.'**
  String fees250Sbtrading250Sbtext(Object appName);

  /// No description provided for @fees250Sbtrading250Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Registering, buying and selling cryptocurrencies is completely <strong>free</strong>. <br/> {appName} users who create advertisements are charged a <strong> 1% arbitration protection fee </strong> for every completed trade.'**
  String fees250Sbtrading250Sbtext57Sbagoradesk(Object appName);

  /// No description provided for @fees250Sbtrading250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero trading'**
  String get fees250Sbtrading250Sbtitle;

  /// No description provided for @fees250Sbtrading250Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency trading'**
  String get fees250Sbtrading250Sbtitle57Sbagoradesk;

  /// No description provided for @fees250Sbtx250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Transactions to wallets of other {appName} users are {free}. {linebreak}  Transactions to other Monero wallets are subject to the Monero network transaction fee. The current fee is visible on the {walletPage} under the heading {outgoingMonerofees}. The transaction fee is paid from your {appName} wallet when you send a transaction.'**
  String fees250Sbtx250Sbtext(Object appName, Object free, Object linebreak, Object walletPage, Object outgoingMonerofees);

  /// No description provided for @fees250Sbtx250Sbtext8722Sbfree.
  ///
  /// In en, this message translates to:
  /// **'free'**
  String get fees250Sbtx250Sbtext8722Sbfree;

  /// No description provided for @fees250Sbtx250Sbtext8722Sbwallet8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'wallet page'**
  String get fees250Sbtx250Sbtext8722Sbwallet8722Sbpage;

  /// No description provided for @fees250Sbtx250Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Transactions to wallets of other {appName} users are {free}. {linebreak}  Transactions to outside cryptocurrency wallets are subject to the relevant cryptocurrency network transaction fee. The current fee is visible on the {walletPage} under the heading {outgoingMonerofees}. The transaction fee is paid from your {appName} wallet when you send a transaction.'**
  String fees250Sbtx250Sbtext57Sbagoradesk(Object appName, Object free, Object linebreak, Object walletPage, Object outgoingMonerofees);

  /// No description provided for @fees250Sbtx250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero transaction fees'**
  String get fees250Sbtx250Sbtitle;

  /// No description provided for @fees250Sbtx250Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency transaction fees'**
  String get fees250Sbtx250Sbtitle57Sbagoradesk;

  /// No description provided for @finish.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get finish;

  /// No description provided for @footer250Sbabout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get footer250Sbabout;

  /// No description provided for @footer250Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'Affiliate'**
  String get footer250Sbaffiliate;

  /// No description provided for @footer250Sbblocks.
  ///
  /// In en, this message translates to:
  /// **'Monero Block Explorer'**
  String get footer250Sbblocks;

  /// No description provided for @footer250Sbbounty.
  ///
  /// In en, this message translates to:
  /// **'Security bounty'**
  String get footer250Sbbounty;

  /// No description provided for @footer250Sbcanary.
  ///
  /// In en, this message translates to:
  /// **'Canary'**
  String get footer250Sbcanary;

  /// No description provided for @footer250Sbcontact.
  ///
  /// In en, this message translates to:
  /// **'Contact us'**
  String get footer250Sbcontact;

  /// No description provided for @footer250Sbfees.
  ///
  /// In en, this message translates to:
  /// **'Fees'**
  String get footer250Sbfees;

  /// No description provided for @footer250Sble.
  ///
  /// In en, this message translates to:
  /// **'Law Enforcement Inquiries'**
  String get footer250Sble;

  /// No description provided for @footer250Sbpgp.
  ///
  /// In en, this message translates to:
  /// **'PGP keys'**
  String get footer250Sbpgp;

  /// No description provided for @footer250Sbtor.
  ///
  /// In en, this message translates to:
  /// **'Tor hidden service'**
  String get footer250Sbtor;

  /// No description provided for @footer250Sbtos.
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get footer250Sbtos;

  /// No description provided for @formula250Sbexamples8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Examples'**
  String get formula250Sbexamples8722Sbtitle;

  /// No description provided for @formula250Sbexamples250Sbbtc.
  ///
  /// In en, this message translates to:
  /// **'5% above the average BTC/EUR market price: <strong>coingeckobtcusd*usdeur*1.05</strong>\n<br/> BTC/XMR market price: <strong>1/coingeckoxmrbtc</strong>\n<br/> 5% above the Kraken BTC/EUR last price converted into GBP: <strong> krakenbtceurlast/usdeur*usdgbp*1.05 </strong> \n<br/> 5% below the highest among the BTC/USD Bitfinex low price and the BTC/USD Kraken last price: <strong>max(bitfinexbtcusdlow,krakenbtcusdlast)*0.95</strong> \n<br/> 0.1 LTC over the market BTC/LTC price: <strong>coingeckobtcltc+0.1</strong>'**
  String get formula250Sbexamples250Sbbtc;

  /// No description provided for @formula250Sbexamples250Sbxmr.
  ///
  /// In en, this message translates to:
  /// **'5% above the average XMR/EUR market price: <strong>coingeckoxmrusd*usdeur*1.05</strong>\n<br/> ETH/XMR market price: <strong>coingeckoethbtc/coingeckoxmrbtc</strong>\n<br/> BTC/XMR market price: <strong>1/coingeckoxmrbtc</strong>\n<br/> 5% above the Kraken XMR/EUR last price converted into GBP: <strong> krakenxmreurlast/usdeur*usdgbp*1.05 </strong> \n<br/> 5% below the highest among the XMR/USD Bitfinex low price and the XMR/USD Kraken last price: <strong>max(bitfinexxmrusdlow,krakenxmrusdlast)*0.95</strong> \n<br/> 0.001 BTC over the market XMR/BTC price: <strong>coingeckoxmrbtc+0.001</strong>'**
  String get formula250Sbexamples250Sbxmr;

  /// No description provided for @formula250Sbfiat8722Sbrates.
  ///
  /// In en, this message translates to:
  /// **'Fiat Exchange Rates'**
  String get formula250Sbfiat8722Sbrates;

  /// No description provided for @formula250Sbfiat8722Sbrates8722Sbtab.
  ///
  /// In en, this message translates to:
  /// **'Fiat Exch Rates'**
  String get formula250Sbfiat8722Sbrates8722Sbtab;

  /// No description provided for @formula250Sbfunctions.
  ///
  /// In en, this message translates to:
  /// **'Functions'**
  String get formula250Sbfunctions;

  /// No description provided for @formula250Sbinput8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Price formula'**
  String get formula250Sbinput8722Sblabel;

  /// No description provided for @formula250Sbinvalid8722Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'Invalid formula!'**
  String get formula250Sbinvalid8722Sbmessage;

  /// No description provided for @formula250Sbmarkets.
  ///
  /// In en, this message translates to:
  /// **'Markets'**
  String get formula250Sbmarkets;

  /// No description provided for @formula250Sbmarkets8722Sbtab.
  ///
  /// In en, this message translates to:
  /// **'Markets'**
  String get formula250Sbmarkets8722Sbtab;

  /// No description provided for @formula250Sbno8722Sbformula8722Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid formula to see the price'**
  String get formula250Sbno8722Sbformula8722Sbmessage;

  /// No description provided for @formula250Sboperators.
  ///
  /// In en, this message translates to:
  /// **'Operators'**
  String get formula250Sboperators;

  /// No description provided for @formula250Sboperators8722Sband8722Sbfunctions8722Sbtab.
  ///
  /// In en, this message translates to:
  /// **'Opers & Funcs'**
  String get formula250Sboperators8722Sband8722Sbfunctions8722Sbtab;

  /// No description provided for @formula250Sbpopular8722Sbfiat8722Sbpairs.
  ///
  /// In en, this message translates to:
  /// **'Popular fiat exchange pairs'**
  String get formula250Sbpopular8722Sbfiat8722Sbpairs;

  /// No description provided for @formula250Sbunexpected8722Sberror.
  ///
  /// In en, this message translates to:
  /// **'Error! Refresh the page and try again. If the problem persists, please contact our support.'**
  String get formula250Sbunexpected8722Sberror;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbfive8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'In your authenticator app, scan the QR code shown on the page. After you\'ve done that, 6 digit one-time passwords will start appearing in the app.'**
  String get guide250Sb2fa250Sbstep8722Sbfive8722Sbtext;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbfour8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Install the authentication app on your phone. You can {chooseAnyapp} that supports TOTP. For example, {andotp} is Free and Open Source.'**
  String guide250Sb2fa250Sbstep8722Sbfour8722Sbtext(Object chooseAnyapp, Object andotp);

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbfour8722Sbtext8722Sbchoose8722Sbany8722Sbapp.
  ///
  /// In en, this message translates to:
  /// **'choose any app'**
  String get guide250Sb2fa250Sbstep8722Sbfour8722Sbtext8722Sbchoose8722Sbany8722Sbapp;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication (2FA) is enabled from the \'Two-factor authentication\' tab on the settings page. When activating two-factor authentication it is very important that you <strong> write down the backup code </strong> and keep it in a safe place, preferably on paper. If you lose access to your two-factor codes you will not be able to log in to your account and {appName} will not be able to help you. That\'s the point of 2FA. <strong> Use at your own risk. </strong>'**
  String guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb0(Object appName);

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'{appName} offers {totp} 2FA. Once 2FA is enabled, {authMobileapp} will be synchronized with {appName} and will produce 6-digit one-time passwords. This password is changed every minute. To login or withdraw arbitration bond, in addition to your password you also need to enter this one-time password before it expires.'**
  String guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb1(Object appName, Object totp, Object authMobileapp);

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb18722Sbauth8722Sbmobile8722Sbapp.
  ///
  /// In en, this message translates to:
  /// **'authentication mobile app'**
  String get guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb18722Sbauth8722Sbmobile8722Sbapp;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb18722Sbtotp.
  ///
  /// In en, this message translates to:
  /// **'Time-based One-time Password Algorithm (TOTP)'**
  String get guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb18722Sbtotp;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'To start activating two-factor authentication visit the {settingsPage} and choose \'Two-factor authentication\' tab.'**
  String guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb2(Object settingsPage);

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb28722Sbsettings8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'settings page'**
  String get guide250Sb2fa250Sbstep8722Sbone8722Sbtext8722Sb28722Sbsettings8722Sbpage;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbsix8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'To complete the setup enter the code given by your mobile app in the box below the QR code and press the \'Verify 2FA\' button. <br/><br/> Congrats! Two-factor authentication has been enabled for your account. Use codes given to you by the app along with your password to login and withdraw your arbitration bond.'**
  String get guide250Sb2fa250Sbstep8722Sbsix8722Sbtext;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbthree8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<strong>IMPORTANT! Write down your backup code. </strong> We recommend to print or write it on a piece of paper for maximum security. Store it safely, this code is your only chance to regain access to your account should you lose your phone or delete the authenticator app.'**
  String get guide250Sb2fa250Sbstep8722Sbthree8722Sbtext;

  /// No description provided for @guide250Sb2fa250Sbstep8722Sbtwo8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Enter your password and press \'Enable 2FA\' button.'**
  String get guide250Sb2fa250Sbstep8722Sbtwo8722Sbtext;

  /// No description provided for @guide250Sb2fa250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to enable two-factor authentication'**
  String get guide250Sb2fa250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Unfortunately,<strong> coins like bitcoin have no privacy embedded in their protocol. </strong> All the transactions and amounts traded between all parties are publicly visible. This prevents bitcoin from being fungible, and leads to fundamental problems with the viability of bitcoin as a global monetary base.'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb1;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Imagine the following scenario: bitcoin has become the only used currency in the world. What would some of the implications of the lack of privacy be?'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb2;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'You are traveling through parts of a country with a medium to high violent crime rate. You need to use some of your Bitcoin to pay for something.<strong> If every person you transact with knows exactly how much money you have, this is a threat to your personal physical safety. </strong>'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb3;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'1. Physical safety'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb3250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'You are a business that makes a payment to a supplier. That supplier will be able to see how much money your business has, and therefore can guess at how price sensitive you are in future negotiations. They can see every single other payment you’ve ever received to that Bitcoin address, and therefore determine what other suppliers you are dealing with and how much you are paying those suppliers. They may be able to roughly determine how many customers you have and how much you charge your customers. <strong> This is commercially sensitive information that damages your negotiating position enough to cause you relative financial loss. </strong>'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb4;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'2. Trade secrecy'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb4250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'You are a private citizen paying for online goods and services. You are aware that it is common practice for companies to attempt to use <strong> ‘price discrimination’</strong> algorithms to attempt to determine the highest prices they can offer future services to you at, and you would prefer they do not <strong> have the information advantage of knowing how much you spend and where you spend it.</strong>'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb5;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'3. Price discrimination'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb5250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'You sell cupcakes and receive bitcoin as payment. It turns out that <strong> someone who owned that bitcoin before you was involved in criminal activity</strong>. Now you are worried that you have become a <strong> suspect in a criminal case</strong>, because the movement of funds to you is a matter of public record. You are also worried that certain bitcoins that you thought you owned will be considered ‘tainted’ and that <strong> others will refuse to accept them as payment.</strong>'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb6;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb6250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'4. Tainted funds'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb6250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb7.
  ///
  /// In en, this message translates to:
  /// **'<strong> Monero solves these privacy issues by automatically applying privacy techniques to every single transaction made.</strong>'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb7;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb7250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Monero solves this'**
  String get guide250Sbbtc250Sbcard8722Sbfive8722Sb7250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive8722Sb8.
  ///
  /// In en, this message translates to:
  /// **'You can have confidence that it is not possible to own ‘tainted’ Monero. This is a concept in economics known as {fungibility} and is historically considered an important characteristic for any currency to have.'**
  String guide250Sbbtc250Sbcard8722Sbfive8722Sb8(Object fungibility);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfive250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why Financial Privacy is Important'**
  String get guide250Sbbtc250Sbcard8722Sbfive250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfour8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Use Tor'**
  String get guide250Sbbtc250Sbcard8722Sbfour8722Sb1;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfour8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'According to {tor}, Tor is free software and an open network that helps you defend against traffic analysis, a form of network surveillance that threatens personal freedom and privacy, confidential business activities and relationships, and state security.'**
  String guide250Sbbtc250Sbcard8722Sbfour8722Sb2(Object tor);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfour8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'To use it, simply download and install the {torBrowser} from their official website. After you launch it, you can access {appName} through our special Tor portal: {torLink}'**
  String guide250Sbbtc250Sbcard8722Sbfour8722Sb3(Object torBrowser, Object appName, Object torLink);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfour8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'When Buying on {appName}, Use Payment Methods that Involve Cash'**
  String guide250Sbbtc250Sbcard8722Sbfour8722Sb4(Object appName);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfour8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Whenever you buy using a bank transfer, or PayPal, or other such payment options, there will always be a privacy leak due to the records kept by the companies that process your payment. In order to avoid that privacy leak, stick to methods that involve cash.'**
  String get guide250Sbbtc250Sbcard8722Sbfour8722Sb5;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfour8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'Use methods like cash by mail, ATM cash deposits, face-to-face meetings, or gift cards bought with cash. '**
  String get guide250Sbbtc250Sbcard8722Sbfour8722Sb6;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbfour250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Advanced Techniques of Staying Anonymous When Using This Method of Buying Bitcoins'**
  String get guide250Sbbtc250Sbcard8722Sbfour250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbone8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'As per {wikipedia}:'**
  String guide250Sbbtc250Sbcard8722Sbone8722Sb1(Object wikipedia);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbone8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Monero (XMR) is an open-source cryptocurrency created in April 2014 that focuses on <strong> fungibility, privacy and decentralization.</strong> Monero uses an obfuscated public ledger, meaning anybody can broadcast or send transactions, but no outside observer can tell the source, amount or destination. Monero uses a Proof of Work mechanism to issue new coins and incentivize miners to secure the network and validate transactions.'**
  String get guide250Sbbtc250Sbcard8722Sbone8722Sb2;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbone8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Monero is actively encouraged to those seeking financial privacy, since <strong> payments and account balances remain entirely hidden</strong>, which is not the standard for most cryptocurrencies.'**
  String get guide250Sbbtc250Sbcard8722Sbone8722Sb3;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbone250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'1. What is Monero?'**
  String get guide250Sbbtc250Sbcard8722Sbone250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbthree8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Step 6: Withdrawing Bitcoins from {appName}'**
  String guide250Sbbtc250Sbcard8722Sbthree8722Sb1(Object appName);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbthree8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Now, go the the wallet page and check the \'I want to withdraw to a BTC, XMR, ETH, LTC, BCH or DASH wallet\' box on the \'Send Monero\' tab of the wallet page. In the appeared section select BTC and enter the respective receiving BTC address. Then you enter the amount in XMR, select the priority, and click \'Continue\'. Please note that the receive amount in XMR should be within the provided ChangeNow limits.'**
  String get guide250Sbbtc250Sbcard8722Sbthree8722Sb2;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbthree8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Then, after you have entered your password and (if enabled) one-time password, {appName} will send your coins to {morphtoken} for conversion.'**
  String guide250Sbbtc250Sbcard8722Sbthree8722Sb3(Object appName, Object morphtoken);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbthree8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'You don\'t need to do anything at this point, and a new window where you can monitor the transaction status will be opened in you browser (if it isn\'t opened please click on the provided link and be sure to save it so you are able to see the transaction\'s flow). Should anything go wrong with the transaction, the coins will be refunded to your {appName} wallet.'**
  String guide250Sbbtc250Sbcard8722Sbthree8722Sb4(Object appName);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbthree8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Step 7'**
  String get guide250Sbbtc250Sbcard8722Sbthree8722Sb5;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbthree8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'After that, just wait for the transaction to go through (around 15 minutes) and {morphtoken} will send the bitcoins to your provided address. Done!'**
  String guide250Sbbtc250Sbcard8722Sbthree8722Sb6(Object morphtoken);

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbthree250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Buying Bitcoin Anonymously With Cash'**
  String get guide250Sbbtc250Sbcard8722Sbthree250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'<strong> Monero is the leading cryptocurrency with a focus on private and censorship-resistant transactions</strong>. Most existing cryptocurrencies, including Bitcoin and Ethereum, have transparent blockchains, meaning that transactions are openly verifiable and traceable by anyone in the world. Furthermore, sending and receiving addresses for these transactions may potentially be linkable to a person\'s real-world identity.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb1;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Monero uses cryptography to shield sending and receiving addresses, as well as transacted amounts.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb2;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Monero transactions are confidential and untraceable.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb3;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'Every Monero transaction, by default, obfuscates sending and receiving addresses as well as transacted amounts. This always-on privacy means that every Monero user\'s activity enhances the privacy of all other users, unlike selectively transparent cryptocurrencies (e.g. Z-Cash). Monero is fungible. By virtue of obfuscation, Monero cannot become tainted through participation in previous transactions. This means Monero will always be accepted without the risk of censorship. Dandelion++ allows transactions to be propagated without the origin being certain. This will obfuscate a transactor\'s IP address and provide further protection against network monitoring.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb4;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Monero is a grassroots community attracting the world\'s best cryptocurrency researchers and engineering talent.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb5;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'Over 420 developer have contributed to the Monero project, including 30 core developers. Forums and chat channels are welcoming and active.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb6;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb7.
  ///
  /// In en, this message translates to:
  /// **'Monero\'s Research Lab, Core Development Team and Community Developers are constantly pushing the frontier of what is possible with cryptocurrency privacy and security.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb7;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo8722Sb8.
  ///
  /// In en, this message translates to:
  /// **'<strong> Monero is electronic cash that allows fast, inexpensive payments to and from anywhere in the world. </strong> There are no multi-day holding periods and no risk of fraudulent chargebacks. It is safe from ‘capital controls’ - these are measures that restrict the flow of traditional currencies, sometimes to an extreme degree, in countries experiencing economic instability.'**
  String get guide250Sbbtc250Sbcard8722Sbtwo8722Sb8;

  /// No description provided for @guide250Sbbtc250Sbcard8722Sbtwo250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'2. Why Monero? (as explained by {getmonero})'**
  String guide250Sbbtc250Sbcard8722Sbtwo250Sbtitle(Object getmonero);

  /// No description provided for @guide250Sbbtc250Sbconclusion8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'It’s getting more and more difficult as time goes on, but it’s still possible to achieve an anonymous purchase of bitcoin as long as you’re willing to take an extra step of <strong> converting it from Monero. </strong> Fortunately, Monero only serves to increase your privacy and anonymity to an even further degree. Whereas in most other guides available online they suggest methods that involve steps that create further privacy leaks, this guide is provides a way that will not only minimize privacy leaks, but even enhance your level of privacy as compared to buying bitcoin directly with cash, since <strong> you will be protected by Monero’s privacy features. </strong>'**
  String get guide250Sbbtc250Sbconclusion8722Sb1;

  /// No description provided for @guide250Sbbtc250Sbconclusion250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Conclusion'**
  String get guide250Sbbtc250Sbconclusion250Sbtitle;

  /// No description provided for @guide250Sbbtc250Sbintro8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'<strong>Buying bitcoins anonymously has become an increasingly difficult task.</strong>'**
  String get guide250Sbbtc250Sbintro8722Sb1;

  /// No description provided for @guide250Sbbtc250Sbintro8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'With each passing day, it seems like most if not all of the traditional methods of acquiring bitcoin have begun to require ID verification, making most guides available online today such as the one on {ninetyNinebitcoins} or {coincentral} obsolete. {linebreak}  {gutter} The traditional way of buying bitcoins without ID has mainly been through the P2P Bitcoin exchange platform {localbitcoins}, a place that was especially popular for buying bitcoin anonymously with {paypal}.'**
  String guide250Sbbtc250Sbintro8722Sb2(Object ninetyNinebitcoins, Object coincentral, Object linebreak, Object gutter, Object localbitcoins, Object paypal);

  /// No description provided for @guide250Sbbtc250Sbintro8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'But, unfortunately, even <strong>LocalBitcoins have started requiring ID verification from all their traders.</strong>'**
  String get guide250Sbbtc250Sbintro8722Sb3;

  /// No description provided for @guide250Sbbtc250Sbintro8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'So are the days when you could buy bitcoins with a credit card instantly and with no verification behind us? Not quite. Here, we present to you an easy, anonymous, private and quick way to acquire bitcoins with cash in just a few steps… '**
  String get guide250Sbbtc250Sbintro8722Sb4;

  /// No description provided for @guide250Sbbtc250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to Buy Bitcoins Anonymously'**
  String get guide250Sbbtc250Sbtitle;

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbfive8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Once you have made the payment, click the \'I have paid button\'. Once the trader has verified that your payment has been received, the trade will finalized and soon you\'ll see the {assetName} in your settlement wallet. And that\'s all there is to it, congratulations on your first {assetName} trade!'**
  String guide250Sbbuy250Sbstep8722Sbfive8722Sbtext(Object assetName);

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbfive8722Sbtext8722Sblocalmonero8722Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'{appName} wallet'**
  String guide250Sbbuy250Sbstep8722Sbfive8722Sbtext8722Sblocalmonero8722Sbwallet(Object appName);

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbfour8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'After you press the \'Buy\' button you\'ll see more information about the advertisement, including the terms of the trade. Read through them before submitting the trade request, if you don\'t agree with them you can go back to the previous page and choose another advertisement. To start the trade, type in how much {assetName} you want to buy and click the \'Send trade request\' button to the start the trade. Be sure you\'re ready to pay when clicking the button, if you don\'t pay before the payment window is over, the seller will be able to cancel the trade.'**
  String guide250Sbbuy250Sbstep8722Sbfour8722Sbtext(Object assetName);

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbone8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'{registerAnaccount} with {appName}. You get a free and secure online Monero wallet. No additional apps are needed. If you already have an account, skip to the next step.'**
  String guide250Sbbuy250Sbstep8722Sbone8722Sbtext(Object registerAnaccount, Object appName);

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbone8722Sbtext8722Sbregister8722Sban8722Sbaccount.
  ///
  /// In en, this message translates to:
  /// **'Register an account'**
  String get guide250Sbbuy250Sbstep8722Sbone8722Sbtext8722Sbregister8722Sban8722Sbaccount;

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbone8722Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'{registerAnaccount} with {appName}. You get a free and secure online cryptocurrency wallet. No additional apps are needed. If you already have an account, skip to the next step.'**
  String guide250Sbbuy250Sbstep8722Sbone8722Sbtext57Sbagoradesk(Object registerAnaccount, Object appName);

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbthree8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'From the list of advertisements, choose one from a trader with a good reputation score and a high amount of trades. A green circle means the trader has been online today, a yellow circle means they have visited the site this week and a grey circle means that the trader hasn\'t been here for over a week. You can click the \'Buy\' button to view more information about an advertisement.'**
  String get guide250Sbbuy250Sbstep8722Sbthree8722Sbtext;

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbtwo8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Go to the {mainPage} and in the search box fill in the form with the amount you want to buy in your currency, your location and a payment method. If you\'re unsure how you want to pay, choose \'All online offers\' as your payment method. The site will list {assetName} traders available in your region.'**
  String guide250Sbbuy250Sbstep8722Sbtwo8722Sbtext(Object mainPage, Object assetName);

  /// No description provided for @guide250Sbbuy250Sbstep8722Sbtwo8722Sbtext8722Sbmain8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'main page'**
  String get guide250Sbbuy250Sbstep8722Sbtwo8722Sbtext8722Sbmain8722Sbpage;

  /// No description provided for @guide250Sbbuy250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to buy Monero online'**
  String get guide250Sbbuy250Sbtitle;

  /// No description provided for @guide250Sbbuy250Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How to buy cryptocurrency online'**
  String get guide250Sbbuy250Sbtitle57Sbagoradesk;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'You can put the cash in the envelope at home or in the car, and you can put your phone with the video turned on in your front shirt pocket and it\'ll record the whole process without much extra work from you apart from making sure that you do everything in front of where the camera\'s pointing. If you have something like a GoPro or the latest iPhone which has a camera with a wider viewing angle it\'s going to be even easier.\n\nKeep the footage in case of a dispute for 180 days.'**
  String get guide250Sbcbm250Sbbuyer250Sb0250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb0250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your video should be filmed within a single take, without cuts'**
  String get guide250Sbcbm250Sbbuyer250Sb0250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Use some sort of a custom chop/stamp/seal, or a signature or just random movements with a sharpie inside the envelope, covering all surfaces. This will help establish whether the seller is actually opening the envelope you\'ve sent or a fake one. Make sure the mark is visible on the video.'**
  String get guide250Sbcbm250Sbbuyer250Sb1250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Put custom markings inside the envelope'**
  String get guide250Sbcbm250Sbbuyer250Sb1250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'To mitigate a (potential, but very rare) case of postal theft en route, try to conceal the fact that the package contains cash. You may put the cash in a magazine, mylar bag or some other container. Vacuum sealing the cash also works.'**
  String get guide250Sbcbm250Sbbuyer250Sb2250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Try to disguise the cash'**
  String get guide250Sbcbm250Sbbuyer250Sb2250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Instead of simply placing the cash into the envelope, use multiple nested envelopes for your package. Place the cash into the smallest envelope (or simply fold a bigger envelope as necessary), seal it, and place it into another envelope. Repeat this process until you have at least 3 nested envelopes. This helps ensure that if the receiving party tries to tamper with your package they will have a much harder time resealing it all in a way that would be undetectable when inspected by the dispute mediator.'**
  String get guide250Sbcbm250Sbbuyer250Sb3250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Place envelopes inside of envelopes'**
  String get guide250Sbcbm250Sbbuyer250Sb3250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Packages sent without tracking may get lost with and without tracking it could be all but impossible to locate it. Having tracking also allows the receiving end to have peace of mind that the package is en route in case it\'s taking longer than expected.'**
  String get guide250Sbcbm250Sbbuyer250Sb4250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Send with tracking'**
  String get guide250Sbcbm250Sbbuyer250Sb4250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'As we\'ve mentioned before, with established traders the risk for a buyer is very low. Very low doesn\'t mean zero though, so make sure to follow these rules to be prepared for a dispute situation.'**
  String get guide250Sbcbm250Sbbuyer250Sb5250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Conclusion'**
  String get guide250Sbcbm250Sbbuyer250Sb5250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sbintro.
  ///
  /// In en, this message translates to:
  /// **'If you stick to high reputation sellers it\'s very unlikely that you\'ll encounter any issues while buying with cash by mail, however the following tips will help you prove your payment in a dispute should it arise. The most important thing to do is to make a video recording of your payment. Here are the guidelines:'**
  String get guide250Sbcbm250Sbbuyer250Sbintro;

  /// No description provided for @guide250Sbcbm250Sbbuyer250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'If you\'re buying...'**
  String get guide250Sbcbm250Sbbuyer250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'The overwhelming majority of Cash by Mail trades go without a hitch, but you still should follow these guidelines to be prepared for a dispute.'**
  String get guide250Sbcbm250Sbdescription;

  /// No description provided for @guide250Sbcbm250Sbinfocard.
  ///
  /// In en, this message translates to:
  /// **'Make sure to read our guide on staying safe with cash by mail!'**
  String get guide250Sbcbm250Sbinfocard;

  /// No description provided for @guide250Sbcbm250Sbseller250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Record yourself receiving the package from the postal worker, the postal worker weighing it, record the label, all the outer sides of the package; open the package while filming with the camera pointed into it, run the cash through a counter and counterfeit scanner. Make sure everything is filmed in one take. Always keep the package in view of the camera. Keep the footage in case of a dispute for 180 days.'**
  String get guide250Sbcbm250Sbseller250Sb0250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbseller250Sb0250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Make a video of receiving and opening the package'**
  String get guide250Sbcbm250Sbseller250Sb0250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbseller250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'The key thing to remember (and we put disclaimers about this on every step of the way) is to NEVER finalize a trade UNTIL you have the money and you are absolutely confident that everything is in order. A legitimate buyer won\'t pressure you into early finalize.'**
  String get guide250Sbcbm250Sbseller250Sb1250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbseller250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Under no circumstances finalize a trade early'**
  String get guide250Sbcbm250Sbseller250Sb1250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbseller250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'This will help you distinguish packages coming from different buyers and avoid confusion. This also will help in preventing man-in-the-middle attacks, where a scammer interposes themselves in-between the buyer and the seller, pretending to be the seller when talking to the buyer and pretending to be the buyer when talking to the seller.'**
  String get guide250Sbcbm250Sbseller250Sb2250Sbtext;

  /// No description provided for @guide250Sbcbm250Sbseller250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Have a buyer put a note with their username and trade ID'**
  String get guide250Sbcbm250Sbseller250Sb2250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbseller250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'If you\'re selling...'**
  String get guide250Sbcbm250Sbseller250Sbtitle;

  /// No description provided for @guide250Sbcbm250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Staying Safe With Cash by Mail'**
  String get guide250Sbcbm250Sbtitle;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'{appName} offers two main types of advertisements, {online} and local advertisements. Through local advertisements you meet up physically with your trading partner and conduct the trade face to face. This guide covers the basics on how to set up local advertisements and how to trade locally.'**
  String guide250Sblocal250Sbtext8722Sb0(Object appName, Object online);

  /// No description provided for @guide250Sblocal250Sbtext8722Sb08722Sbonline.
  ///
  /// In en, this message translates to:
  /// **'online'**
  String get guide250Sblocal250Sbtext8722Sb08722Sbonline;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Is there a market/demand?'**
  String get guide250Sblocal250Sbtext8722Sb1;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'It depends on where you live, in larger cities you will find more people interested in buying {assetName} than out in the countryside. Because {assetName} transactions are irreversible but most traditional forms of online payment are reversible, selling {assetName} locally directly for cash makes it much safer to accept payment, as cash is just as irreversible as {assetName}. Some people appreciate the privacy that cash trades offer. Buying a small amount of {assetName} with cash is also a great way to get started with {assetName} without too much hassle.'**
  String guide250Sblocal250Sbtext8722Sb2(Object assetName);

  /// No description provided for @guide250Sblocal250Sbtext8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'What if I run out of {assetName}?'**
  String guide250Sblocal250Sbtext8722Sb3(Object assetName);

  /// No description provided for @guide250Sblocal250Sbtext8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'If you run out of {assetName} you can purchase more quickly from a traditional {assetName} exchange, though that usually takes a few days as you will need to purchase using a bank transfer.'**
  String guide250Sblocal250Sbtext8722Sb4(Object assetName);

  /// No description provided for @guide250Sblocal250Sbtext8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Make sure you are easily reachable! In your advertisement, specify your favorite place and time to meet. You can include your cell phone number in the advertisement.'**
  String get guide250Sblocal250Sbtext8722Sb5;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb58722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Advertising'**
  String get guide250Sblocal250Sbtext8722Sb58722Sbtitle;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'All traditional risks that govern money exchanging also relate to {assetName} trading. Please consider the risks carefully, and use the feedback system and other measures to ensure your safety.'**
  String guide250Sblocal250Sbtext8722Sb6(Object assetName);

  /// No description provided for @guide250Sblocal250Sbtext8722Sb68722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Risks'**
  String get guide250Sblocal250Sbtext8722Sb68722Sbtitle;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb7.
  ///
  /// In en, this message translates to:
  /// **'There could be cases, where counterfeit money is passed to the {assetName} seller. Please consider using a counterfeit detector when you do the trades.'**
  String guide250Sblocal250Sbtext8722Sb7(Object assetName);

  /// No description provided for @guide250Sblocal250Sbtext8722Sb78722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Counterfeit money'**
  String get guide250Sblocal250Sbtext8722Sb78722Sbtitle;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb8.
  ///
  /// In en, this message translates to:
  /// **'<strong> Please note: </strong>Before you start trading as a business, research your country\'s legislation to see if you are required to apply for any licenses or if there are any other legal requirements.'**
  String get guide250Sblocal250Sbtext8722Sb8;

  /// No description provided for @guide250Sblocal250Sbtext8722Sb9.
  ///
  /// In en, this message translates to:
  /// **'Happy trading!'**
  String get guide250Sblocal250Sbtext8722Sb9;

  /// No description provided for @guide250Sblocal250Sbtext8722Sbfour.
  ///
  /// In en, this message translates to:
  /// **'Send links to your friends, advertise on social media and locally, wait for the orders to kick in'**
  String get guide250Sblocal250Sbtext8722Sbfour;

  /// No description provided for @guide250Sblocal250Sbtext8722Sbstep8722Sbone.
  ///
  /// In en, this message translates to:
  /// **'{signUp} if you haven\'t done already'**
  String guide250Sblocal250Sbtext8722Sbstep8722Sbone(Object signUp);

  /// No description provided for @guide250Sblocal250Sbtext8722Sbstep8722Sbone8722Sbsign8722Sbup.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get guide250Sblocal250Sbtext8722Sbstep8722Sbone8722Sbsign8722Sbup;

  /// No description provided for @guide250Sblocal250Sbtext8722Sbstep8722Sbthree.
  ///
  /// In en, this message translates to:
  /// **'{loadMonero}, if you are selling'**
  String guide250Sblocal250Sbtext8722Sbstep8722Sbthree(Object loadMonero);

  /// No description provided for @guide250Sblocal250Sbtext8722Sbstep8722Sbthree8722Sbload8722Sbmonero.
  ///
  /// In en, this message translates to:
  /// **'Load {assetName} to your wallet'**
  String guide250Sblocal250Sbtext8722Sbstep8722Sbthree8722Sbload8722Sbmonero(Object assetName);

  /// No description provided for @guide250Sblocal250Sbtext8722Sbstep8722Sbtwo.
  ///
  /// In en, this message translates to:
  /// **'Post a trade advertisement'**
  String get guide250Sblocal250Sbtext8722Sbstep8722Sbtwo;

  /// No description provided for @guide250Sblocal250Sbtext8722Sbsteps8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'OK, so what are the first steps?'**
  String get guide250Sblocal250Sbtext8722Sbsteps8722Sbtitle;

  /// No description provided for @guide250Sblocal250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to buy or sell Monero for cash guide'**
  String get guide250Sblocal250Sbtitle;

  /// No description provided for @guide250Sblocal250Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How to buy or sell cryptocurrency for cash guide'**
  String get guide250Sblocal250Sbtitle57Sbagoradesk;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'In this guide you\'ll learn how to restore your non-custodial {appName} settlement wallet from the mnemonic seed shown on the trade page.'**
  String guide250Sbmnemonic250Sbbtc250Sbdescription(Object appName);

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Download the lastest version of the Electrum wallet from <a target=\"_blank\" href=\"https://electrum.org/#download\" class=\"next-link\">electrum.org</a> and launch it.'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb1;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb2.
  ///
  /// In en, this message translates to:
  /// **'Choose \"New/Restore\" from the \"File\" menu (chosen automatically if you don\'t have any other Electrum wallets on your device).'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb2;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb3.
  ///
  /// In en, this message translates to:
  /// **'Choose whichever wallet name and mode (e.g. \"Standard\") you like.'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb3;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb4.
  ///
  /// In en, this message translates to:
  /// **'Select \"I already have a seed\" and press \"Next\".'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb4;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb5.
  ///
  /// In en, this message translates to:
  /// **'Paste the mnemonic seed from the trade page into the input. Then, press \"Options\" under the mnemonic seed input field and tick both \"Extend this seed with custom words\" and \"BIP39 seed\", press \"OK\" and then \"Next\".'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb5;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb6.
  ///
  /// In en, this message translates to:
  /// **'In the \"Seed extension\" input, type in the {appName} password that you\'ve used when finalizing the trade and press \"Next\".'**
  String guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb6(Object appName);

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb7.
  ///
  /// In en, this message translates to:
  /// **'Select \"native segwit (p2wpkh)\" and in the derivation path input below write {formattedDerivationPath}. Press \"Next\".'**
  String guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb7(Object formattedDerivationPath);

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb8.
  ///
  /// In en, this message translates to:
  /// **'Choose whichever password you want for your wallet and press \"Next\".'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb8;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb9.
  ///
  /// In en, this message translates to:
  /// **'That\'s it! You\'ll see all the transactions under the \"History\" tab.'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbcontent250Sb9;

  /// No description provided for @guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Using Electrum'**
  String get guide250Sbmnemonic250Sbbtc250Sbelectrum250Sbtitle;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Download the latest version of the Monero CLI wallet for your OS from <a target=\"_blank\" href=\"https://getmonero.org/downloads\" class=\"next-link\">getmonero.org</a>.'**
  String get guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb1;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb2.
  ///
  /// In en, this message translates to:
  /// **'Launch the wallet with the {formattedFlag} flag.'**
  String guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb2(Object formattedFlag);

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb3.
  ///
  /// In en, this message translates to:
  /// **'Enter whichever name for your wallet that you want.'**
  String get guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb3;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb4.
  ///
  /// In en, this message translates to:
  /// **'When asked to <strong>\"Specify Electrum seed\"</strong>, paste the mnemonic seed from the trade page.'**
  String get guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb4;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb5.
  ///
  /// In en, this message translates to:
  /// **'When asked to <strong>\"Enter seed offset passphrase\",</strong> type in the {appName} password that you\'ve used when finalizing the trade.'**
  String guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb5(Object appName);

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb6.
  ///
  /// In en, this message translates to:
  /// **'Answer the next questions to your preference.'**
  String get guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb6;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb7.
  ///
  /// In en, this message translates to:
  /// **'That\'s it! After the wallet is synchronized, you\'ll see all the transactions by using the {formattedCommand} command.'**
  String guide250Sbmnemonic250Sbmonero250Sbcli250Sbcontent250Sb7(Object formattedCommand);

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbcli250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Using official CLI wallet'**
  String get guide250Sbmnemonic250Sbmonero250Sbcli250Sbtitle;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Download the latest version of the Monero GUI wallet for your OS from <a target=\"_blank\" href=\"https://getmonero.org/downloads\" class=\"next-link\">getmonero.org</a> and launch it.'**
  String get guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb1;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb2.
  ///
  /// In en, this message translates to:
  /// **'Choose whichever wallet mode you prefer, and then select \"Restore wallet from keys or mnemonic seed\".'**
  String get guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb2;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb3.
  ///
  /// In en, this message translates to:
  /// **'Choose \"Restore from seed\" (selected by default) and paste the mnemonic seed from the trade page into the input below. Then, select \"Seed offset passphrase\" and type in the {appName} password that you\'ve used when finalizing the trade. Press \"Next\". '**
  String guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb3(Object appName);

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb4.
  ///
  /// In en, this message translates to:
  /// **'That\'s it! After the wallet is synchronized, you\'ll see all the transactions under the \"Transactions\" tab.'**
  String get guide250Sbmnemonic250Sbmonero250Sbgui250Sbcontent250Sb4;

  /// No description provided for @guide250Sbmnemonic250Sbmonero250Sbgui250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Using official GUI wallet'**
  String get guide250Sbmnemonic250Sbmonero250Sbgui250Sbtitle;

  /// No description provided for @guide250Sbmnemonic250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to restore my non-custodial settlement wallet from the mnemonic seed?'**
  String get guide250Sbmnemonic250Sbtitle;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Go to the <a target=\"_blank\" href=\"/\" class=\"next-link\">main page</a> - you\'ll see the top offers for your default region. You can refine your results by entering the desired amount and changing the currency, country or payment method (select \"All online offers\" if you\'re unsure which payment method you want to use) in the search box and pressing \"Search\".'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb1;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb1250Sb1.
  ///
  /// In en, this message translates to:
  /// **'From the list of ads, choose one from a trader with a high amount of trades and a good reputation score (shown respectively in the brackets next to the username). A green circle means the trader has been online today; a yellow circle means they have visited the site this week; and a gray circle means that the trader hasn\'t been here for over a week. You can click the \"Buy\" button to view more information about an advertisement.'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb1250Sb1;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Go to the <a target=\"_blank\" href=\"/\" class=\"next-link\">main page</a> - you\'ll see the top offers for your default region. Then, select the cryptocurrency you want to trade by pressing the corresponding tab on the row above the ads table. For this example, we\'ll choose BTC. In the left column you should then select the \"Buy\" tab. You can refine your results by entering the desired amount and changing the currency, country or payment method (select \"All online offers\" if you\'re unsure which payment method you want to use) in the search box and pressing the blue button with the \"Search\" icon.'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb157Sbagoradesk;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb2.
  ///
  /// In en, this message translates to:
  /// **'After you press the \"Buy\" button, you\'ll see more information about the advertisement, including the terms of the trade. Read through them before submitting the trade request, if you don\'t agree with them, you can go back to the previous page and choose another advertisement. To start the trade, type in how much {assetName} you want to buy and click the \"Send trade request\" button. You\'ll be once again shown the trade terms, read them carefully one more time and make sure you agree, then press \"Accept terms\".'**
  String guide250Sbnon8722Sbcustodial250Sbbuy250Sb2(Object assetName);

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb3.
  ///
  /// In en, this message translates to:
  /// **'Next, you\'ll be prompted to enter your settlement wallet address. This is the address that the coins you\'ve bought will be sent to. If you don\'t have a personal XMR wallet, you can use either the <a target=\"_blank\" href=\"https://www.getmonero.org/downloads/\" class=\"next-link\">official Monero GUI or CLI wallet</a> or <a target=\"_blank\" href=\"https://featherwallet.org/\" class=\"next-link\">Feather wallet</a>. Copy your address from your wallet and paste it in the \"Receiving Monero address\" input (make sure the pasted address is the same as the copied address to avoid losing your coins). Please note, that the wallet you use for trade settlement must be your own, third-party hosted wallets are not allowed. Once done, press \"Start trading\" to begin the trade.'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb3;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb357Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Next, you\'ll be prompted to enter your settlement wallet address. This is the address that the coins you\'ve bought will be sent to. If you don\'t have a personal BTC wallet, you can use <a target=\"_blank\" href=\"https://electrum.org/#home\" class=\"next-link\">Electrum wallet</a>. Copy your address from your wallet and paste it in the \"Receiving Bitcoin address\" input (make sure the pasted address is the same as the copied address to avoid losing your coins). Please note, that the wallet you use for trade settlement must be your own, third-party hosted wallets are not allowed. Once done, press \"Start trading\" to begin the trade.'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb357Sbagoradesk;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb4.
  ///
  /// In en, this message translates to:
  /// **'A trade page will be opened in your browser. Communicate with the seller through the trade chat to make sure the seller is ready to receive your payment and to clarify any questions you have about making the payment.'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb4;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb5.
  ///
  /// In en, this message translates to:
  /// **'Conduct the payment according to the seller\'s instructions and immediately press \"I have paid\" - this will notify the seller that the payment is complete and prevent the seller from canceling the trade.'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb5;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb7.
  ///
  /// In en, this message translates to:
  /// **'Once the seller has confirmed receiving your payment, they\'ll initiate the trade settlement. You\'ll see that the trade status will have changed to \"Processing\". At this point, there\'s nothing else you need to do - the coins will be transferred to your provided settlement wallet address automatically. This will take some time (usually around 10-60 minutes), so just relax and wait for the incoming transaction to appear in your personal wallet. Please note, the network transaction fees associated with trade settlement will be deducted from the trade amount, meaning you\'ll receive slightly less than what\'s displayed on the trade page.'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb7;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbbuy250Sb8.
  ///
  /// In en, this message translates to:
  /// **'That\'s it! Once the trade settlement is finished and you\'ve received your coins, you\'ll be able to see the settlement details by expanding the \"Transaction details\" section on the trade page. Don\'t forget to leave feedback about your experience with this seller!'**
  String get guide250Sbnon8722Sbcustodial250Sbbuy250Sb8;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbregister.
  ///
  /// In en, this message translates to:
  /// **'<a target=\"_blank\" href=\"/signup\" class=\"next-link\">Register an account</a> with {appName}. If you already have an account, skip to the next step.'**
  String guide250Sbnon8722Sbcustodial250Sbregister(Object appName);

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Deposit the coins to your <a target=\"_blank\" href=\"/account/wallet\" class=\"next-link\">{appName} arbitration bond wallet</a>. You\'ll see your {appName} deposit address under the \"Receive\" tab.'**
  String guide250Sbnon8722Sbcustodial250Sbsell250Sb1(Object appName);

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb2.
  ///
  /// In en, this message translates to:
  /// **'Go to the <a target=\"_blank\" href=\"/\" class=\"next-link\">main page</a> and in the search box, select \"Sell\". You can further refine your results by entering the desired amount and changing the currency, country or payment method (select \"All online offers\" if you\'re unsure which payment method you want to use) in the search box. Press \"Search\".'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb2;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb2250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Some payment methods are considered <a target=\"_blank\" href=\"/faq#high-risk-methods\" class=\"next-link\">high-risk</a>. Cryptocurrency transactions are completely irreversible. If the payment made by the buyer is reversed, then once you sell your cryptocurrency it won\'t be possible for you to recover it. That\'s why we recommend that you sell with a low-risk payment method to experienced users with a large amount of previous trades and a high reputation score.'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb2250Sb1;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb2250Sb2.
  ///
  /// In en, this message translates to:
  /// **'From the list of ads, choose one from a trader with a high amount of trades and a good reputation score (shown respectively in the brackets next to the username). A green circle means the trader has been online today; a yellow circle means they have visited the site this week; and a gray circle means that the trader hasn\'t been here for over a week. You can click the \"Sell\" button to view more information about an advertisement.'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb2250Sb2;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb257Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Go to the <a target=\"_blank\" href=\"/\" class=\"next-link\">main page</a> and in the left column, select the \"Sell\" tab. Then, select the cryptocurrency you want to trade by pressing the corresponding tab on the row above the ads table. For this example, we\'ll choose BTC. You can further refine your results by entering the desired amount and changing the currency, country or payment method (select \"All online offers\" if you\'re unsure which payment method you want to use) in the search box. Press the blue button with the \"Search\" icon.'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb257Sbagoradesk;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb3.
  ///
  /// In en, this message translates to:
  /// **'After you press the \"Sell\" button, you\'ll see more information about the advertisement, including the terms of the trade. Read through them before submitting the trade request, if you don\'t agree with them, you can go back to the previous page and choose another advertisement. To start a trade, type in how much {assetName} you want to sell and click the \"Send trade request\" button. You\'ll be once again shown the trade terms, read them carefully one more time and make sure you agree, then press \"Agree to terms and start trading\".'**
  String guide250Sbnon8722Sbcustodial250Sbsell250Sb3(Object assetName);

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb4.
  ///
  /// In en, this message translates to:
  /// **'A trade page will be opened in your browser. Communicate with the buyer through the trade chat and provide them with your payment details.'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb4;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb5.
  ///
  /// In en, this message translates to:
  /// **'You\'ll be notified once the buyer has made the payment. Make sure you\'ve received the payment and that it\'s the right amount. Once you\'ve verified that the payment is 100% correct, press \"Finalize\".'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb5;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb6.
  ///
  /// In en, this message translates to:
  /// **'At this point, you\'ll be prompted to enter your current {appName} password. Type it in, and press confirm. By entering your password, you are generating a settlement wallet and signing the cryptocurrency transaction, so make sure you don\'t forget or lose the password at least until the trade is settled.'**
  String guide250Sbnon8722Sbcustodial250Sbsell250Sb6(Object appName);

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb7.
  ///
  /// In en, this message translates to:
  /// **'You\'ll see that the trade status will have changed to \"Processing\". At this point, there\'s nothing else you need to do - the coins will be transferred to the buyer\'s settlement wallet address automatically.'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb7;

  /// No description provided for @guide250Sbnon8722Sbcustodial250Sbsell250Sb8.
  ///
  /// In en, this message translates to:
  /// **'That\'s it! Once the trade settlement is finished, you\'ll be able to see the settlement details by expanding the \"Transaction details\" section on the trade page. Don\'t forget to leave feedback about your experience with this buyer!'**
  String get guide250Sbnon8722Sbcustodial250Sbsell250Sb8;

  /// No description provided for @guide250Sbsell250Sbstep8722Sbfive8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'After you\'ve sent the trade request the buyer will ask you for your payment details (e.g. if you want to sell for a bank transfer the buyer will ask for your bank account information). After the buyer is provided the payment information, he will pay for the {assetName} and confirm it to you. Please make sure that you have received the money into your account before finalizing the trade. NEVER finalize the trade before you have received the payment. {assetName} transactions are irreversible, once you send the {assetName} to the buyer there is no way to get them back, even if the buyer\'s payment doesn\'t show up. Once you have confirmed that the payment has been made you can scroll down the page and select \'Finalize\'. This will send the {assetName} to the buyer\'s settlement wallet and complete the trade.'**
  String guide250Sbsell250Sbstep8722Sbfive8722Sbtext(Object assetName);

  /// No description provided for @guide250Sbsell250Sbstep8722Sbfour8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'After you press the \'Sell\' button you\'ll see more information about the advertisement, including the terms of the trade. Read through them before submitting the trade request, if you don\'t agree with them you can go back to the previous page and choose another advertisement. To start the trade, type in how much {assetName} you want to sell and click the \'Send trade request\' button to the start the trade. Once you start the trade your {assetName} will be moved from your wallet to the arbitration bond for trade protection.'**
  String guide250Sbsell250Sbstep8722Sbfour8722Sbtext(Object assetName);

  /// No description provided for @guide250Sbsell250Sbstep8722Sbthree8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'From the list of advertisements, choose one from a trader with a good reputation score and a high amount of trades. A green circle means the trader has been online today, a yellow circle means they have visited the site this week and a grey circle means that the trader hasn\'t been here for over a week. You can click the \'Sell\' button to view more information about an advertisement.'**
  String get guide250Sbsell250Sbstep8722Sbthree8722Sbtext;

  /// No description provided for @guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Go to the {mainPage} and in the search box select the \'Sell\' tab, fill in the form with the amount you want to sell in your currency, your location and choose a payment method. If you\'re unsure how you want to be paid, choose \'All online offers\' as your payment method. The site will list {assetName} traders available in your region.'**
  String guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb0(Object mainPage, Object assetName);

  /// No description provided for @guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb08722Sbmain8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'main page'**
  String get guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb08722Sbmain8722Sbpage;

  /// No description provided for @guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Some payment methods are considered high-risk. Monero transactions are completely irreversible. Once you sell your Monero it\'s not possible for you to recover them, even if the payment is reversed. That\'s why we recommend you sell with a low-risk payment method to experienced users with a large amount of previous trades and 100% feedback.'**
  String get guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb1;

  /// No description provided for @guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Some payment methods are considered high-risk. Cryptocurrency transactions are completely irreversible. Once you sell your cryptocurrency it\'s not possible for you to recover them, even if the payment is reversed. That\'s why we recommend you sell with a low-risk payment method to experienced users with a large amount of previous trades and 100% feedback.'**
  String get guide250Sbsell250Sbstep8722Sbtwo8722Sbtext8722Sb157Sbagoradesk;

  /// No description provided for @guide250Sbsell250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to sell Monero online'**
  String get guide250Sbsell250Sbtitle;

  /// No description provided for @guide250Sbsell250Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How to sell cryptocurrency online'**
  String get guide250Sbsell250Sbtitle57Sbagoradesk;

  /// No description provided for @guide250Sbtelegram250Sbcard8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Telegram mobile notifications'**
  String get guide250Sbtelegram250Sbcard8722Sbtitle;

  /// No description provided for @guide250Sbtelegram250Sbconclusion.
  ///
  /// In en, this message translates to:
  /// **'Congratulations! Now you can respond to your customers instantly!'**
  String get guide250Sbtelegram250Sbconclusion;

  /// No description provided for @guide250Sbtelegram250Sbdisable8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'If you want to disable notifications from our bot, navigate back to the \'Notifications\' tab in your {accountSettings} and click the red \'Disable Telegram Notifications\' button.'**
  String guide250Sbtelegram250Sbdisable8722Sbtext(Object accountSettings);

  /// No description provided for @guide250Sbtelegram250Sbdisable8722Sbtext8722Sbaccount8722Sbsettings.
  ///
  /// In en, this message translates to:
  /// **'account settings'**
  String get guide250Sbtelegram250Sbdisable8722Sbtext8722Sbaccount8722Sbsettings;

  /// No description provided for @guide250Sbtelegram250Sbdisable8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to disable notifications?'**
  String get guide250Sbtelegram250Sbdisable8722Sbtitle;

  /// No description provided for @guide250Sbtelegram250Sbprologue8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'{telegram} allows you to receive {appName} notifications (such as new trade, new payment, trade finalization or new chat message notifications) in the form of Telegram messages from our notification bot.'**
  String guide250Sbtelegram250Sbprologue8722Sb0(Object telegram, Object appName);

  /// No description provided for @guide250Sbtelegram250Sbprologue8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Telegram is a mobile messaging app. You can read more on what Telegram is in the {officialFaq}.'**
  String guide250Sbtelegram250Sbprologue8722Sb1(Object officialFaq);

  /// No description provided for @guide250Sbtelegram250Sbprologue8722Sb18722Sbofficial8722Sbfaq.
  ///
  /// In en, this message translates to:
  /// **'official FAQ'**
  String get guide250Sbtelegram250Sbprologue8722Sb18722Sbofficial8722Sbfaq;

  /// No description provided for @guide250Sbtelegram250Sbprologue8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'In order to activate mobile notifications you need to have Telegram {installed}.'**
  String guide250Sbtelegram250Sbprologue8722Sb2(Object installed);

  /// No description provided for @guide250Sbtelegram250Sbprologue8722Sb28722Sbinstalled.
  ///
  /// In en, this message translates to:
  /// **'installed on your device'**
  String get guide250Sbtelegram250Sbprologue8722Sb28722Sbinstalled;

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'{pressThis} or search for \'{appName} Notification Bot\' in Telegram\'s search field and select {appName} Notification Bot.'**
  String guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb0(Object pressThis, Object appName);

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb08722Sbpress8722Sbthis.
  ///
  /// In en, this message translates to:
  /// **'Press on this link'**
  String get guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb08722Sbpress8722Sbthis;

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'After you open the chat window, press on \'Start\' at the bottom of the screen or send the message \'/start\' (without quotes) manually.'**
  String get guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb1;

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Our bot will give you your Telegram Notifications ID.'**
  String get guide250Sbtelegram250Sbstep8722Sbone8722Sbtext8722Sb2;

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbthree8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'That\'s it! Now you will receive notifications from our bot.'**
  String get guide250Sbtelegram250Sbstep8722Sbthree8722Sbtext;

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Go to your {accountSettings} and select the \'Notifications\' tab.'**
  String guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb0(Object accountSettings);

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb08722Sbsettings.
  ///
  /// In en, this message translates to:
  /// **'account settings'**
  String get guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb08722Sbsettings;

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Type in your Telegram Notifications ID in the relevant field in the \'Telegram Notifications\' section.'**
  String get guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb1;

  /// No description provided for @guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Click the save icon to save your Telegram Notifications ID.'**
  String get guide250Sbtelegram250Sbstep8722Sbtwo8722Sbtext8722Sb2;

  /// No description provided for @guide250Sbtelegram250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to turn on Telegram mobile notifications'**
  String get guide250Sbtelegram250Sbtitle;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'A typical trade on {appName} works like this, the example is an online sell trade where you\'re selling {assetName} to a buyer. The process is similar when you are buying {assetName} online, but for this example we\'re focusing on selling {assetName}, as that\'s the most common type of trade. {linebreak}  First you need to deposit {assetName} to your {localmoneroWallet}. {linebreak}  Then, you need to {create} {aSellmoneroad} (called an online sell advertisement). When making the advertisement you choose a payment method, set your pricing, your limits and write your terms of the trade as a free form message. '**
  String guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb0(Object appName, Object assetName, Object linebreak, Object localmoneroWallet, Object create, Object aSellmoneroad);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sba8722Sbsell8722Sbmonero8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'a sell {assetName} online advertisement'**
  String guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sba8722Sbsell8722Sbmonero8722Sbad(Object assetName);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sbcreate.
  ///
  /// In en, this message translates to:
  /// **'create'**
  String get guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sbcreate;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sbfund.
  ///
  /// In en, this message translates to:
  /// **'fund'**
  String get guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sbfund;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sblocalmonero8722Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'{appName} wallet'**
  String guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb08722Sblocalmonero8722Sbwallet(Object appName);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'You need to have {assetName} in your {appName} arbitration bond wallet in order for customers to be able to open trade requests from your advertisements. <br/><br/>When a <strong>buyer opens a trade with you</strong>, {assetName} for the full amount of the trade is automatically reserved from your wallet. Give the buyer payment instructions and guide the buyer through paying for the trade. You will receive email notifications when someone replies to your advertisement. <br/><br/> Once the buyer has paid and pressed the<strong> I have paid button</strong> you will receive a notification via e-mail and on the website that a trade has been paid for. <br/><br/> When you\'ve confirmed that you have received the payment it\'s time for you to finalize the trade. After the trade is finalized and settled, the buyer will have the {assetName} in their settlement wallet. <br/><br/> The final step is to <strong>leave feedback</strong> for the buyer and encourage the buyer to do the same for you. Feedback is important in order to gain reputation and make more trades.'**
  String guide250Sbtrade250Sbblock8722Sb18722Sbtext8722Sb1(Object assetName, Object appName);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb18722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Overview of the trading process'**
  String get guide250Sbtrade250Sbblock8722Sb18722Sbtitle;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb28722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Before you start trading you need to consider what payment methods you are going to provide and research the payment method so that you know how it works. When you first start trading we recommend you don\'t choose a high-risk payment method. Transfer with a specific bank can be a good starting payment method, especially if there are few traders active in your country. <br/><br/> <strong>Before you start trading</strong> <br/><br/> Before you start trading make sure you<strong> familiarize yourself with your local legislation </strong>and that your are in compliance with any relevant laws and that you have the necessary business licenses for the jurisdiction you’re trading in. <br/><br/> Legislation varies a lot from country to country and whether you\'re trading as an individual or as a business. <br/><br/><strong>Research the payment method</strong> you\'re going to offer. Read through other traders\' ads of the same payment method and make some trades with them. Try to identify possible problems before you start trading. <br/><br/><strong>Use payment accounts only for {assetName} trading.</strong> Some payment providers will temporarily or permanently close your account if you receive unauthorized payments that are related to fraud. Using accounts only for {assetName} trading protects your personal finances.'**
  String guide250Sbtrade250Sbblock8722Sb28722Sbtext(Object assetName);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb28722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Getting started'**
  String get guide250Sbtrade250Sbblock8722Sb28722Sbtitle;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'The {advertisementCreationpage} is where you create new advertisements. {linebreak}  There are some options when creating an advertisement which are required, and a lot of extra options which are optional but recommended to set. Using the extra options allows you to tune your advertisement to suit your trading strategy. {linebreak}  You can find all of the advertisements that you have created from your {dashboard}. In the dashboard you can also find your open trades. {linebreak}  {requiredOptions} {linebreak}  {location} Enter the country where you want your advertisement to appear. {linebreak}  {paymentMethod} Select the payment method you want to offer from the dropdown menu. {linebreak}  {currency} Choose which currency you\'re selling for. For instance, if you\'re selling in France you should select EUR. You can use {thisList} to find what your currency acronym is.'**
  String guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb0(Object advertisementCreationpage, Object linebreak, Object dashboard, Object requiredOptions, Object location, Object paymentMethod, Object currency, Object thisList);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbadvertisement8722Sbcreation8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'advertisement creation page'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbadvertisement8722Sbcreation8722Sbpage;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbcurrency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbcurrency;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbdashboard.
  ///
  /// In en, this message translates to:
  /// **'dashboard'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbdashboard;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sblocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sblocation;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbpayment8722Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbpayment8722Sbmethod;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbrequired8722Sboptions.
  ///
  /// In en, this message translates to:
  /// **'Required options'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbrequired8722Sboptions;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbthis8722Sblist.
  ///
  /// In en, this message translates to:
  /// **'this list'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb08722Sbthis8722Sblist;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'<strong> Market or fixed price </strong><br/> To price your advertisement you can enter a margin you want above the {assetName} market price. To do that, enter a percentage in the margin field after choosing the “Market price” option. You might also want to specify a fixed price that will not change until you manually change it. For this you need to choose the “Fixed price” option and enter the price value. <br/><br/> <strong> Min. / Max. transaction limit </strong><br/> The minimum transaction limit sets the smallest amount someone can buy. If you set it to five, and you have your currency set to EUR it means that the smallest trade amount someone can open a trade with you for will be for 5 EUR. The maximum transaction limit sets what the biggest trade amount that you want to accept is. <br/><br/> <strong> Terms of Trade </strong><br/> This is the text the buyer sees before he opens up a trade with you. It\'s a good idea to write instructions for the buyer on how you want the trade to proceed and if you have any specific instructions. If you require, for example, the buyer to submit a receipt as proof of payment before you finalize a trade or if you need the buyer to provide an ID, this is the place to mention it. You can take a look at other traders\' advertisements for the payment method you want to use to get an idea of what good terms of trade contain. <br/><br/> <strong> Extra options </strong><br/><br/> <strong> Limit amounts to </strong><br/> You can restrict the advertisement to only being able to open trades for specific amounts. If you enter 20,30,60 into the box a potential trade partner could only open a trade for 20, 30 or 60 EUR. <br/><br/> <strong> Payment details </strong><br/> Enter here specific information relating to how the buyer should pay, this can be your bank account number or e-mail address (e.g. for PayPal). <br/><br/> <strong> Required minimum feedback score </strong><br/> The feedback minimum allows you to set a minimum required feedback score to have in order to open a trade using your advertisement. <br/><br/> <strong> First time limit ({assetSymbol}) </strong><br/> This is a specific maximum transaction limit for new users. If a buyer with no previous trading history with you wants to open a trade with you, this is the largest amount they can open a trade for. <br/><br/> <strong> Payment window </strong><br/> The amount of time the buyer has to complete the payment before the seller is able to cancel the trade. <br/><br/> <strong> Track maximum amount liquidity </strong><br/> Enabling tracking liquidity lowers the maximum limit of the advertisement by the amount that is currently held up in open trades. <br/><br/> <strong> Quick tips on identifying scammers </strong> <br/><br/><strong>Fraudulent buyers are often in a hurry.</strong> The more a customer asks you to hurry/rush the more suspicious you should be, real customers always have patience. <br/><br/>Fraudulent buyers often <strong>suggest doing all or part of the transaction outside of the arbitration bond protection system </strong>and then do not complete their part of the transaction. <br/><br/> Be careful about <strong>photoshopped payment evidence</strong>, don\'t finalize a trade until you have confirmed that you have received the money. You are not obliged to finalize a trade until you can verify that you have received the buyer\'s payment. <br/><br/><strong>Don\'t open any links that your trading partner is sending to you</strong>. If you must, use different browser than the one you are using. <br/><br/>Don\'t visit websites other than {appName} with the browser that you\'re using to trade. <strong>Use a different browser for other websites.</strong> <br/><br/> Bookmark {appName} in your browser and always use the bookmark when visiting the website. This helps you to avoid accidentally visiting phishing websites, they exist and can be very convincing.'**
  String guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb1(Object assetName, Object assetSymbol, Object appName);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'If you\'re unsure about a user, you can always {contactSupport} for help.'**
  String guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb2(Object contactSupport);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb28722Sbcontact8722Sbsupport.
  ///
  /// In en, this message translates to:
  /// **'contact support'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtext8722Sb28722Sbcontact8722Sbsupport;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb38722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Setting up an advertisement'**
  String get guide250Sbtrade250Sbblock8722Sb38722Sbtitle;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb48722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Please read our {termsOfservice}.'**
  String guide250Sbtrade250Sbblock8722Sb48722Sbtext8722Sb0(Object termsOfservice);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb48722Sbtext8722Sb08722Sbterms8722Sbof8722Sbservice.
  ///
  /// In en, this message translates to:
  /// **'terms of service'**
  String get guide250Sbtrade250Sbblock8722Sb48722Sbtext8722Sb08722Sbterms8722Sbof8722Sbservice;

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb48722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'<br/><br/>{appName} support handles disputes based on evidence supplied by trade participants and their reputation. <br/><br/>Disputes can be started after the payment is marked complete. <br/><br/>After the trade has been finalized, the trade is considered finished by {appName} and cannot be disputed. <br/><br/> When a {assetName} seller is unresponsive, {appName} will finalize the trade if the buyer can provide valid proof of payment. <br/><br/>If the buyer is unresponsive after starting a trade, the arbitration bond will be returned to the seller by the {appName} support.'**
  String guide250Sbtrade250Sbblock8722Sb48722Sbtext8722Sb1(Object appName, Object assetName);

  /// No description provided for @guide250Sbtrade250Sbblock8722Sb48722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Disputes'**
  String get guide250Sbtrade250Sbblock8722Sb48722Sbtitle;

  /// No description provided for @guide250Sbtrade250Sbhappy8722Sbtrading.
  ///
  /// In en, this message translates to:
  /// **'{appName} wishes you happy trading!'**
  String guide250Sbtrade250Sbhappy8722Sbtrading(Object appName);

  /// No description provided for @guide250Sbtrade250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Introduction on trading Monero'**
  String get guide250Sbtrade250Sbtitle;

  /// No description provided for @guide250Sbtrade250Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Introduction on trading cryptocurrency'**
  String get guide250Sbtrade250Sbtitle57Sbagoradesk;

  /// No description provided for @guide250Sbxmr250Sbcard8722Sbfour250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'4. Advanced Techniques of Staying Anonymous When Using This Method of Buying Monero'**
  String get guide250Sbxmr250Sbcard8722Sbfour250Sbtitle;

  /// No description provided for @guide250Sbxmr250Sbcard8722Sbthree250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'3. Buying Monero Anonymously With Cash'**
  String get guide250Sbxmr250Sbcard8722Sbthree250Sbtitle;

  /// No description provided for @guide250Sbxmr250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How to buy Monero anonymously'**
  String get guide250Sbxmr250Sbtitle;

  /// No description provided for @guides250Sbread8722Sbmore.
  ///
  /// In en, this message translates to:
  /// **'Further reading'**
  String get guides250Sbread8722Sbmore;

  /// No description provided for @home250Sbgreeting250Sbanywhere.
  ///
  /// In en, this message translates to:
  /// **'Anywhere.'**
  String get home250Sbgreeting250Sbanywhere;

  /// No description provided for @home250Sbgreeting250Sbbuy8722Sbmonero.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName}.'**
  String home250Sbgreeting250Sbbuy8722Sbmonero(Object assetName);

  /// No description provided for @home250Sbgreeting250Sbcash8722Sbor8722Sbonline.
  ///
  /// In en, this message translates to:
  /// **'Cash or online.'**
  String get home250Sbgreeting250Sbcash8722Sbor8722Sbonline;

  /// No description provided for @home250Sbgreeting250Sbsell8722Sbmonero.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName}.'**
  String home250Sbgreeting250Sbsell8722Sbmonero(Object assetName);

  /// No description provided for @home250Sbgreeting250Sbsignup8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Sign up free'**
  String get home250Sbgreeting250Sbsignup8722Sbbtn;

  /// No description provided for @home250Sbnewsfeed250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Latest News'**
  String get home250Sbnewsfeed250Sbtitle;

  /// No description provided for @homepage8722Sblocation250Sbchange8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get homepage8722Sblocation250Sbchange8722Sbbtn;

  /// No description provided for @homepage8722Sblocation250Sbreset8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get homepage8722Sblocation250Sbreset8722Sbbtn;

  /// No description provided for @homepage8722Sblocation250Sbsave8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get homepage8722Sblocation250Sbsave8722Sbbtn;

  /// No description provided for @homepage8722Sblocation250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Showing advertisements in {location}'**
  String homepage8722Sblocation250Sbtitle(Object location);

  /// No description provided for @homepage250Sbagora250Sbcoin8722Sbtrading8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Trade Bitcoins'**
  String get homepage250Sbagora250Sbcoin8722Sbtrading8722Sbtitle;

  /// No description provided for @homepage250Sbno8722Sbresults8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'No active {asset} ads in {country}... yet.'**
  String homepage250Sbno8722Sbresults8722Sb0(Object asset, Object country);

  /// No description provided for @homepage250Sbno8722Sbresults8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'You can be the first one to {post_an_ad} in the following categories:'**
  String homepage250Sbno8722Sbresults8722Sb1(Object post_an_ad);

  /// No description provided for @homepage250Sbno8722Sbresults8722Sb18722Sbpost8722Sban8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'post an ad'**
  String get homepage250Sbno8722Sbresults8722Sb18722Sbpost8722Sban8722Sbad;

  /// No description provided for @info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtext250Sb0.
  ///
  /// In en, this message translates to:
  /// **'If you can see the transaction on the block explorer that means the transaction has been sent out successfully. If you\'re not seeing it on the receiving end then the problem is on your end. Probably an issue with syncing or you\'re using outdated wallet software.'**
  String get info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtext250Sb0;

  /// No description provided for @info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtext250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Try these suggestions to unstuck your sync:'**
  String get info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtext250Sb1;

  /// No description provided for @info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtext250Sb2.
  ///
  /// In en, this message translates to:
  /// **'Alternatively, try using a different wallet app or a different internet connection.'**
  String get info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtext250Sb2;

  /// No description provided for @info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why am I not seeing the XMR in my wallet?'**
  String get info250Sbwhere8722Sbare8722Sbmy8722Sbxmr8722Sbaccordion250Sbtitle;

  /// No description provided for @keywords.
  ///
  /// In en, this message translates to:
  /// **'buy monero xmr cash credit card usd euro pound local bank transfer sell anonymously cryptocurrency'**
  String get keywords;

  /// No description provided for @keywords57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'buy bitcoin btc monero xmr cash credit card usd euro pound local bank transfer sell anonymously cryptocurrency'**
  String get keywords57Sbagoradesk;

  /// No description provided for @knowledge250Sbatomic250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>In the pursuit of decentralization and a truly permissionless system, few things are as coveted in the cryptocurrency space as decentralized exchanges and atomic swaps. Since its inception, Monero has struggled to implement atomic swaps, as the privacy features create unique problems when trying to design a protocol.</p>\n\n<p>But first, let\'s back up. What are atomic swaps? An atomic swap is a protocol by which two different cryptocurrencies, on different blockchains, can be exchanged in a trustless manner with no intermediary. This means if someone wanted to exchange cryptocurrency A for cryptocurrency B, they would be able to do it without an exchange, centralized or decentralized. As one might imagine, this takes considerable research, and the full technical details that make it possible get quite complicated. Once again, LocalMonero is here to help and give a simple explanation for the common person.</p>\n\n<p>To start, let\'s consider the simplest form of atomic swap, as implemented by Bitcoin. If someone wants to exchange Bitcoin for another coin that uses the same hash time lock contract technology, they can do so in the following way. Alice has Bitcoin (BTC), but wants Litecoin (LTC), and Bob has LTC, but wants BTC. They decide to do an atomic swap so each gets the coin that they want. Alice sends her BTC to a special address, utilizing scripts that lock the funds away so even she can\'t access it. You can think of it like Alice puts her BTC in a lockbox. When the lockbox is made, she gets a key, and sends a hash of this key to Bob. Now Bob does not have the key itself, only the hash, so he can\'t yet access the funds.</p>\n\n<p>Bob uses this hash as a seed from which he generates his own lockbox, and sends his LTC there, where it is also locked. Since the hash of Alice\'s key was used as the seed by which Bob\'s lockbox was made, she can use her key to claim the LTC in Bob\'s lockbox. Her key fits! But, using math voodoo magic, when she uses her key to open the LTC lock, she reveals the key to Bob, who can then use it to claim the BTC that she put in her lockbox. In this way, with no intermediary, Alice and Bob have successfully exchanged their assets.</p>\n\n<p>But there\'s a slight problem. What if Alice sends to her lockbox, and Bob decides he doesn\'t want to trade anymore. Now, since Alice can\'t access her BTC that she locked away, and Bob won\'t complete his part of the transaction, Alice just loses her money forever. Well, luckily, Bitcoin has a little technology called refund transactions, and so after a period of time, if the BTC is not claimed by Bob, the scripts have a fail-safe built in, where the BTC will automatically go back to Alice. This was the primary speedbump for Monero\'s atomic swaps implementation. Because of Monero\'s <a target=\"_blank\" href=\"/knowledge/ring-signatures\" class=\"next-link\">ring signatures privacy technology</a>, the sender of a transaction is always uncertain. How can the protocol do a refund transaction if even it doesn\'t know where the transaction came from?</p>\n\n<p>In 2017, a small group of researchers outlined a different method by which atomic swaps would work in Monero. After several years of refinement, the researchers finalized a process by which Monero would be able to do atomic swaps with Bitcoin, even without refund transactions.</p>\n\n<p>As with many things of this level of technical complexity, our explanation will overly simplify some things in order to convey the idea, but it will still give a solid idea of the mechanisms by which this process would work.</p>\n\n<p>Both Alice (who has XMR and wants BTC) and Bob (who has BTC and wants XMR) must download and run a program that supports the atomic swap. This may be implemented into wallets, decentralized exchanges, or special, specific programs, but the software must be running the atomic swap protocol. In the first step, Alice and Bob\'s clients connect to each other and make several shared secrets and keys. In this step, a new Monero address is created, with Alice having one half of the key, and Bob having the other. No Monero is in there yet though, so there\'s nothing to spend. One last thing to note about this address, is that they both have the view key to this wallet, so they can both peek inside to see if or when Monero arrives.</p>\n\n<p>In the second step, Bob sends his BTC to a special address, similar to the Bitcoin atomic swap protocol we\'ve already discussed. After Alice sees the BTC arrive to this address on the blockchain, she sends her Monero to the Monero address that she and Bob both have one half of a key to. Bob can verify that the Monero arrived since he also has the view key, and once he sees the Monero is safely in the wallet, he sends Alice a piece of a key that will allow her to withdraw the Bitcoin. Similar to the other protocol, the process of claiming the Bitcoin reveals her half of the Monero key to Bob. Now Bob has both halves, so he can claim the Monero, while Alice has only her half, so she can\'t try to take it before he does.</p>\n\n<p>So if you looked at all of this and are still a bit confused about how Monero was able to get around the problem of refund transactions, the answer is quite simple. Since Monero itself does not have refund transactions, the reader should notice that the Bitcoin (which does have refund transactions) is sent first, and only after it is verified as being on the blockchain is the Monero sent. This allows Monero to utilize Bitcoin\'s ability to script in refund transactions and take advantage of them, without needing to have these capabilities itself.</p>\n\n<p>The atomic swap is now complete, but from here, Bob has a couple of options for his newly claimed XMR. He can use this Monero wallet as is, or move the XMR to another wallet that he already owns. Bob will most likely move the Monero to another wallet, because Alice still has the view key and can see inside.</p>\n\n<p>The beauty of this protocol is that it\'s still quite new, and there is plenty of room for optimizations. It\'s also quite flexible in its architecture, so implementation in other wallets or decentralized exchanges should be simple and fit cleanly with their existing architecture.</p>'**
  String get knowledge250Sbatomic250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbatomic250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Few things are as coveted in the crypto space as atomic swaps. Recently, the researchers have finalized a way by which XMR would be able to do atomic swaps with BTC.'**
  String get knowledge250Sbatomic250Sbdescription;

  /// No description provided for @knowledge250Sbatomic250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Atomic Swaps Will Work in Monero'**
  String get knowledge250Sbatomic250Sbtitle;

  /// No description provided for @knowledge250Sbblocks250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p><i><b>Note:</b> It is highly recommended that the reader have read our articles <a target=\"_blank\" href=\"/knowledge/monero-tail-emission\" class=\"next-link\">\"Why Monero Has A Tail Emission\"</a> and <a target=\"_blank\" href=\"/knowledge/monero-mining-randomx\" class=\"next-link\">“Monero Mining: What Makes RandomX so Special”</a>. This article builds off of the concepts presented in there.</i></p>\n\n<p>Whenever individuals discuss the problems with blockchain, one of the first words to pop up will be \'scaling\'. It\'s not a secret that blockchains don\'t scale well, but most people don\'t know why.</p>\n\n<p>The truth is, scaling is actually an umbrella term that covers two different categories: Protocol support and technological support at a given point in time. In this article, we\'re going to focus our attention on one, Protocol support is basically a measure of how many transactions the protocol can handle at a given time.</p>\n\n<p>Bitcoin has a block size limit, which means once enough transactions are included in a block, any additional transactions will have to wait in line for the next block. A helpful analogy would be thinking about a train. A train pulls up to the station, and those in line file in. Once the train is full, anyone left outside will have to wait for the next one.</p>\n\n<p>Bitcoin uses fees to determine who gets into the block or not. Jumping back to the train analogy, one can imagine one potential passenger, that is about to be left behind, offers the train engineer five dollars to give him a seat. Other passengers follow suit, and eventually there is a bidding war to see who gets which seats. It\'s up to the driver to decide if he wants to honor the first-come-first-serve policy, but it\'s in his best financial interest to maximize his income by taking the highest bidders on board.</p>\n\n<p>In this analogy, miners are the train drivers. They can include whatever transactions they want in the block, but they will generally choose the ones that have the highest paid fees.</p>\n\n<p>Alternatively, if blocks are not very full, people have no incentive to pay high fees because there are plenty of free seats to spare.</p>\n\n<p>In the height of the 2017 cryptocurrency boom, Bitcoin was flooded with transactions, and the fees skyrocketed for those that wanted to be included in the next block, or any near-future block for that matter. Those who were unwilling to pay high fees saw their transactions pushed back for hours, days, or even drop out of the queue altogether.</p>\n\n<p>This was a harrowing insight into how Bitcoin would fare if the oft talked about ‘mass adoption’ were to occur. If Bitcoin was to be used by the masses, things would be even worse than in 2017, and Bitcoin would be inaccessible to anyone but the wealthy, simply because the throughput is small due to a fixed block size, causing the fee market to take over.</p>\n\n<p>Monero foresaw this and wanted to do something different. So the Monero developers implemented a dynamic blocksize.</p>\n\n<p>Basically, Monero also has a block size cap, but it’s a soft cap. When the line of waiting transactions gets too long, the miners can increase the size of the blocks. With our train analogy, you can imagine adding more train cars to fit the extra passengers. After the queue is empty the blocks shrink back to their original size going forward.</p>\n\n<p>If this seems like a neat idea, it seems reasonable to ask why Monero is the only cryptocurrency that has implemented this. Why not add it on Bitcoin so as to put a stop to the throughput issues?</p>\n\n<p>Unfortunately, this is not possible. There are several reasons why, and we’ll do our best to explain.</p>\n\n<p> It\'s always in a miner\'s best interest to have large blocks. With large blocks they can fit in more transactions, and make more money off of the fees, as well as the block rewards. This has the potential to lead to spam attacks, where someone sends many small transactions, with small fees, to bloat the chain. Miner\'s would just raise the block size include them all because money is money, no matter how small. This would lead to consistently large blocks with little economic benefit. Bitcoin solves this by artificially restricting the block size, thereby generating a fee market. Spam attackers would have to outpay the other users in fees, and it is no longer cheap. But this means blocks get full leaving some transactions waiting as mentioned above.</p>\n\n<p>So how can Monero have dynamic blocksizes but avoid spam attacks? The answer is simple, but clever. A penalty on the block reward is introduced when a block is bigger than normal. If a miner wants to increase the blocksize, the reward they get from finding that block will be less than they would otherwise receive. So they will only increase the blocksize when the paid transaction fees of the users outweigh the lost portion of the block reward. For example, if the miner would lose 0.5 XMR by raising the block reward, and the sum of the paid transaction fees would be 0.4 XMR, then there would be a net loss of 0.1 XMR if they were to raise the size, so they wouldn’t do it. Conversely, if the total transaction fees added up to 0.7 XMR, then there would be a net gain of 0.2 XMR, even though they lose the 0.5 XMR from the block reward penalty, so the miner will increase the size.</p>\n\n<p>These dynamic blocks, allow the network to grow organically, without aritifically restricting the blocksize to make a forced fee market, while still avoiding spam attacks. There are several more angles we can view this idea from, and more reasons why it wouldn\'t be possible to add to Bitcoin, but for now, we hope that the reader has an understanding of how Monero sidesteps several of the problems in Bitcoin and its derivatives, and how it plans to scale its throughput into the future.</p>'**
  String get knowledge250Sbblocks250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbblocks250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Whenever individuals discuss the problems with blockchain, one of the first words to pop up will be \'scaling\'. Monero sets itself apart in solving that issue.'**
  String get knowledge250Sbblocks250Sbdescription;

  /// No description provided for @knowledge250Sbblocks250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Monero Solved the Block Size Problem That Plagues Bitcoin'**
  String get knowledge250Sbblocks250Sbtitle;

  /// No description provided for @knowledge250Sbbtc250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero is a cryptocurrency that values privacy above all else, but what most people don’t understand is that the privacy granted by using it is neither bulletproof nor absolute in certain situations. Make no mistake, Monero is about as private as it gets in the trustless realm, but there are some considerations that users must take to ensure their privacy remains strong.</p>\n\n<p>The same is true in other areas of life really. As an example, you can stay off of all social media in an effort to keep your life private, but if you are constantly with friends who snap selfies with you in them, say that they’re with you in the subtitle, and tag your location, much of your effort may be for naught. The social media conglomerate can still build a profile on you despite the fact that you personally are not on their platform.</p>\n\n<p>One of the oft-spoken of situations where people do not consider all of the implications and potentially leaked metadata is the issue of trading Bitcoin for Monero. It is commonly considered in the community that purchasing Monero with Bitcoin will be a full cleanse, and that the user retains all privacy benefits once they get into Monero, despite coming from a transparent chain.</p>\n\n<p>In a similar vein, it’s considered by some to be just as private to get Monero from non-KYC and KYC sources. The thinking goes that it is similar to getting cash at a bank. In that scenario, the bank itself knows your face and name, and knows how much you have in your account overall, and how much you withdrew in cash, but doesn’t know what you do with the cash afterwards. With Monero’s privacy guarantees, it should be just so with getting Monero from a KYC/AML source, right?</p>\n\n<p>Well, not quite.</p>\n\n<p>First, let\'s take a quick step back and define what we mean by KYC/AML. This acronym stands for Know Your Customer (KYC) / Anti-Money Laundering (AML) laws, which require exchanges and businesses to collect identifying information on their customers. The larger the amount of money exchanged, the more information is needed. As the name implies, this is all done in the name of minmizing risk of people laundering money.</p>\n\n<p>Back to Monero. To be sure, moving your money into Monero from a KYC source is astronomically better for privacy than using a KYC source to purchase something like BTC or any other transparency coin, but there are still considerations to be made about what is revealed, and what that revealed information could mean for your privacy and safety.</p>\n\n<p>Even sticking with the cash and bank scenario, if you withdraw a large amount from the bank, since the bank knows your details (including your home address) the teller can see how much is in your account, and can potentially make nefarious plans depending on your wealth. This is rare, and since the money is in the bank rather than at your house, what they can accomplish in this scenario is relatively small. The same isn’t true for Monero, which is not secured by a third party, but rather yourself. Being your own bank isn’t always easy.</p>\n\n<p>Similarly, moving from BTC to XMR, regardless of how it’s done, leaves traces on the Bitcoin blockchain. While this is indeed less damaging than going BTC to BTC because, on the other side of the exchange is Monero’s mandatory privacy, the implications of leaving a trace behind must be considered. These traces compound to even greater effect if there was KYC involved anywhere in the process.</p>\n\n<p>Imagine a scenario where dirty Bitcoins were received for a good or service, something that is only possible because of Bitcoin’s radical transparency. You don\'t know that these Bitcoins are dirty, as you don\'t have the tech to check each Bitcoin, so you, being a crypto-savvy person, aren’t comfortable with this fact, and you don’t have the money to pay a chain anlysis company to check for you. So, you decide to exchange to Monero to be safe.</p>\n\n<p>You deposit your Bitcoin onto an exchange, and swap them out for Monero, which you then pull out to your local wallet. This scenario already is a bit of a stretch, because the exchange may flag your dirty Bitcoins and lock down your account, and you may or may not get them back, but for the sake of this example we’re going to assume they let the swap happen.</p>\n\n<p>At this point, if the government becomes interested in following the trail of these Bitcoins, they will follow them to the exchange, subpoena the KYC information on the depositor, see that they were swapped to Monero (suspicious), and come knocking on your door.</p>\n\n<p>Please understand, this is not saying you should avoid swapping Bitcoin to Monero to avoid looking suspicious. You were already suspicious because you accepted dirty Bitcoin, and if you didn’t swap they’d still use blockchain analysis, and still come a’knocking. Rather, this example merely highlights that there is significant risk in using transparency coins at all, and swapping to a private, fungible coin like Monero doesn’t erase the footprints left in the transparent blockchain.</p>\n\n<p>For the individual interested in their own privacy, usage of transparent blockchains should be kept minimal, and with extreme caution. KYC should be avoided whenever possible, as this metadata can still be used to build a case and ask questions, and god forbid this KYC info (alongside trade information) gets leaked from exchanges due to incompetence. Even if you only bought and withdrew Monero from the exchange, this leaked information would still reveal how much Monero you had and where you are located. All information that we can all agree nobody would want just floating out in cyberspace.</p>\n\n<p>In summary, while using Monero does indeed negate many, many attacks and minimizes metadata leakage by default, the user themselves can do many things to ultimately destroy their own privacy. One of the least considered is the implications of using either a transparency chain as a pathway to Monero, or a KYC source to acquire it, to say nothing of using both at once.</p>\n\n<p>This article is not meant to fear-monger, but rather to encourage users to think critically about their decisions and remind them that even the best privacy can be fragile under certain circumstances. Users must be vigilant to protect their own privacy by making smart decisions about what to purchase, where, and from whom.</p>'**
  String get knowledge250Sbbtc250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbbtc250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Many consider purchasing XMR with BTC to be a full cleanse, and that the user retains all privacy, despite coming from a transparent chain. But is that so?'**
  String get knowledge250Sbbtc250Sbdescription;

  /// No description provided for @knowledge250Sbbtc250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Is Converting Bitcoin to Monero Just as Private as Buying Monero Directly?'**
  String get knowledge250Sbbtc250Sbtitle;

  /// No description provided for @knowledge250Sbclsag250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As a protocol, Monero is currently in a constant state of innovation. Utilizing research in both on-chain and off-chain solutions, the Monero community looks for areas to improve to make Monero more private, more scaleable, and more accessible to all. One of the more recent innovations is the replacement of the linkable ring signature scheme, MLSAG, with a drop-in replacement CLSAG, which stands for Concise Linkable Spontaneous Anonymous Group.</p>\n\n<p>On the surface level, the implementation of CLSAG will decrease the most common 2 input, 2 output transactions by 25%. We’ll also see a 10% decrease in verification time.</p>\n\n<p>But what exactly is CLSAG? What does it do, and how does it differ from the old version, MLSAG? Let’s take a minute to remind ourselves of the why and how of ring signatures so we can better understand this concept. Ring signatures allow for non-interactive, witness indistinguishable inputs by use of signer-selected anonymity sets of previous outputs. In laymen’s terms, it allows a user to hide their outputs used in a transaction alongside unrelated outputs, and they can do all of this without needing anyone else to take part. All you need is a copy of the blockchain. Each of these outputs mostly appear to be equally probable of being the actual one being sent, thereby hiding metadata about the sender.</p>\n\n<p>This begets a bit of a problem, however. What if a user was to construct a ring signature with all decoy outputs? How would anyone know that the unknown sender doesn\'t have the authority to send any of them? Would this user be able to spend fake money? The answer is no. The ring signature includes a method for proving that at least one of the outputs is owned by the unknown sender, without revealing which one it is. In fact, both CLSAG and MLSAG (henceforth known as the SAGs) are the part of the ring signature that proves this. Interestingly, at the same time, it proves that the amount of the transaction, though hidden behind confidential transactions (RingCT), balances. That the SAGs prove two things, that one output is owned by someone in the ring, and that the transaction balances, is important, and actually where the size and verification savings lies. If this is getting confusing, don\'t worry, we\'ll get to a fun, and easy-to-understand analogy soon.</p>\n\n<p>The old signature scheme, MLSAG (Multilayered Linkable Spontaneous Anonymous Group) proves the aforementioned two things in a ring signature, but it does each separately. The use of separate computations for signing and commitment keys means slower operations. A modern computer can do these computations in a matter of milliseconds, which doesn’t seem like much, and indeed, for one transaction it’s not. But when we consider the sheer number of transactions on the Monero blockchain, and that a node syncing from scratch will have to download and verify each of them, the bytes and milliseconds start to pile up quickly.</p>\n\n<p>CLSAG combines the maths necessary to prove both into one, as well as computes both of them at once, and it does so in a safe manner. What does this mean in a safe manner? Well, to clear this up, as well as hopefully make the whole thing make more sense, let’s explore that promised fun analogy.</p>\n\n<p>Let\'s say you need to go to both the grocery store and the hardware store, to pick up two different things: food and toxic cleaning chemicals. You don’t want them to intermix, as if there is an accident, the chemicals will spill on the food, making them inedible. You decide to be super safe and drive from your house to the grocery store, buy the food, and then drive back to your house. Only after you have unloaded the food do you get back in the car, drive to the hardware store, and back to your house with the chemicals. You’ve taken two separate trips to ensure the safety of all purchases. Though it is indeed safe, it is inefficient. This represents MLSAG, where two different sets of maths are stored and two different ‘trips’ are made to compute them.</p>\n\n<p>You decide you want a faster way to do this, however. It’s too much wasted time. Sure doing it once or twice isn’t going to steal your life away, but having to do this over and over, the hours begin to add up. You start to wonder if you can make one trip instead. From your house, to the grocery store, to the hardware store, and back home. You can’t just go and throw everything in your car haphazardly. It’s not safe. Instead, you designate different spots in your car for different things, and make sure everything fits neatly in its place. In so doing, you’re able to safely make one trip to both stores, and keep things away from each other. This represents CLSAG. There is now only one set of math stored in this transaction to prove these two things, and it’s done in away that they don’t interfere with each other. A trip has to still be made, but you’ve reduced the number of them quite drastically.</p>\n\n<p>All of this sounds quite exciting. Is it possible we can find other shortcuts, or other ways to save on time and space? The answer is yes and no. According to current MRL researchers, it\'s likely not possible to further modify the SAG-type constructions for better size or speed; however other constructions like Arcturus, Omniring, RCT3, or Triptych produce much better size scaling and verification benefits using different mathematical methods. However, each of these \'next-gen\' approaches to signer-ambiguous protocols comes with its own tradeoffs in implementation details, and are undergoing active research and investigation.</p>\n\n<p>After all, Monero is always innovating.</p>'**
  String get knowledge250Sbclsag250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbclsag250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Let\'s have a look at one of the more recent Monero protocol innovations: the replacement of the linkable ring signature scheme, MLSAG, with a drop-in replacement CLSAG.'**
  String get knowledge250Sbclsag250Sbdescription;

  /// No description provided for @knowledge250Sbclsag250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How CLSAG Will Improve Monero\'s Efficiency'**
  String get knowledge250Sbclsag250Sbtitle;

  /// No description provided for @knowledge250Sbcoinjoin250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As Bitcoin’s privacy tools have gained more attention and usage, they have come under more regulatory scrutiny. This scrutiny has led to a <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://twitter.com/wasabiwallet/status/1503091503207432193\">recent announcement</a> by a Bitcoin privacy tool, Wasabi Wallet, that they will start to censor and reject incoming inputs to mixes that they deem illicit or against their ToS, and will pay a chain analysis company to “vet” incoming mix participants.</p>\n<p>The use of CoinJoin transactions to obfuscate the source of funds in Bitcoin has been the core of Bitcoin privacy for many years now, and the issues and risks inherent in it’s use are some of the core issues that Monero’s ring signatures correct and prevent.</p>\n<p>In this blog post we’ll briefly dive into a comparison of CoinJoin and ring signatures, as well as why the approach taken in Monero leads to greater censorship-resistance, greater privacy, and less hassle for users.</p>'**
  String get knowledge250Sbcoinjoin250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbcoinjoin250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As all transactions are completely transparent in Bitcoin - revealing the sender, receiver, and amounts - users must take extra steps to preserve their privacy from previous senders and future recipients of their funds or risk censorship, surveillance, or theft of funds via physical violence.</p>\n<p>The best solution today for privacy on Bitcoin is a tool called <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://bitcoiner.guide/qna/coinjoin/\">“CoinJoin”</a>, where 2 or more users work together (usually via a centralized coordinator) to create a special transaction that makes it difficult for outside observers to connect the inputs with the outputs. Each participant communicates to jointly build the transaction without giving over custody of their funds, and receives an output at the end whose previous history is now unclear (or obfuscated) to outside observers.</p>\n<p>This breaks the history of specific UTXOs, allowing Bitcoin users to gain some modicum of forward-secrecy when transacting. However, CoinJoin (as implemented in Wasabi Wallet and Samourai Wallet, the two most-used CoinJoin tools for Bitcoin) has a few major drawbacks:</p>\n<ul>\n<li>As CoinJoin transactions are completely opt-in and requires active participation, any participant necessarily shows that they seek greater privacy than that of “normal” Bitcoin users, potentially singling them out and causing issues spending funds at many regulated exchanges or entities. Each user cannot deny that they participated in a CoinJoin transaction.</li>\n<li>In order to find other’s to CoinJoin with, most approaches to CoinJoin (including Wasabi Wallet) use a centralized coordinator that connects participants and helps them communicate and build a proper CoinJoin transaction. This centralized coordinator never has custody of user’s funds, but does gain extensive insight into the transactions they coordinate, can censor incoming inputs (as in the case of Wasabi Wallet), and can be pressured into collecting or sharing information about CoinJoin participants.</li>\n<li>User’s with large amounts of funds to CoinJoin can often have to wait hours (or even days!) to find enough participants to CoinJoin with, leading to large delays from the time a user receives funds to when they can spend them privately.</li>\n<li>The privacy provided by a CoinJoin transaction degrades over time as other participants spend funds or link their outputs to their identity through KYC exchanges, ID requiring merchants, etc. This means that users ideally keep their funds constantly churning in CoinJoin transactions to keep their anonymity set (“crowd to hide in”) as fresh as possible.</li>\n<li>In most approaches to CoinJoin, participants must use a fixed-size UTXO (i.e. 0.1 BTC) in order to make it harder to connect inputs and outputs of CoinJoin transactions. This leads to higher fees (more separate transactions necessary per large input), more “toxic change” (funds that are unspendable without serious risks to privacy), and can proclude smaller users from being able to mix at all if they don’t have the minimum balance required.</li>\n</ul>'**
  String get knowledge250Sbcoinjoin250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbcoinjoin250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What is a CoinJoin transaction?'**
  String get knowledge250Sbcoinjoin250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbcoinjoin250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"/knowledge/ring-signatures\">we have looked deeply into what ring signatures are in the past</a>, I won’t go into great detail on the technical aspects of how they work in this blog post. Instead, we’ll look at how the approaches taken in Monero solve the issues with CoinJoin discusses above.</p>\n<blockquote>\n<p>CoinJoin is opt-in and requires participation</p>\n</blockquote>\n<p>Monero’s ring signatures are a core feature of the privacy protocol, and <em>every</em> transaction on the network uses them. This means that no user’s transactions stand out for seeking greater privacy than “normal” Monero users, and all users gain plausible deniability that they spent funds in any given transaction. As a user spending funds does not coordinate or participate with the decoy inputs in a transaction, those users who own inputs that happen to be selected as decoys can honestly say they were not participating in that transaction, strengthening their privacy.</p>\n<blockquote>\n<p>Use of a centralized coordinator</p>\n</blockquote>\n<p>As Monero’s ring signatures are entirely non-coordinated and require only the true spender of funds to create the transaction, there is no need for a centralized coordinator in Monero. This ensures that <em>no one</em> can deny you access to privacy in Monero, and there is no centralized entity that can be pressured, no easy Sybil attacks on liquidity, etc. As long as your transaction pays the proper fees, you gain uncensorable access to privacy, security, and anonymity in Monero.</p>\n<blockquote>\n<p>CoinJoin requires liquidity</p>\n</blockquote>\n<p>The “liquidity” available to anyone spending Monero to use as decoys is always the total set of outputs on-chain so there is never a shortage of decoys to hide in with Monero. Someone seeking to spend Monero can do so ~20min after receiving funds, and does not need to perform any additional steps to gain strong privacy in Monero.</p>\n<blockquote>\n<p>CoinJoin privacy degrades over time</p>\n</blockquote>\n<p>As Monero’s outputs are never known-spent by the network, the privacy provided by ring signatures is much less susceptible to degradation over time. A user does not need to constantly churn outputs in Monero, and outside of extremely rare circumstances, loses no privacy as time goes on.</p>\n<p>If a user does want to “refresh” the decoys used with an output, however, they can merely send the funds back to themselves and be able to spend them ~20min later as usual.</p>\n<blockquote>\n<p>CoinJoin usually requires fixed-size inputs</p>\n</blockquote>\n<p>As amounts are hidden in every transaction using <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"/knowledge/monero-ringct\">“Confidential Transactions”</a> (a part of “RingCT”), the decoys used in any given transaction can be of any size. There is no reason to need to be worried about amount-based heuristics in Monero, and so transactions are much simpler to build and can leverage decoys from any point in time and of any amount on the Monero blockchain.</p>'**
  String get knowledge250Sbcoinjoin250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbcoinjoin250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How do ring signatures solve these issues?'**
  String get knowledge250Sbcoinjoin250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbcoinjoin250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>If you’re curious and want to better understand ring signatures or CoinJoin transactions, see the links below for great places to get started:</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"/knowledge/ring-signatures\">How Ring Signatures Obscure Monero’s Outputs</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://www.getmonero.org/resources/moneropedia/ringsignatures.html\">Ring Signature - Moneropedia</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://bitcoiner.guide/qna/coinjoin/\">Coinjoin Q+A</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://6102bitcoin.com/coinjoin-overview/\">CoinJoin Overview</a></li>\n</ul>'**
  String get knowledge250Sbcoinjoin250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbcoinjoin250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I learn more?'**
  String get knowledge250Sbcoinjoin250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbcoinjoin250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'CoinJoin is the core of BTC privacy, and the issues inherent in it are some of those solved by Monero’s ring signatures.'**
  String get knowledge250Sbcoinjoin250Sbdescription;

  /// No description provided for @knowledge250Sbcoinjoin250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero’s ring signatures vs CoinJoin like in Wasabi'**
  String get knowledge250Sbcoinjoin250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The Monero project (like many other open-source projects) has no central company, entity, or funding behind it, all of which are necessary for decentralization and resilience. However, this means that the success of the project depends entirely on the contributions of passionate individuals in the community for funding, development, and outreach just like you.</p>\n<p>The vast majority of people in the Monero community will necessarily not be developers, so we’ll focus on the many ways us non-devs can give back to such an incredible project.</p>'**
  String get knowledge250Sbcontributing250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero uses a unique system for funding work called the <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://ccs.getmonero.org/\">Community Crowdfunding System</a> (or “CCS”) which allows anyone in the community to present an idea for funding. If approved by the community, these proposals are then opened for funding by the community.</p>\n<p>There are two stages to the system, each of which benefit from more involvement by people from all backgrounds.</p>\n<h6 id=\"participating-in-ideas\">Participating in “Ideas”</h6>\n<p>All CCS proposals start out as “Ideas” that are open for comment to the community and are often discussed in community meetings as well. This is a chance for everyone in the community to read through the proposal and comment on what they think could be changed or improved, or whether or not the proposal should be approved for funding at all. This allows you to not only stay up to date with ongoing efforts by others in the community, but to have an active say in who and what is funded by the community, improve proposals before funding, and provide oversight after funding.</p>\n<p><em>You can see all proposals that are in the “Ideas” stage at <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://ccs.getmonero.org/ideas/\">CCS Ideas</a>.</em></p>\n<h6 id=\"funding-proposals-in-funding-required\">Funding proposals in “Funding Required”</h6>\n<p>The second stage of an approved proposal is the “Funding Required” stage. This is where anyone in the community who likes a proposal and sees the value in it can easily, quickly, and privately donate their Monero to the specific proposal.</p>\n<p>To donate to a proposal, simply go to <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://ccs.getmonero.org/funding-required/\">CCS Funding Required</a>, click on the proposal you want to donate to, and scan the QR code or copy the address and send however much (or little!) you would like to contribute. Every bit helps, no matter how small!</p>\n<p>Once a proposal is fully funded you can follow along while it’s <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://ccs.getmonero.org/work-in-progress/\">in progress</a> or see the results of <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://ccs.getmonero.org/completed-proposals/\">completed proposals</a>.</p>\n<p><em>You can see all proposals that are in the “Funding Required” stage at <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://ccs.getmonero.org/funding-required/\">CCS Funding Required</a>.</em></p>'**
  String get knowledge250Sbcontributing250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero’s Community Crowdfunding System'**
  String get knowledge250Sbcontributing250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Another great way you can get involved in the Monero project is to help to educate and empower new and existing community members. This can come in many forms, but can be as simple as sharing what you’re learning about Monero on social media, a blog, etc.</p>\n<p>Here are a few concrete ways you can help in education:</p>\n<ul>\n<li>Start up a blog of your own</li>\n<li>Write up threads on Twitter or Reddit posts about things you’ve learned about or learned to do with Monero</li>\n<li>Make video “how-tos” of everyday things you do with Monero, such as sending Monero, using a hardware wallet, buying and selling Monero on <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://localmonero.co\">LocalMonero.co</a>, etc.</li>\n</ul>'**
  String get knowledge250Sbcontributing250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get knowledge250Sbcontributing250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>A simple way you can help out is just being active on the normal social media avenues and talking about, educating, and sharing great Monero content.</p>\n<p>The more of us that are out there sharing how Monero has helped us, what we love about it, what needs to be improved, and why we choose to contribute, the more people will be able to see the value in a powerful tool like Monero.</p>\n<h6 id=\"twitter\">Twitter</h6>\n<p>Twitter is a common place for cryptocurrency users (among others), and is a place I’ve found valuable for both learning and engaging with the Monero community. While it can be a toxic and harsh place at times, there are some great people putting out great content regularly.</p>\n<p>Feel free to jump in and start sharing about Monero and engaging with others there!</p>\n<p><em>You can find LocalMonero on Twitter <span class=\"citation\" data-cites=\"LocalMoneroCo\"> <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://twitter.com/LocalMoneroCo\">@LocalMoneroCo</a></span>.</em></p>\n<h6 id=\"reddit\">Reddit</h6>\n<p>Reddit is a popular avenue for interacting with the Monero (and broader cryptocurrency/privacy) crowd, and is a great place to share longer-form content, media, news, etc.</p>\n<p>There is an extremely active Monero community there, with some of the most popular sub-reddits being:</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/Monero/\">r/Monero</a>\n<ul>\n<li>The home for most Monero discussion, news, and media</li>\n</ul></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/monerosupport/\">r/monerosupport</a>\n<ul>\n<li>A great place to get support and help out those needing support with Monero issues</li>\n</ul></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/MoneroCommunity/\">r/MoneroCommunity</a>\n<ul>\n<li>A general place for community-focused discussions</li>\n</ul></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/MoneroMining/\">r/MoneroMining</a>\n<ul>\n<li>All your mining needs and discussions</li>\n</ul></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/xmrtrader/\">r/xmrtrader</a>\n<ul>\n<li>The home for all price/market/speculation related discussions about Monero. Price/market-related topics are generally prohibited on all other Monero subreddits to keep the community focused.</li>\n</ul></li>\n</ul>\n<p>Make sure to jump in and participate in discussions, share interesting news and posts, and contribute where you see fit!</p>\n<p><em>You can find the LocalMonero community on Reddit at <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/LocalMonero/\">r/LocalMonero</a>.</em></p>\n<h6 id=\"matrixirc\">Matrix/IRC</h6>\n<p>The vast majority of the “inner workings” of Monero happen on Matrix and IRC, two chat networks that are bridged to each other. If you want to stay involved in the “nitty-gritty” day to day discussions, participate in meetings, or just chat with other Monero users, you’ll want to jump into either Matrix or IRC.</p>\n<p>A list of the most common Matrix/IRC channels is available on <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.getmonero.org/community/hangouts/\">getmonero.org</a>.</p>\n<p><em>You can find the LocalMonero community on Matrix in the room <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://matrix.to/#/#localmonero:agoradesk.com\">#localmonero:agoradesk.com</a>.</em></p>\n<h6 id=\"offline\">Offline</h6>\n<p>Don’t forget to introduce your friends, family, and others to Monero offline, as well! A great way is to have the person download a mobile wallet like <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://cakewallet.com/\">Cake Wallet (iOS/Android)</a>, <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.monerujo.io/\">Monerujo (Android)</a>, or <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://mymonero.com/\">MyMonero (iOS)</a>, send them a bit of Monero, and have them send some back.</p>\n<p>It also can be helpful to compare a transaction between something like Bitcoin and Monero in an explorer like <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.exploremonero.com/\">ExploreMonero</a> to let them see how little information is exposed publicly when transacting using Monero compared to other transparent blockchains.</p>'**
  String get knowledge250Sbcontributing250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Awareness and engagement'**
  String get knowledge250Sbcontributing250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>If you’ve been around Monero for a while or have a good grasp on how to use and troubleshoot using it, a great way to get involved would be to jump into the <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/monerosupport/\">r/monerosupport</a> subreddit and provide support to users who post there.</p>\n<p>There are constantly users who need help with (normally) basic issues, and there are only a few of us who are active in the subreddit to help them out. It would be great to see more people dive in and contribute to help new and existing users work through their issues!</p>'**
  String get knowledge250Sbcontributing250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'r/monerosupport'**
  String get knowledge250Sbcontributing250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Almost all community discussions on specific topics happen in Matrix or IRC, so if you’re interested in just learning from/following meetings or want to actively participate, you’ll want to get setup on <a class=\"next-link\" href=\"#matrixirc\">one of those chat networks</a>.</p>\n<p>Once you’ve done that, keep an eye on the topic set for each room you’re in or on the <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/meta/issues\">Monero meta repository</a> for meetings that are scheduled.</p>\n<p>If you do choose to come and participate, please be respectful of the topic order, stay on topic, and try to only speak up when necessary/called on.</p>'**
  String get knowledge250Sbcontributing250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Community meetings'**
  String get knowledge250Sbcontributing250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb6250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>For those who are bilingual or more, a very important way to contribute is to help with translations from English into other languages. There is always a need for new languages to be translated and existing languages to be updated across the ecosystem, and the more languages we actively support, the more inclusive and approachable Monero will become.</p>\n<p>You can find translation needs and information at <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://translate.getmonero.org/\">translate.getmonero.org</a> or <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-ecosystem/monero-translations\">on Github</a>.</p>'**
  String get knowledge250Sbcontributing250Sb6250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb6250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Translations'**
  String get knowledge250Sbcontributing250Sb6250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb7250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The last way for non-developers to contribute to Monero is to be sure to log <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/monero/issues\">issues in Github</a> when you have an issue that is not resolvable on <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.reddit.com/r/monerosupport/\">r/monerosupport</a> or in <a class=\"next-link\" href=\"#matrixirc\">Matrix/IRC</a> or see an area for improvement to the software.</p>\n<p>When you go to open an issue:</p>\n<ul>\n<li>Be sure there is not an existing issue related to yours\n<ul>\n<li>Search <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/monero/issues\">open issues in Github</a> for keywords related to yours</li>\n</ul></li>\n<li>Provide as much information as possible\n<ul>\n<li>If you’re experiencing an issue that normal troubleshooting was unable to resolve, make sure to:\n<ul>\n<li>Collect all relevant logs when experiencing the issue</li>\n<li>Collect the version of Monero software you are running<br />\n</li>\n<li>Collect your system’s OS and version</li>\n<li>Link to any relevant existing issues, Reddit threads, etc.</li>\n</ul></li>\n</ul></li>\n<li>Keep an eye out for replies and notifications of updates to your issue\n<ul>\n<li>More information or clarification is often needed, so be sure to keep an eye out for updates and comments to your issue that may need your input</li>\n</ul></li>\n</ul>\n<p>The more information you can provide in the issue, the better!</p>'**
  String get knowledge250Sbcontributing250Sb7250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb7250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Filing issues'**
  String get knowledge250Sbcontributing250Sb7250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sb8250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Hopefully this guide has sparked some ideas on how you can give back to Monero using your unique skill-set, background, and experience. The more of the community that gives back in ways like these, the larger and more mature Monero will be and the more easily we can fulfill the goals of private, fungible, self-sovereign, censorship-resistant money.</p>'**
  String get knowledge250Sbcontributing250Sb8250Sbtext;

  /// No description provided for @knowledge250Sbcontributing250Sb8250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Conclusion'**
  String get knowledge250Sbcontributing250Sb8250Sbtitle;

  /// No description provided for @knowledge250Sbcontributing250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'The success of Monero depends on the community contributions - today we’ll explore some ways us non-devs can give back.'**
  String get knowledge250Sbcontributing250Sbdescription;

  /// No description provided for @knowledge250Sbcontributing250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Contributing back to Monero'**
  String get knowledge250Sbcontributing250Sbtitle;

  /// No description provided for @knowledge250Sbcritical250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Each individual has their own story about traveling through the wild west that is cryptocurrency. Some find a place to speculate, some find friends, and others find technology they believe in. Despite the differences, there are commonly many similarities, even across different cryptos and communities. One of these is the disturbing likeness to cultish behavior engaged in many of the crypto communities.</p>\n\n<p>These behaviors aren’t hard to spot. An inability to take any criticism and the willful ignorance of flaws, even in the face of evidence are but a few examples. In some spaces, the cheerleading becomes so blatant that any negativity whatsoever becomes grounds for disciplinary action.</p>\n\n<p>As a cryptocurrency traveler trying to support good projects and <a target=\"_blank\" href=\"/knowledge/monero-scams\" class=\"next-link\">not lose all of your money</a>, all cryptocurrency enthusiasts are encouraged to think critically and evaluate projects based off of their real world value, but what about approaching it from the other direction? Are projects themselves supposed to be self critical and self aware?</p>\n\n<p>We argue yes. The community itself is a reflection of the project and the leaders in it. Furthermore, a savvy community will expect more from their developers, and be able to critique proposed solutions rather than blindly trust and accept that any developers are working for the benefit of the users rather than themselves or external interests.</p>\n\n<p>Conversely, a community that only cares for price and is not able or willing to critically self-evaluate (or let others evaluate) is doomed to wallow in mediocrity.</p>\n\n<p>As a project, Monero tries to hold its developers, researchers, leaders, and community itself to the highest of standards, and minimize the risk of growing complacency and destructive apathy.</p>\n\n<p>One of the ways that Monero does this, is to hold a weekly Skepticism Sunday on the community subreddit. This is a place where people can voice their concerns about Monero, the protocol, the leadership, or any other concern they might have. It’s a place where questions and even distrust is outright encouraged, and considered necessary for the health of our ecosystem.</p>\n\n<p>This comes in stark contrast to many other communities, which don’t just avoid critique, but often encourage apathy and turned-off minds from their community. This may seem harsh to say, but it’s impossible to look at the ecosystem-wide banning of naysayers, shutting down of conversation, and encouragement of cheerleading that is seen in the meeting places of other coins and not come to this conclusion.</p>\n\n<p>That’s not to say that Monero doesn’t have cheerleaders itself, because it does. The interesting thing however, is that many community members will call out these cheerleaders and call them to a higher standard of behavior. In fact, Monero goes so far as to consider unnecessarily excessive cheerleading as spammy and will seek to reroute it to more appropriate places, or remove it entirely.</p>\n\n<p>The threat of stunted minds must be taken seriously. Privacy is an arms race where everyone must be on their toes, and cries of “Monero is the best!” and “Nothing can beat Monero! It’s unbreakable!” only detract from the urgency of the battle. Coming from this perspective, a lack of critical thinking and healthy skepticism in a community isn’t just annoying or cultish, it can lead to the fall of the protocol itself.</p>\n\n<p>In many ways, we can look to Bitcoin for examples of how this plays out in real life. Bitcoin maximalists will often spout and virtue signal to each other about Bitcoin’s merits, and whenever issues of privacy, fungibility, or scaling come up the questions are hand-waved away and the offenders are ousted from the community. All too often have people with legitimate questions found themselves banned, blocked, or otherwise ostracized from participation in Bitcoin communities, just because they wouldn’t fall into line on the agreed upon rhetoric and dared to ask questions.</p>\n\n<p>Time and again, these weary travelers find their way to Monero, and, after spending some time in the community, have praised the project for its level-headed discussions and lack of fear from uncomfortable questions. It’s not unheard of for these travelers to even want to discuss other coins, not because they want to shill, but because they grow to trust the reason and logic of the community and want honest opinions of another coin, something they can’t get in the coin’s community itself.</p>\n\n<p>Even the fact that Monero has continually hard forked in the past and present has shown the humility and power of the project. While some may decry hard forks as <a target=\"_blank\" href=\"/knowledge/why-monero-is-open-source-and-decentralized\" class=\"next-link\">centralization on developers</a>, which is true to an extent, it shows that the developers understood that the odds of them getting everything 100% right on the first go is slim. Things will need to be improved, and maybe even replaced entirely if Monero wants to remain competitive in both the privacy and cryptocurrency spaces.</p>\n\n<p>Often times, these changes break backwards compatibility, a big no-no in the Bitcoin protocol, where everything has to be a soft fork and backwards compatible. But this means that each individual change that Bitcoin makes to itself has very limited reach in scope. They are weighed down by their past, and improvements must honor it, often times senselessly. Whereas Monero’s changes can be sweeping, and will often times improve the protocol and privacy by several orders of magnitude.</p>\n\n<p>This can be seen easily in the inclusion of <a target=\"_blank\" href=\"/knowledge/monero-ringct\" class=\"next-link\">RingCT</a>. Before, Monero only included <a target=\"_blank\" href=\"/knowledge/monero-stealth-addresses\" class=\"next-link\">stealth addresses</a> and <a target=\"_blank\" href=\"/knowledge/ring-signatures\" class=\"next-link\">ring signatures</a>, and amounts were visible. Shen Noether, an MRL researcher, modified an existing protocol that hides amounts for Monero, but it’s inclusion would break backwards compatibility, meaning old-style transaction with transparent amounts wouldn’t be allowed anymore.</p>\n\n<p>Monero took this risk, and the end result was a much improved privacy that solidified Monero’s position as the king of privacy coins. But that’s not all it showed. This fork, as well as the several after, as well as all of the following encouragement of skepticism, humility, and questioning within the community, also solidified Monero as one of the sharpest, most critical collection of minds in the cryptospace.</p>'**
  String get knowledge250Sbcritical250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbcritical250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Сrypto enthusiasts are encouraged to think critically and evaluate projects based off of their real world value, but are projects themselves supposed to be self critical and self aware?'**
  String get knowledge250Sbcritical250Sbdescription;

  /// No description provided for @knowledge250Sbcritical250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why Monero Has the Most Critical Thinking Community'**
  String get knowledge250Sbcritical250Sbtitle;

  /// No description provided for @knowledge250Sbdandelion250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As a cryptocurrency, Monero might seem very boring to the naked eye. It doesn’t have a big claim to fame such as being a ‘world computer’ or ‘revolutionizing xyz industry’. It’s just trying to be a private, digital, fungible money, and every upgrade and new technology just furthers this end. </p>\n<p>\nThose that deem this goal as too narrow or uninteresting generally don’t understand how difficult it is to achieve meaningful privacy, especially on a permanent, open ledger like a blockchain. Any avenue for metadata leakage is a potential for privacy erosion.</p>\n<p>\nMonero takes precautions to obfuscate on-chain data, such as the receiver, sender, and amounts, via stealth addresses, ring signatures, and Pedersen commitments respectively. This minimizes the chances of a casual observer from deducing critical info after transactions have already been sent and are now just a part of recorded history. There are, however some attacks that can be done the moment a transaction occurs that cannot be performed any time later.</p>'**
  String get knowledge250Sbdandelion250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbdandelion250Sb0250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy as priority'**
  String get knowledge250Sbdandelion250Sb0250Sbtitle;

  /// No description provided for @knowledge250Sbdandelion250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'These attacks revolve around identifying which IP address a transaction came from. If this information is deduced it could reveal that an individual sent a Monero transaction. It’s not able to show to who, and how much, but there are some cases where the knowledge of someone using Monero is enough to cause harm. \n<br/><br/>\nThe good news is, that if this information is not gleaned the moment the transaction is made, then it cannot be learned at a later date, since IP addresses are not stored on the blockchain. It is also comforting to know that such an attack is unlikely to be seen in the wild, as, in order to pull it off, the attacker would need a large majority of nodes on the network. If a person was able to command this large majority, however, they would be able to identify the “direction” a transaction came from.\n<br/><br/>\nThis may be confusing, so we’ll explain some background info here. Each node connects to other nodes on the network, so that they can keep their blockchain up to date, as well as share what they know with others. These connections allow them to learn about new transactions, propagate them, and send their own. Since a node can only tell their peers about transactions they know about, it stands to reason that the very first node that propagates a transaction is the node that is actually sending Monero.\n<br/><br/>\nIf an attacker owns a large majority of nodes on the network, each node will hear about a transaction from one of their peers, and based on the timing in which each node receives this information, they can deduce likely candidates for where the transaction started.\n<br/><br/>\nIf this is still confusing, we offer this example. Suppose we both have a mutual friend that is hiding from our vision. This friend calls out loudly. I hear his call first, and I hear it louder than you do. From this information, we can know that I am likely closer to our friend than you are. The fact that you hear the sound later (even by just a split second) and the sound is fainter means that we should start our search around my area, not yours.\n<br/><br/>\nIf an attacker is able to successfully guess which of their peers sent the transaction, since they have the IP address that is connected to their node and forwarded it to them, they can be certain of the IP address that sent it. This is powerful information, as IP addresses contains information about the country and internet service provider (ISP) of the user, and the ISP themselves know which user is linked to which exact IP address, effectively deanonymizing the Monero user.'**
  String get knowledge250Sbdandelion250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbdandelion250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Attack to reveal IP address'**
  String get knowledge250Sbdandelion250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbdandelion250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'One possible mitigation for this attack is usage of an overlay network such as Tor or I2P. This makes it so that even if an attacker can deduce a source IP address, it’s probably not the one that made the transaction, but rather the outproxy (I2P) or exit node (Tor) of the overlay network. This is not an all-encompassing solution however, as overlay networks, VPNs, and similar software is banned in many countries, and expecting everyone to use, sync, and propagate on these networks is unrealistic.  There needs to be a solution that doesn’t require the usage of external software and networks; one that is available to the common person.\n<br/><br/>\nThis solution is Dandelion++ (DPP), which is an upgraded protocol to the original Dandelion proposal for Bitcoin. In this protocol, there are two phases, the stem phase, and the fluff phase; both of them together are supposed to represent the form of a dandelion.\n<br/><br/>\nIn the stem phase, every few minutes, the sending node randomly chooses two peers out of all of the nodes it’s connected to. When the sending node sends a transaction, either on behalf of itself or just forwarding the transaction from another node in the stem phase, it randomly chooses one of these two selected peers and sends the transaction to it.\n<br/><br/>\nThe fluff phase is when a node receives a transaction and broadcasts it to every outgoing connection, rather than just to one randomly chosen one, this allows true transaction propagation. Every few minutes a node defines itself as one that will either propagate via stem or via fluff at random, so a stem phase can be quite long if each connecting node has defined itself as a stem node, but once the transaction hits the fluff phase, it stays there.\n<br/><br/>\nThis means that an attacker will not be able to simply listen for the direction of a transaction anymore, because before it was propagated to everyone, it underwent the stem phase, and the originating node of the fluff phase is not the node the transaction originated from, and it is unknown how many hops along the stem the transaction underwent.\n<br/><br/>\nOf course, combining the solutions above (DPP plus an overlay network) will give even stronger guarantees of privacy and protection against IP tracing. It should also be noted, that DPP does not defend against another form of network tracing attack that can be done with ISPs, but this is beyond the scope of this article.\n<br/><br/>\nDandelion++ is set to go live on the Monero network, and be used by default on the reference client, in the 0.16 release. This small change will further mitigate the attacks possible on the Monero network, and exemplifies why Monero leads the pack in practical, applied privacy technologies.'**
  String get knowledge250Sbdandelion250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbdandelion250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The mitigation(s)'**
  String get knowledge250Sbdandelion250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbdandelion250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Monero takes precautions to obfuscate on-chain data, however there are some attacks that can be done the moment a transaction occurs that cannot be performed any time later.'**
  String get knowledge250Sbdandelion250Sbdescription;

  /// No description provided for @knowledge250Sbdandelion250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Dandelion++ Keeps Monero\'s Transaction Origins Private'**
  String get knowledge250Sbdandelion250Sbtitle;

  /// No description provided for @knowledge250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'What makes Monero special? Learn by reading the articles and guides on our Knowledge page.'**
  String get knowledge250Sbdescription;

  /// No description provided for @knowledge250Sbeconomy250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One of the most important aspects in the survival and growth of cryptocurrencies and their usability is the formation of circular economies. We have seen these pop up at small scale within Bitcoin and other cryptocurrencies, but Monero has multiple attributes that uniquely enable us to build and participate in circular economies.</p>'**
  String get knowledge250Sbeconomy250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbeconomy250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>While I’m sure you all are loosely familiar with economies as a broad topic, the idea of a “circular economy” is one that is rarely discussed outside of the cryptocurrency world. What makes circular economies so important and special are that they create truly free markets that allow the trading of services, products, and goods <em>directly for Monero</em>.</p>\n<p>Participants don’t need to constantly be moving in and out of fiat, but can keep their Monero within the system, earning, saving, and spending directly in Monero without the friction, surveillance, or restrictions of the normal economy.</p>\n<p>Circular economies are generally completely “above board” and legal, but function more as “grey markets” compared to the normal “white markets” in the fiat world.</p>'**
  String get knowledge250Sbeconomy250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbeconomy250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What are circular economies?'**
  String get knowledge250Sbeconomy250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbeconomy250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<h6 id=\"remove-the-reliance-on-the-states-approval-and-id-system\">1. Remove the reliance on the state’s approval and ID system</h6>\n<p>This point may not stand out to most westerners or people who have lived with the ID system in a stable country, but our reliance on state-issued IDs and approval in order to conduct business, earn a living, and buy what we need to survive enables the state to easily cut off those they deem “non-compliant”.</p>\n<p>This is <em>not</em> just criminals, and can be political dissidents, religious minorities, racial minorities, etc. This control lets the state dictate who can and cannot engage in commerce, who each of us can transact with, and what we can buy/sell – essentially choosing life or death for each citizen based on compliance.</p>\n<p>Removing this reliance by building circular economies removes the states power over our ability to engage in an economy, letting us survive and thrive no matter what the state thinks of us.</p>\n<h6 id=\"reduce-the-governments-control-of-monero-and-monero-users-via-fiat-onoff-ramps\">2. Reduce the governments control of Monero and Monero users via fiat on/off-ramps</h6>\n<p>The incredibly strong privacy guarantees and decentralization of Monero make it extremely difficult (or even impossible) to prevent people from using it how they see fit. Because of the strong technical base for Monero’s power as a tool for freedom, governments are rapidly realizing their best chance of controlling Monero users or reducing the effectiveness of the network is to control who can get access to Monero while compiling a nice and tidy list of Monero users via Know-Your-Customer (KYC) exchanges.</p>\n<p>When we build out circular economies we do not need to use fiat on/off-ramps as frequently (or even at all!), and so can remove that point of government control over our actions.</p>\n<p>We can also do this by refusing to use centralized KYC exchanges, and trading peer-to-peer here on LocalMonero.</p>'**
  String get knowledge250Sbeconomy250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbeconomy250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why do we need to build circular economies?'**
  String get knowledge250Sbeconomy250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbeconomy250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>While Monero shares some of the core attributes of Bitcoin that enable circular economies in a new way (censorship-resistant payments, p2p transactions, etc.), it brings an absolutely unique empowerment to those wishing to build and engage in circular economies.</p>\n<h6 id=\"monero-enables-global-p2p-transactions-without-fear-of-surveillance-or-censorship\">1. Monero enables global p2p transactions without fear of surveillance or censorship</h6>\n<p>Monero users do not need to worry about mass surveillance or even targeted censorship of their transactions, enabling unique peace of mind and preventing any burdens on commerce. You can transact with anyone in the world, at any time, without any surveillance using the Monero wallet of your choice.</p>\n<h6 id=\"fungibility-removes-the-risk-of-tainted-coins-and-ensures-trust\">2. Fungibility removes the risk of tainted coins and ensures trust</h6>\n<p>As Monero is fungible (1 XMR equals 1 XMR, no matter what), participants in the circular economy don’t need to worry about the funds they are sending or receiving. Any Monero they send cannot be traced back to their other transactions and has no history and thus cannot be censored based on history, and Monero received will always be able to be spent freely at full market value. This fungibility adds to the peace of mind of participants, ensures that chain analysis firms cannot force their way into circular economies, and prevents a breakdown of trust in Monero as a method of exchange.</p>\n<p>The current breakdown of trust in Bitcoin as a method of exchange is leading to it rapidly losing traction in circular economies where Monero is present. People don’t want to have to check funds for taint, worry about if they will be able to spend them freely, or feel the need to use any chain analysis tools to protect themselves from legal or regulatory issues.</p>\n<h6 id=\"moneros-low-fees-ensure-a-free-flow-of-commerce\">3. Monero’s low fees ensure a free flow of commerce</h6>\n<p>One of the simplest points to grasp about Monero transactions is that transaction fees are incredibly low and will remain reasonable in the long-term thanks to the <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"   href=\"https://localmonero.co/knowledge/monero-tail-emission\">tail emission</a> and <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"   href=\"https://localmonero.co/knowledge/dynamic-block-size\">dynamic block size</a>.</p>\n<p>These low fees make sure that commerce can flow freely no matter the amount of blockchain congestion, further reducing the mental burden and stress on participants to try and time their transactions or wait hours/days to confirm low-fee transactions. With fees around 1c today, you can transact freely with any size of transaction without worry about fees down the line.</p>'**
  String get knowledge250Sbeconomy250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbeconomy250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How does Monero uniquely enable these circular economies?'**
  String get knowledge250Sbeconomy250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbeconomy250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Ultimately, Monero is digital cash as it should be. The peace of mind, fungibility, and privacy of transacting in cash but with all of the advantages of digital, global, and p2p transactions detached from the states control or surveillance. This ability to act as digital cash is uniquely enabling circular economies today and helping them to grow and prosper over time in ways that other cryptocurrencies like Bitcoin simply can’t.</p>'**
  String get knowledge250Sbeconomy250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbeconomy250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Conclusion'**
  String get knowledge250Sbeconomy250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbeconomy250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>If you’re curious and want to better understand circular economies or start participating in one today, see the links below for great places to get started:</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"   href=\"https://bitcoinmagazine.com/business/kyc-free-bitcoin-circular-economies\">“KYC-free Bitcoin circular economies: Free the markets, free the world” - Anarkio</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"   href=\"https://bitcoinmagazine.com/business/its-time-to-join-the-bitcoin-circular-economy/\">“It’s Time To Join The Bitcoin Circular Economy” - Ragnar Lifthrasir</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"   href=\"https://monerica.com/\">“Monerica.com - A directory for a circular Monero economy”</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"   href=\"https://cryptwerk.com/pay-with/xmr/\">Monero Merchants - Cryptwerk</a></li>'**
  String get knowledge250Sbeconomy250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbeconomy250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I learn more?'**
  String get knowledge250Sbeconomy250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbeconomy250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Today, we consider how Monero\'s ability to act as digital cash is uniquely enabling development of circular economies.'**
  String get knowledge250Sbeconomy250Sbdescription;

  /// No description provided for @knowledge250Sbeconomy250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Monero uniquely enables circular economies'**
  String get knowledge250Sbeconomy250Sbtitle;

  /// No description provided for @knowledge250Sbemission250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>When most people think of what sets Monero apart, they think of Monero’s privacy technology. Indeed, most would consider the privacy, and the fungibility that it unlocks, as Monero’s defining trait, and the main weapon it brings into the ring when compared to other coins. What most people might not know is that Monero contains other protocol differences from Bitcoin and its derivatives that some might argue are just as important as Monero’s privacy technologies. In this article, we will look at one of these: the tail emission.</p>\n\n<p>First, let’s define what this term means. A tail emission is an unceasing subsidy of block rewards, even after the ‘last’ Monero is minted. In other words, Monero’s block reward will never fall to zero, but rather fall until it reaches 0.6 XMR per block, and then stay there forever. Miners will always be paid to mine Monero, and will never have to solely rely on a fee market.</p>\n\n<p>But let’s take a step back for a moment, and look at mining on a very high level. Monero miners are incentivized to secure a network by mining hashes. The incentive is the opportunity to make Monero if they find a new block. This Monero is awarded in two ways. Firstly, the miner receives the paid fees of every user who paid for their transaction\'s inclusion in the block. These are the transaction fees that you pay when you send a transaction. Secondly, the miner receives a predetermined amount of Monero from the protocol itself. In most cases, this ‘block reward’ is substantially higher than the user transaction fees, and is where miners make the most money. This block reward serves to keep the miners financially invested in the chain’s security, but also to get new coins into circulation.</p>\n\n<p>In most cryptocurrency protocols, this block reward is set to decrease over time. Most Bitcoin derivatives have what are called halvenings, predetermined points in time where the block reward halves (such as from 20 BTC to 10 BTC). These halvenings happen every few years, and every time it happens, the security on the network decreases. Why? Well, we encourage the reader to read our <a class=\"next-link\" href=\"/knowledge/monero-mining-randomx\" target=\"_blank\">article on Mining and RandomX</a>, and in doing so they will learn that mining is a race. Block rewards are only given out to those who find a block, and there are many entities in competition to do so. When the rewards are higher, more people are interested in playing this game, whereas when the rewards are low, less people, even those with the equipment to do so, will be willing to use their time and resources on a chance to win a measly prize.</p>\n\n<p>Already we begin to scratch the surface of the reason for Monero’s tail emission. Monero too has a decreasing block reward, although unlike Bitcoin there are no halvenings. Instead, each block reward is a tiny amount less than the previous one, so the reduction is much smoother. But the question for all cryptocurrencies is: “What happens when the block reward hits zero?” This is a strange situation in which we both know and don’t know the answer. The part we know is that there will be no more block reward subsidy, which means miners will have to be incentivized by the user transaction fees alone. What we don’t know is if these amounts will be enough to keep the miners securing the chain.</p>\n\n<p>As mentioned earlier, at present time, the block reward outweighs the transaction fees by a substantial amount, so the hope is that, as more users use the chain, fees would increase, and with increased fees the miners will deem it worth their time to continue mining. There is another side to this scenario however, the side of the users. If fees increase, then it will become much more expensive to transact with cryptocurrency for everyone, potentially walling it off from those without sufficient monetary resources. But on the other hand, if the fees stay low and the block reward goes to zero, then very few miners will secure the network, leaving it vulnerable to 51% attacks and reversed transactions.</p>\n\n<p>Nobody has good answers for this scenario, and no major coin has yet entered this phase of their cryptocurrency\'s life, so we have no real-world experience with it either. It’s all speculation. A gamble. Bitcoin makes the bet that the fees will be enough to sustain the miners, even if it means excluding the impoverished. Monero makes a different bet. Monero bets that the fees alone would not be enough for chain security, so it includes a tail emission as part of the protocol.</p>\n\n<p>We remind the reader that the block reward will not fall below 0.6 XMR per block, ever. Will this be enough to incentivize miners? We don’t know, but it’s certainly better than 0, which is what almost every other currency has built in to their protocol.</p>\n\n<p>The main criticism levied against this approach is that this means Monero’s supply is theoretically infinite, causing inflation over time, while coins that cap the block reward have a finite supply, their scarcity increasing the value over time. We feel this argument is insufficient for several reasons.</p>\n\n<p>Firstly, what good is a scarce, high-value coin that is easily attacked, censored, and subverted due to low security? If anything, the low security would decrease the value, more than offsetting what increase the scarcity would provide. Secondly, though Monero’s supply is theoretically infinite, the inflation is linear and trends toward zero as a yearly percentage, unlike fiat which is exponential.</p>\n\n<p>Monero’s inflation is precisely known ahead of time, and can be accurately projected, unlike fiat which may increase by more or less on a given year based on the whims of the powers that be. This still preserves the cypherpunk spirit of removing the possibility of human corruption through protocol enforced technology. With the added benefit of the peace of mind that the security of Monero’s blockchain through mining will be around as long as the world needs it.</p>\n\n<p>The last point we want to touch on is one of fairness. Money is used in several ways, as a store of value, as a medium of exchange, and as a unit of account. In a system where supply is finite, inflation will stop, meaning that those that use it as a store of value use the system for free. They benefit from the continued security provided by the miners without paying anything for it, since without inflation, their money does not slowly lose value over time. Conversely, anyone who uses the currency as a medium of exchange gets penalized (via potentially high transaction fees). This will encourage people to hold but not spend, and skews the fairness of the system to favor holders. By having a tail emission, this evens out the equation. Now holders also pay a small tax, via inflation, for the system\'s security. The tail emission makes it more fair for everyone.</p>'**
  String get knowledge250Sbemission250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbemission250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Monero’s privacy technology is not the only difference that sets it apart from BTC and it\'s derivatives. In this article we\'ll look at another - the tail emission.'**
  String get knowledge250Sbemission250Sbdescription;

  /// No description provided for @knowledge250Sbemission250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why Monero Has A Tail Emission'**
  String get knowledge250Sbemission250Sbtitle;

  /// No description provided for @knowledge250Sbfoss250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'One of the often sung goals of blockchain is putting power back in the hands of the people. What kinds of power, and how much differ depending on who you ask, and the design of a blockchain itself will determine how this redistribution comes about. There are many tools that contribute to correcting the disparity, and we would like to discuss one that has a great effect on how a project is run, and the actual power redistribution potential it has: open source.'**
  String get knowledge250Sbfoss250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbfoss250Sb0250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Power to the people'**
  String get knowledge250Sbfoss250Sb0250Sbtitle;

  /// No description provided for @knowledge250Sbfoss250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'A free, open source software (FOSS) project is one in which the code is licensed in such a way that it is available for viewing, changing, auditing, and copying by anyone and everyone. In contrast, the code of proprietary software is hidden, and kept as a business secret that is not shared for fear of competition copying the hard work that the creator paid for or made. Only the program produced at the end is released to the public, not the code.\n<br/><br/>\nFOSS software has many advantages over its proprietary counterparts, such as potentially fewer bugs (since anyone is free to audit the code), innovation (since contributions can come from anywhere at any time), and empowerment of people that might not be able to afford or otherwise utilize the proprietary offerings. \n<br/><br/>\nThis is true of standard FOSS projects, and blockchain is no exception. The space is abuzz with talks of open source software, and proprietary wallet offerings are met with suspicion and criticism from cryptocurrency veterans. Despite most reference implementations of most major blockchains being open source, there are some – such as Monero – that go above and beyond and stand apart from the crowd.'**
  String get knowledge250Sbfoss250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbfoss250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Open source software'**
  String get knowledge250Sbfoss250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbfoss250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'While it’s true that most projects have open source code, it would be a disservice to the spirit of the concept to not dig a little deeper to see the real reasons why open source is so powerful. The reality is, open source licensing fosters open collaboration by people from all walks and stages of life, with the intention of creating tools that are needed, useful, and beneficial for humanity.\n<br/><br/>\nSome cryptocurrencies, while the code is eventually released, have development done in secret so as to stay ahead of competing projects. While these projects do qualify as “open source projects” since their code is eventually released to the public, the initial development is still done by a select few, leading to a loss of many of the benefits that being open source might otherwise give.\n<br/><br/>\nThe spirit of an open source project is open collaboration for the benefit of all, rather than for the benefits of a few, and in this way Monero outshines most of its peers. Not only is Monero’s development done in an open fashion, with frequent meetings that anyone can attend and speak in, but so is its research and implementation. Indeed, many of Monero’s largest breakthroughs have come from external sources via collaboration, or by a seemingly random person coming onto the research platforms with a new idea, such as bulletproofs and privacy optimizations.'**
  String get knowledge250Sbfoss250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbfoss250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The blockchain connection'**
  String get knowledge250Sbfoss250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbfoss250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'When evaluating a blockchain project, it is recommended that the user should not just look to see if the code is available for viewing, but if other aspects of the project are also conducted in an open, transparent fashion. The more closed doors there are to community involvement, the more uneasy one should feel. Herein lies a stumbling block for many, however, as many of us come from the proprietary world, where transparency is not common, and we don’t have a reference point for what constitutes “open enough”, not just in code, but in the spirit and other areas of a project.\n<br/><br/>\nIndeed, most projects tout their openness on social media, but when you take a look into how many people actually contribute to the software, development, or research besides those employed or otherwise compensated to do so, the reality can be astoundingly different than what is claimed. It is possible for those in power (formally or informally) to be dismissive or outright hostile when it comes to other people’s ideas.\n<br/><br/>\nMonero tries to sidestep this issue entirely by having no formal roles of the project, with even the core team of Monero primarily just running infrastructure, and having little to do with the actual development or research of the project. That said, informal power structures form in all social circles, and Monero is no exception, so they must be accounted for.'**
  String get knowledge250Sbfoss250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbfoss250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Beyond code'**
  String get knowledge250Sbfoss250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbfoss250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'While these social portions of open source software are valuable to explore and discuss, and indeed the lack of doing so has led to the downfall of many a project, the conversation can get quite intricate, and is generally outside of the scope of this article, though the reader is encouraged to continue learning about this critical portion of FOSS management.\n<br/><br/>\nThe Monero Project continually seeks to find ways to foster the open collaboration that is so critical to the spirit of open source. If some people prefer one chat platform over another, then bridges are deployed with existing platforms to increase communication. If a group of people feel they don’t have the tools or infrastructure to implement their ideas to make Monero better, then the community sees what sorts of (FOSS) tools are available. \n<br/><br/>\nThis means there’s not just more eyes on the code, which is only one aspect of the project, but on the designs, the research, the digital infrastructure, and the conversations.\n<br/><br/>\nThe spirit of open source software is not just to have open code, but to empower people, give them a voice, and change the world through global collaboration. The reader is encouraged to see if any project that they are interested in goes to these core values, or merely stops at the licensing of the code.\n<br/><br/>\nWe also invite them to run the same rubric on Monero. We know you’ll only discover the reason why Monero is one of the most secure, and collaborative communities in the cryptocurrency world.'**
  String get knowledge250Sbfoss250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbfoss250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'A means or an end?'**
  String get knowledge250Sbfoss250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbfoss250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Find out why being open source and decentralized gives Monero a huge advantage over competing cryptocurrencies.'**
  String get knowledge250Sbfoss250Sbdescription;

  /// No description provided for @knowledge250Sbfoss250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why Monero Is Open Source And Decentralized'**
  String get knowledge250Sbfoss250Sbtitle;

  /// No description provided for @knowledge250Sbhistory250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Few cryptocurrency projects have origins that are shrouded in mystery. Most have an identifiable founder, and many hyped up their projects before launch to maximize profits from an ICO. Bitcoin seemed to stand alone in having a whitepaper that was dropped out of nowhere on the cryptography community, and having their founder, Satoshi Nakamoto, disappear.</p>\n\n<p>Until Monero.</p>\n\n<p>But before we even start talking about Monero’s launch in 2014, we need to go even further back.</p>'**
  String get knowledge250Sbhistory250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbhistory250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>In September 2013 a previously unheard of group, Cryptonote, released a whitepaper about a novel protocol under the same name. This protocol sought to make a Bitcoin-like cryptocurrency, although utilizing optional ring signatures and stealth addresses to bolster the privacy. Not long after, in November of 2013, initial code was pushed to GitHub for a new coin called Bytecoin. This coin implemented the protocol described in the paper, on a brand new codebase (i.e. not forked from Bitcoin like most other coins at the time).</p>\n\n<p>The Bytecoin team took their time putting the rest of the code on their repository, but seemed to be done by March of 2014, when the project was subsequently ‘discovered’ by a ‘random’ person on the BitcoinTalk forums, though it is now widely suspected that this was a plant to generate interest. After the sockpuppet succeeded in garnering eyeballs, those newly interested people discovered something strange: over 80% of the coins had already been mined.</p>\n\n<p>This was an astronomical amount, and many were willing to write it off as a scam and move on; that is until the Bytecoin team showed up. They claimed that the reason so much of the coin had been mined by this point was because Bytecoin was actually not a new coin with a massive premine, but had actually existed on the deep web for two years, since 2012.</p>\n\n<p>Long story short, these claims were not well received, as nobody had heard of Bytecoin before, and it didn’t take long before people lost interest. Not everyone was willing to completely give up however. Some began looking over the Cryptonote protocol that Bytecoin was based on and concluded that the protocol itself seemed to be solid and innovative, even if the first implementation wasn’t. </p>\n\n<p>At that point, it was a race to see who could fork Bytecoin, clean up the code, and be the first ‘non-scam’ version to market, in order to gain a first mover advantage.</p>'**
  String get knowledge250Sbhistory250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbhistory250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Bytecoin'**
  String get knowledge250Sbhistory250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbhistory250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>On April 9th, 2014, another previously unheard of entity named thankful_for_today posted on the BitcoinTalk forums, announcing the launch of the first Bytecoin fork, called Bitmonero. Since it was the first fork, Bitmonero quickly gained attention and a small community formed around it when it launched on April 18th, eager to continue where Bytecoin had left off, but it didn’t take long for something to smell fishy about Bitmonero also.</p>\n\n<p>The founder, thankful_for_today, proved difficult to work with. Often disappearing for days at a time (very strange for a brand new coin in the first days of development), and would often go against the community by trying to merge mine Monero with Bytecoin, adjust the issuance schedule, and generally refusing to cooperate with the consistent core group that had built around the coin, going so far as to have his own website, BitcoinTalk post, and repositories.</p>\n\n<p>It soon became clear that the core group that had built up around Monero were far more active and competent than thankful_for_today, and, despite being invited to take part several times, he eventually disappeared and became a footnote in Monero’s history. Many years later, it’s suspected that he was also secretly a part of the Bytecoin team. Why? Well, during all of this, Bytecoin themselves had not been sitting idly.</p>'**
  String get knowledge250Sbhistory250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbhistory250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Bitmonero'**
  String get knowledge250Sbhistory250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbhistory250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The Bytecoin team was not happy. Their plan at getting rich off of their lie from their massively premined coin had failed. They had put all of the work in developing the protocol (there is strong evidence that the CryptoNote developers and Bytecoin developers were very closely related), and had nothing to show for it.</p>\n\n<p>But they weren’t done yet. They launched a new coin, Bitmonero, under a new pseudonym, thankful_for_today. In fact, why stop there? Since they were the most familiar with the code, they could launch several new coins with slightly differing emission schedules and names, with new accounts and nobody would be the wiser that it was them all along. So they did. Fantomcoin, Monte Verde, Dashcoin (not to be confused with Dash), and more forks all appeared not long after Bitmonero was launched, and tried to take a part of the marketshare.</p>\n\n<p>These attempts ultimately failed, as Monero outgrew their competition quickly, and leaving little doubt as to the winner of the CryptoNote coins.</p>\n\n<p>But even still, scams did not stop there. Bytecoin had one last trick up their sleeve. When thankful_for_today released Bitmonero, he released a deliberately deoptimized miner alongside it. He kept the optimized version, and hoped to amass a large stash for himself, but these deoptimizations were quickly caught by the core team, as well as other, independent groups, and even this was fixed in short order. With this, their last scam, defeated, Bytecoin retreated into the dark, only coming out to do bogus rebrands and announcements in the height of the 2017 cryptocurrency market boom to try to squeeze out any last profit from their scam at the expense of their tiny, unsuspecting community.</p>'**
  String get knowledge250Sbhistory250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbhistory250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Scorched Earth'**
  String get knowledge250Sbhistory250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbhistory250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Not many coins can boast about having a founder that is not with them any longer. Indeed, Bitcoin and Monero are probably the two biggest examples. While a comparison may show Bitcoin in a more charitable light, there are lessons to be gleaned from Monero’s scammy beginnings also.</p>\n\n<p>Bitcoin showed what can happen when one person is tired of the current system, and dares to step up with innovation to challenge the status quo. Monero shows the power of a community that refuses to be fed lies, finds the truth for themselves, and retakes the tools with which they can build their freedom. Monero may have started as a scam, but it has truly evolved into a powerful weapon to take back our financial privacy.</p>'**
  String get knowledge250Sbhistory250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbhistory250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Conclusion'**
  String get knowledge250Sbhistory250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbhistory250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin seemed to stand alone in having a whitepaper that was dropped out of nowhere and having their founder disappear. Until Monero.'**
  String get knowledge250Sbhistory250Sbdescription;

  /// No description provided for @knowledge250Sbhistory250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'A Brief History of Monero'**
  String get knowledge250Sbhistory250Sbtitle;

  /// No description provided for @knowledge250Sbkeys250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Have you heard the phrase “not your keys, not your coins” before?\nThis has become a ubiquitous phrase in the cryptocurrency community, but\ndespite most people having heard it the vast majority of cryptocurrency\nusers do not hold their own keys.</p>\n<p>The benefits of cryptocurrency that truly set it apart from the\ntraditional financial system are only realized when you have complete\ncustody of your funds – holding the private keys to your coins.</p>\n<p>In this brief post we’ll dive into why you should hold your own keys\nand give a few easy ways to self-custody your Monero <em>today</em>.</p>'**
  String get knowledge250Sbkeys250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbkeys250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<h6 id=\"it-preserves-the-privacy-that-monero-affords-users\">It preserves\nthe privacy that Monero affords users</h6>\n<p>One of the most commonly misunderstood aspects of self-custody in\nMonero is that if you do not hold your own keys, you gain little to no\nbenefit from the privacy Monero offers. As the sender of a transaction\nhas full visibility into the true spend, amount, and recipient address,\nif you are not the one sending the transaction and instead leave that to\nan exchange or custodian, they have <em>full</em> visibility into the\nways you spend your Monero.</p>\n<p>Thankfully, after they send the funds, Monero’s privacy guarantees\nkick in and provide strong “forward-secrecy”, but it will be clear to\nthe exchange or custodian where you sent the funds and how much you sent\ninitially.</p>\n<h6 id=\"it-enables-the-incredible-censorship-resistance-of-monero\">It\nenables the incredible censorship-resistance of Monero</h6>\n<p>One of the foundational aspects of Monero is enabling\ncensorship-resistant transactions – allowing you to make transactions\nthat may or may not be approved of by “them”, no matter what they try to\ndo to stop you. While the need for censorship-resistance may be a bit\nlost on those of us in “free” countries, the rapid slide toward\nauthoritarianism and political decay in many parts of the world is\nmaking it more apparent by the day that we need a way to transact with\nor without governmental approval.</p>\n<p>If you do not hold your own keys, however, a government or regulator\ncan easily force an exchange or custodian to blacklist your funds, seize\nthem, or censor transactions to specific addresses. This is already\nhappening broadly due to state-level sanctions today, and will be an\nincreasing theme as governments and regulators realize that exchanges\nand custodians are the easiest path towards control over Monero’s\nusage.</p>\n<p>The day could also come where a government will outlaw self-custody\nof Monero, and if you haven’t yet withdrawn your Monero from an exchange\nor custodian you may not ever be able to.</p>\n<h6 id=\"it-prevents-simple-theft-or-confiscation-of-your-monero\">It\nprevents simple theft or confiscation of your Monero</h6>\n<p>A hypothetical, but possible, scenario could be the worst-case for\nthose who choose not to hold their own keys – their Monero getting\nstolen by a hacker or confiscated by a government with a <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" \nhref=\"https://en.wikipedia.org/wiki/Executive_Order_6102\">6102-like\norder</a>.</p>\n<p><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" \nhref=\"https://blog.chainalysis.com/reports/2022-crypto-crime-report-introduction/\">Almost\n\$500 million</a> in cryptocurrency was stolen from centralized exchanges\nin 2021, and \$3.2 billion total stolen from users who gave up custody of\nfunds for one reason or another. This is one of the largest risks to\ncryptocurrency users, and continues to grow in both case-count and\nvolume as cryptocurrency gains popularity. If an exchange holds the keys\nto your funds, those funds can be stolen by a hacker (or the exchange\nthemselves!) at any time.</p>\n<p>If you hold your own keys, the only real risks of theft or\nconfiscation are scams and physical attacks, something that is much less\nlikely and usually only happens to high-profile individuals or those\nharmed by the theft or loss of know-your-customer (KYC) data from\ncentralized exchanges that links their ID and address with\ncryptocurrency ownership.</p>\n<h6\nid=\"it-prevents-exchanges-leveraging-fractional-reserve-lending-and-trading\">It\nprevents exchanges leveraging fractional reserve lending and\ntrading</h6>\n<p>Another important aspect of holding your own keys is one that is less\npersonal and more communal. When the vast majority of users in Monero\nhold their own keys, exchanges are less able to lie about the amount of\nMonero they custody and trade “paper Monero”, as users are not keeping\ntheir Monero in exchanges.</p>\n<p>While this type of activity is not often confirmed publicly, there\nare many in the community who are concerned that exchanges like Binance\nare leveraging the Monero it’s users hold on the exchange to trade\nagainst Monero, inflating the amount of Monero shorts and causing price\nsuppression over time.</p>\n<p>This behavior can also lead to liquidity crises where users who\n<em>do</em> want to hold their own keys are unable to withdraw from the\nexchange as the exchange has promised more Monero to it’s users than it\nactually has available. The more Monero users hold their own keys and\nkeep their Monero off exchanges, the healthier and more natural the\nmarket will theoretically be, and the less risk malicious or greedy\nexchanges can pose to the stability of Monero’s price.</p>'**
  String get knowledge250Sbkeys250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbkeys250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why is holding your own keys important?'**
  String get knowledge250Sbkeys250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbkeys250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>When you start to hold your own keys, the most important thing to\nremember is to <em>save and keep your seed phrase safe</em>! This is the\nset of 14 or 25 random words that any Monero wallet will give you when\nyou create a wallet, and is all you will need to get your funds back if\nyou lose your phone, your desktop, your laptop, or you forget a\npassword.</p>\n<p>Treat this seed phrase as if it is worth all the Monero in your\nwallet, as anyone who gets it will have complete access to the funds in\nyour wallet. It’s ideal to keep it in a safe or secret location,\npreserve multiple copies in case of fire or natural disaster, and never\nshow it to anyone.</p>\n<p>For more on seed phrases, see <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" \nhref=\"https://web.getmonero.org/resources/moneropedia/mnemonicseed.html\">Mnemonic\nSeed | Moneropedia</a>.</p>\n<h6 id=\"using-free-and-open-source-wallets\">Using free and open-source\nwallets</h6>\n<h5 id=\"for-desktop\">For desktop</h4>\n<p>If you’re mainly a desktop user and don’t spend/receive Monero\non-the-go very often, there are a few solid choices for holding your own\nkeys without needing to rely on any third-parties.</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://getmonero.org/downloads\">The official Monero\nwallet</a>\n<ul>\n<li>This is the official Monero wallet software, and has seen constant\nimprovements and additions. It includes an integrated Monero daemon (if\nyou want), is very user-friendly, and will soon support <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" \nhref=\"https://localmonero.co/knowledge/p2pool-decentralizing-monero-mining\">mining\nvia p2pool directly from your wallet</a>.</li>\n</ul></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://featherwallet.org/\">Feather Wallet</a>\n<ul>\n<li>This is an excellent wallet in the vein of <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" \nhref=\"https://electrum.org/\">Electrum for Bitcoin</a>, and provides both\nsimple usability and extremely powerful features in a single\nwallet.</li>\n</ul></li>\n</ul>\n<h5 id=\"for-mobile\">For mobile</h4>\n<p>For those of us that like to be able to use our Monero on the go or\nspend frequently, having a solid mobile Monero wallet that still keeps\nour keys in our own hands is immensely important.</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://cakewallet.com/\">Cake Wallet</a>\n<ul>\n<li>Cake Wallet is a free and open-source (FOSS) wallet for Android and\niOS that supports Monero, Bitcoin, and Litecoin natively.</li>\n</ul></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\"  href=\"https://www.monerujo.io/\">Monerujo</a>\n<ul>\n<li>Monerujo is a FOSS wallet for Android that has some awesome added\nfeatures and graphics, native Tor node support, and much more.</li>\n</ul></li>\n</ul>'**
  String get knowledge250Sbkeys250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbkeys250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How do I hold my own keys with Monero?'**
  String get knowledge250Sbkeys250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbkeys250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Hopefully this post has helped to cement the need for holding your\nown keys, as well as pointed you to some of the excellent wallets in the\nspace.</p>\n<p>The more you take Monero into your own hands and actually use it, the\nmore benefit you can get both now and in the future. Monero is not just\na speculative asset – it’s a powerful tool for freedom and financial\nprivacy that is much-needed in the world of today and the future ahead\nof us.</p>\n<p>Now go get those coins off an exchange and dive into what Monero was\nbuilt for.</p>'**
  String get knowledge250Sbkeys250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbkeys250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Conclusion'**
  String get knowledge250Sbkeys250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbkeys250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'\"Not your keys, not your coins\" - a ubiquitous phrase, yet the majority of crypto users still don\'t hold their own keys.'**
  String get knowledge250Sbkeys250Sbdescription;

  /// No description provided for @knowledge250Sbkeys250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why (and how!) you should hold your own keys'**
  String get knowledge250Sbkeys250Sbtitle;

  /// No description provided for @knowledge250Sbmining250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'On November 30th, 2019, Monero had its semiannual hard fork, with the most anticipated change being a switch from the old PoW algorithm, cryptonight, to the completely new, internally developed one, RandomX. The Monero community believes RandomX is a big step toward egalitarian mining, but let’s dig deeper to see if that’s the case.'**
  String get knowledge250Sbmining250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbmining250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'In order to judge whether RandomX is an improvement, we must first understand what the purpose of mining is. Mining secures a blockchain from double spends via Nakamoto Consensus. The exact intricacies of how it does this are beyond the scope of this article, but they can be learned from many different sources around the internet. What matters is that the security comes from hashes generated by computers (miners), in competition with one another to find the mathematical solution necessary to create another block. As they do this, they add new transactions to the blockchain. In return for their work (hashes) they are compensated with newly minted coins.\n<br/><br/>\nThere are a number of issues that can occur with this setup, and they require proper incentives to work correctly, but we’re going to focus in on one particular problem that might arise. If mining is supposed to be a competition, what happens when one miner gains an advantage?'**
  String get knowledge250Sbmining250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbmining250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Purpose'**
  String get knowledge250Sbmining250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbmining250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'For context, let’s talk a bit about mining hardware. Miners use computers to do the work, but we all know that not every computer is made equally. Some computers are powerful enough to run AI networks or intense games, while others struggle with even simple tasks. These differences in computing power also affect the rate hash rate, or the rate at which they look for block solutions. <br/><br/>\nBut even these differences between computers pale in comparison to the hash rates of specialized hardware, otherwise known as Application Specific Integrated Circuits (ASICs), which outclass regular computers by several order of magnitude.<br/><br/>\nLet’s take some time to explore what makes ASICs so powerful. Imagine all computers as falling somewhere on a spectrum, which ranges from being able to do many things, but nothing well, to doing only one thing, but doing it very well. CPUs and ASICs are on opposite ends of this spectrum.<br/><br/>\nCPUs that are in all standard computers are on the first end. They can do many things, like browse the web, play games, or render video, but not do any of them particularly well. But this flexibility comes at the cost of efficiency.<br/><br/>\nASICs are on the other end, where they can just one thing, but do it at an incredible rate. They can only perform one mathematical function, but because they can ignore everything else, the performance gains are astronomical. This efficiency however, does come at the cost of flexibility, so if the function changes even slightly – an example is x + y = z changes to 2x + y = z – then the ASIC will cease to function altogether. <br/><br/>\nNot everyone owns an ASIC, but everyone does own computers. This can lead to an unfair advantage.'**
  String get knowledge250Sbmining250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbmining250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Background'**
  String get knowledge250Sbmining250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbmining250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'If this still is confusing, perhaps the following analogy will help. Imagine a lottery where one thousand dollars is awarded every hour, and this lottery allows you to print your own tickets! You start printing as many tickets as you can on your home printer, which can print one ticket per second. After subtracting electricity and ink costs, you see that you can still make a profit, even if you only win the lottery once every few weeks.<br/><br/>\nOver time, you expand your operation until you have an entire room dedicated to printers. 20 in all. Everything is fine...until one fateful day.<br/><br/>\nThere’s big news. Someone has invented a new kind of printer. It can only print lottery tickets. It can’t print pictures, or office documents, or do double sided printing. Only lottery tickets. But it can print them at a rate of 1000 tickets per second. You look in your little printer room. 20 printers. You need 980 more printers just to keep up with ONE of these monster printers, and if someone has two…?<br/><br/>\nYou sadly exit the lottery game as you can no longer justify the electricity and ink costs.<br/><br/>\nBut wait! A couple of weeks later there’s more news! The design of the ticket has changed. Now the numbers, which used to be on the top, are now on the bottom. The new monster printers are so inflexible they can’t do it. They could only make the previous design. It’s not long before you’re once again happily printing away. At least until someone makes a new monster printer for the new design.'**
  String get knowledge250Sbmining250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbmining250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'A fun analogy'**
  String get knowledge250Sbmining250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbmining250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Where does RandomX fit into all of this? It seeks to even out the advantage by ASICs by making ASICs very difficult to make. It does this by requiring miners to make and execute random code in place of hashing based off of an algorithm.<br/><br/>\nIt may be confusing how this actually helps anything, so let’s go back to our printer analogy. Remember what happened when the design changed? The old monster printers become obsolete every night, and new ones had to be developed with the new design in mind. What would happen if every new lottery prize ticket, had to adhere to a new design standard for every new jackpot? <br/><br/>\nCreating a new monster printer would become incredibly difficult. You can’t just plan on one ticket design anymore. Since the design is random, the monster printer makers would have to add color capabilities, ways to print different lettering and borders and shapes and more. In short, the machine they ended up inventing would be a standard, regular printer. Just like everyone else has.<br/><br/>\nBy simply implementing this randomness in the ticket design, we substantially reduced the great advantage gained from specialized hardware. RandomX does the same, but with mining.<br/><br/>\nIn this way, the advantages gained by a select few affluent people is minimized, as if they invest in creating “ASICs” for mining RandomX, they will actually merely invent stronger, better CPUs, which benefits the world at large.<br/><br/>\nThis means the little guy with his 20 ticket printers is back in the game. He may still have a harder time since these wealthy individuals can still buy more printers than him, but at least now he’s not outclassed by orders of magnitude simply from one machine. He’s competitive in his small way.<br/><br/>\nKnowing that even the little guy can be competitive in mining Monero, we encourage everyone to give it a spin, either in the Monero GUI wallet, which has support for solo mining, or by downloading community maintained software. It’s easy, competitive, and open to all.'**
  String get knowledge250Sbmining250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbmining250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'RandomX'**
  String get knowledge250Sbmining250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbmining250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'On November 30th, 2019, Monero had its semiannual hard fork, with the most anticipated change being a switch from the old PoW algorithm, cryptonight, to the completely new, internally developed one, RandomX. The Monero community believes RandomX is a big step toward egalitarian mining, but let’s dig deeper to see if that’s the case.'**
  String get knowledge250Sbmining250Sbdescription;

  /// No description provided for @knowledge250Sbmining250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero Mining: What Makes RandomX so Special'**
  String get knowledge250Sbmining250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>No cryptocurrency is without its shortcomings, and Monero is no exception. In fact, the community has <a class=\"next-link\" href=\"https://www.youtube.com/playlist?list=PLsSYUeVwrHBnAUre2G_LYDsdo-tD0ov-y\" target=\"_blank\">made a YouTube series</a> covering the privacy weaknesses of Monero from a technological standpoint.</p>\n\n<p>That said, there are some common criticisms levied toward Monero that are either outdated, or incorrect, while others are presenting a very narrow view of the problem in question. In this article we hope to set the record straight on these criticisms.</p>'**
  String get knowledge250Sbmyths250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb0250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get knowledge250Sbmyths250Sb0250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This is a common criticism over Monero, which causes many to give it a wide berth, and it is by far the one where the response of the community isn’t quite so cut and dry as just correcting an incorrect assumption.</p>\n\n<p>The reality is, we, as a community, do not yet know what the regulatory response will be to something like Monero yet. We do know that cryptocurrencies in general are on the radar of many government agencies, and have reason to believe Monero is, moreso than others, for the above stated reasons, but, as of yet, few moves have been made by the governments of any country in regards to outright banning Monero.</p>\n\n<p>Even so, the Monero community is committed to fighting the good fight. We believe financial privacy is something that is essential for freedom, and that everyone should have the option to transact privately without governments, corporations, or anyone else spying on you.</p>\n\n<p>One reassurance we can give, however, is that at one point Bitcoin had the exact same reputation that Monero does now. It was thought to be the criminal’s coin, and completely private and anonymous, but slowly, over time, the public came to accept Bitcoin regardless. </p>\n\n<p>Now one might argue that Bitcoin’s reputation changed as people realized that it really wasn’t private or anonymous, but this isn’t true, as the notion that Bitcoin is completely private and can’t be traced is still pervasive not only in the general public, but amongst those regulating the industry. These people still believe it is private, so they basically believe it to be what Monero actually is, and yet we’re quickly moving into a world where it is gaining acceptance with the public, businesses, and governing bodies. This suggests, given enough time, Monero might see this same acceptance.</p>'**
  String get knowledge250Sbmyths250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero will face regulatory scrutiny far beyond other cryptocurrencies because of its commitment to privacy and anonymity in its transactions.'**
  String get knowledge250Sbmyths250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb10250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One common complaint about most coins smaller than Bitcoin is how easy it is to theoretically 51% attack them. Indeed, several small coins, such as Vertcoin did get successfully 51% attacked several times.</p>\n\n<p>Most of these concerns arise from the website https://www.crypto51.app/ which shows how much it would cost to rent the hashrate from NiceHash, a platform which rents out mining hardware for cloud mining. At one point in time, this website listed an attack on Monero to cost around \$6,300 for one hour. While this price may cause many of us to gawk, it’s not outside the realm of possibility for a wealthy business or individual to be able to conduct a sustained attack on the network.</p>\n\n<p>This, thankfully, is no longer the case. A keen eyed reader will see that the website has actually taken Monero off of their application, due to the inclusion of RandomX. Once again, the reader is encouraged to read <a class=\"next-link\" href=\"/knowledge/monero-mining-randomx\" target=\"_blank\">our article on RandomX for details</a>, but due to the CPU-friendly nature of the algorithm, no longer can businesses like NiceHash just purchase ASICs for Monero to rent out to whoever is willing to rent them. Now, they have to compete with CPUs, which are much more prevalent and easier to obtain.</p>\n\n<p>The exact cost of hardware to 51% attack the Monero network has not been calculated, and indeed, is not as easily calculated as other coins with ASICs period.</p>'**
  String get knowledge250Sbmyths250Sb10250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb10250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Isn’t Monero easily 51% attacked?'**
  String get knowledge250Sbmyths250Sb10250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb11250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The two boogeymen of the mining space are ASICs and botnets, and moving away from one necessarily means moving closer toward another. If one needs a CPU to mine Monero, then hackers can theoretically take control of many hundreds if not thousands of vulnerable computers and force them to mine Monero on their behalf, costing them nothing, and outcompeting those with only a couple of computers in their households.</p>\n\n<p>The first rebuttal to this argument is about the owners of botnets themselves. While we don’t condone hacking others’ computers, the barrier to entry to owning and operating a botnet is far lower than that of owning ASICs. One requires software – often quite freely available and open source – and the time and an acumen for sniffing out vulnerable computers. The other requires incredible amounts of capital and access to manufacturing. One can be done by a kid in a basement, and the other only by the extremely wealthy. This leads us to conclude that, if the worst fears of miners were to come true, the botnets themselves would be more decentralized than ASICs would be.</p>\n\n<p>That said, the Monero community is confident that this issue is overblown. The engineers of RandomX deliberately designed the protocol to require 2GB of RAM memory to work. In other words, many small, vulnerable virtual private servers (VPS) will simply not have the capacity, and if they did, the uptick in resources used would be very noticeable to a system administrator, leading to immediate investigation. In other words, it can’t run silently in the background like compromised computers taking part in a DDOS attack, or silently sniffing passwords. When the miner is on, everyone knows it.</p>\n\n<p>This reduces the amount of computers a botnet would be able to successfully compromise to those of the greatly technologically inept, or those that are never checked on, rather than the plethora of vulnerable computers that the proponents of this argument assume are at risk.</p>'**
  String get knowledge250Sbmyths250Sb11250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb11250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'CPU-friendly algorithm? Won’t Monero mining just get taken over by botnets?'**
  String get knowledge250Sbmyths250Sb11250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb12250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This criticism comes from the real-world occurrence. A group of individuals, not known to the community, forked Monero and created their own coin: MoneroV. Since it was a chain fork, individuals were able to claim an equivalent amount of MoneroV as they had in Monero, i.e. if you had 100 Monero, you could use the same seed on a MoneroV wallet to get 100 MoneroV.</p>\n\n<p>This led to a surprising, and unexpected consequence: a loss of privacy. To explain it, we will give an example. If I think of a number that you have to guess, but I give you three numbers, only one of which is correct, you will not know which is the correct answer. Let’s say I tell you the numbers 88, 25, and 19. You are clever however, and ask me for another set of three numbers, but one of them must still be the correct number. I give you 54, 88, and 92. You see that the number 88 appears in both sets, so it must be the correct number, and you would be right.</p>\n\n<p>The attack on Monero’s privacy works the same way. Monero relies on ring signatures, which are assembled on the local wallet to obfuscate transaction outputs. If I was to spend an output on the Monero chain, with one assembled ring, and spend the same output on the MoneroV chain, on a different assembled ring, without making sure that the ring is composed of the same decoys, then the true output becomes obvious, much in the same way the number 88 became obvious as the correct number.</p>\n\n<p>Several solutions were posited, including creating tools for people to fork from Monero responsibly, a blackball database of tainted outputs, and upping the ringsize, but ultimately, none of these were required. MoneroV never gained any traction, and the amount of people who claimed their coins and put their privacy in danger were very few.</p>\n\n<p>It should be noted that this danger to privacy does NOT come from a code fork of Monero, but rather a chain fork. This means that any coin that takes the code of Monero and starts from scratch with their own genesis block will not put either chain in danger. Only if a coin forks the actual blockchain from the current Monero blockchain because of a disagreement, similar to the Bitcoin / Bitcoin Cash debacle, would the chains be in danger. This would mean the fork would be fighting against the established community, and those that choose not to take part and claim their coins from the other chain would not be in danger.</p>\n\n<p>That said, we do see it as naive to think there will never be an attack on Monero in this way, which is why other solutions are in the works to either increase the ringsize, or move to a different proving scheme altogether, many of which were mentioned in the ‘high transaction fees’ section.</p>'**
  String get knowledge250Sbmyths250Sb12250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb12250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero forks don’t just hurt Monero’s economic viability, but its privacy!'**
  String get knowledge250Sbmyths250Sb12250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb13250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The history of Monero is an interesting one, and it may surprise many to hear that it did indeed start as a scam. The creator, thankful_for_today, was likely in league with a cryptocurrency group that made the CryptoNote protocol, but had devious intentions to scam people out of their money using it.</p>\n\n<p>Their initial coin efforts failed, so they created Monero as a way to try again. This again failed as the community quickly realized something was amiss and took hold of the coin. Even so, the devious creators had one last trick up their sleeve. They released to the public deliberately deoptimized mining software, keeping the optimized version for themselves so as to outmine others and make lots of money off of the block rewards.</p>\n\n<p>This succeeded for a time, but was also quickly caught by the Monero community, fixed, and the optimized miner was released to all. The community, realizing what happened, chose not to relaunch the coin, as it was difficult to gauge both how much the scammers had made off with, and how much time and effort it would take to rebuild from scratch. Despite the difficulty in ascertaining how many coins the scammers received, it is also known that in this period many good-faith miners had independently re-optimized the code themselves, and sold off their profits, ensuring a more fair distribution, and that the scammers were not the only ones to get a large number of coins in this time. <a class=\"next-link\" href=\"https://da-data.blogspot.com/2014/08/minting-money-with-monero-and-cpu.html\" target=\"_blank\">One such account can be read here</a>.\n\n<p>With the benefit of hindsight, some might criticize the decision to not relaunch the coin, and if these scammy origins are enough to push one away from the good work Monero has done, then there is no argument to sway them. Regardless of the initial frustrations the scammer creators caused, Monero has thrived and used its combined community intellect and passion to make a powerful technology. Our current core team, as well as the past members, were not enriched by the cripple mine, and to our knowledge, nobody involved in the initial scam lasted in the Monero community longer than the first few weeks of the coin’s existence.</p>'**
  String get knowledge250Sbmyths250Sb13250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb13250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Didn’t Monero have a crippled miner in the early days that was used to enrich the founders?'**
  String get knowledge250Sbmyths250Sb13250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb14250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This is a difficult question to answer. One answer commonly given is that we can add up the coinbase transactions (when new Monero is rewarded to a miner for solving a block). These transactions are transparent, and if we add them up we should get the total number of Monero in circulation.</p>\n\n<p>It’s important to note however, that if shenanigans were to happen that increase the amount of Monero beyond what we expect to see from the coinbase transactions, they would not happen on the coinbase transactions themselves, but in a regular transaction between wallets. This would only happen in one of three ways.</p>\n\n<p>One, if the cryptography that proves no Monero was created or destroyed in a transactions is fundamentally flawed. Two, if the implementation (code) of the solid cryptography is flawed. Three, if neither is flawed, but computers become powerful enough to punch through our current cryptographic schemes, and create false proofs.</p>'**
  String get knowledge250Sbmyths250Sb14250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb14250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'If Monero is so private, how can we audit the supply to ensure nobody is printing free Monero under our noses?'**
  String get knowledge250Sbmyths250Sb14250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb15250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This one is the most difficult to answer because of the constant fluctuation of mining in general. In fact, it may be that after this article is published this may not be the case anymore, and the next day it may become the case again. Technology in general is hard to write about definitively due to the fast moving nature of the industry, and this is especially true with mining and hashrate.</p>\n\n<p>We’re not avoiding the concern, don’t worry. Let’s address it by looking at the difference between hardware centralization and pool centralization.</p>\n\n<p>The fact that mining on Bitcoin can only be done on very specific hardware that is not easily accessible means that the best hardware is centralized around the manufactures. Since setting up a mining pool is trivial, we expect to see these manufacturers deploy their own mining pools, on which their ASICs mine, and indeed, we see this to be the case with the major ASIC manufacturing companies today.<p>\n\n<p>This is not a solvable problem. The centralized mining pools own the hardware, the pool, and the hashes, and there is nothing that anyone can do about it.</p>\n\n<p>Pool centralization, while the end result is similar, has very different, and much more changeable underpinnings. Because Monero has egalitarian mining, every miner can choose where to point their hashes. People often choose to point at a bigger pool, simply because this means they will see blocks found more often than a smaller pool. </p>\n\n<p>Although, it should be noted that their individual cut of the block reward will be smaller since they are sharing it with many more people. Smaller pools find blocks less often, but each miner gets a larger portion of the block reward, and the end result is a miner actually makes an equivalent amount of money whether they are on a smaller pool or larger one, so we encourage miners to point their hash to smaller pools to further decentralize the mining.</p>\n\n<p>But we digress.</p>\n\n<p>You’ll notice in our encouragement for decentralization above, the fact that the miner has the power to switch pools. At any point, whether from better education, a rallying call for decentralization, or increased competition amongst pools, the hash distribution can change based off of individual miners changing where they point their hashes. The same can’t be said for mining that is centralized on the hardware level, as the ASIC manufacturers have no incentive to point to any pool other than their own, and they will not do so.</p>\n\n<p>So that fact that the bulk of Monero’s hashrate is concentrated into a couple of pools is not something we are stuck with, and indeed, may be due to lack of education about mining in general. It’s something that can be fixed because the problem does not lie at the root level, unlike with Bitcoin’s hardware centralization.</p>'**
  String get knowledge250Sbmyths250Sb15250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb15250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Most of Monero’s current hashrate comes from just two pools.'**
  String get knowledge250Sbmyths250Sb15250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero does indeed have fewer wallet options than many existing coins. This is because Monero was developed from the ground up. It’s on a completely different codebase than Bitcoin. This means Monero can’t just fork the Bitcoin core wallet, or any other wallets that exist for Bitcoin like most coins do, and take advantage of existing infrastructure. As well, it means that Monero is not as easily added to third party wallets, such as Exodus.</p>\n\n<p>And yet, slowly but surely, wallets of all kinds are beginning to appear for Monero. It was a meme for many years that Monero did not have a GUI, and no mobile wallet support, but now, nothing could be further from the truth. There are wallets that cater to Monero specifically, such as Monerujo for Android, and Cake Wallet for both iOS and Android, as well as new ones such as Wookey, Exa Wallet, and more. Furthermore, third party wallets are beginning to add Monero, albeit at a slower rate, including Exodus and Guarda, and we expect this trend to only continue as time goes on and Monero’s codebase matures.</p>'**
  String get knowledge250Sbmyths250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero has fewer wallet options.'**
  String get knowledge250Sbmyths250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This criticism is also a bit of a tricky one. Admittedly, in some areas, Monero is indeed more difficult to use than Bitcoin. Examples of this are in the longer address, and syncing taking a long time, even on a light wallet, because a wallet cannot simply check the blockchain without scanning each output to see if it belongs to the account in question. </p>\n\n<p>That said, in many ways, Monero builds on, if not outright improves, the user experience of cryptocurrency, particularly when it comes to privacy.</p>\n\n<p>We invite the reader to read articles on the steps Bitcoiners recommend for maintaining privacy. The list is long, confusing, and difficult to get perfectly, with often the consequences for a mistake being compromised privacy. One example of this is the suggestion to tumble or mix your Bitcoin, but after the mixing process, if the resulting outputs are merged or otherwise move into the same wallet, the mixing could have been for naught, as tracing the outputs provide high linkability. Another example is the fact that many recommend mining your own Bitcoin if you want it to remain completely ambiguous as to how the Bitcoin outputs were obtained, a notion which is laughable in the current mining ecosystem.</p>\n\n<p>With Monero, this laundry list of details are all but completely done away with. Every Monero transaction retains a high level of privacy every time, without the user needing to do anything or use external software. While Bitcoin makes it difficult to get privacy right for all except the most experienced user, Monero makes it difficult to get it wrong, for everyone, all the time. As far as trade-offs go, we think the longer addresses and sync time are more than worth it.</p>\n\n<p>And even after discussing everything above, the fact remains that user experience often gets better over time, and Monero is no exception. The UX of a coin may be dramatically improved after a few years, but the foundations of it are much harder to change.</p>'**
  String get knowledge250Sbmyths250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero has a poor user experience.'**
  String get knowledge250Sbmyths250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This criticism is most commonly given with Bitcoin in mind. What if Bitcoin adopts privacy technologies that allow adequate privacy. What would be the use for Monero?</p>\n\n<p>The reality is, we don’t see Bitcoin ever putting privacy on the first layer. At best, it would be on second layers, or through certain wallets, such as Samourai and Wasabi. This means the privacy is opt-in, which research shows is always inferior to privacy that is on by default. Even if this technology was adopted by a decent percentage of Bitcoin users (which is itself a stretch of the imagination), the privacy would be inferior.</p>\n\n<p>While the reasons for opt-in privacy inferiority would be big enough to make it’s own article, we want to elaborate with a crude example here. Privacy, from a technological standpoint, is about hiding in a crowd. The bigger and more homogeneous the crowd, the better the privacy of the individual. Conversely if either the crowd is small, or large, but everyone wears different, unique clothing, it would be easier to identify an individual.</p>\n\n<p>This means that since Bitcoin is forcing people to take extra steps to be a part of this crowd, many will not do it, and those that do, may do it poorly. The end result ends up being a small crowd, and identifying individual outputs is much easier. But it gets worse. In addition to the crowd being small, every individual is more or less unique from each other, depending on the privacy protocol they chose to use. Some might choose Samourai, which has one way of mixing, while others may choose Wasabi which has another, and the list goes on. This ultimately leads to unique characteristics about each transaction. Coupled with the small crowd, the privacy is quite weak.</p>\n\n<p>We compare the above to Monero, which enforces privacy at a protocol level. This means that everyone is a part of the crowd by default, and everyone utilizes the same privacy (the one dictated by the protocol). The crowd is both large, and homogeneous, resulting in much stronger privacy.</p>\n\n<p>But let’s take a step back and follow a hypothetical, where, somehow, Bitcoin does indeed put privacy on the base layer. It’s robust, on-by default, and mandatory. What would be the need for Monero?</p>\n\n<p>Well, for some, there wouldn’t be one, and it may be surprising to hear, but many of us Monero folks wouldn’t care. All we want is for there to be a privacy preserving, fungible way for individuals to transact with each other across the globe, and if Bitcoin miraculously does it in a way that actually protects privacy through mandatory, base-layer technology, then many of us would happily switch over. Good luck getting this to happen though.</p>\n\n<p>That said, Monero does offer many features beyond privacy that Bitcoin does not. The dynamic blocksize enabled by a tail emission, a different code base, a policy of low fees, a different elliptic curve, and more. In particular the dynamic blocksize should be highlighted here, as it enables a theoretically limitless transaction throughput with only storage and bandwidth being the choke points. In short, a theoretical Bitcoin with privacy just doesn\'t offer everything Monero does.</p>\n\n<p>Switching gears one last time for this question, less often this argument applies to technology like an ethereum smart contract using zk-SNARKS, which, once again, does not have mandatory privacy on the base layer of the main chain, so the anonymity sets will be quite small and of dubious ability to adequately protect privacy. For other comparisons, please see our <a target=\"_blank\" href=\"/knowledge/why-monero-is-better\" class=\"next-link\">article comparing Monero to the other major privacy coins</a>.</p>'**
  String get knowledge250Sbmyths250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero will become obsolete if a more popular blockchain adopts strong privacy technology.'**
  String get knowledge250Sbmyths250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Not anymore! Thanks to the wondrous technology of bulletproofs, added in October 2018, transaction sizes are drastically reduced (by over 80%), leading to a similar drop in transaction fees. In fact, as of time of writing, Monero is cheaper per byte than Bitcoin, and further optimizations of the technology are bringing these even lower.</p>\n\n<p>These optimizations are varied and frequent. One example is clever optimizations in the bulletproofs themselves, shrinking the math required for both computation and verification, sometimes by up to 25%.</p>\n\n<p>In addition, there are new, exciting ring signature schemes in the works, such as CLSAG, which will replace the current MLSAG scheme, and further shrink the size of the entire transaction by 25-35%. Beyond this, are even newer, more bleeding edge technologies with completely different proving systems that have the potential to keep current transaction sizes, but have ring sizes of over one hundred, such as Triptych, Arcturus, and Lelantus, all of which are smaller and more efficient than current schemes.</p>'**
  String get knowledge250Sbmyths250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Doesn’t Monero have very high transaction fees?'**
  String get knowledge250Sbmyths250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb6250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Again. Bulletproofs brought this down drastically. Monero transactions are still bigger than Bitcoin transactions, but now only by around eight times, rather than the roughly fifty times that it was before. But there\'s another way to look at this as well. Bitcoin has some means of achieving privacy, usually through mixers and specialized wallets such as Wasabi, Samourai, and other CoinJoin related schemes. When you compare the costs of mixing with other Bitcoin outputs, address hopping, and maintaining proper output distribution, the total cost, in both size and fees is larger than if a user was to just use Monero. So yes, naked Bitcoin transactions are smaller, but to achieve any form of privacy (which is much weaker than Monero\'s regardless) would take more space on Bitcoin than on Monero.'**
  String get knowledge250Sbmyths250Sb6250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb6250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'A Monero transaction is many times bigger than a Bitcoin transaction.'**
  String get knowledge250Sbmyths250Sb6250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb7250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>In the 2017-2018 era, the Monero community made a commitment to keep ASICs off of the network. This was done by continuously hard forking every six months to a new proof-of-work algorithm, which would stop ASICs from taking over the network. The printer analogy in our <a class=\"next-link\" href=\"/knowledge/monero-mining-randomx\" target=\"_blank\">article on mining in Monero</a> explains how this works.</p>\n\n<p>What most people don\'t know is that Monero\'s hard forks did not begin for the reasons of changing its proof-of-work. Monero had been hard forking every six months prior to this as well, going back as far as 2015. Why do these hard forks in the first place? Ask any person that works on privacy and they will tell you that privacy is an arms race. One side makes good privacy, the other develops tools that can break said privacy, causing the first side to develop stronger technology, and the cycle goes on and on.</p>\n\n<p>A major example of pre-PoW change hard forks is the inclusion of RingCT in 2017, arguably the biggest changes to Monero ever that increased Monero\'s privacy by many orders of magnitude. We simply think it’s too soon to ossify the protocol, especially with exciting new privacy technologies in the works, such as Triptych and Lelantus. That said, we work hard to ensure our development, research, and more are as decentralized as possible. We have <a class=\"next-link\" href=\"/knowledge/why-monero-is-open-source-and-decentralized\" target=\"_blank\">an article that covers that topic</a> as well, so be sure to check it out.</p>\n\n<p>All this to say, the decentralized development team is finding it too difficult and exhausting to keep up this schedule and is looking to transition to a hard fork every nine months or even every year. This is because the community feels, with advancements like Triptych and Arcturus, we\'re getting close to what we are hoping will be a truly robust privacy with few weak points, leading to the lack of necessity for sustained, protocol-changing development. And on the proof-of-work front several community members created RandomX as a last gambit to keep ASICs off of the network. At time of writing, we’re still in the middle of this experiment, and have yet to see if it will be successful in the long term, but one of the desired results has come to pass, another reason for rapid forking removed, enabling a slower forking schedule.</p>'**
  String get knowledge250Sbmyths250Sb7250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb7250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero has hard forks quite often. Doesn’t this mean it’s centralized?'**
  String get knowledge250Sbmyths250Sb7250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb8250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This is not, and never was, the coin of Riccardo ‘fluffypony’ Spagni. He didn’t even make it. It was started by a pseudonymous individual known as thankful_for_today, and there’s a very interesting story about that for another time. Fluffypony gained notoriety as both a core team member/lead maintainer, as he gave much time and resources to help the coin grow, as well as through his traveling and speaking at conferences. With these two things combined, he became a sort of unofficial face for Monero, and was usually the gateway through which people found us. Due to the awful CEO culture that was pervasive in the cryptocurrency scene, they assumed that he was the founder and leader of Monero, both of which are not true.</p>\n\n<p>In present day, fluffypony is still a part of the core team, but is no longer the lead maintainer of the codebase, and has stepped back to work on his own personal projects. Monero continues along just fine.</p>'**
  String get knowledge250Sbmyths250Sb8250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb8250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'This is fluffypony’s personal coin!'**
  String get knowledge250Sbmyths250Sb8250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sb9250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This is an indisputable fact, and is not something to be argued. moneromooo is a well known member of the Monero community. So much so that the community raised funds via our crowdfunding platform, the Community Crowdfunding System (CCS) for them to work full time on Monero. New work proposals are submitted every quarter, so if the community is ever unsatisfied with work done, they simply need not crowdfund his next proposal. </p>\n\n<p>As one can imagine, working on Monero full time rather than on a volunteer basis will result in large amounts of accumulated work. Since Monero did not have a premine, ICO, and takes no founder’s reward, we otherwise do not have full time engineers working on the project, and people contribute what they can, when they can, and it’s simply not feasible to expect these contributions to outweigh a full time worker.</p>\n\n<p>That said, there is still great effort to have checks and balances. A member of the core team still merges the code after review, so it’s not a case where an individual both makes and integrates the code, thereby bypassing any oversight needed to catch an egregious error or malicious intent.</p>'**
  String get knowledge250Sbmyths250Sb9250Sbtext;

  /// No description provided for @knowledge250Sbmyths250Sb9250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The majority of commits since 2017 have come from an individual known as moneromooo-monero'**
  String get knowledge250Sbmyths250Sb9250Sbtitle;

  /// No description provided for @knowledge250Sbmyths250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'A lot of common criticisms levied toward Monero that are either outdated, or incorrect, while others are presenting a very narrow view of the problem in question. In this article we hope to set the record straight on these criticisms.'**
  String get knowledge250Sbmyths250Sbdescription;

  /// No description provided for @knowledge250Sbmyths250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Top 15 Monero Myths and Concerns Debunked'**
  String get knowledge250Sbmyths250Sbtitle;

  /// No description provided for @knowledge250SbnetworkEffect250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Blockchain is a myriad of disciplines all squeezed together into one. It brings elements of technology, economics, and game theory into its security models. This means that it is one of the most involved and intricate pieces of technology to date, but also means that a deep and thorough understanding is impossible without learning the fundamentals of each puzzle piece that shapes it.</p>\n\n<p>One part of blockchain that is not often discussed is competition. Each cryptocurrency is often evaluated on its own merits, and even against the cryptocurrencies most like it, but few are evaluated based on what they offer the market as a whole, and how many people are using it. Taken further, a cryptocurrency must analyze how many use it, know about it, or otherwise interface with it in any way. This concept is known as a network effect.</p>\n\n<p>A non-blockchain example of a network effect is social media. If all of your friends are on Facebook, then when you are choosing which social media you want to be heavily involved in, your friends\' choices factor into this decision also. The fact that most of them are on Facebook may influence you to join it as well. And when you are deciding whether or not you want to leave the platform, the fact that you might lose contact with some of these friends will also influence this decision. This is the network effect in action. After adoption reaches a critical mass, further adoption becomes easier and is often fueled by the network\'s current participants.</p>\n\n<p>When we look at this in the context of blockchain, and indeed commerce in general, the power of network effects quickly becomes evident. If Bitcoin is the crypto that most people know about, and is the one that most people buy, then more merchants will accept it. If more merchants accept it then there is more places to use it, so more people will buy it, and more people will know about it. It becomes a big positive feedback loop that snowballs. At this point, a merchant might be approached about using another cryptocurrency but will question why it\'s needed since they already accept Bitcoin and it’s what everyone uses and accepts. </p>\n\n<p>While it is undisputed that Bitcoin is far and away the largest cryptocurrency, there are others that are considered top in their niche. Monero is one such coin, being considered by many to be the premiere privacy coin, though different people have varying opinions about whether or not Monero is even competing in the same space as Bitcoin. This is because Bitcoin has placed all its cards on its transparency for the sake of verifying the total amount (though this is also possible in Monero, albeit in a much more roundabout way).</p>\n\n<p>So where does Monero currently stand in this game of network effects? Where did we start? What does the future hold? Well, let’s start at the beginning.</p>\n\n<p>It\'s interesting to note that in <a target=\"_blank\" href=\"/knowledge/monero-history\" class=\"next-link\">Monero\'s early days</a>, it was one of three ways to do privacy. Coinjoin, CryptoNote, and Dash\'s masternode/coinjoin hybrid. The options were limited, and definitely not peer-reviewed, but that didn’t stop people from choosing a side. In this older era, it was anybody’s game, and some decided to sit back and let the cream rise to the top. Time eventually proved to be on <a target=\"_blank\" href=\"/knowledge/why-monero-is-better\" class=\"next-link\">Monero’s side</a>, as other privacy cryptocurrencies came and went.</p>\n\n<p>This established Monero’s network effect as the coin paving the way for others in privacy. Even as newer technology came along, such as Zcash’s zk-SNARKs, and MimbleWimble, the masses looked to Monero for leadership and sane discussion on these new protocols.</p>\n\n<p>At present time, Monero is one of the few universally respected projects in the space. From crypto noobies to Bitcoin maximalists, all of them view Monero with at least a begrudging respect, though more often it’s with higher acknowledgments. When veterans of the space talk about the coins that have the highest chance of making a difference in the world, and will last through trial and tribulation, Monero never fails to be present.</p>\n\n<p>These last few paragraphs are not just self-congratulatory, but an honest look at what the crypto landscape is like at time of writing. The network effects of Monero are becoming more and more apparent every day, and show up in unexpected places.</p>\n\n<p>People are quite divided when it comes to Monero’s future, but all opinions point to Monero doing its job well. The biggest example of this is regulatory concerns. Some are afraid that Monero is too private, which will cause an inevitable clash with the governments of the world, while others are excited for how this privacy brings freedom back to the common person. At the root of both of these views is the idea that Monero fully delivers on its promise of privacy and fungibility, and it is often the only coin in such conversations as most other ‘privacy coins’ do not.</p>\n\n<p>As Monero’s community tries very hard to be <a target=\"_blank\" href=\"/knowledge/critical-thinking\" class=\"next-link\">rational and skeptical</a>, it is not afraid of new technology. Other coins, who care more about the competitive side speak constantly of ‘dethroning’ Monero, and how Monero should be scared of their new tech that will take over the privacy world. In other words, they think their new tech will overcome Monero\'s established network effects in the privacy circles.</p>\n\n<p>Unlike Bitcoin, which primarily relies on its network effects to stay relevant without much underlying innovation, Monero has decided to embrace both. New, vetted technology is added to make Monero more private and secure, ensuring that Monero’s network effects are never the sole purpose for its status, but rather a result of innovation and hard work.</p>\n\n<p>In this sense, one has to wonder how long a technology like Bitcoin can rely solely on its existing network effects to stay relevant. The case is presently strong, with no coin coming even close to matching Bitcoin’s brand recognition and collective brain space, but we must remember that many other juggernauts in other industries thought themselves untouchable, only to face their own downfall due to lack of innovation.</p>'**
  String get knowledge250SbnetworkEffect250Sb0250Sbtext;

  /// No description provided for @knowledge250SbnetworkEffect250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'While it is undisputed that Bitcoin is by far the largest crypto, we ask if it can rely solely on its existing network effects to stay relevant.'**
  String get knowledge250SbnetworkEffect250Sbdescription;

  /// No description provided for @knowledge250SbnetworkEffect250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Monero Can Overcome Bitcoin\'s Network Effects'**
  String get knowledge250SbnetworkEffect250Sbtitle;

  /// No description provided for @knowledge250Sbnetworking250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>It shouldn\'t come as a surprise to anyone that Monero, and indeed all cryptocurrency, runs on the internet. And yet, even though this statement seems basic and obvious, many do not consider the implications of what this means in regards to their privacy. In other words, there are some things Monero can and can\'t protect against, just by nature of running on the internet. Some of these considerations are mere inconveniences, while others are much more serious in a scenario where absolute privacy is required. Let\'s take the time to get familiar with how Monero users interact with each other on the network, and what this means for their privacy.</p>\n\n<p>Starting on the trivial side of things, if a user does not have access to the internet, they cannot download new blocks, propagate transactions on behalf of others, or send transactions of their own. An interesting thing to note is, a user with a full node, without internet access can construct a transaction offline that can be sent later. This is because a ring signature only needs outputs from the blockchain to hide with. A brief reminder on <a target=\"_blank\" href=\"/knowledge/ring-signatures\" class=\"next-link\">how ring signatures work</a>, it hides the real output that a user is sending among a collection of unaffiliated outputs chosen from the past. If the user has access to these outputs in the form of a fully downloaded blockchain (full node) then they can create the ring signature from the past outputs, and once internet connectivity resumes, propagate the transaction to the network.</p>\n\n<p>A user that is using a remote node cannot do this, as when they construct their ring signature, they contact the remote full node for outputs to include in the ring signature. No internet means they can\'t reach this node, so they do not have offline transaction construction capabilities.</p>\n\n<p>Before we continue into some of the privacy considerations, let\'s have a brief primer on how the internet works as a whole. The entire internet is nothing more than computers connecting to other computers. That\'s it. The blog you like to read? Just some files hosted on someone else\'s computer. This website you\'re reading this article on (LocalMonero)? Files and code hosted on a computer somewhere. Even big crazy sites work this way. Take YouTube for example. Just video files hosted on Google\'s gigantic computer systems, and you connect to them to download the video to your own computer so you can watch it.</p>\n\n<p>These computers can tell each other apart because each and every computer connected to the internet is given a unique identification number called an IP address. These typically are four sets of numbers separated by periods, for example: 172.66.35.7. It\'s important to keep this in mind when we consider how Monero information is moved around the internet. Monero is a peer-to-peer network (P2P), meaning computers connect directly to each other rather than using an intermediary. So when a user\'s full node is downloading a newly discovered block, they aren\'t downloading it from a central server, but from their peers. The downside to this is, since users are connecting to each other directly, they know each other’s IP addresses.</p>\n\n<p>Well? What\'s the big deal? It\'s just a number, right? Not exactly. IP addresses themselves contain information about the user, such as the originating country, and network provider, but, even worse, internet service providers (ISPs) know the IP address of each person using their services. This means these ISPs and those that they work with can watch a user\'s internet traffic and, using some clever tactics, discover that they are using Monero. Now before you get scared, note the wording there. All these snoopers can do is see that a person is connecting to other nodes on the Monero network. Because of Monero\'s privacy technology, nothing else is leaked about the individual. Not whether or not they are running a node, or if/when they send transactions, and if a transaction is sent, none of its information is known. All these ISPs can see is that one of their users is connecting to the Monero network.</p>\n\n<p>Now, for some people, in some locations, this information alone may be enough to cause damage to reputation or freedom. Or perhaps the idea of anyone invading your privacy and what you do on the internet, for any reason, is not acceptable to you. These individuals are encouraged to only connect to the Monero network using VPNs, Tor, or I2P, all of which are services that hide a user\'s IP address from others as well as hide what a user is doing from their ISP. The differences between these services is beyond the scope of this article, but there are plenty of high quality articles written on the topic, so concerned users are encouraged to study up!</p>\n\n<p>For the rest of us, we may think that having others know we are connected to the Monero network isn’t that big of a deal. After all, the actual contents of our transactions, or if we’re sending any at all, are hidden to the public, so what\'s the harm? While this may be true, users are encouraged to consider the fact that the main draw of cryptocurrencies is being their own bank. When you hold your private key, and if something happens to it, nobody can help you recover your lost funds.</p>\n\n<p>Being your own bank means considering, not just your digital security, but your physical security as well. It could very well be that the knowledge of an individual connecting to the Monero network may bring unwanted attention, not necessarily from large scale actors like nation states, but smaller ones with selfish interest, like hackers looking to make an easy buck. There are indeed countless stories all over the crypto space of such scenarios actually taking place.</p>\n\n<p>This article is not intended to fearmonger or frighten, but rather encourage users to do some research on what methods of web surfing protection are right for them. The good news is, that these skills will transfer to general internet usage as well, not just Monero usage, and as such, in our increasingly internet connected world, a savvy user can’t go wrong accumulating the proper knowledge and skills to stay safe and truly be their own bank.</p>'**
  String get knowledge250Sbnetworking250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbnetworking250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Let\'s take the time to get familiar with how Monero users interact with each other on the network, and what this means for their privacy.'**
  String get knowledge250Sbnetworking250Sbdescription;

  /// No description provided for @knowledge250Sbnetworking250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What Every Monero User Needs to Know When It Comes to Networking'**
  String get knowledge250Sbnetworking250Sbtitle;

  /// No description provided for @knowledge250Sbnodes250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One of the biggest advantages Monero has over other cryptocurrencies is it’s on-chain privacy, but have you ever wondered how Monero’s privacy holds up when you use a remote node? How about if you use a “light wallet” server like MyMonero?</p>\n<p>In this post we’ll dive into some of the details behind how Monero provides exceptional on-chain privacy even when using a remote node, as well as what to watch out for when using remote nodes.</p>'**
  String get knowledge250Sbnodes250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbnodes250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>For those less familiar with how Monero works, the nodes (or servers) in the Monero network can be run by anyone and allow the owner of the node – or others they choose to share it with! – to synchronize a copy of the blockchain and provide that copy to others on the network. These nodes also verify all the transactions happening on the network, as well as all blocks that are published and ensure that they all follow the rules as set by consensus.</p>\n<p>The other function that nodes serve in Monero is as a way to provide all of the data your favorite Monero wallet needs to properly check for transactions that belong to you and make new transactions. This data is provided by nodes in two ways:</p>\n<ul>\n<li>The data from each block on the blockchain is requested by the wallet, scanned for transactions belonging to you, and then discarded once checked by the wallet.\n<ul>\n<li>This step will soon be drastically improved, thanks to <a class=\"next-link\" target=\"_blank\" href=\"/knowledge/view-tags-reduce-monero-sync-time\">view tags</a>.</li>\n</ul></li>\n<li>When sending transactions, the node you use provides a list of possible decoys (or fake inputs) to use when building the transaction, ensuring that you have a good crowd to hide in each time you spend Monero.\n<ul>\n<li>These decoys are a part of <a class=\"next-link\" target=\"_blank\" href=\"/knowledge/ring-signatures\">ring signatures</a>, an important piece of Monero’s approach to privacy on-chain.</li>\n</ul></li>\n</ul>'**
  String get knowledge250Sbnodes250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbnodes250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What function do nodes serve in Monero?'**
  String get knowledge250Sbnodes250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbnodes250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The best thing to do, even with the strong on-chain privacy provided by Monero when using remote nodes, is to run your own Monero node to ensure that you have a pristine copy of the Monero blockchain handy and that your IP address is well protected. The other benefit when running your own node is that you can contribute back to the network, letting other nodes synchronize from your node or even letting other users connect to your node with their wallets.</p>\n<p>That being said, Monero does still provide excellent privacy when using a remote node. If you’re interested in running your own Monero node, here is an easy to follow guide to doing so:</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://sethforprivacy.com/guides/run-a-monero-node/\">Run a Monero Node</a></li>\n</ul>'**
  String get knowledge250Sbnodes250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbnodes250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What is the most private and secure way to use Monero?'**
  String get knowledge250Sbnodes250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbnodes250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>When using a remote node, there are a few key pieces of information that get exposed to a remote node and a couple of key ways that node can attack you, prevent you from transacting, and more.</p>\n<p>The first thing a remote node can learn about you is your public IP address. While this will hopefully be concealed via a VPN or Tor, the remote node could associate your public IP address with the transaction, helping them to narrow down where you are transacting from. The remote node can also learn the last block your wallet synced and use this to try and make educated guesses about you, such as when you normally use Monero and when you last spent Monero. This is especially true if you are always coming from the same IP address (such as your home). The last key thing that a remote node can learn about you is basic information about the transactions you send through it. While this may be the most obvious data that the remote node operator gets about you, it’s important to understand that this could be used to help track down the sender of the transaction when combining that information with other off-chain data. This can be especially dangerous if the remote node is run by a malicious entity, a blockchain analytics company, or an oppressive nation-state.</p>\n<p>A remote node can also attempt to cause you trouble by hiding blocks from you, making your wallet think it was synced when it wasn’t. This can make you think funds are lost or prevent you from spending funds until you connect to another node. The last key thing a remote node could do is feed your wallet a manipulated list of decoys. This could cause your wallet to either fail completely to build transactions (making you unable to spend funds), or could allow the remote node to try and provide decoys it knows are spent to reduce the anonymity you receive in each transaction.</p>'**
  String get knowledge250Sbnodes250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbnodes250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What can a remote node learn about me?'**
  String get knowledge250Sbnodes250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbnodes250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>While this article may have scared you a bit, it’s important to realize that the privacy provided by Monero is excellent even when using a remote node, and far surpasses any other cryptocurrency when used this way. You still gain the strong on-chain privacy provided by Monero, as the remote node never knows the true input (what coins you’re spending), the amount of Monero spent in the transaction, or the address of the recipient of the transaction. Outside observers also cannot see the true input, amount, or addresses involved (no matter what type of node you choose to use!), ensuring that outside of the remote node even your IP address, wallet sync information, and transactions have strong privacy guarantees.</p>\n<p>The remote node also never has access to the previous transactions you’ve sent or received or the amount of Monero currently in your wallet, and loses all visibility into your transactions the moment you start to use another node. No private keys (either spend or view keys) are ever provided to the remote node, and so your wallet remains private, secure, and usable. No matter the remote node, you also are never at risk of losing Monero or having it stolen, as the node cannot edit the recipient address, never has access to your wallets private keys, and cannot confiscate your Monero in any way.</p>'**
  String get knowledge250Sbnodes250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbnodes250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What privacy guarantees still exist when using a remote node?'**
  String get knowledge250Sbnodes250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbnodes250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>While the topic is a bit outside the scope of this article, I did want to address a unique type of wallet in Monero – light wallets. The name light wallet comes from the fact that your wallet (on your phone or computer) does not have to perform any of the blockchain synchronization, making the experience faster and more fluid.</p>\n<p>However, wallets like this come with a severe privacy trade-off for now – your wallet sends the private view key to the remote server you use (like the default in MyMonero), giving the remote server full visibility into any received funds since the creation of your wallet (and until you stop using that wallet or seed). This does reduce the privacy you receive from the node operator drastically, and should be approached with caution.</p>\n<p>Thankfully, the Monero community is working on improving the software you can use to host your own light wallet server (LWS), which will allow you to have fast synchronization without trusting a 3rd-party with your private view keys – as you will run the software where your wallet sends the private view keys!</p>\n<p>For more on the custom light wallet server, see the below Github repository:</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/vtnerd/monero-lws\">monero-lws</a></li>\n</ul>'**
  String get knowledge250Sbnodes250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbnodes250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How about “light wallets” like MyMonero?'**
  String get knowledge250Sbnodes250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbnodes250Sb6250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>If you’re curious and would love to better understand nodes in Monero and look into using a remote node or running your own, see the links below for great places to get started:</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://moneroworld.com/#nodes\">Monero World, a list of community-run remote nodes that can be used</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://sethforprivacy.com/about/#high-performance-monero-nodes\">Monero nodes run by Seth For Privacy, the author of this article</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://monero.fail/\">monero.fail, a list of remote nodes with frequently checked status</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.getmonero.org/resources/user-guides/remote_node_gui.html\">How to connect to a remote node within GUI wallet</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.getmonero.org/resources/moneropedia/remote-node.html\">Moneropedia - Remote Node</a></li>'**
  String get knowledge250Sbnodes250Sb6250Sbtext;

  /// No description provided for @knowledge250Sbnodes250Sb6250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I learn more?'**
  String get knowledge250Sbnodes250Sb6250Sbtitle;

  /// No description provided for @knowledge250Sbnodes250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Today, we take a look at how Monero provides on-chain privacy even when using a remote node, as well as the caveats.'**
  String get knowledge250Sbnodes250Sbdescription;

  /// No description provided for @knowledge250Sbnodes250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How remote nodes impact Monero’s privacy'**
  String get knowledge250Sbnodes250Sbtitle;

  /// No description provided for @knowledge250Sboutputs250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero, like other cryptocurrencies, uses outputs as a means of accounting for funds. Many crypto savvy users have probably heard this term before, but not everyone understands what they mean and how they work. As explored in our <a target=\"_blank\" href=\"/knowledge/ring-signatures\" class=\"next-link\">ring signatures article</a>, outputs are the actual unit exchanged on the blockchain between transacting parties. Similar to a dollar bill, but the amount is not in a fixed denomination.</p>\n\n<p>If you get paid \$16 for a job, you might receive a one dollar bill, a five dollar bill, and a ten dollar bill. You have \$16, but you also have three different bills in your wallet. If you wanted to pay someone 6 dollars, you could use the 5 and the 1 bill, but if you wanted to pay someone \$8 you could only use the \$10 and receive \$2 back in change. Lastly, if you wanted to pay someone \$14 you would have to use all three bills, and would receive \$2 back in change, but for a moment, when you hand over all three bills, you have no money in your wallet until you get the change back.</p>\n\n<p>Monero works similarly. Suppose you run a store and make three sales on three different items. You might receive 1.5 XMR, 2.25 XMR, and 5.25 XMR for a total of 9 XMR, but you also have three different outputs in your wallet of the denominations stated previously. Just like with the dollars, you might want to pay someone 3 XMR. You could use just the 5.25 XMR output, and receive 2.25 XMR back in change, or you could combine the 1.5 and 2.25 XMR outputs and get 0.75 XMR back in change.</p>\n\n<p>But, as soon as you send the transaction, the outputs that you do use are put in a \"locked\" state, meaning they are inaccessible until you receive back the change. The protocol unlocks the funds (i.e. gives you back the change) after 10 confirmations, or around 20 minutes. Just like once you hand over the dollar bills out of your wallet, you cannot use the money again until you receive the change back from the cashier, your Monero is inaccessible until you receive back the change.</p>\n\n<p>Let\'s go back to the example of sending 3 XMR to someone, and you use the 5.25 XMR output. Now, while you wait for you 1.75 XMR back in change, you cannot use it. This 1.75 XMR is inaccessible to you. But you can still use the 1.5 XMR and 2.25 XMR outputs, as these were not spent. Going back to the dollar example, if you paid someone \$8, as in the example before, you would not be able to use the \$2 that you expect back in change until it is given to you, but in this example, you still have a \$10 bill that is unused in your wallet. This can still be used to purchase whatever you want while you wait for the change. The same with Monero.</p>\n\n<p>This is often a point of confusion for new Monero users. Often, a user may just have one output in their wallet, received from an exchange or a friend. Let\'s say this output is 20 XMR. They have no other outputs in their wallet. They now want to make a donation to two of their favorite charities. They send 5 XMR to the first charity and then are confused because, even though they should have 15 XMR left, they cannot immediately send the next donation to the second charity. As you might have guessed, this is because the 15 XMR is locked. It cannot be spent until it is returned as change (10 confirmations or around 20 minutes). After their funds are unlocked, they would be able to send their second donation.</p>\n\n<p>Just to reiterate the point, they would not have had this problem if they had had multiple outputs instead, such as two 10 XMR outputs or similar. They would be able to send both donations one right after the other, because the first donation would use one of the 10 XMR outputs (and wait 10 confirmations to receive 5 XMR back in change), and the second donation would use the other 10 XMR output.</p>\n\n<p>Some cryptocurrency wallets have a feature called ‘output management’, which simply shows a user which outputs they currently have (in addition to their total sum), as well as allows them to choose which ones they want to use when they spend their cryptocurrency.</p>\n\n<p>As of now, the Monero GUI does output selection for users automatically, as users selecting their own outputs often leads to confusion or, in some cases, harmed privacy. There are wallets under construction however, such as the new Feather wallet project, that will contain these output management features.</p>\n\n<p>We’ve been talking a lot about the sending portion, but something fascinating happens on the receiving end. Going back to our example of sending 3 XMR to someone, and using your 1.5 XMR and 2.25 XMR outputs in the transaction (while expecting 0.75 XMR in change), the receiver does NOT receive two outputs of 1.5 XMR and 2.25 XMR. They instead receive ONE 3 XMR output.</p>\n\n<p>In the background, the protocol combines all outputs used for spending, and gives the receiver one output of the paid amount, and sends one change output back to the sender. So the sender will also receive one output back as change, regardless of whether they used two, three, or ten outputs to send the transaction.</p>\n\n<p>We hope this has cleared up some confusion about outputs and how the internal accounting of the protocol works, as well as the common user facing problem of confusion when encountering locked funds. In another article, we will explore managing your outputs so as to minimize the chance of having to wait for unlocked funds before sending future transactions.</p>'**
  String get knowledge250Sboutputs250Sb0250Sbtext;

  /// No description provided for @knowledge250Sboutputs250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Many crypto savvy users have probably heard the term \"outputs\" before, but not everyone understands what they mean and how they work.'**
  String get knowledge250Sboutputs250Sbdescription;

  /// No description provided for @knowledge250Sboutputs250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero Outputs Explained'**
  String get knowledge250Sboutputs250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One of the core aims in the Monero project is to enable a fair, decentralized, and secure network through new and innovative approaches to proof-of-work (PoW) mining, the main way that cryptocurrency networks are secured today.</p>\n\n<p>While a unique mining algorithm <a class=\"next-link\" target=\"_blank\" href=\"/knowledge/monero-mining-randomx\">like RandomX</a> is extremely important to this aim as it helps to ensure that anyone with a computer can contribute a fair amount to the security of the network, RandomX does not solve the issues that can occur due to pool mining. Pool mining is by far the most common way to mine cryptocurrencies today, including Monero, but thankfully the emergence of p2pool mining is rapidly changing that.</p>'**
  String get knowledge250Sbp2pool250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Pool mining is a way for miners to share the task of attempting to solve a block on the network and then share the rewards evenly for all blocks that the pool finds. While this helps immensely to even out the frequency with which miners are paid versus mining Monero alone, it\'s not without serious centralization issues.</p>\n\n<p>As each miner contributes work to the pool, they give up control of any work they do and blocks that they find to the pool itself, trusting that the pool will honestly and fairly share the rewards among all miners based on the amount of work each has done. If all goes well, the pool operator collects the work from all miners, submits it to the network, and shares the rewards equally.</p>'**
  String get knowledge250Sbp2pool250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What is pool mining?'**
  String get knowledge250Sbp2pool250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Unfortunately, this relies entirely on trust and allows the pool operator to do nefarious things with the work being done by miners. The pool operator could use the work being done to attack the network, attempt to double-spend funds (if the pool is large enough), or simply use the work being done by the miners to pay themselves and never reward miners properly for their work.</p>\n\n<p>The biggest risk to the network is that of a pool (or multiple pools working together) having greater than 51% of the networks hashrate under their control, as they could use this to cheat and spend funds twice (a double-spend attack) or attempt to change the rules of the network.</p>'**
  String get knowledge250Sbp2pool250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What is the problem with pool mining?'**
  String get knowledge250Sbp2pool250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>p2pool is a concept that was originally created for mining Bitcoin back in 2011, but never saw broad adoption and remains practically unused on Bitcoin. Thankfully, one of the key developers behind RandomX, SChernykh, spent his vacation coming up with solutions to some of the issues with the Bitcoin implementation of p2pool and re-writing all of the software from scratch.</p>\n\n<p>p2pool in Monero allows for a completely trust-less way for miners to work together to solve blocks and secure the Monero network by using special node software for p2pool in order to share the work.</p>\n\n<p>This is done using a new blockchain (a \"side-chain\") that keeps a record of the work each miner performs, their wallet address, and how much Monero they have earned, and then pays the reward out in a trust-less and decentralized way. As this side-chain has far fewer miners, it\'s much easier to find and submit blocks on it than on the main Monero network, making it easier for miners to get consistent pay outs versus mining Monero alone.</p>'**
  String get knowledge250Sbp2pool250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What is p2pool?'**
  String get knowledge250Sbp2pool250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>In p2pool, there is no centralized pool, centralized pool operator, or single person holding onto funds and distributing payouts. All of the work being collectively done by those mining via p2pool is checked by the p2pool blockchain and other node operators to ensure that it is legitimate, and all miners are paid out according to the work they have done immediately when a block is found directly from the rewards in that found block.</p>\n\n<p>When miners choose to use p2pool instead of a centralized pool, they remove all power and trust from pool operators and ensure that their work contributes to the good of the network and to their own rewards, reduce the risk of network attacks, misuse of their work, or theft of rewards that they are owed.</p>\n\n<p>Not only does this help them protect their own interests, it reduces the risk that centralized pools can pose to the Monero network as a whole. p2pool usage also helps immensely to reduce the risk that nation-states or regulators could pose to the health of the network, as there are no centralized pool operators to pressure, no geographical concentration of pools to lean on, or any other easy point of pressure for them to use against Monero.</p>'**
  String get knowledge250Sbp2pool250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How does p2pool solve the problems of pool mining?'**
  String get knowledge250Sbp2pool250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Thankfully p2pool in Monero has been well-designed and well-built, and functions extremely well! However, the main drawback of p2pool mining is that each miner who wants to use p2pool has to run their own Monero node, causing the process of getting started to be a bit more involved. However, this node is then used to calculate all of the information necessary for building and checking blocks, and ensures that the miner is in complete control of their work being done. The node can also function as a remote node for the miners own wallet, contributes to the network, and much more.</p>\n\n<p>The other key difference from centralized mining is that small miners using p2pool will have a bit more &quot;variance&quot;, or time between payouts, than a large centralized pool -- but it&#39;s <em>extremely</em> important to note that this will not lead to earning less Monero over time! p2pool will be just as profitable for even small miners over time as centralized pools. Some of this variance is also offset by p2pool natively having 0% fees, as there is no centralized pool operator to pay for their services!</p>'**
  String get knowledge250Sbp2pool250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What are the drawbacks?'**
  String get knowledge250Sbp2pool250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sb6250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Thankfully, due to the excellent design of Monero&#39;s p2pool implementation and the many people in the community who have put in time to help simplify the process of mining via p2pool, getting started is getting simpler over time. There are several ways to get started mining with p2pool, but as the technical details are beyond the scope of this article, feel free to jump into a link below depending on your operating system:</p>\n<ul>\n<li><a rel=\"noopener nofollow\" class=\"next-link\" target=\"_blank\" href=\"https://www.youtube.com/watch?v=yfbvTksF9ic\">Windows</a></li>\n<li><a rel=\"noopener nofollow\" class=\"next-link\" target=\"_blank\" href=\"https://sethforprivacy.com/guides/run-a-p2pool-node/\">Linux</a></li>\n</ul>'**
  String get knowledge250Sbp2pool250Sb6250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb6250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I get started?'**
  String get knowledge250Sbp2pool250Sb6250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sb7250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>If this has piqued your curiosity around p2pool mining, take a look below for some additional links and explainers on p2pool, how it works, and what it means for Monero:</p>\n<ul>\n<li><a class=\"next-link\" rel=\"noopener nofollow\" target=\"_blank\" href=\"https://github.com/SChernykh/p2pool\">The official Github for p2pool</a></li>\n<li><a class=\"next-link\" rel=\"noopener nofollow\" target=\"_blank\" href=\"https://github.com/SChernykh/p2pool#how-to-mine-on-p2pool\">The official docs on using p2pool</a></li>\n<li><a class=\"next-link\" rel=\"noopener nofollow\" target=\"_blank\" href=\"https://www.getmonero.org/2021/10/05/p2pool-released.html\">Monero P2Pool is now live</a></li>\n<li><a class=\"next-link\" rel=\"noopener nofollow\" target=\"_blank\" href=\"https://p2pool.observer/\">p2pool.observer, a &quot;block explorer&quot; of sorts for p2pool</a></li>\n<li><a class=\"next-link\" rel=\"noopener nofollow\" target=\"_blank\" href=\"https://github.com/WeebDataHoarder/p2pool-compose\">Monero p2pool docker-compose</a></li>\n<li><a class=\"next-link\" rel=\"noopener nofollow\" target=\"_blank\" href=\"https://www.monerotalk.live/sergei-chernykh-on-his-development-of-p2pool-a-decentralized-xmr-mining-pool\">Sergei Chernykh: On his development of P2Pool a Decentralized XMR Mining Pool</a></li>\n</ul>'**
  String get knowledge250Sbp2pool250Sb7250Sbtext;

  /// No description provided for @knowledge250Sbp2pool250Sb7250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I learn more?'**
  String get knowledge250Sbp2pool250Sb7250Sbtitle;

  /// No description provided for @knowledge250Sbp2pool250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Pool mining is the most common way to mine Monero today, but thankfully the emergence of p2pool mining is rapidly changing that.'**
  String get knowledge250Sbp2pool250Sbdescription;

  /// No description provided for @knowledge250Sbp2pool250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'P2Pool and Its Role in Decentralizing Monero Mining'**
  String get knowledge250Sbp2pool250Sbtitle;

  /// No description provided for @knowledge250Sbpractices250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Many users might be shocked to learn that experts think that it\'s possible to use a cryptocurrency incorrectly. Depending on what a user is defending against, there are certain steps and precautions that must be taken to preserve privacy, evade scams, and ensure the proper and timely delivery of transactions. Fortunately, the Monero developers have done everything they can to set sane defaults in these areas, so users who use the wallet software as-is will be safe the majority of the time. That said, we\'d like to take some time to look at a few cases where it might be helpful to be a little more thoughtful in your spending.</p>'**
  String get knowledge250Sbpractices250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbpractices250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The first, and biggest way to keep your cryptocurrency safe and secure is to write down your Monero mnemonic seed, which is a short word list shown when you first create your wallet. If you have this seed, but your computer/phone dies, then you can recover your Monero. If you do not have this seed, and you lose your wallet, then your Monero is lost and nobody can help you recover it. In the same way, do not share this seed with anyone. If they have this word list, they have full access and spending rights to your Monero. Many have been careless with securing their seed, and come to the terrifying reality of lost funds because someone has taken them. We recommend writing it down. Physically. Not storing it digitally, and ensuring that you have several copies in various places. This is the number one thing you can do to secure your Monero. WRITE DOWN YOUR SEED!</p>'**
  String get knowledge250Sbpractices250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbpractices250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'WRITE DOWN YOUR SEED!'**
  String get knowledge250Sbpractices250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbpractices250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Some scams utilize malware on your computer that changes the copy/paste functionality to put the address of the malware creator instead of the intended recipient. Since Monero addresses are long and unwieldy, it can be tempting to just verify the first few numbers and letters and call it good, or maybe not double check the address at all. While it\'s probably not necessary to verify the entire address, checking the first dozen and last dozen characters of an address will be more than enough for most cases. For addresses that you send to frequently, many wallets have an address book feature, which will put in the chosen saved address automatically. Still best to do a quick check though.</p>'**
  String get knowledge250Sbpractices250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbpractices250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Double check your addresses'**
  String get knowledge250Sbpractices250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbpractices250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Hot and cold wallets are common terminology in the cryptocurrency space, and the concept is really quite simple. A hot wallet is one that you take out and use often. It\'s \'hot\' from being in your back pocket. Cold wallets are ones that are not touched very often, similar to money in a bank. Just as it\'s not advisable to carry hundreds of dollars in your physical wallet, but it\'s generally acceptable to do so in a bank account, users should consider how much Monero is prudent to carry in their hot, mobile wallets, and how much is best left at home in a second, cold one. This way, losing a phone, theft, or other mishaps won\'t cause total loss of funds.</p>'**
  String get knowledge250Sbpractices250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbpractices250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Learn the difference between hot and cold wallets'**
  String get knowledge250Sbpractices250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbpractices250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>If the idea of keeping your digital environment completely free from viruses and malware to protect your Monero is scary to you, then you might consider a hardware wallet. Basically the hardware wallet keeps your private keys on the device, away from your computer. So even if your computer does get compromised, the hackers will not have access to your seed. You will only be able to spend the funds if the hardware wallet is connected to the computer and signs the transaction. This moves the security of the keys from your computer, which is used for many things, and has a large attack surface, to the hardware wallet, which is only used for one thing, and has a much smaller attack surface. For the common person that doesn\'t know the ins and outs of computer security, it\'s a viable option to keep your funds secure.</p>'**
  String get knowledge250Sbpractices250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbpractices250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Are hardware wallets right for you?'**
  String get knowledge250Sbpractices250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbpractices250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>In the realm of privacy, it\'s often far too easy to accidentally leak or reveal data about yourself that can be used to identify you. An old example that no longer applies to Monero is custom ringsizes. If the default is 11, and everyone uses 11, but you consistently use 54, yes the number is higher so your anonymity set is higher, but now you stand apart from the crowd and your transactions are easier to identify. Monero has since made an update to fix the ringsize at 11, so now everyone looks the same.</p>\n\n<p>There are several things one can do to accidentally harm their privacy in other cryptocurrencies like Bitcoin. Choosing a reputable mixer, getting non-KYC/AML\'d coins, not reusing addresses, and proper coin output management are all things an individual needs to consider when trying to minimize leakage of metadata. Monero sidesteps many of these problems by making the privacy features mandatory, and setting good defaults for the average user. The example above of using a fixed ringsize means that end users don\'t have to puzzle over how to achieve the best possible privacy in this regard. The wallet does it for them automatically.</p>\n\n<p>This may seem like an odd thing to talk about. Most users could be forgiven for thinking that all software automatically works for them, and not against them. Sadly, nothing could be further from the truth, and when it comes to privacy almost all cryptocurrencies are severely lacking. The amount of effort one has to go through to achieve any level of privacy is usually too much and too difficult for an average user. This is often the case even with other cryptocurrencies that focus on privacy! Monero makes sure to make it so privacy happens automatically, with no thought from users, at the protocol level when possible, and with sane default settings for the wallets when it\'s not. When in doubt, just use the defaults of the wallet, and don\'t be afraid to ask questions.</p>'**
  String get knowledge250Sbpractices250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbpractices250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'When in doubt, use the defaults (with Monero)'**
  String get knowledge250Sbpractices250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbpractices250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Let\'s have a look at steps and precautions that must be taken to preserve privacy, evade scams, and ensure the proper delivery of transactions while using Monero.'**
  String get knowledge250Sbpractices250Sbdescription;

  /// No description provided for @knowledge250Sbpractices250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero Best Practices for Beginners'**
  String get knowledge250Sbpractices250Sbtitle;

  /// No description provided for @knowledge250Sbringct250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero’s privacy does not depend on one singular mechanism that, if broken, would reveal the entirety of transactions, but rather three different technologies that work in tandem to provide holistic privacy while compensating for the weaknesses of the other parts. This three-prong approach consists of <a target=\"_blank\" href=\"/knowledge/ring-signatures\" class=\"next-link\">ring signatures</a>, RingCT, and <a target=\"_blank\" href=\"/knowledge/monero-stealth-addresses\" class=\"next-link\">stealth addresses</a>. These three technologies hide the real output (sender), amount, and receiver respectively. Today we’ll be talking about RingCT.</p>\n\n<p>RingCT is arguably the most technical of the three, and can be difficult to understand, so we won’t be covering how it works exactly, but rather showing how it is possible to not know an amount and still confirm things about it. And don’t worry, we’ll use plenty of examples as always.</p>\n\n<p>First, let’s explore why it’s important to verify anything about the amounts. Why can’t we just keep them completely secret? The answer is, there are clever ways that people can create money from thin air if given the opportunity. How might something like this work? Let’s look at an example.</p>\n\n<p>If you want to purchase an item from your friend, and he wants ten dollars for it, then you start with ten dollars and he starts with zero. After you give him the ten dollars, he has ten dollars and you have zero. You started with ten, and now he has ten. No money was created or destroyed in this transaction.</p>\n\n<p>With cryptocurrencies, a clever individual can give ten dollars for the item and instead of receiving zero dollars in change, they can receive two dollars back. Instead of 0 and 10 leading to 10 and 0 (or 10=10), it’s now 0 and 10 leads to 10 and 2 (or 10=12). Two Monero was just created out of thin air. You can imagine that if the individual was to do this to themselves several times, they would be able to amass a gigantic fortune in short order.</p>\n\n<p>With Bitcoin and others, this would be easy to see. You look at the inputs going into a transactions and the outputs coming out and make sure that what is sent equals what is received. If these amounts were encrypted and not visible then a user has no way of verifying that what is sent and what is received is the same.</p>\n\n<p>In an attempt to increase Bitcoin privacy, Gregory Maxwell created Confidential Transactions (CT), a new technology that would allow for encrypted amounts, while proving that nothing was created or destroyed in the process. As with most privacy technology, it did not make it into Bitcoin, but Monero was keen on adopting it. There was just one problem. The already implemented technology of ring signatures was incompatible with the proposed idea. So, one of the MRL researchers at the time, Shen Noether, modified CT into RingCT, a version of CT that was compatible with ring signatures.</p>\n\n<p>Once again, the way this works is quite technical, and would be difficult to explain in an introductory article. For the cryptography enthusiast who simply must know, there are plenty of in-depth articles written on the internet about the inner workings of CT. For the rest of us, this article will show how it might be possible to hide the amounts, but still prove that nothing was created or destroyed.</p>\n\n<p>Let’s say Alice wanted to send Bob money. Alice will send 10 XMR to Bob, who will receive 10 XMR. 10=10 so nothing is wrong here. But Alice doesn’t want anyone to know how much she is sending. So she and Bob create a shared secret. Basically a number that only the two of them know. Let’s say that number is 22. Now, Alice multiplies 10 (what she is really sending) by 22 to get 220. This is the number she shares with the network.</p>\n\n<p>The miners themselves don\'t know the secret number. If they did, they could divide the number they are shown by the secret number and get the real amount sent. But since they don’t, they can’t. They do see that Bob will receive 220 though. 220 sent. 220 received. 220 = 220. In this way, the network can verify that no Monero was created or destroyed, all without knowing the real amount that Alice sent Bob.</p>\n\n<p>Since Bob knows the shared secret number, when he receives the money, he just divides by 22 to get the real amount that Alice sent, 10. Alice and Bob both know how much was sent and how much was received, all while everyone else is given a false number.</p>\n\n<p>Once again, this is not the actual way in which CT works, but it gives an idea of how something like this might be possible. The real way involves things like Pedersen commitments, two sent amounts (one encrypted amount to the receiver and one commitment amount to the network), and…yeah, it’s already easy to see how one could get lost in all that.</p>\n\n<p>One thing to note however, is that while RingCT does hide the amount transacted between two parties in a transaction, it does not hide two other sets of numbers.</p>\n\n<p>The first is the coinbase transactions. If this term is unfamiliar to you, it basically means the reward that miners get for finding the next block. This number is not hidden. Anyone can see how much the protocol has awarded a miner for their service. In this way, the current amount of Monero in existence can be known by adding up all of the coinbase transactions. Their sum will equal the current Monero in circulation.</p>\n\n<p>The second number not hidden is the fee paid to the miners when a user sends a transaction. The fees have to be in the clear so miners can know who to prioritize. This is a way that users can hurt their privacy however, as if someone uses a unique miner fee each time they send a transaction (like 0.12345), then their transactions can be linked.</p>\n\n<p>Other than these cases, RingCT has been hiding Monero amounts since 2017, and our collective privacy is all the stronger for it.</p>'**
  String get knowledge250Sbringct250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbringct250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'RingCT has been hiding Monero amounts since 2017, and our collective privacy is all the stronger for it. But how is that achieved?'**
  String get knowledge250Sbringct250Sbdescription;

  /// No description provided for @knowledge250Sbringct250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How RingCT Hides Monero Transaction Amounts'**
  String get knowledge250Sbringct250Sbtitle;

  /// No description provided for @knowledge250Sbrings250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero is known far and wide across the crypto space as being the king of privacy coins. While everyone knows Monero offers good privacy, not as many understand just how the privacy operates.</p>\n\n<p>Many other privacy coins publish comparison chart infographics, which list off the names of each coin’s privacy technology, and in most they label Monero’s tech as RingCT, but this is only partially true. Monero actually has a three-prong approach to privacy. One technology to hide the receiver of a transaction, one to hide the amount sent, and one to hide the output used, these are stealth addresses, RingCT, and ring signatures respectively.</p>\n\n<p>This three-pronged approach means that if one of the technologies is broken, the others do not necessarily share the same fate. Ring signatures are the weakest link in the privacy scheme; the word weak here meaning the most susceptible to heuristic attacks. Let’s take some time to explore them, shall we?</p>\n\n<p>As mentioned above, the goal of ring signatures is to obscure an output used in a transaction. If the \'input/output\' terminology of cryptocurrency is confusing to you, don’t worry. It’s actually not that complicated. When you hear \'output\' just think a check. One of those things, not quite so common anymore, that people use to pay with. Like a check, it can be denoted in any amount - \$10, \$32.50, etc - and is exchanged between transacting parties. For cryptocurrencies, outputs serve these functions.</p>\n\n<p>When someone pays you 10 Monero, you receive a 10 XMR output. This output has a value (10), and is what is taken from the sender’s wallet, in the same way when you pay for a service, a bill leaves your physical wallet and is given to the person you are purchasing from.</p>\n\n<p>The way the output is hidden is by constructing a ring (hence the name) of decoy outputs. But these decoys are not \'fake\' outputs’. They are real past outputs from the blockchain that have nothing to do with the present transaction, but to an outside observer, each of these outputs might look equally probable as the real one. The size of the set of decoy outputs, plus the real one is called the ringsize, and currently Monero’s is eleven. So there are ten decoy outputs and one real one.</p>\n\n<p>Why don’t we just increase this number to 100 or even 1000? The more the better, right? Well, from a privacy perspective, yes, but there are other things to consider. Let’s go back to a physical example to see what I mean. If you wanted to hide one of your dollar bills among ten decoys, you would need to carry around eleven dollars in your wallet for each dollar you wanted to spend. One real dollar, and ten fake ones. This already gets pretty cumbersome if you want to spend even a few dollars. Now imagine we increased the decoy amount to 1000. For every one dollar you wanted to spend, you would need to carry around 1001 dollars. You’d need to carry around a briefcase just to buy one candy bar! It\'s important to note that ring signatures don\'t work quite this way, for example, the decoys themselves are not a part of the signature, only references to them, but we hope this analogy can be somewhat helpful in picturing the basic concepts.</p>\n\n<p>The decoys on the blockchain work similarly. Each added decoy increases the time and verification cost of the transaction. Every node has to download the entire ring signature for each transaction, and each ring signature contains the real output, as well as the decoys. Not only that, but it has to verify the math that at least one of these outputs is real, and the math verification time also increases with each decoy. This means we have to find a happy middle ground, where the ringsize is large enough to adequately obscure the real output, even against many heuristic attacks, but small enough so as not to cause the blockchain to increase at a massive rate. It’s not enough to pick an arbitrary number, or to just increase the ringsize when we make the signature smaller (such as with CLSAG). The Monero community wants concrete, mathematical evidence on which ringsize offer the best trade offs. A number too small, and the privacy will not be strong enough against heuristic attacks. Too large, and we may be getting only marginal benefit on the privacy side, and needlessly suffering in regards to scaling.</p>\n\n<p>One last thing to mention. Some Monero literature simplifies and says that ring signatures hide the sender, but this is not entirely true, and the difference is not just pedantic. The difference between the sender (a human) and an output (a bill) is a big one when it comes to preserving privacy. While an output may have ties to a sender, an output itself does not equal a sender. So even if a ring signature was to be broken, it does not necessarily link to a person’s identity, and both the amount and the receiver are still hidden, minimizing the damage done to the privacy of all parties.</p>\n\n<p>That’s not to say that a broken ring signature is insignificant. Any leaked metadata is bad, and does have the potential to reveal more information than we think, especially when used in conjunction with other metadata. So we do our best to ensure that the ringsize chosen has academic rigor behind the decision, other metadata leakage is minimized, and the user experiences defaults to the best possible actions.</p>\n\n<p>But if the probability of a broken signature is still worrying to you, well, there is some incredible news on the horizon. The next generation of privacy protocols that are being worked on, such as Triptych, Arcturus, and Lelantus, have really neat capabilities. In these protocols, the size scales logarithmically, not linearly, as ringsize increases. This means that we can fit 100 decoys, but the space used is closer to ringsize 10 in the old tech. That’s quite the difference, and will significantly improve privacy all around.</p>\n\n<p>In the cat and mouse game that is privacy, Monero continuously innovates to stay ahead of the curve and ensure the best practical privacy for all.<p>'**
  String get knowledge250Sbrings250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbrings250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Ring signatures are the weakest link in the privacy scheme; the word weak here meaning the most susceptible to heuristic attacks. Let’s explore them, shall we?'**
  String get knowledge250Sbrings250Sbdescription;

  /// No description provided for @knowledge250Sbrings250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Ring Signatures Obscure Monero\'s Outputs'**
  String get knowledge250Sbrings250Sbtitle;

  /// No description provided for @knowledge250Sbscams250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>For as long as there has been money, there have been scams to get people to part with it, and the cryptocurrency space is no different. In fact, the finality of transactions in cryptocurrency, coupled with the fact that there is no central organization to help recover them, has led to new and innovative ways by which scammers can steal from unsuspecting users and disappear into the digital void with their funds. In this article we\'ll take the time to inform new users on some of the most pervasive scams in the space, but this list is by no means comprehensive, and users are encouraged to both stay informed of recent scam trends, and be on constantly aware and skeptical of their digital surroundings.</p>'**
  String get knowledge250Sbscams250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbscams250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One of the oldest scams in the book, and one that can take place on any and every discussion platform in existence. In this scam, the scammer will pretend to be a trusted individual of the community or a high ranking official of a related business. Once the victim\'s trust is earned through this established reputation, the scammer might send a user to a malicious site, have them download a program designed to steal their funds, or even just get the user to send them funds directly. Always triple check that the person you\'re talking to is indeed the correct person. Businesses will have emails to contact to verify identities (i.e. \"Did the CEO of your company just contact me on Telegram?\") and other community leaders will usually be able to be contacted through other means. Verify before taking any action. ESPECIALLY if they initiated the conversation with you rather than you with them.</p>'**
  String get knowledge250Sbscams250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbscams250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The Impostor Scam'**
  String get knowledge250Sbscams250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbscams250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Similar to the impostor scam, here the scammers will attempt to have a website or app that is identical in appearance to existing and trusted businesses, but with code and infrastructure that is designed to steal your Monero. Oftentimes a malicious website will have an almost identical domain name as the original, and have even been known to take the top results of internet searches for the site by purchasing advertising space. If an example trusted website is themonerowallet.com, a scammer site might be the-monero-wallet.com or, even more sinister, themonerȯwallet.com. Did you catch the issue with the last one? The o has a dot above it. Take a look: ȯ. But on first glance it may not be visible, and if the domain name looks correct, and the website appears identical to what one might expect it to be, it\'s all too easy to fall for the trap and give away your Monero seed, only to find your Monero missing before you know what hits you.</p>\n\n<p>But as said in the beginning of this section, this is not just true of websites. There have been instances where scammers can sneak a malicious app that looks identical to existing wallets through the Google Play Store or App Store, where it goes undetected until it is reported (which may take quite some time). In this time, users think they are downloading the correct app, but are really losing their funds to scammers.</p>\n\n<p>The solution to these kinds of scams is vigilance. Always double check before utilizing the services of any website or app. When at all possible, type the name of a known website into the url bar directly rather than using search engines, and be extra thorough when something will be downloaded or your seed will be utilized in any way.</p>'**
  String get knowledge250Sbscams250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbscams250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The Business Look Alike Scam'**
  String get knowledge250Sbscams250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbscams250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Sometimes scammers don\'t even try to be subtle. They make huge, grandiose claims and know there will always be fools that will believe them out of desperation, greed, or ignorance. These scams take many forms, from coin projects that promise ludicrous returns on investments where you first give them money (like Bitconnect), to special, secret groups that promise to tell you all of the market movements in advance so you can make money...for a fee. Remember. If something sounds too good to be true, it probably is. This advice is especially true in the cryptocurrency space, as deploying a coin or smart contract is trivial these days, and posting your shady claims online is free. Remember, if somebody really did find a way to time the market or discover a way to make tons of infinite money, then why would they tell you? They would just use it themselves to get rich. Why would they share it? Be smart. Use your brain. Trust no one.</p>'**
  String get knowledge250Sbscams250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbscams250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The Outright Scam'**
  String get knowledge250Sbscams250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbscams250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Your Monero seed IS your Monero. You must write it down when you first make a wallet, because if you lose your seed, you\'ve lost your Monero and nobody can help you. BUT ALSO you must keep this seed safe from others. If someone steals your seed, they can send the Monero out of the wallet as if they were you, and, again, nobody can recover this money for you. It\'s gone.</p>\n\n<p>Far too often has an individual kept a cold wallet of Monero, been curious about their funds, and wanted to check on it. But rather than going through the hassle or reinstalling the entire wallet application, they just decide to use a web wallet to quickly restore their seed and look at their money. If they fall victim to the Business Look Alike scam, then the very act of inputting their seed gives it to the scammers, who can then move the money to a different wallet that they control at their convenience.</p>\n\n<p>ANYTIME a site, application, or wallet has a \'restore with seed\' option, be very careful that the application you are using is a legitimate one. Check the hashes of the program (the Monero website has instructions on how to do this) to ensure the program has not been tampered with by outside forces, and be constantly aware of where and how you expose your seed. The double check may be annoying, but the loss of funds from carelessness would be even worse.</p>'**
  String get knowledge250Sbscams250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbscams250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The Role of Your Monero Seed in Scams'**
  String get knowledge250Sbscams250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbscams250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'For as long as there has been money, there have been scams to get people to part with it - let\'s take the time to look at some of the most pervasive scams in the space.'**
  String get knowledge250Sbscams250Sbdescription;

  /// No description provided for @knowledge250Sbscams250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Scams to Look Out for When Using Monero'**
  String get knowledge250Sbscams250Sbtitle;

  /// No description provided for @knowledge250Sbseraphis250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>This post describes <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/UkoeHB/Seraphis\">Seraphis</a>, a set of transaction protocol structures and abstractions developed by pseudonymous research contributor <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/UkoeHB\"><code>koe</code></a> for the Monero ecosystem, and with ongoing security analysis by pseudonymous contributor <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/coinstudent2048\"><code>coinstudent2048</code></a>.<br/>\nWe make some simplifications and omit certain technical details for the sake of clarity; for this reason, and because the design of Seraphis is still in progress, interested readers should refer to Seraphis documentation for the most up-to-date information.</p>'**
  String get knowledge250Sbseraphis250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbseraphis250Sb0250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Seraphis: a modular design upgrade for Monero transactions'**
  String get knowledge250Sbseraphis250Sb0250Sbtitle;

  /// No description provided for @knowledge250Sbseraphis250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Protocols like Bitcoin and Monero and others rely on a so-called \"output model\" of operation, where an <em>output</em> is a representation of value that can be transferred.<br/>\nTransactions consume one or more outputs controlled by a sender, and generate new outputs directed toward recipients (or back to the sender as change); the transaction must balance in that consumed outputs must contain a total value exactly equal to the value in new outputs (plus a network-imposed fee).<br/>\nIn many protocols like Bitcoin, the value contained in an output is written in the clear, as is the recipient.<br/>\nFurthermore, by looking at the blockchain, it is trivial to see if and when an output has been spent (that is, if it has been consumed in a later transaction, and which transaction spent it).</p>\n<p>By contrast, protocols like Monero introduce a different design:</p>\n\n<ul>\n<li>Output values are hidden and not visible on the blockchain</li>\n<li>Recipient addresses are hidden by the use of a one-time addressing protocol</li>\n<li>Whether or not an output has been spent is obscured by the use of ambiguous signatures</li>\n</ul>\n\n<p>The result is that, absent external information, it is difficult to determine whether a given output has been spent, what its value is, and who its recipient is.</p>\n\n<p>The current Monero transaction protocol is called <em>RingCT</em>, and uses several cryptographic building blocks to achieve these design goals.</p>\n\n<ul>\n<li><em>Commitments</em> hide amounts in a mathematically-useful way</li>\n<li><em>Range proofs</em> prevent overflow that could inflate supply</li>\n<li><em>Linkable ring signatures</em> provide signer ambiguity and prevent double-spend attempts</li>\n<li><em>Commitment offsets</em> assert that transactions balance</li>\n</ul>\n\n<p>These building blocks are carefully intertwined to build the RingCT protocol.</p>\n\n<p>A useful property of the RingCT protocol is that some building blocks can be changed or upgraded in a way that keeps the overall design and properties intact, but that can provide efficiency or security improvements.\nIn fact, these kinds of upgrades have occurred (or are planned to occur) several times in Monero\'s history.\nRange proofs in the original RingCT protocol were bulky and slow; they were later updated to a construction called <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://eprint.iacr.org/2017/1066\">Bulletproofs</a> that made transactions smaller and faster with better security analysis, and are planned to be updated to a newer construction called <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://eprint.iacr.org/2020/735\">Bulletproofs+</a> for even greater efficiency benefits.</p>\n\n<p>A similar process was undergone with the linkable ring signature building block.\nIn the original protocol, a construction called <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://ledger.pitt.edu/ojs/ledger/article/view/34\">MLSAG</a> was used.\nThis was later updated to a newer construction called <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://eprint.iacr.org/2019/654\">CLSAG</a> that is faster, results in smaller transactions, and has better security analysis.\nAn even newer linkable ring signature construction based on <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://eprint.iacr.org/2020/018\">Triptych</a> was proposed, but this was not selected for deployment because of its impacts on multisignature operations.</p>'**
  String get knowledge250Sbseraphis250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbseraphis250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Transactions in Monero'**
  String get knowledge250Sbseraphis250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbseraphis250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Seraphis takes this idea a step further.<br/>\nRather than update individual building blocks of the existing RingCT transaction protocol, it introduces a different protocol that can take advantage of different building blocks and offer improved functionality.</p>'**
  String get knowledge250Sbseraphis250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbseraphis250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Seraphis'**
  String get knowledge250Sbseraphis250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbseraphis250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Seraphis uses a different set of cryptographic building blocks to achieve its design goals.</p>\n\n<ul>\n<li><em>Commitments</em> still hide amounts</li>\n<li><em>Range proofs</em> still prevent overflow and supply inflation</li>\n<li><em>Membership proofs</em> provide signer ambiguity</li>\n<li><em>Commitment offsets</em> still assert balance</li>\n<li><em>Authorizing proofs</em> prevent double-spend attempts</li>\n</ul>\n\n<p>Notice the change here: linkable ring signatures are replaced with a combination of membership proofs and authorizing proofs.\nRoughly speaking, membership proofs show that a consumed output is part of a larger set, similar to what happens in RingCT.\nBut unlike RingCT, membership proofs don\'t involve the linking tag at all!\nAuthorizing proofs show that the linking tag is valid and are used to sign the final transaction.</p>\n\n<p>Because RingCT bakes the linking tag into the ambiguous signature, signing (and multisignature) operations are more computationally intensive, and it becomes more challenging to build other tag-related functionality.\nBut in Seraphis, constructing membership proofs can be safely delegated from highly trusted devices (which may have limited computing power, like a hardware wallet) to a less trusted device, and signing (and multisignature) operations are far easier using the much simpler authorizing proof.</p>\n\n<p>Fortunately, some of the building blocks required by Seraphis already exist elsewhere, and don\'t need to be designed from scratch.\nBoth the Bulletproofs and Bulletproofs+ constructions can be used as range proofs.\nModifications to Schnorr-type proving systems can be used for authorizing proofs.\nAnd an efficient <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://eprint.iacr.org/2015/643\">proving system</a> used already as the basis for Triptych, <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://eprint.iacr.org/2019/373\">Lelantus</a>, and <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://eprint.iacr.org/2021/1173\">Spark</a><sup>*</sup> can be modified for membership proofs.</p>\n\n<p><sup>*</sup> Cypher Stack receives funding for Spark development.</p>'**
  String get knowledge250Sbseraphis250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbseraphis250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Building blocks'**
  String get knowledge250Sbseraphis250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbseraphis250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Unfortunately, Monero addresses currently in use are not compatible with Seraphis.\nUsers would need to generate new addresses from their wallet keys in order to receive Monero if Seraphis were implemented.\nHowever, this ecosystem cost comes with a host of benefits.</p>\n\n<p>Aside from the structural benefits discussed above, the Seraphis design is amenable to many different address construction possibilities, each of which comes with tradeoffs.\nWhile the final address construction to be used in Seraphis is <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/research-lab/issues/92\">still being decided</a> (one scheme receiving a lot of attention is called <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://gist.github.com/tevador/50160d160d24cfc6c52ae02eb3d17024\">JAMTIS</a>), we can describe some common and useful features.</p>\n\n<p>You might know that Monero addresses offer <em>view key</em> functionality, where you can provide a view key to a device or third party and allow it to watch for incoming outputs on your behalf, but without giving up spend authority.\nThis is useful for wallets, which can stay updated while keeping your spend key safely locked away.\nIt\'s also useful for cases where you want external view access, like a public charity offering transparency or a company with an accounting department.</p>\n\n<p>The downside to Monero view keys is that they don\'t provide complete or fine-grained view access.\nIt\'s not possible to reliably detect when a wallet spends funds, which makes it difficult to compute wallet balances properly when the spend key isn\'t available.\nIt\'s also not currently possible to detect incoming outputs without also learning the value contained in those outputs (which means any third-parties responsible for finding incoming outputs will learn exactly how much Monero you are acquiring).</p>\n\n<p>Seraphis addressing constructions can solve this.\nWith Seraphis, your address comes equipped with different keys that can do different things:</p>\n\n<ul>\n<li>Watch for incoming outputs, but hide their value</li>\n<li>Watch for incoming outputs, but show their value</li>\n<li>Watch for outgoing outputs</li>\n<li>Help you to generate transactions, but not sign them</li>\n<li>Generate new addresses (useful for retailers or exchanges with many customers)</li>\n</ul>\n\n<p>As the address holder, you get to decide how much authority you delegate to other devices or third parties.</p>'**
  String get knowledge250Sbseraphis250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbseraphis250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Addressing'**
  String get knowledge250Sbseraphis250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbseraphis250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Seraphis is a major change to the Monero ecosystem.\nWhile it involves modifications to addresses and transaction building blocks, its design offers flexibility and useful functionality that aren\'t possible with today\'s RingCT protocol.\nWhile much of the design is finalized and being developed into <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/UkoeHB/monero/tree/seraphis_lib\">an implementation</a>, address design and security analysis are ongoing.\nSeraphis offers an excellent opportunity to push the Monero ecosystem forward!</p>'**
  String get knowledge250Sbseraphis250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbseraphis250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'The big picture'**
  String get knowledge250Sbseraphis250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbseraphis250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Today we talk about Seraphis, an upcoming set of transaction protocol structures and abstractions for the Monero ecosystem.'**
  String get knowledge250Sbseraphis250Sbdescription;

  /// No description provided for @knowledge250Sbseraphis250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Seraphis: What It Will Do for Monero'**
  String get knowledge250Sbseraphis250Sbtitle;

  /// No description provided for @knowledge250Sbsov250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>It’s a common talking point (and one we fully believe) that Monero makes a better medium of exchange than transparency coins, including Bitcoin. This is because Monero\'s inherent privacy makes it impossible to track, sidestepping many dangers that arise from having your money flow available to all interested parties. As well, the privacy unlocks fungibility, so users can feel confident that every Monero exchanged for a good or service is equivalent to any other since there is no associated past.</p>\n\n<p>As common as this talking point is however, there is another that usually pops up alongside it; that while Monero may be the better medium of exchange, Bitcoin is the better store of value. It’s not uncommon to hear this, even within the Monero community. Use Monero like a spending account, and use Bitcoin like a savings account. When pressed for reasoning, these users don’t even think it’s necessarily because Bitcoin’s price rises at a higher rate than Monero’s, but because Bitcoin has ‘properties’ that make it like digital gold.</p>\n\n<p>We wholeheartedly disagree with this idea and would like to expand on why in this article. Bitcoin’s radical transparency does more to detract from its properties as a store of value than people realize. The first, and most obvious example of this is imagining another commonly accepted store of value, gold, with the transparency that Bitcoin has.</p>\n\n<p>What would happen to the trust in gold if it was possible (trivially many times) to link an amount of gold to an individual or group? Would it still be used as it is if every time gold is transferred it is known that a transfer occurred, who the sender and receiver were, and what amount of gold was transferred? We think not.</p>\n\n<p>One of gold’s properties, that is inherent to it being a real world object, is that it is naturally private. One can artificially give it a history by branding previous owners into a bar of gold, but these can be easily removed by melting the bar down and remaking it, an option that is not present in Bitcoin.</p>\n\n<p>This transparency in motion, while destructive enough on its own, is not the only flaw gold would have if all info about its movement was available to everyone. By nature of knowing the flow of gold, we could identify which real world entities have large stores of it. Some of these might not be institutions, but individuals without large scale security set ups. It’s not unheard of for the common person to purchase gold as a hedge against catastrophe, and we now know that Joe Schmoe down the street has 10k dollars worth sitting somewhere in his house. Not information that Joe probably wants the world to know.</p>\n\n<p>A good store of value doesn’t just mean that the price is stable or will possibly go up, it means that the holder feels comfortable and confident in the security of where they have chosen to put their money. So, with radical transparency, gold becomes uncomfortable in motion, and potentially dangerous at rest. It’s good to know then that this was just a thought experiment and gold does not have these properties. Gold investors can breathe a sigh of relief.</p>\n\n<p>But the same can’t be said for Bitcoin.</p>\n\n<p>Monero’s privacy does indeed provide much better security both in motion and at rest for anyone that wants to use it as either a checking account or a savings account.</p>\n\n<p>Proponents of Bitcoin will argue, however, that Bitcoin is more secure as a store of value because it has a larger hashrate behind it, so the chain is much less likely to be rewritten (i.e. your coins in storage may be taken), and while this is currently true, it is a social problem that can be changed with time rather than a foundational technological one that is unlikely to ever be rectified.</p>\n\n<p>A second argument for Bitcoin is that it has a fixed supply, whereas Monero has a tail emission. This is extrapolated to mean Monero has an infinite supply, so it is as unfit to be a store of value as fiat. On the surface, this is definitely the more persuasive argument of the two, so we would like to address this one in detail.</p>\n\n<p>While Monero does have a tail emission, this is to ensure Monero’s long term security. Once the last Bitcoin has been minted, there will be no more block reward, leaving the fee market alone to incentivize miners to secure the chain. There is already preliminary research that suggests this will not be enough, and the security of the chain will drop dramatically, leaving the chain vulnerable to 51% attacks.</p>\n\n<p>Ultimately, this means you have accumulated a store of value that you can never move for fear of an attack. Going back to gold, would gold be at all useful as a store of value if it was impossible or prohibitively dangerous to move around, sell, or exchange? What good is inaccessible value? What good is an accumulated millions of dollars in stored value if it can only ever sit in what might as well be a bottomless pit forever?</p>\n\n<p>Let’s address the other part of this criticism rather than hand-waving away the Monero portion of the problem. The tail emission. While it’s true it has a purpose, some might see the mere existence of the tail emission as evidence that Monero cannot be scarce and works just like fiat. This is also not true. Fiat has a percentage based inflation model, and even this is not set in stone, but rather subject to an opaque body of corruptible humans. This contrasts with Monero, which inflates linearly, meaning over time the inflation trends toward zero. As well it means that, unlike fiat, inflation can be easily calculated and planned for with certainty.</p>'**
  String get knowledge250Sbsov250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbsov250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'XMR is the better medium of exchange, but BTC is the better store of value? We disagree. BTC’s transparency does more to detract from its properties as a store of value than people realize.'**
  String get knowledge250Sbsov250Sbdescription;

  /// No description provided for @knowledge250Sbsov250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why Monero Is a Better Store of Value Than Bitcoin'**
  String get knowledge250Sbsov250Sbtitle;

  /// No description provided for @knowledge250Sbstealth250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero has implemented a three-prong approach to privacy. These technologies are <a target=\"_blank\" href=\"/knowledge/ring-signatures\" class=\"next-link\">ring signatures</a>, which hide the true output (sender), RingCT which hides the amounts, and stealth addresses, which hides the receiver. Today, we will be discussing the last of these mentioned technologies: stealth addresses.</p>\n\n<p>There are many reasons why an individual might want to hide who they are sending to. We must never let anyone try to convince us that all examples of this are unsavory behaviors. Things like sending to a unpopular political party, donating to charities, or supporting those that the culture deems \'cancelled\' are all examples of where one might want to hide their spending behaviors for fear of repercussion, but are perfectly legitimate in nature.</p>\n\n<p>On a transparent blockchain, the addresses where one sends their transactions to are visible to all. It\'s important to consider that if miners themselves disagree with where the money is going, they can choose not to mine it into a block, effectively censoring this transaction on a seemingly censorship resistant platform. The only way to make this, admittedly unlikely, censorship not possible is if miners can\'t distinguish between transactions because all on-chain metadata is obscured by various means. Something that Monero is known for.</p>\n\n<p>Monero solves this problem of transparent addresses by implementing stealth addresses, a technology that was actually initially made for Bitcoin in 2011 by Bitcoin Talk forum user ByteCoin (the relation to Bytecoin, which would later integrate stealth addresses, is unknown). The current form of stealth addresses has several improvements over the initial idea however. But first, in order to see how they work, let\'s talk about keys.</p>\n\n<p>It\'s hard to be in the cryptocurrency space and not hear about keys. Phrases like \'back up your private key\' are common, but when an average Joe hears the words \"public key\" and \"private key\" they get scared and think it will be too technical and confusing to understand. But don\'t worry. We\'ll take it slow, and use plenty of examples.</p>\n\n<p>The two kinds of keys used in cryptocurrencies are, as just mentioned, public and private. These two keys usually come in a pair, meaning that a particular public and private key are linked to one another. In fact, usually the public key is derived from the private one, meaning if you know the private key, your wallet can do some nifty math and come up with the correct public key every time.</p> \n\n<p>Now, as the names imply, the public key can be public without consequence. Usually it\'s a part of the address that you share to receive money into your cryptocurrency wallet. Also following its namesake, the private key is one that should not be shared. It\'s the thing that allows you to sign and spend a transaction, so if it is stolen or shared, then the dastardly third party can spend your money, usually to themselves.</p>\n\n<p>An easy analogy to this would be a padlock and the key needed to unlock it. The open padlock can be shared freely, and indeed anything can be locked up with this padlock, but only the person with the key is able to open anything the padlock is closed on. The padlock can be copied and shared, the key should not be.</p>\n\n<p>These keys are usually abstracted away from the user, so you never really see them. In Monero, they don\'t appear as a scary alphanumeric string at all. In Monero, the common user knows the private key as their seed. The seed (that you should write down if you haven\'t), is actually just a human readable private key. </p>\n\n<p>See? Not so scary after all. Back to stealth addresses.</p>\n\n<p>As mentioned before, stealth addresses weren\'t originally made for Monero, but Bitcoin. As with most fledgling ideas though, this first iteration had issues. The next attempt came when CryptoNote was created by Nicholas van Saberhagan for Bytecoin, the precursor to Monero (<a target=\"_blank\" href=\"/knowledge/monero-history\" class=\"next-link\">see our history of Monero and Bytecoin here</a>), and while it was a definite improvement over the original, even it had some subtle flaws.</p>\n\n<p>Eventually, one last iteration came into being from a developer for another now-defunct, privacy cryptocurrency, which fixed the outstanding privacy and security issues with the idea. This eventually made its way into Monero, and is what is used today.</p> \n\n<p>Although these privacy and security issues were solved, stealth addresses themselves added a different kind of quirk to blockchain technologies, one that didn’t exist before. The need to scan. Since receiving addresses are not publicly displayed on the blockchain, the receiver never knows if any given transaction is theirs, so they must scan every incoming transactions with their private key to see if it’s theirs.</p>\n\n<p>With transparency coins, all they have to do is check to see if a transaction is sending to your address. An easy yes or no question. But with stealth addresses, every transaction could potentially be one that is being sent to you, so you have to try to unlock each one with your private key to see if it opens.</p> \n\n<p>This is an extra step that Bitcoin and its derivatives do not have, and makes initial wallet setup, along with syncing a wallet when you haven’t opened it for a while, much longer than Bitcoin. The tradeoff is necessary though, to unlock the privacy guarantees it has. It should be noted that, unlike the weakest point of the privacy trifecta, ring signatures, stealth addresses is not susceptible to heuristics. It relies on tried and true elliptic curve cryptography, which the entire internet relies on, so breaking it would mean an end to computer security in general, not just Monero.</p> '**
  String get knowledge250Sbstealth250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbstealth250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'On a transparent blockchain, the addresses where one sends their transactions to are visible to all. Monero solves this problem by implementing stealth addresses.'**
  String get knowledge250Sbstealth250Sbdescription;

  /// No description provided for @knowledge250Sbstealth250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Monero Stealth Addresses Protect Your Identity'**
  String get knowledge250Sbstealth250Sbtitle;

  /// No description provided for @knowledge250Sbsubaddresses250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Monero has always found innovative ways to solve difficult privacy problems. Often times these innovations lead to other innovations, and sometimes these resulting technologies can even be used for usecases not previously considered. Nowhere is this exemplified more than in the case of Monero\'s subaddress technology.</p>\n\n<p>Consider a hypothetical privacy problem, wherein usage of one address across multiple platforms from seemingly unrelated peoples can lead to the linkage and deanonymization of said peoples. Put simply, if you were a person named Billy Joe Bob and you sold apples for Bitcoin, you might post your Bitcoin address in a public place for customers to pay you. Let\'s say the address starts with the alphanumeric string 7XybV3... But tossing aside the obvious privacy risk of anyone being able to check your Bitcoin balance and see how much you have sold, there\'s a second, not often talked about privacy risk. Let\'s say you were also an underground hacker going by the name of l33tz0r. You do whistle blowing work, telling an unsuspecting populace about government corruption, and it\'s imperative that you keep your identity a secret. You accept Bitcoin donations for your work, and post the address on a public forum. It\'s the same address that you accept money from your apple customers. The 7XybV3... one.</p>\n\n<p>A simple, but devastating deanonymization attack would be to use an internet search engine to search for your Bitcoin address. Putting the address of 7XybV3... in the engine brings up two different results. The apple business, and l33tz0r. This is enough to link the two identities and deanonymize l33tz0r, with potentially scary consequences from the powers that be.</p>\n\n<p>It\'s important to note that this attack is ALSO possible with Monero. Even though Monero hides most on-chain data, this attack doesn\'t use any. It only uses the address, which must be shared in order to receive payment. Publicly in the case of anonymous donations. This is one potential way in which Monero users can unwittingly hurt their privacy, and is also an example of how, even though Monero is top tier in regards to privacy retention, it is not bulletproof.</p>\n\n<p>The usual way of getting around this problem was owning multiple wallets. With different addresses posted for every identity (or usecase), they cannot be linked. But this privacy only holds if the user never mixes them up. Accidentally posting the incorrect address would have the same linkage effects. As well, the seed of each address must be kept secure, increasing the infosec work necessary with each new wallet made.</p>\n\n<p>Monero\'s solution was subaddresses. The ability to create an absolutely massive number of addresses underneath the main address, using it as a seed of sorts. Every generated subaddress can accept Monero, and all of it goes to the same wallet. Using this method, the number of identities that can be operated under one address is huge while keeping the infosec work to a minimum. These addresses are also not mathematically linkable, so unless the user shouts their connection to the world, an outside observer will have great difficulty linking them.</p>\n\n<p>But another interesting usecase emerged from subaddresses; as a replacement option of the universally hated payment IDs.</p>\n\n<p>Payment IDs were a way for merchants to identify which customer sent which payment. Since Monero information is obscured on chain, the receiver of a transaction is not able to see which address sent it. This means that if there are similarly priced items and multiple orders, it can become impossible to identify who sent what. Payment IDs are a unique, random string generated by the merchant and given to the customer. The customer adds this as a separate field when sending the transaction. This random string is placed on the blockchain as part of the transaction, and in this way, the merchant is able to identify and sort through incoming transactions.</p>\n\n<p>This method was flawed in several ways. Firstly, it detracts from the uniformity of on-chain data. Additional, unique metadata can make some transactions stand apart from the crowd, thereby allowing heuristic analysis. This is especially true when this metadata is not enforced as mandatory for all. Making this mandatory for everyone would add needless space to the blockchain though, and was not pursued. As well, if a payment ID was ever reused for any reason, it would be trivial to link two transactions as connected. This typically occurred with exchange deposits, and anyone could easily link transactions as both being a deposit on an exchange, and from one particular individual.</p>\n\n<p>Secondly, from a UX perspective, payment IDs create a second step that cryptocurrency users coming from other coins are not used to, and if they are forgotten then it causes a massive headache to the merchant who must identify these transactions via other means. This was typically done by speaking directly with each customer who forgot to put the payment ID and confirming other identifying information that only they could know, such as a combination of the amount, date sent, and transaction ID.</p>\n\n<p>This extra step was missed by many, and it got to the point where some exchanges started to charge money to customers if their money had to be manually retrieved because of forgetting a payment ID. Others grit their teeth and ate the extra support costs, but nobody was happy about it.</p>\n\n<p>There was one solution to this, integrated addresses, which merged the address and the payment ID into one string, so it couldn’t be forgotten, but adoption was fairly weak, despite the benefits merchants would have received from including it.</p>\n\n<p>In an interesting turn of events, subaddresses came in to save the day. The ability to generate large amounts of subaddresses per main address, and identify which transactions came into which subaddresses, allowed merchants to rid themselves of payment IDs in an elegant way, while adopting the next generation of Monero technology. Since then, most exchanges and merchant tools have switched to subaddresses as the primary way of transaction identification.</p>\n\n<p>What started as a solution for a privacy problem turned into something much more, which solved a major UX issue for merchants and customers alike. Innovation begets more innovation, which can often snowball into unexpected wins for everyone. Monero has seen this time and time again, and puts great effort into innovating what is possible on the blockchain. Who knows what other things we can unlock together?</p>'**
  String get knowledge250Sbsubaddresses250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbsubaddresses250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Monero has always found innovative ways to solve difficult privacy problems. Nowhere is this exemplified more than in the case of Monero\'s subaddress technology.'**
  String get knowledge250Sbsubaddresses250Sbdescription;

  /// No description provided for @knowledge250Sbsubaddresses250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Monero Subaddresses Prevent Identity Linking'**
  String get knowledge250Sbsubaddresses250Sbtitle;

  /// No description provided for @knowledge250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Knowledge'**
  String get knowledge250Sbtitle;

  /// No description provided for @knowledge250Sbtrust250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Few ideas in the cryptocurrency space receive as much attention and discussion as the concept of trust, and not without reason. After all, the entire point of a blockchain is to eliminate trust in third parties.</p>\n\n<p>For those who don’t fully understand the idea, here’s a light primer. In the traditional financial system, third parties are generally used for various tasks. Banks are used to secure money on your behalf from theft, arbiters. Escrows are used so business deals can operate between two parties that don’t trust each other. Credit card companies pay out money for goods and services on your behalf, assuming the risk that you might not pay them back.</p>\n\n<p>Each of these instances requires trust. For the banks and escrow agents, you are trusting that they themselves will not run off with your money, and for credit card companies, you trust they will not pay out money in your name without your consent, all of which are very possible. We do what we can to ensure these things do not occur. We only work with trusted companies and individuals, and we legislate to make the above scenarios illegal and try to ensure consequences to offenders, but that doesn’t always stop them from happening anyways.</p>\n\n<p>Furthermore, these services do not come for free. Escrow agents and banks may charge for their services, and credit cards charge interest on loaned money.</p>\n\n<p>Blockchain was made to eliminate these middle men, and the trust and fees that come along with them. Through the power of consensus, users can themselves enforce the state of the ledger, without trusting anyone to tell them how much money they have, and without any trusted third parties to potentially run off with your funds.</p>\n\n<p>So much emphasis is placed on this trustlessness, that any change or technological addition that adds an element of trust back into the blockchain is met with great skepticism and criticism, and some projects reject all such notions outright. It’s interesting then that the same consideration is not given to privacy.</p>\n\n<p>Once again, we look at the rest of the world and we see that too often, our privacy is at the mercy of ‘trusted’ third parties. When we give our physical addresses for an item we want shipped to us, we are trusting that the store in question will not use this info for nefarious purposes, or sell it to others. The same is true of our personal thoughts or photos that we post on social media. It even applies to our finances, as several hacks within the accounting industry, or finance apps that flat out post to an internal public board what people are spending money on (i.e Venmo).</p>\n\n<p>Monero sees this commitment to trustlessness on the blockchain, and applies a similar standard to how we approach privacy. Our privacy should not depend on a third party promising to keep it safe any more than our finances should depend on others promising us they won’t run off with them. To this end, Monero ensures that all privacy technologies implemented are trustless.</p>\n\n<p>There are other privacy technologies floating around. Trusted ones, and, admittedly, they are not without their strong points. Zcash uses certain types of proving systems as building blocks in its confidential transaction protocol which have very strong privacy guarantees, with large anonymity sets and, used correctly, could be a powerful way to ensure your privacy. The drawback to this approach however, as part of the initial setup of this technology, there needs to be a parameter set that must be chosen and subsequently forgotten. If anyone retains this parameter, they would have the ability to create false SNARK proofs, effectively printing money without anyone being the wiser because it’s hidden. But does this affect privacy? Some theorize yes, while others no, and in the end, more research needs to be done to come to a definitive answer.</p>\n\n<p>Regardless, this process of minimizing trust sounds just like the scenarios we discussed in the beginning of this article. The traditional world. The one we’re trying to move away from. Blockchain itself doesn’t reduce trust in third parties, but rather eliminates it. The Monero community thinks the same standard of elimination rather than reduction should be applied to our privacy technologies also. Just because it is not definitively proven that trusted setups can or cannot compromise privacy doesn’t mean we should be lax about allowing trust back into the system in this regard.</p>\n\n<p>Of course, any progression in the privacy space is an improvement, and often trusted privacy is merely a stepping stone to trustless privacy, and in these cases we are happy to see the space moving forward. And yet, at the same time, the Monero community just cannot, in good conscience, deploy privacy technology on our blockchain that would weaken the very purpose of our revolution.</p>\n\n<p>We often get asked the question of when Monero is going to implement this or that new privacy tech. These questions often come from the uninformed, who don’t understand the trade-offs, and are merely parroting the new privacy buzzwords of the day. The answer to these questions is simple. Monero is constantly looking at, reviewing, and researching new privacy protocols that would strengthen the privacy guarantees on the Monero chain, but we are unwilling to delve into the world of trusted privacy to achieve this goal, even if the guarantees are theoretically stronger.</p>\n\n<p>Some say this approach will prove to be outdated, but we think such people have lost the story of why we are here to begin with.</p>'**
  String get knowledge250Sbtrust250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbtrust250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'The concept of trust is one of the most discussed in the cryptocurrency space. After all, the entire point of a blockchain is to eliminate trust in third parties.'**
  String get knowledge250Sbtrust250Sbdescription;

  /// No description provided for @knowledge250Sbtrust250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why Monero Uses a Trustless Setup Unlike Zcash'**
  String get knowledge250Sbtrust250Sbtitle;

  /// No description provided for @knowledge250Sbupgrades250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One of the most commonly misunderstood parts of Monero’s approach to building a decentralized, privacy-preserving, and secure cryptocurrency is the role that hard-forks (or network upgrades) play.</p>\n<p>In this post we’ll walk through what hard-forks are, why they are important for Monero, and what role you can play in them in the future.</p>'**
  String get knowledge250Sbupgrades250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbupgrades250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The Monero community has committed to iterating and improving the project over time, and it seems that commitment boils down to two key aspects of the community’s ethos:</p>\n<ol type=\"1\">\n<li><p>The Monero project is ultimately software – code – written by humans. This can lead to a need to fix bugs, add in improvements that are discovered or invented over time, implement modernizations to the protocol, or to simply maintain the project. This is similar in many ways to the other pieces of software you use (like the browser you’re reading this in!), which need to constantly be updating in order to add new features and fix bugs.</p></li>\n<li><p>The Monero project is a privacy tool, and privacy is an ever-advancing arms race. The people and groups who would like nothing more than to strip the world of privacy (both financial and personal) are constantly improving, developing, and inventing new ways to attack modern approaches to preserving privacy, like those used in Monero. As the enemies of privacy find these new approaches, the Monero network needs to be able to adapt and improve to fight back and defend our right to financial privacy.</p></li>\n</ol>'**
  String get knowledge250Sbupgrades250Sb1250Sbtext;

  /// No description provided for @knowledge250Sbupgrades250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why does Monero need to keep upgrading the network?'**
  String get knowledge250Sbupgrades250Sb1250Sbtitle;

  /// No description provided for @knowledge250Sbupgrades250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The complexity of upgrading Monero comes into effect once you understand how different upgrading a cryptocurrency is versus simply pushing a software update to something like a browser.</p>\n<p>In cryptocurrencies, the rules of the network (things like how transactions should look, how mining works, and how to verify each block) must be agreed upon by the network, something that is called “consensus”. When any of these rules need to be changed or upgraded, the network has to agree on the new rules, causing a “hard-fork” – a situation where the network actually splits into two chains of blocks – one on the old rules, and one on the new rules.</p>\n<p>When everyone in the community agrees on the rule changes, it’s called a “non-contentious hard-fork”, and the chain that still has the old rules dies off and is not mined on after the hard-fork. This has been the case for almost every Monero hard-fork, and the only continuation of old rules was by projects attempting to profit off of the hard-fork.</p>\n<p>While non-contentious hard-forks are the only way to properly upgrade important aspects of the Monero network, they do also have a frustrating side-effect – old software, released before the hard-fork was planned, cannot understand the new rules of the network and so does not function after the hard-fork! This can lead to users thinking funds are lost, thinking the Monero blockchain has stopped, and being unable to move funds until they upgrade their wallet.</p>'**
  String get knowledge250Sbupgrades250Sb2250Sbtext;

  /// No description provided for @knowledge250Sbupgrades250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What is a hard-fork?'**
  String get knowledge250Sbupgrades250Sb2250Sbtitle;

  /// No description provided for @knowledge250Sbupgrades250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As there is no central authority, CEO, or president of Monero, the work around deciding when to upgrade the network, what to include, and how to go about it falls to <em>us</em>, those people in the Monero community who choose to engage and interact! This is both an extremely important part of a decentralized project, as the planning and decision making for the project is ultimately decentralized and crowd-sourced from the community.</p>\n<p>The planning of timing and features included in each network upgrade in Monero happens in two main places:</p>\n<ol type=\"1\">\n<li><p>On IRC and Matrix, the most used chat platforms in the Monero community (which are bridged together). These platforms allow for large group chats and are where all scheduled Monero community meetings, dev meetings, and research lab meetings are held. These meetings are the best way for you to listen in (or contribute!) to the planning and discussion around network upgrades in Monero.</p></li>\n<li><p>On Github, the main communication platform for longer-running Monero discussions, planning, and organization. The Monero community uses Github to organize meetings, discuss new features and ideas, and coordinate the planning of network upgrades in addition to storing the code for the Monero project.</p></li>\n</ol>\n<p>If you have an important idea for a network upgrade, don’t like an approach being taken, or have concerns around the timing of an upgrade, it’s important that you speak up and present your case clearly to the community!</p>'**
  String get knowledge250Sbupgrades250Sb3250Sbtext;

  /// No description provided for @knowledge250Sbupgrades250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Who decides when the Monero network upgrades and what is included?'**
  String get knowledge250Sbupgrades250Sb3250Sbtitle;

  /// No description provided for @knowledge250Sbupgrades250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As upgrades to the Monero network require community coordination and approval along with software updates, it’s extremely important that as many people as possible get involved in the planning, testing, and communication process of network upgrades.</p>\n<p>Here are a few easy ways you can help smooth things out around a network upgrade:</p>\n<ol type=\"1\">\n<li>Join the planning meetings <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/meta/issues\">posted on Github</a>, listen in, and contribute if you have something relevant to bring up.</li>\n<li>Communicate the details around the network upgrade timing (once decided!) to your favorite exchange, wallet, or mining pool. It can be tricky to properly notify all Monero users of an upgrade, so it’s important we all help out where we can to get the word out.</li>\n<li>Test the software before the network upgrade. There will be a call put out for testers before the network upgrade, both on testnet and stagenet, to ensure that every aspect of the upgrade has been properly planned for and implemented in the software. The more people get involved and thoroughly test the new versions out, the more likely the network upgrade will go smoothly!</li>\n<li>Once releases that are compatible with the network upgrade are published, be sure to upgrade immediately! The more people are upgraded and ready for the network upgrade, the more smoothly the network will handle it and the less headache users will experience.</li>\n</ol>'**
  String get knowledge250Sbupgrades250Sb4250Sbtext;

  /// No description provided for @knowledge250Sbupgrades250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I help with network upgrades?'**
  String get knowledge250Sbupgrades250Sb4250Sbtitle;

  /// No description provided for @knowledge250Sbupgrades250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>While there is not a date set in stone yet, there will be a network upgrade soon to implement a few key upgrades and features in Monero:</p>\n<ol type=\"1\">\n<li>A ring-size increase from 11 to 16, increasing the base anonymity set (read: plausible deniability, or base privacy) of every transaction on the network</li>\n<li><a class=\"next-link\" target=\"_blank\" href=\"https://localmonero.co/knowledge/view-tags-reduce-monero-sync-time\">View tags, a brilliant way to reduce wallet sync times by 30-40%</a></li>\n<li>Fee changes, improving the security and resilience of the network to rapid changes in the fee market or attacks by malicious entities</li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://www.getmonero.org/2020/12/24/Bulletproofs+-in-Monero.html\">Bulletproofs+, a further improvement in the efficiency of Monero transactions</a></li>\n</ol>\n<p>These changes will go a long way to increasing the privacy, efficiency, and security of the network, all while paving the way for <a class=\"next-link\" target=\"_blank\" href=\"https://localmonero.co/knowledge/seraphis-for-monero\">Seraphis</a>, the next-generation transaction protocol for Monero.</p>'**
  String get knowledge250Sbupgrades250Sb5250Sbtext;

  /// No description provided for @knowledge250Sbupgrades250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What can I expect in the next Monero network upgrade?'**
  String get knowledge250Sbupgrades250Sb5250Sbtitle;

  /// No description provided for @knowledge250Sbupgrades250Sb6250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>The topic of hard-forks and network upgrades is a vast one and there is a long and storied history of them in Monero, so be sure to dig into some of the following links if you’d like to learn more about the history, process, or planning that is in-progress for the upcoming network upgrade!</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/meta/issues/630\">Monero v15 hard-fork planning</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/monero#scheduled-software-upgrades\">Scheduled software upgrades (in Monero)</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://web.getmonero.org/2020/09/01/note-scheduled-upgrades.html\">A note on scheduled protocol upgrades</a></li>\n</ul>'**
  String get knowledge250Sbupgrades250Sb6250Sbtext;

  /// No description provided for @knowledge250Sbupgrades250Sb6250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I learn more?'**
  String get knowledge250Sbupgrades250Sb6250Sbtitle;

  /// No description provided for @knowledge250Sbupgrades250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'The role of XMR hard-forks is often misunderstood - today, we’ll walk through what they are and why they\'re important.'**
  String get knowledge250Sbupgrades250Sbdescription;

  /// No description provided for @knowledge250Sbupgrades250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Monero uses hard-forks to upgrade the network'**
  String get knowledge250Sbupgrades250Sbtitle;

  /// No description provided for @knowledge250SbviewTags250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One of the most common complaints around using Monero day-to-day is the time that it can take to sync up a wallet before being able to send Monero. Thankfully, developers and researchers in the Monero community have found a brilliant way to reduce the time it takes you to sync your wallet by 40%+ without any added blockchain bloat, fees, etc.</p>\n\n<p>Enter “view tags”, a one-byte addition to the data of each transaction – coming to Monero in the next network upgrade!</p>'**
  String get knowledge250SbviewTags250Sb0250Sbtext;

  /// No description provided for @knowledge250SbviewTags250Sb1250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>One of the first questions we have to answer to better understand the need for a solution like view tags is why Monero’s wallet sync is slower than cryptocurrencies like Bitcoin.</p>\n<p>In Bitcoin, as all transactions are not private and reveal the coins being spent, the amounts, and the addresses involved on-chain, Bitcoin wallets can simply look for any unspent transaction outputs (UTXOs) or used addresses for a given wallet, quickly scanning the blockchain for only UTXOs owned by those addresses to figure out which coins belong to your wallet and can be spent.</p>\n<p>In Monero, however, all transactions preserve the user’s privacy by hiding the sender, receiver, and amounts involved in each transaction. This privacy, while vital to protecting the users of the network, also introduces slower wallet synchronization. In Monero, your wallet has to compare every transaction output (TXO) that exists on the network with your wallet’s private keys.</p>\n<p>This comparison involves a lot of complex math and cryptography to validate that an output is truly yours, since all amounts, addresses, and known-spent outputs (or coins) are hidden on-chain in Monero.</p>'**
  String get knowledge250SbviewTags250Sb1250Sbtext;

  /// No description provided for @knowledge250SbviewTags250Sb1250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why is Monero’s wallet sync slower than Bitcoin’s?'**
  String get knowledge250SbviewTags250Sb1250Sbtitle;

  /// No description provided for @knowledge250SbviewTags250Sb2250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>As a way to help reduce the synchronization time for Monero wallets, <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/research-lab/issues/73\">a researcher named UkoeHB came up with a novel approach</a> – add a 1-byte “tag” to each transaction using a shared secret known only to the sender and receiver of that transaction.</p>\n<p>This shared secret is generated by the sender using the address provided to them by the recipient, and does not require any active collaboration by the sender and receiver. The first byte (or character) of this shared secret is then added to the transaction’s data when publishing it to the Monero network.</p>\n<p>When one of the participants in that transaction want to sync their wallet with the Monero blockchain afterward, instead of needing to perform all of the complex math and cryptography for each and every TXO on the network, the wallet can now just check for that 1-byte field in each transaction and only then perform the time consuming verification on transactions that have that tag – 1/256 TXOs on the network, to be precise!</p>\n<p>This tag does not reveal any information about the transaction to outside viewers, only adds 1-byte (a negligible amount) to transaction sizes, and yet allows us to reduce sync times by 40%+ by cutting down on the complex verifications necessary!</p>'**
  String get knowledge250SbviewTags250Sb2250Sbtext;

  /// No description provided for @knowledge250SbviewTags250Sb2250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'What are view tags?'**
  String get knowledge250SbviewTags250Sb2250Sbtitle;

  /// No description provided for @knowledge250SbviewTags250Sb3250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Imagine you have 4,096 boxes in a room, of which only 5 boxes belong to you. The boxes are all entirely indistinguishable from the outside, and the only way to tell if a box is for you is to open it and solve a time consuming math problem written down inside to ensure it’s yours.</p>\n<p>Now, imagine you decide to have the person sending you those 5 boxes generate a special code using your address, and then put only the first character of that generated code on the outside of each box being sent to you. Everyone else does the same thing for their boxes (to ensure all boxes are still indistinguishable), but now you can simply look at the one character code on the outside of the box, and only open those boxes which have that character on them.</p>\n<p>While other boxes will match your code, even some that are not owned by you, the number of boxes you need to open and solve a math problem on is now only 16 (1/256 boxes!) instead of all 4,096.</p>\n<p>Now you open those 16 boxes, solve the math problems, and keep the 5 boxes that actually belong to you from that group!</p>'**
  String get knowledge250SbviewTags250Sb3250Sbtext;

  /// No description provided for @knowledge250SbviewTags250Sb3250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'View tags: a simplified example'**
  String get knowledge250SbviewTags250Sb3250Sbtitle;

  /// No description provided for @knowledge250SbviewTags250Sb4250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>View tags are one of the features currently planned for inclusion in the <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/meta/issues/630\">upcoming network upgrade</a>, and should be released some time this spring. The community <a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://bounties.monero.social/posts/28/implement-view-tags-to-decrease-wallet-sync-times-in-monero\">raised 23.3XMR</a> (at the time of writing) to incentivize the development and implementation of view tags, and as a result the vast majority of the work to include view tags in the Monero code base has already been completed by j-berman in collaboration with reviewers and researchers.</p>\n<p>Once view tags are enforced by the network, all transactions sent after the network upgrade will benefit from the drastically improved wallet sync time. You won’t need to do anything special to start using view tags, your favorite wallet for Monero will simply start using them after the network upgrade automatically!</p>'**
  String get knowledge250SbviewTags250Sb4250Sbtext;

  /// No description provided for @knowledge250SbviewTags250Sb4250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'When will view tags be available in Monero?'**
  String get knowledge250SbviewTags250Sb4250Sbtitle;

  /// No description provided for @knowledge250SbviewTags250Sb5250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>If this has piqued your curiosity around view tags, take a look below for some additional links that go in-depth into the topic:</p>\n<ul>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/research-lab/issues/73\">Reduce scan times with 1-byte-per-output ‘view tag’</a></li>\n<li><a class=\"next-link\" target=\"_blank\" rel=\"noopener nofollow\" href=\"https://github.com/monero-project/monero/pull/8061\">Add view tags to outputs to reduce wallet scanning time</a></li>\n</ul>'**
  String get knowledge250SbviewTags250Sb5250Sbtext;

  /// No description provided for @knowledge250SbviewTags250Sb5250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How can I learn more?'**
  String get knowledge250SbviewTags250Sb5250Sbtitle;

  /// No description provided for @knowledge250SbviewTags250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'One of the most common complaints about Monero is wallet sync times - today we talk about a brilliant way the devs have found to reduce it.'**
  String get knowledge250SbviewTags250Sbdescription;

  /// No description provided for @knowledge250SbviewTags250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'View tags: How one byte will reduce Monero wallet sync times by 40%+'**
  String get knowledge250SbviewTags250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbdecentralized250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin itself is decentralized, but most mixing services are centralized. This means you need to trust them. Some newer ones, like Wasabi wallet are not, however.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbdecentralized250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbfungibility250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>\n                          Not all Bitcoins are equal and have the same value. Some Bitcoins have been blacklisted and blocked by several entities, making those coins less valuable than the rest. If you receive Bitcoins that were used in the past for illegal purposes, then your Bitcoins could be blacklisted even though you had nothing to do with the illegal activity. Or, say a government, employer, or some other entity decides to blacklist your Bitcoins in the future, much like they do with asset freezing or confiscation. There would be nothing you could do. Since a mixer only makes it more difficult to trace your Bitcoins, this category has been marked as &quot;not fungible.&quot;\n                        </p>\n\n                        <ul class=\"disc\">\n                          <li>\n                            Andreas Antonopoulos, a former Bitcoin Core developer who is well-respected in the Bitcoin and other cryptocurrency communities, acknowledges the Bitcoin fungibility problem in a <a href=\"https://www.youtube.com/watch?v=ak1iojpiHpM&feature=youtu.be&t=33m9s\"> YouTube video</a>.\n                          </li>\n                          <li>\n                            Discussion of the Bitcoin fungibility problem on <a href=\"https://bitcointalk.org/index.php?topic=1190707.0\"> Bitcointalk.org\n                            </a>\n                          </li>\n                        </ul>'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbfungibility250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbprivate250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>\n                          All Bitcoin transactions are visible on the blockchain and there is a <a href=\"http://www.bitcoinrichlist.com/top100\"> Bitcoin rich list</a>, so Bitcoin is not private. Bitcoin is <a href=\"https://bitcoin.org/en/you-need-to-know\"> pseudononymous</a>, not anonymous.\n                        </p>\n\n                        <p>\n                          For <b>Bitcoin mixers</b>, you have to trust that they can keep their data safe and are not owned by or cooperating with a government, hackers, or other entities.\n                        </p>\n\n                        <p>\n                          In July of 2017, the founder of the largest Bitcoin mixing service, BITMIXER.IO, announced that they were closing and gave this as their reason:\n                        </p>\n\n                        <blockquote>\n                          <div class=\"quote\">\n                            <p>\n                              &hellip; Now I grasped that Bitcoin is transparent non-anonymous system <b>by design</b>. Blockchain is a great open book&hellip;\n                            </p>\n                          </div>\n\n                          <footer>\n                            <p>\n                              BITMIXER.IO, in an announcement of closing on <a href=\"https://bitcointalk.org/index.php?topic=2042470.msg20357093#msg20357093\"> Bitcointalk.org </a> (emphasis in the original).\n                            </p>\n                          </footer>\n                        </blockquote>\n\n                        <p>\n                          A few weeks later, after considering the various privacy-centric coins, he said this:\n                        </p>\n\n                        <blockquote>\n                          <div class=\"quote\">\n                            <p>\n                              After the deep investigation I confirm that MONERO is the best privacy currency. So I strongly recommend MONERO for all people who need extra privacy.\n                            </p>\n                          </div>\n\n                          <footer>\n                            <p>\n                              BITMIXER.IO, in a <a href=\"https://bitcointalk.org/index.php?topic=2042470.msg21113378#msg21113378\"> followup post</a>.\n                            </p>\n                          </footer>\n                        </blockquote>'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbprivate250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbuntraceable250Sbtext.
  ///
  /// In en, this message translates to:
  /// **' <p>\n                          Since all Bitcoin transactions are visible on the blockchain, ALL Bitcoin transactions can be traced. A Bitcoin mixer can highly obfuscate transactions, making it much more difficult for someone to trace the Bitcoins, but not impossible. As technology progresses and companies which specialize in tracing Bitcoin transactions become more prevalent, once highly-obfuscated transactions will become relatively easily traceable:\n                        </p>\n\n                        <ul class=\"disc\">\n                          <li>\n                            <a href=\"https://news.bitcoin.com/law-enforcement-continues-invest-bitcoin-tracking-services/\">  Law Enforcement Continues to Invest in Bitcoin Tracking Services\n                            </a>\n                          </li>\n                          <li>\n                            <a href=\"http://time.com/3689359/bitcoins-track-anonymous/\"> Time.com: Bitcoins Are Easier to Track Than You Think\n                            </a>\n                          </li>\n                          <li>\n                            <a href=\"https://www.elliptic.co/\">\n                              Elliptic: A Company Specializing in Tracing Bitcoin for Law Enforcement\n                            </a>\n                          </li>\n                        </ul>\n\n                        <p>\n                          A Google search will reveal dozens of articles like the ones above. And remember, any transaction that occurred at any time in the past is on the blockchain and has the potential to be traced, even if a mixing service was used. In fact, the use of a mixing service is likely to draw attention to those transactions.\n                        </p>'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbbtc250Sbuntraceable250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbdecentralized250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Not all DASH nodes are equal. There is a superclass of nodes, called <i>Masternodes</i> whose owners have more influence over the system than regular node operators. This makes DASH semi-centralized instead of the ideal 100% decentralized system.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbdecentralized250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbfungible250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Since transactions are not private, the potential exists for an entity to block or blacklist certain coins,  making them less valuable than the others. See the note on the lack of Bitcoin fungibility below since the same principle applies to DASH.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbfungible250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbprivate.
  ///
  /// In en, this message translates to:
  /// **'DASH has a <a href=\"https://bitinfocharts.com/top-100-richest-darkcoin-addresses.html\"> rich list</a>, so this is not a private coin. The financial details of coin addresses are visible to anyone examining the blockchain.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbprivate;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbprivate250Sbanother8722Sbquote.
  ///
  /// In en, this message translates to:
  /// **' <b>Peter Todd</b>, another Bitcoin Core developer and cryptographer, has made a <a href=\"https://twitter.com/petertoddbtc/status/622022840330682368\"> similar statement</a>.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbprivate250Sbanother8722Sbquote;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbprivate250Sbquote.
  ///
  /// In en, this message translates to:
  /// **'<blockquote>\n                          <div class=\"quote\">\n                            <p>\n                              DASH isn\'t cryptographically private at all. Actually I had a slide in the deck that was like  \'DASH, LOL,\' and like nothing else... it\'s snakeoil and I\'m just sort of beside myself about it, personally.\n                            </p>\n                          </div>\n\n                          <footer>\n                            <p>\n                              <b>Gregory Maxwell</b>, Bitcoin Core developer and cryptographer, in a <a href=\"https://archive.21mil.com/blockstream-cto-greg-maxwell-discusses-monero-zcash-privacy-focused-altcoins/\">  presentation to Coinbase\n                             </a>.\n                            </p>\n                          </footer>\n                        </blockquote>'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbprivate250Sbquote;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbuntraceable250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Transactions are routed through a series of <a href=\"https://www.dash.org/masternodes/\">  Masternodes </a> to make them untraceable. This practice might work if all masternode operators had only pure motives. However, if a government, group of hackers, other entity, or even an individual bought many masternodes (there would be no way to know if this occured) and if the transaction passed through a route where all of the masternodes were owned by that entity, then the transaction could be traced by that entity. Given the relatively low cost of masternodes and the enormous budget of governments and some organizations, the possibility that coins can be traced is real.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdash250Sbuntraceable250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdisclaimer.
  ///
  /// In en, this message translates to:
  /// **'This site was made by Monero users. There was a time when we weren\'t Monero users but were concerned about financial privacy. We researched the coins which claimed to be private and this page is the result of our research. It\'s why we chose Monero over the rest. So, if we appear to be biased, we are, but we believe that bias is based on facts which you can read below and verify for yourself.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbdisclaimer;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbdecentralized250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Grin has no premine, founder\'s reward, masternodes, or treasury. They did not have an ICO, and are run in a manner befitting of a decentralized community. Grin is decentralized.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbdecentralized250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbfungiblity250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Since all transactions are questionably private, and potentially traceable, there exists the possibility of building a transaction graph, from which can be gleaned valuable information that can be used against an individual regarding their spending habits. Outputs can then be linked to identities, and, even though amounts are not seen, the fact that an output can be linked to an identity means the output can be tainted, just off of the basis of who has held it. We think this means that Grin is not fungible, as some outputs may be tainted while others will not be.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbfungiblity250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbprivate250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Grin does not have a rich list, which would indicate some form of privacy. Indeed, passive attackers scanning the chain cannot see which address has how much money in it, partially because amounts are obfuscated via confidential transactions, partially because address data is not stored on chain, and partially because of Mimblewimble\'s cut-through technology, where intermediate transactions can be removed from the chain, leaving little metadata from past transactions.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbprivate250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbuntraceablity250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Grin does not defend against an active attacker building a transaction graph. It is possible for both miners and a slightly modified node to watch every transaction, save it before the cut-through technology kicks in, and build a complete transaction graph from here, along with retaining all \'cut-through\' data. They would not be able to discern any information prior to when they start, but everything after they begin will be valuable metadata with which they could potentially link transactions.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbgrin250Sbuntraceablity250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbintro.
  ///
  /// In en, this message translates to:
  /// **'Here is an analysis of well-known cryptocurrencies which claim anonymity and/or untraceability as their key differentiator. Bitcoin itself is not within the scope of this analysis since it\'s never claimed to be anonymous.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbintro;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbafterword8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Monero has been 100% open source from its inception, meaning anyone can view the software\'s <a href=\"https://github.com/monero-project/bitmonero\"> source code </a> to verify that no backdoors exist and that the software is secure.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbafterword8722Sb0;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbafterword8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Monero also has <a href=\"https://lab.getmonero.org/\"> peer-reviewed research papers </a> which mathematically and systematically verify all of its properties listed above.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbafterword8722Sb1;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbdecentralized.
  ///
  /// In en, this message translates to:
  /// **'All Monero nodes are equal. There is no superclass of nodes which have more influence or control over transactions than other nodes. No person or entity can  trace transactions by owning multiple nodes. Additionally, there is no trusted setup. This means that the need to trust a person or entity is not a factor. The only things that need to be trusted are the source code (which can be verified by anyone) and math.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbdecentralized;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbfungible.
  ///
  /// In en, this message translates to:
  /// **'All coins are equal and have the same value. A user, vendor, or any other entity can\'t block or blacklist certain Monero coins since the transaction history of Monero coins is ambiguous.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbfungible;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbprivate.
  ///
  /// In en, this message translates to:
  /// **'Monero uses a cryptographically sound system that allows you to send and receive funds without your transactions being publicly visible on the blockchain (the distributed ledger of transactions). This ensures that your purchases, receipts, and other transfers remain <b>private by default</b>. The sender, receiver and amount of the transaction are all private. Some coins have a \"rich list\" which allows anyone to see which  account has the most coins. Since Monero is private, a <a href=\"http://moneroblocks.info/richlist\"> Monero rich list </a> can\'t exist.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbprivate;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbsecure.
  ///
  /// In en, this message translates to:
  /// **'Using a distributed peer-to-peer consensus network, every transaction is cryptographically secured. Individual accounts have a 25-word mnemonic seed displayed when created, which can be written down to back up the account. A password is mandatory when creating a wallet, and account files are encrypted with a passphrase to ensure they are worthless if stolen.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbsecure;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbuntraceable.
  ///
  /// In en, this message translates to:
  /// **'By taking advantage of ring signatures (a special  property of certain types of cryptography), Monero enables untraceable transactions. This means it\'s ambiguous which funds have been spent, and thus extremely unlikely that a transaction could be linked to particular user.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbmonero250Sbuntraceable;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select a logo to jump to that coin\'s analysis.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbsubtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbno.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbno;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbnot8722Sbcompletely.
  ///
  /// In en, this message translates to:
  /// **'Not completely'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbnot8722Sbcompletely;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbsometimes.
  ///
  /// In en, this message translates to:
  /// **'Sometimes'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbsometimes;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbunsure.
  ///
  /// In en, this message translates to:
  /// **'Unsure'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbunsure;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbyes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtable250Sbyes;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sboverview250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Coin analysis'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbtxs8722Sbare8722Sbsecure.
  ///
  /// In en, this message translates to:
  /// **'Transactions are cryptographically secure.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbtxs8722Sbare8722Sbsecure;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbdecentralized250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>\n                          Zcash is a company and currently it <a href=\"https://z.cash/blog/funding.html\"> takes 20% of all ZEC mined as a founder\'s reward</a>.\n                        </p>\n\n                        <p>\n                          Zcash required a <b>Trusted Setup</b>. This means that  you have to trust that the system was set up honestly. If it wasn\'t set up honestly, <a href=\"https://blog.okturtles.com/2016/03/the-zcash-catch/\"> unlimited amounts of ZEC could be created without anyone knowing</a>. This would make the hacker rich and devalue ZEC. There is no way to know if the Trusted Setup was executed honestly. We have to take them at their word. This introduces a human point of failure into the system which is counter to almost every other cryptocurrency. You should only have to trust math and verifiable source code in cryptocurrecies, not humans. As we\'ve seen with virtually all large software companies, such as <a href=\"https://www.gnu.org/proprietary/proprietary-back-doors.en.html\"> Microsoft</a>, <a href=\"http://www.digitaltrends.com/computing/apple-vs-fbi-backdoor-to-data-already-exists/\"> Apple</a>, and even governments, they shouldn\'t be trusted.\n                        </p>\n\n                        <p>\n                          Peter Todd, a Bitcoin Core developer who <a href=\"https://github.com/zcash/mpc/blob/master/README.md\"> participated  </a> in the Zcash Trusted Setup, has called it a &quot; <a href=\"https://twitter.com/petertoddbtc/status/793584540891643906\"> backdoor </a> &quot;.\n                        </p>\n\n                        <blockquote>\n                          <div class=\"quote\">\n                            <p>\n                              Zcash is not unconditionally sound, can\'t be with current tech...requires a trusted setup&hellip; will need to redo the procedure [Trusted Setup] to upgrade the crypto over time so it\'s a vulnerability.\n                            </p>\n                          </div>\n\n                          <footer>\n                            <p>\n                              Gregory Maxwell, Bitcoin Core developer and cryptographer, in a <a href=\"https://youtu.be/LHPYNZ8i1cU#t=29m30s\"> presentation to Coinbase</a>.\n                            </p>\n                          </footer>\n                        </blockquote>'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbdecentralized250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbfungible.
  ///
  /// In en, this message translates to:
  /// **'Since all transactions are not private, the potential exists for an entity to block or blacklist certain  coins, making them less valuable than the others. See the note on the lack of Bitcoin fungibility below since the same principle applies to Zcash.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbfungible;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbprivate250Sbquote.
  ///
  /// In en, this message translates to:
  /// **'<blockquote>\n                          <div class=\"quote\">\n                            <p>\n                              And by the way, I think we can successfully make Zcash too traceable for criminals like WannaCry, but still completely private &amp; fungible.\n                            </p>\n                          </div>\n\n                          <footer>\n                            <p>\n                              <b>Zooko Wilcox</b>, Zcash CEO, in a <a href=\"https://twitter.com/zooko/status/863202798883577856\">  tweet\n                              </a>\n                            </p>\n                          </footer>\n                        </blockquote>\n\n                        <p>\n                          If Zcash can be \"too traceable\", then it can\'t be completely private or fungible.\n                        </p>'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbprivate250Sbquote;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbprivate250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Zcash transactions are visible on their blockchain. They do enable hidden transactions, but  <a href=\"http://stat.bloxy.info/superset/dashboard/zcash/\"> less than 1% of transactions are fully shielded </a> . Since hidden transactions are optional and not the default (not to mention rarely used), the <a href=\"http://weuse.cash/2016/06/09/btc-xmr-zcash/\"> hidden transactions stand out on their blockchain</a>, drawing attention to themselves.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbprivate250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbuntraceable250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Regular transactions are transparent. Hidden  transactions use zk-SNARKS, which have admittedly robust privacy guarantees under certain conditions.  The question is if these conditions are met, and  seeing the miniscule amount of people using the shielded capabilities, this remains in question.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcash250Sbuntraceable250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbdecentralized250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Zcoin has implemented Znodes, which act simiarly to Dash masternodes, and have greater power than other nodes on the network. Since all nodes are not created equal, and the differenciating factor between them is the amount of money an individual has (Znodes cost 1000 XZC), the network is semi-centralized.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbdecentralized250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbfungiblity250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'After the final stage of Lelantus goes live in 2021, it is assumed that Zcoin will be fungible due to the mandatory privacy enforcement. In this regard, it will be a true competitor to Monero. However...'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbfungiblity250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbnote.
  ///
  /// In en, this message translates to:
  /// **'<p><strong>Note:</strong> Zcoin is shifting from its current Sigma scheme to a new protocol that relies on its new work, Lelantus. Lelantus is going to be implemented in stages, and this article is going to assume all stages are complete and implemented for proper comparisons alongside projected implementation times.</p>\n<p>The reason Zcoin was given this luxury of being judged on its future protocol, and not Zcash, is because Zcoin has a roadmap with general timings for activation, whereas Zcash\'s \'privacy by default\' plans are and continue to be nebulous.</p>'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbnote;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbprivate250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>Zcoin (XZC) will not have a rich list, so it will be private. By-default, mandatory privacy is expected to go live in 2021. Once implemented, a rich list will not be possible to create (though currently <a href=\"https://www.coinexplorer.net/XZC/richlist\">they do have one</a>).</p> '**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbprivate250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbuntraceablity250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'With the final stage of Lelantus implemented in 2021, Zcoin should not be traceable, although theoretical attacks have not yet been explored since it has not yet been released or had any time out in the wild. At present Zcoin is traceable if one puts a <a href=\"https://explorer.zcoin.io/\">Zcoin address</a> in a blockchain explorer and you can see its balance and related transactions.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbanalysis250Sbzcoin250Sbuntraceablity250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbdecentraized250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'All nodes (a node is a running instance of the coin\'s blockchain) of the network are equal. There is no superclass of nodes which have more influence or control over transactions or the system than other nodes.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbdecentraized250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbdecentralized250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Decentralized'**
  String get knowledge250Sbwhy8722Sbmonero250Sbdecentralized250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Why is Monero the best privacy coin? Not all privacy-centric coins can deliver 100% privacy, untraceability, security and fungibility. Find out how Monero solves all those problems compared to other \"privacy\" coins.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbdescription;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Not all privacy-centric coins can deliver 100% privacy, untraceability, security and fungibility in a 100% decentralized coin with a trustless setup. Here\'s what these attributes are and why they\'re important:'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro8722Sb0;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbfungible250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'All coins are equal and have the same value.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbfungible250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbfungible250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Fungible'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbfungible250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbprivate250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Your finances are not visible to the public. A person looking at the coin\'s blockchain won\'t be able to see how much money you have.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbprivate250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbprivate250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Private'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbprivate250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbsecure250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'All transactions are encrypted and the wallet which holds your funds is encrypted.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbsecure250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbsecure250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Secure'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbsecure250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbuntraceability250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'The coins can\'t be traced through blockchain analysis or blockchain monitoring.'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbuntraceability250Sbtext;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbintro250Sbuntraceable250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Untraceable'**
  String get knowledge250Sbwhy8722Sbmonero250Sbintro250Sbuntraceable250Sbtitle;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbsummary.
  ///
  /// In en, this message translates to:
  /// **'<h2>Summary</h2>\n <p>  In our opinion, Monero is the clear choice if you\'re looking for a private, secure, untraceable, fungible, decentralized cryptocurrency with no trusted setup required. Anything else puts your privacy and security at risk. But don\'t just take our opinion. Do your own research and see for yourself. Consider that Monero is endorsed and used by entities which depend on privacy and untraceability, such as:\n                  </p>\n\n                  <ul class=\"disc\">\n                    <li>\n                      <a href=\"https://www.reddit.com/r/Monero/comments/4xqrzd/sigaint_launches_tor_monero_node_as_its_operators/\"> SIGAINT </a>\n                    </li>\n\n                    <li>\n                      <a href=\"https://puri.sm/posts/purism-collaborates-with-cryptocurrency-monero-to-enable-mobile-payments/\"> Purism </a>\n                    </li>\n\n                    <li>\n                      <a href=\"https://shop.wikileaks.org/donate#db9\"> Wikileaks </a>\n                    </li>\n\n                    <li>\n                      AlphaBay Market (AB) was shut down in July of 2017. The <a href=\"https://assets.documentcloud.org/documents/3898109/AlphaBay-Cazes-Forfeiture-Complaint.pdf\"> Federal Forfeiture Complaint </a> against AB shows that:\n                      <ul class=\"disc\">\n                        <li>\n                          <b> Monero is the only private and untraceable cryptocurrency:\n                          </b>\n                          <br />\n                          &quot;In total, from CAZES\' wallets and computer agents took control of approximately \$8,800,000 in Bitcoin, Ethereum, Moreno [sic], and Zcash, broken down as follows: 1,605.0503851 Bitcoin, 8,309.271639 Ethereum, 3,691.98 Zcash, <em>and an unknown amount of Monero.</em>&quot; (bottom of p. 20 and top of p. 21, emphasis added) </li>\n                        <li>\n                          <b>\n                            Bitcoin transactions are not private and can be traced:\n                          </b>\n                          <br />\n                          &quot;Federal agents obtained the warrants after tracing a number of Bitcoin transactions originating with AlphaBay to digital currency accounts, and ultimately bank accounts and other tangible assets, held by CAZES and his wife.&quot; (p. 17, lines 24-26)\n                        </li>\n                      </ul>\n                    </li>\n                  </ul>\n\n                  <div class=\"notice info\">\n                    <p>\n                      LocalMonero does not advocate or encourage any illegal activity.\n                    </p>\n                  </div>  '**
  String get knowledge250Sbwhy8722Sbmonero250Sbsummary;

  /// No description provided for @knowledge250Sbwhy8722Sbmonero250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Why Monero is Better than Dash, Zcash, Zcoin (Even with Lelantus), Grin and Bitcoin Mixers Like Wasabi (Updated May 2020)'**
  String get knowledge250Sbwhy8722Sbmonero250Sbtitle;

  /// No description provided for @knowledge250Sbwired250Sb0250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'<p>In both the privacy and cryptocurrency spheres, misinformation often runs rampant. We have <a target=\"_blank\" href=\"/knowledge/monero-myths-debunked\" class=\"next-link\">an article outlining fifteen common incorrect or outdated assumptions about Monero</a>, but we want to take time to address one particular article that is often cited and circulated by Monero skeptics.</p>\n\n<p>The Wired publication put out <a target=\"_blank\" href=\"https://www.wired.com/story/monero-privacy/\" class=\"next-link\">an article</a> on the 27th of March, 2018, which itself was written in response to another fresh-off-the-press paper published by various academics titled: “An Empirical Analysis of Traceability in the Monero Blockchain”.</p>\n\n<p>Though the paper was coauthored by individuals with clear conflict of interest (read: they are advisors to, and have a stake in Zcash), the paper was moderately well-received by the Monero community as confirming things the community has already known and written about in their own Monero Research Lab papers (<a target=\"_blank\" href=\"https://web.getmonero.org/resources/research-lab/pubs/MRL-0001.pdf\" class=\"next-link\">MRL-0001</a> and <a target=\"_blank\" href=\"https://web.getmonero.org/resources/research-lab/pubs/MRL-0004.pdf\" class=\"next-link\">MRL-0004</a>) the earliest of which was published four years prior. There were also several frustrations with it however, chiefly the conflict of interest, the fact that the issues were already known, discussed and – in some cases – remedied, and the gross mischaracterization of Monero’s privacy guarantees at the time. The community commented on the preprint of the work, and many of their recommendations made it through to the final paper.</p>\n\n<p>But what exactly was mischaracterized? The fact that Monero had not had the flaws discussed in the paper for over a year. Transactions pre-2017 were indeed vulnerable to a form of privacy leakage, but at the time of publishing, Monero had addressed most of the concerns. To be fair to the authors, they discuss Monero’s remedies to a small degree, but not enough to influence the effect it had on the cryptocurrency media cycle at the time. Hence the Wired article.</p>\n\n<p>While we can examine the Wired article in question as a period piece, and how true or untrue it was at the time, the fact that it is still being shared today as reasoning for why Monero’s privacy guarantees are weak actually invite an analysis on how the piece holds up in the present. We gladly take this invitation.</p>\n\n<p>A quick read of the article shows several sensationalized lines, such as “[The findings] shouldn’t just worry anyone trying to stealthily spend Monero today” and the entire tone of the article which postulates the research as ‘new’, based largely off of the publication. The academic paper itself has recommendations such as warning Monero users of the potential compromise of their anonymity, despite the fact that not only had these discussions been happening since 2014, but the rallying cry of the community was for people to not buy Monero and that it was very experimental.</p>\n\n<p>But what of the criticisms themselves? The reality is that many issues with Monero as a privacy coin are either no longer true of Monero, or shared concerns with privacy coins as a category of blockchain-based cryptocurrencies. Let’s begin addressing these.</p>\n\n<p>One of the most often-quoted criticisms of Monero is that, because of the permanence and immutability of the blockchain, if a future technology was to break the privacy, all of Monero’s past transactions would be laid bare. In other words, your privacy has a ticking clock on it.</p>\n\n<p>We cannot stress this enough. Literally every privacy coin that employs on-chain methods for obfuscation and privacy has this flaw, and yet it is often used against Monero (ironically, many times by competing privacy coins with the same problem), and is used in this article as well. The response to this criticism might be surprising to some, but Monero actually may be less vulnerable than other privacy coins to this due to the fact that it has a multi-pronged approach to privacy.</p>\n\n<p>Monero hides outputs (senders), amounts, and receivers through three different technologies, ring signatures, RingCT, and stealth addresses respectively. Of these, ring signatures are the weakest, and most susceptible to both modern day heuristics and theoretical, future, privacy-breaking technologies. This has been known to the Monero community for years, and active research is underway to improve or replace the ring signature scheme entirely.</p>\n\n<p>However, even if the ring signature was broken entirely, only the true output would be revealed. NOT the sender (as in individual), but the output. To couple an output with an identity is not impossible, but it would require more metadata and resources. Coupled with the fact that RingCT and the stealth address would NOT be revealed lessens the impact even further.</p>\n\n<p>It should be noted that the Wired article does lightly discuss the above information in the portion where they reached out to Riccardo ‘fluffypony’ Spagni for comment, but the time given to it is brief, and almost seems to hand-wave away this crucial information. The lack of understanding is especially apparent when trying to discuss these things with people who share the article willy-nilly in the modern day.</p>\n\n<p>Another criticism that’s much harder to address is in how the outside world views Monero, and how that relates with how the community around Monero views the coin. For an example of this, readers need not look farther than the title of the article itself: “The Dark Web’s Favorite Currency Is Less Untraceable Than It Seems”.</p>\n\n<p>Any person who spends any significant amount of time in the Monero community can attest to the fact that the Monero community goes to great lengths to show just how hard real privacy is to achieve, even to the detriment of marketing or adoption efforts. If the community provides ample resources discussing the coin and its shortcomings accurately, at some point, the ignorance becomes the fault of the user who believes that the coin is all they need to be 100% private.</p>\n\n<p>By this point it should be evident that the Monero community takes seriously both its privacy, and its honesty about the weaknesses therein and subsequent improvements. Articles, like the one in question, completely miss this spirit of innovation in Monero. It likens Monero to the droves of other cryptocurrencies that make grandiose claims, with only thought for profit and to prey on uneducated investor-wannabes.</p>\n\n<p>The reality couldn’t be more different. Monero is acutely aware of its weaknesses, seeks to continue building so as to improve them, tighten up loose joints, and achieve the very real, but very hard goal of giving the world a private, fungible cryptocurrency that can be used by all, and do it all in a manner that is fair, decentralized, and community-driven. Perhaps it’s time to put away the sensationalization and article sharing as a means to shill bags and promote competitors. Perhaps it’s time to tell another story.</p>'**
  String get knowledge250Sbwired250Sb0250Sbtext;

  /// No description provided for @knowledge250Sbwired250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'In both the privacy and cryptocurrency spheres, misinformation often runs rampant. Here we address the Wired article that is often cited and circulated by Monero skeptics.'**
  String get knowledge250Sbwired250Sbdescription;

  /// No description provided for @knowledge250Sbwired250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Wired Magazine is Wrong About Monero, Here\'s Why'**
  String get knowledge250Sbwired250Sbtitle;

  /// No description provided for @left8722Sbdrawer250Sbabout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get left8722Sbdrawer250Sbabout;

  /// No description provided for @left8722Sbdrawer250Sbbuy8722Sbmonero.
  ///
  /// In en, this message translates to:
  /// **'Buy Monero'**
  String get left8722Sbdrawer250Sbbuy8722Sbmonero;

  /// No description provided for @left8722Sbdrawer250Sbdashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get left8722Sbdrawer250Sbdashboard;

  /// No description provided for @left8722Sbdrawer250Sbfaq.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get left8722Sbdrawer250Sbfaq;

  /// No description provided for @left8722Sbdrawer250Sbforums.
  ///
  /// In en, this message translates to:
  /// **'Forums'**
  String get left8722Sbdrawer250Sbforums;

  /// No description provided for @left8722Sbdrawer250Sbgetting8722Sbstarted.
  ///
  /// In en, this message translates to:
  /// **'Getting started'**
  String get left8722Sbdrawer250Sbgetting8722Sbstarted;

  /// No description provided for @left8722Sbdrawer250Sbpost8722Sbnew8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'Post an ad'**
  String get left8722Sbdrawer250Sbpost8722Sbnew8722Sbad;

  /// No description provided for @left8722Sbdrawer250Sbrevuo250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'The Monero Standard: Monero News'**
  String get left8722Sbdrawer250Sbrevuo250Sblabel;

  /// No description provided for @left8722Sbdrawer250Sbsell8722Sbmonero.
  ///
  /// In en, this message translates to:
  /// **'Sell Monero'**
  String get left8722Sbdrawer250Sbsell8722Sbmonero;

  /// No description provided for @left8722Sbdrawer250Sbsupport.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get left8722Sbdrawer250Sbsupport;

  /// No description provided for @login250Sberror8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Wrong username/password/one-time password!'**
  String get login250Sberror8722Sb0;

  /// No description provided for @login250Sberror8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Username and password have disallowed characters or invalid length'**
  String get login250Sberror8722Sb1;

  /// No description provided for @login250Sberror8722Sb10.
  ///
  /// In en, this message translates to:
  /// **'Log in error'**
  String get login250Sberror8722Sb10;

  /// No description provided for @login250Sberror8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Username has disallowed characters or invalid length'**
  String get login250Sberror8722Sb2;

  /// No description provided for @login250Sberror8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Password has disallowed characters or invalid length'**
  String get login250Sberror8722Sb3;

  /// No description provided for @login250Sberror8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'Fields can\'t be left blank'**
  String get login250Sberror8722Sb4;

  /// No description provided for @login250Sberror8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'One-time password has to be 6 digits long'**
  String get login250Sberror8722Sb5;

  /// No description provided for @login250Sberror8722Sb8.
  ///
  /// In en, this message translates to:
  /// **'Disallowed values'**
  String get login250Sberror8722Sb8;

  /// No description provided for @login250Sberror8722Sb98722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Too many login attempts! Please wait for some time.'**
  String get login250Sberror8722Sb98722Sbtext;

  /// No description provided for @login250Sberror8722Sb98722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Login attempts exceeded'**
  String get login250Sberror8722Sb98722Sbtitle;

  /// No description provided for @login250Sberror8722Sbgeneric.
  ///
  /// In en, this message translates to:
  /// **'Error!'**
  String get login250Sberror8722Sbgeneric;

  /// No description provided for @login250Sbremember8722Sbme.
  ///
  /// In en, this message translates to:
  /// **'Remember me'**
  String get login250Sbremember8722Sbme;

  /// No description provided for @login250Sbreset.
  ///
  /// In en, this message translates to:
  /// **'Forgot your password? {link}'**
  String login250Sbreset(Object link);

  /// No description provided for @login250Sbreset8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'Reset it here.'**
  String get login250Sbreset8722Sblink;

  /// No description provided for @login250Sbsame8722Sbcredentials8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'You can use your {front_type_url} credentials to log in.'**
  String login250Sbsame8722Sbcredentials8722Sbtip(Object front_type_url);

  /// No description provided for @login250Sbsignup.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account yet? {link}'**
  String login250Sbsignup(Object link);

  /// No description provided for @login250Sbsignup8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get login250Sbsignup8722Sblink;

  /// No description provided for @login250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login250Sbtitle;

  /// No description provided for @login250Sbusername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get login250Sbusername;

  /// No description provided for @login250Sbusername8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'3-16 characters. Allowed characters: a-z, A-Z, 0-9, -, _'**
  String get login250Sbusername8722Sbtip;

  /// No description provided for @method250Sbalipay.
  ///
  /// In en, this message translates to:
  /// **'Alipay'**
  String get method250Sbalipay;

  /// No description provided for @method250Sball8722Sbonline8722Sboffers.
  ///
  /// In en, this message translates to:
  /// **'All online offers'**
  String get method250Sball8722Sbonline8722Sboffers;

  /// No description provided for @method250Sbcash.
  ///
  /// In en, this message translates to:
  /// **'Cash (locally)'**
  String get method250Sbcash;

  /// No description provided for @method250Sbcash8722Sbat8722Sbatm.
  ///
  /// In en, this message translates to:
  /// **'Cash at ATM'**
  String get method250Sbcash8722Sbat8722Sbatm;

  /// No description provided for @method250Sbcash8722Sbby8722Sbmail.
  ///
  /// In en, this message translates to:
  /// **'Cash by mail'**
  String get method250Sbcash8722Sbby8722Sbmail;

  /// No description provided for @method250Sbcash8722Sbdeposit.
  ///
  /// In en, this message translates to:
  /// **'Cash deposit'**
  String get method250Sbcash8722Sbdeposit;

  /// No description provided for @method250Sbcash8722Sbon8722Sbdelivery.
  ///
  /// In en, this message translates to:
  /// **'Cash on delivery'**
  String get method250Sbcash8722Sbon8722Sbdelivery;

  /// No description provided for @method250Sbcashiers8722Sbcheck.
  ///
  /// In en, this message translates to:
  /// **'Cashier\'s check'**
  String get method250Sbcashiers8722Sbcheck;

  /// No description provided for @method250Sbcreditcard.
  ///
  /// In en, this message translates to:
  /// **'Credit card'**
  String get method250Sbcreditcard;

  /// No description provided for @method250Sbcryptocurrency.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency'**
  String get method250Sbcryptocurrency;

  /// No description provided for @method250Sbgift8722Sbcard.
  ///
  /// In en, this message translates to:
  /// **'Gift Card Code'**
  String get method250Sbgift8722Sbcard;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbamazon.
  ///
  /// In en, this message translates to:
  /// **'Amazon Gift Card Code'**
  String get method250Sbgift8722Sbcard8722Sbamazon;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbapple.
  ///
  /// In en, this message translates to:
  /// **'Apple Store Gift Card Code'**
  String get method250Sbgift8722Sbcard8722Sbapple;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbebay.
  ///
  /// In en, this message translates to:
  /// **'Ebay Gift Card Code'**
  String get method250Sbgift8722Sbcard8722Sbebay;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbglobal.
  ///
  /// In en, this message translates to:
  /// **'Gift Card Code (Global)'**
  String get method250Sbgift8722Sbcard8722Sbglobal;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbitunes.
  ///
  /// In en, this message translates to:
  /// **'iTunes Gift Card Code'**
  String get method250Sbgift8722Sbcard8722Sbitunes;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbstarbucks.
  ///
  /// In en, this message translates to:
  /// **'Starbucks Gift Card Code'**
  String get method250Sbgift8722Sbcard8722Sbstarbucks;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbsteam.
  ///
  /// In en, this message translates to:
  /// **'Steam Gift Card Code'**
  String get method250Sbgift8722Sbcard8722Sbsteam;

  /// No description provided for @method250Sbgift8722Sbcard8722Sbwalmart.
  ///
  /// In en, this message translates to:
  /// **'Walmart Gift Card Code'**
  String get method250Sbgift8722Sbcard8722Sbwalmart;

  /// No description provided for @method250Sbinternational8722Sbwire8722Sbswift.
  ///
  /// In en, this message translates to:
  /// **'International Wire (SWIFT)'**
  String get method250Sbinternational8722Sbwire8722Sbswift;

  /// No description provided for @method250Sbmobile8722Sbtop8722Sbup.
  ///
  /// In en, this message translates to:
  /// **'Mobile top up'**
  String get method250Sbmobile8722Sbtop8722Sbup;

  /// No description provided for @method250Sbnational8722Sbbank.
  ///
  /// In en, this message translates to:
  /// **'National bank transfer'**
  String get method250Sbnational8722Sbbank;

  /// No description provided for @method250Sbother.
  ///
  /// In en, this message translates to:
  /// **'Other online payment'**
  String get method250Sbother;

  /// No description provided for @method250Sbother8722Sbonline8722Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'Other Online Wallet'**
  String get method250Sbother8722Sbonline8722Sbwallet;

  /// No description provided for @method250Sbother8722Sbonline8722Sbwallet8722Sbglobal.
  ///
  /// In en, this message translates to:
  /// **'Other Online Wallet (Global)'**
  String get method250Sbother8722Sbonline8722Sbwallet8722Sbglobal;

  /// No description provided for @method250Sbother8722Sbpre8722Sbpaid8722Sbdebit.
  ///
  /// In en, this message translates to:
  /// **'Other Pre-Paid Debit Card'**
  String get method250Sbother8722Sbpre8722Sbpaid8722Sbdebit;

  /// No description provided for @method250Sbsepa.
  ///
  /// In en, this message translates to:
  /// **'SEPA (EU) bank transfer'**
  String get method250Sbsepa;

  /// No description provided for @method250Sbspecific8722Sbbank.
  ///
  /// In en, this message translates to:
  /// **'Transfers with specific bank'**
  String get method250Sbspecific8722Sbbank;

  /// No description provided for @method250Sbwechat.
  ///
  /// In en, this message translates to:
  /// **'Wechat'**
  String get method250Sbwechat;

  /// No description provided for @method250Sbyandex.
  ///
  /// In en, this message translates to:
  /// **'Yandex Money'**
  String get method250Sbyandex;

  /// No description provided for @method250Sbyoomoney.
  ///
  /// In en, this message translates to:
  /// **'YooMoney'**
  String get method250Sbyoomoney;

  /// No description provided for @morph250Sbcheckbox250Sbfaq8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'How does this work?'**
  String get morph250Sbcheckbox250Sbfaq8722Sblink;

  /// No description provided for @morph250Sbdeposit250Sbaddress8722Sbinput250Sbhelper.
  ///
  /// In en, this message translates to:
  /// **'This address will be used for a refund if anything goes wrong during the ChangeNow trade'**
  String get morph250Sbdeposit250Sbaddress8722Sbinput250Sbhelper;

  /// No description provided for @morph250Sbdeposit250Sbaddress8722Sbinput250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Refund {cryptocurrencyName} address'**
  String morph250Sbdeposit250Sbaddress8722Sbinput250Sbtext(Object cryptocurrencyName);

  /// No description provided for @morph250Sbdeposit250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Show me the deposit {cryptocurencyName} address!'**
  String morph250Sbdeposit250Sbbutton(Object cryptocurencyName);

  /// No description provided for @morph250Sberror250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Error while creating the ChangeNow trade!'**
  String get morph250Sberror250Sbtitle;

  /// No description provided for @morph250Sbservice8722Sbdown.
  ///
  /// In en, this message translates to:
  /// **'ChangeNow’s XMR service is temporary unavailable. Try again later.'**
  String get morph250Sbservice8722Sbdown;

  /// No description provided for @morph250Sbwithdrawal250Sbaddress8722Sbinput250Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Receiving {cryptocurrencyName} address'**
  String morph250Sbwithdrawal250Sbaddress8722Sbinput250Sbtext(Object cryptocurrencyName);

  /// No description provided for @morph250Sbwithdrawal250Sblimits8722Sbmax.
  ///
  /// In en, this message translates to:
  /// **'Maximum'**
  String get morph250Sbwithdrawal250Sblimits8722Sbmax;

  /// No description provided for @morph250Sbwithdrawal250Sblimits8722Sbmin.
  ///
  /// In en, this message translates to:
  /// **'Minimum'**
  String get morph250Sbwithdrawal250Sblimits8722Sbmin;

  /// No description provided for @morph250Sbwithdrawal250Sblimits8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Limits for this ChangeNow trade:'**
  String get morph250Sbwithdrawal250Sblimits8722Sbtitle;

  /// No description provided for @new8722Sbad250Sbdisabled8722Sbtype8722Sbselector250Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'Insufficient balance. Required: {amount_required}.'**
  String new8722Sbad250Sbdisabled8722Sbtype8722Sbselector250Sbnotice(Object amount_required);

  /// No description provided for @new8722Sbad250Sbemail8722Sbverified250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'For users with verified email only'**
  String get new8722Sbad250Sbemail8722Sbverified250Sblabel;

  /// No description provided for @new8722Sbad250Sbemail8722Sbverified250Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Useful if you\'re experiencing problems with \"coinlockers\"'**
  String get new8722Sbad250Sbemail8722Sbverified250Sbtip;

  /// No description provided for @new8722Sbad250Sboptions250Sbad8722Sbcreation8722Sbmode250Sbcoins.
  ///
  /// In en, this message translates to:
  /// **'Trade {assetName}'**
  String new8722Sbad250Sboptions250Sbad8722Sbcreation8722Sbmode250Sbcoins(Object assetName);

  /// No description provided for @new8722Sbad250Sbreview250Sbemail8722Sbverified.
  ///
  /// In en, this message translates to:
  /// **'For users with verified email only'**
  String get new8722Sbad250Sbreview250Sbemail8722Sbverified;

  /// No description provided for @nojs250Sbdashboard250Sbsave8722Sbvacations8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Save vacations'**
  String get nojs250Sbdashboard250Sbsave8722Sbvacations8722Sbbtn;

  /// No description provided for @nojs250Sberror250Sblogin250Sbunauthorized.
  ///
  /// In en, this message translates to:
  /// **'Wrong username/password/one-time password!'**
  String get nojs250Sberror250Sblogin250Sbunauthorized;

  /// No description provided for @nojs250Sberror250Sbserver.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the request. Please refresh the page and try again. If the problem persists, please contact our support.'**
  String get nojs250Sberror250Sbserver;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Please provide a valid {assetName} address.'**
  String nojs250Sberror250Sbvalidation250Sbaddress(Object assetName);

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid amount.'**
  String get nojs250Sberror250Sbvalidation250Sbamount;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbcaptcha.
  ///
  /// In en, this message translates to:
  /// **'Captcha failed. Please try again'**
  String get nojs250Sberror250Sbvalidation250Sbcaptcha;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbconfirm8722Sbpassword.
  ///
  /// In en, this message translates to:
  /// **'Entered passwords didn\'t match.'**
  String get nojs250Sberror250Sbvalidation250Sbconfirm8722Sbpassword;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbemail.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid email.'**
  String get nojs250Sberror250Sbvalidation250Sbemail;

  /// No description provided for @nojs250Sberror250Sbvalidation250SbfeedbackMsg.
  ///
  /// In en, this message translates to:
  /// **'Feedback message must be 256 characters maximum.'**
  String get nojs250Sberror250Sbvalidation250SbfeedbackMsg;

  /// No description provided for @nojs250Sberror250Sbvalidation250SbfeedbackType.
  ///
  /// In en, this message translates to:
  /// **'Please select one of the allowed feedback types: \'trust\', \'positive\', \'neutral\', \'negative\' or \'block\'.'**
  String get nojs250Sberror250Sbvalidation250SbfeedbackType;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbgeneric8722Sbstring.
  ///
  /// In en, this message translates to:
  /// **'Please change the text so that it is within specified limits.'**
  String get nojs250Sberror250Sbvalidation250Sbgeneric8722Sbstring;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbhomepage.
  ///
  /// In en, this message translates to:
  /// **'Must be a full valid URL (i.e. including \'https://\' etc)'**
  String get nojs250Sberror250Sbvalidation250Sbhomepage;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbintroduction.
  ///
  /// In en, this message translates to:
  /// **'Must be a string no more than 65536 characters long.'**
  String get nojs250Sberror250Sbvalidation250Sbintroduction;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbotp.
  ///
  /// In en, this message translates to:
  /// **'OTP must be a 6 digit value'**
  String get nojs250Sberror250Sbvalidation250Sbotp;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbpassword.
  ///
  /// In en, this message translates to:
  /// **'Password must be 8-72 characters long'**
  String get nojs250Sberror250Sbvalidation250Sbpassword;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbreputation8722Sbimport8722Sbplatform8722Sbusername.
  ///
  /// In en, this message translates to:
  /// **'Username must be a string 1-30 characters long.'**
  String get nojs250Sberror250Sbvalidation250Sbreputation8722Sbimport8722Sbplatform8722Sbusername;

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbtos.
  ///
  /// In en, this message translates to:
  /// **'In order to use our site, please read and agree with {appName} Terms of Service.'**
  String nojs250Sberror250Sbvalidation250Sbtos(Object appName);

  /// No description provided for @nojs250Sberror250Sbvalidation250Sbusername.
  ///
  /// In en, this message translates to:
  /// **'Username must be 3-16 characters long. Allowed characters: a-z, A-Z, 0-9, -, _'**
  String get nojs250Sberror250Sbvalidation250Sbusername;

  /// No description provided for @nojs250Sbfilter250Sblocal8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'LOCAL'**
  String get nojs250Sbfilter250Sblocal8722Sblabel;

  /// No description provided for @nojs250Sbfilter250Sbonline8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'ONLINE'**
  String get nojs250Sbfilter250Sbonline8722Sblabel;

  /// No description provided for @nojs250Sbformula250Sbinstructions250Sbfunctions.
  ///
  /// In en, this message translates to:
  /// **'You can use the following functions (can be nested): <strong>min(), max(), floor(), ceiling(), avg()</strong>'**
  String get nojs250Sbformula250Sbinstructions250Sbfunctions;

  /// No description provided for @nojs250Sbformula250Sbinstructions250Sboperators.
  ///
  /// In en, this message translates to:
  /// **'You can use the following operators: <strong>+ - * /</strong>'**
  String get nojs250Sbformula250Sbinstructions250Sboperators;

  /// No description provided for @nojs250Sbformula250Sbinstructions250Sbpunctuation.
  ///
  /// In en, this message translates to:
  /// **'You can use the following punctuation symbols: <strong>( ) . ,</strong>'**
  String get nojs250Sbformula250Sbinstructions250Sbpunctuation;

  /// No description provided for @nojs250Sbformula250Sbtickers250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'All available market tickers'**
  String get nojs250Sbformula250Sbtickers250Sblabel;

  /// No description provided for @nojs250Sbformula250Sbvalidator250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Check formula'**
  String get nojs250Sbformula250Sbvalidator250Sbbtn;

  /// No description provided for @nojs250Sbformula250Sbvalidator250Sbinstruction.
  ///
  /// In en, this message translates to:
  /// **'Use this tool to check your price formula. <br /> NOTE: after you\'ve confirmed that your formula works as expected you should copy it into the actual form above. This tool is to check formula validity only.'**
  String get nojs250Sbformula250Sbvalidator250Sbinstruction;

  /// No description provided for @nojs250Sbformula250Sbvalidator250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Formula validation tool'**
  String get nojs250Sbformula250Sbvalidator250Sblabel;

  /// No description provided for @nojs250Sbmorph8722Sbwithdrawal.
  ///
  /// In en, this message translates to:
  /// **'I want to withdraw arbitration bond to a {cryptocurrencyName} wallet'**
  String nojs250Sbmorph8722Sbwithdrawal(Object cryptocurrencyName);

  /// No description provided for @nojs250Sbmorph8722Sbwithdrawal250Sbbutton8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Begin'**
  String get nojs250Sbmorph8722Sbwithdrawal250Sbbutton8722Sblabel;

  /// No description provided for @nojs250Sbmorph8722Sbwithdrawal250Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'Withdrawing {assetSymbol} arbitration bond to a {cryptocurrencyName} wallet'**
  String nojs250Sbmorph8722Sbwithdrawal250Sbnotice(Object assetSymbol, Object cryptocurrencyName);

  /// No description provided for @nojs250Sbno8722Sbgoogle8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'You can use {value} service to get your location\'s coordinates'**
  String nojs250Sbno8722Sbgoogle8722Sbtext(Object value);

  /// No description provided for @nojs250Sbsettings250Sbsave8722Sbtelegram8722Sbid250Sbbutton8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Save Telegram ID'**
  String get nojs250Sbsettings250Sbsave8722Sbtelegram8722Sbid250Sbbutton8722Sblabel;

  /// No description provided for @nojs250Sbtrade250Sbchat250Sbrefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get nojs250Sbtrade250Sbchat250Sbrefresh;

  /// No description provided for @note250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Add a note on {username}'**
  String note250Sbbutton(Object username);

  /// No description provided for @note250Sbcreated.
  ///
  /// In en, this message translates to:
  /// **'Created {at}'**
  String note250Sbcreated(Object at);

  /// No description provided for @note250Sbinput250Sbplaceholder.
  ///
  /// In en, this message translates to:
  /// **'This is a private note for your own reference, it will not be visible to this user or any other user.'**
  String get note250Sbinput250Sbplaceholder;

  /// No description provided for @note250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your note on {username} (only seen by you)'**
  String note250Sbtitle(Object username);

  /// No description provided for @note250Sbupdated.
  ///
  /// In en, this message translates to:
  /// **'edited {at}'**
  String note250Sbupdated(Object at);

  /// No description provided for @notice250Sbnon8722Sbcustodial.
  ///
  /// In en, this message translates to:
  /// **'Fully non-custodial trade settlements are now active! <a href=\"https://t.me/{appName}\" target=\"_blank\" class=\"next-link\">Let us know</a> if you have any questions or encounter any problems. In case you missed it, <a href=\"/blog/announcements/fully-non-custodial-trade-settlements\" target=\"_blank\" class=\"next-link\">you can read about the update in detail here.</a>'**
  String notice250Sbnon8722Sbcustodial(Object appName);

  /// No description provided for @notification250Sbmarked8722Sball8722Sbread.
  ///
  /// In en, this message translates to:
  /// **'Mark all notifications read'**
  String get notification250Sbmarked8722Sball8722Sbread;

  /// No description provided for @notification250Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'You have a new message in trade {tradeId} from {username}'**
  String notification250Sbmessage(Object tradeId, Object username);

  /// No description provided for @notification250Sbno8722Sbnotifications.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have any notifications yet'**
  String get notification250Sbno8722Sbnotifications;

  /// No description provided for @notification250Sbread.
  ///
  /// In en, this message translates to:
  /// **'Read notifications'**
  String get notification250Sbread;

  /// No description provided for @notification250Sbtrade8722Sbcancelled.
  ///
  /// In en, this message translates to:
  /// **'Trade {tradeId} has been cancelled by {username}'**
  String notification250Sbtrade8722Sbcancelled(Object tradeId, Object username);

  /// No description provided for @notification250Sbtrade8722Sbcomplete.
  ///
  /// In en, this message translates to:
  /// **'Your trade {tradeId} with {username} has been completed'**
  String notification250Sbtrade8722Sbcomplete(Object tradeId, Object username);

  /// No description provided for @notification250Sbtrade8722Sbdisputed.
  ///
  /// In en, this message translates to:
  /// **'Trade {tradeId} has been disputed by {username}'**
  String notification250Sbtrade8722Sbdisputed(Object tradeId, Object username);

  /// No description provided for @notification250Sbtrade8722Sbpayment8722Sbmarked8722Sbcomplete.
  ///
  /// In en, this message translates to:
  /// **'{username} has completed the payment in trade {tradeId}'**
  String notification250Sbtrade8722Sbpayment8722Sbmarked8722Sbcomplete(Object username, Object tradeId);

  /// No description provided for @notification250Sbtrade8722Sbrequest.
  ///
  /// In en, this message translates to:
  /// **'You have a new offer {tradeId} from user {username}'**
  String notification250Sbtrade8722Sbrequest(Object tradeId, Object username);

  /// No description provided for @notification250Sbunread.
  ///
  /// In en, this message translates to:
  /// **'Unread notifications'**
  String get notification250Sbunread;

  /// No description provided for @otp8722Sbtip8722Sb08722Sb0.
  ///
  /// In en, this message translates to:
  /// **'If you have enabled two-factor authentication, enter your 6 digit one-time password here.'**
  String get otp8722Sbtip8722Sb08722Sb0;

  /// No description provided for @otp8722Sbtip8722Sb08722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Where do I find my one-time password?'**
  String get otp8722Sbtip8722Sb08722Sb1;

  /// No description provided for @otp8722Sbtip8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Enter your 6 digit one-time password from the 2FA mobile app here.'**
  String get otp8722Sbtip8722Sb1;

  /// No description provided for @otp8722Sbtitle8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'One-time password (if enabled)'**
  String get otp8722Sbtitle8722Sb0;

  /// No description provided for @otp8722Sbtitle8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'One-time password'**
  String get otp8722Sbtitle8722Sb1;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @password8722Sbreset250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get password8722Sbreset250Sbbtn;

  /// No description provided for @password8722Sbreset250Sbconfirm8722Sbnew8722Sbpassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get password8722Sbreset250Sbconfirm8722Sbnew8722Sbpassword;

  /// No description provided for @password8722Sbreset250Sbconfirm8722Sbnew8722Sbpassword8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your new password'**
  String get password8722Sbreset250Sbconfirm8722Sbnew8722Sbpassword8722Sbtip;

  /// No description provided for @password8722Sbreset250Sberror.
  ///
  /// In en, this message translates to:
  /// **'There has been an error with your request'**
  String get password8722Sbreset250Sberror;

  /// No description provided for @password8722Sbreset250Sbnew8722Sbpassword.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get password8722Sbreset250Sbnew8722Sbpassword;

  /// No description provided for @password8722Sbreset250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'After changing the password you will have to log in again using your new password'**
  String get password8722Sbreset250Sbsubtitle;

  /// No description provided for @password8722Sbreset250Sbsuccess.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get password8722Sbreset250Sbsuccess;

  /// No description provided for @password8722Sbreset250Sbsuccess8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'You will now be redirected to the login page.'**
  String get password8722Sbreset250Sbsuccess8722Sbtip;

  /// No description provided for @password8722Sbreset250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get password8722Sbreset250Sbtitle;

  /// No description provided for @password8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'8-72 characters.'**
  String get password8722Sbtip;

  /// No description provided for @post8722Sbad250Sbamount8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get post8722Sbad250Sbamount8722Sbtitle;

  /// No description provided for @post8722Sbad250Sbcountry250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get post8722Sbad250Sbcountry250Sbtitle;

  /// No description provided for @post8722Sbad250Sbcurrency250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get post8722Sbad250Sbcurrency250Sbtitle;

  /// No description provided for @post8722Sbad250Sbdetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get post8722Sbad250Sbdetails;

  /// No description provided for @post8722Sbad250Sberror250Sbcorrect8722Sberrors.
  ///
  /// In en, this message translates to:
  /// **'Please correct the highlighted errors'**
  String get post8722Sbad250Sberror250Sbcorrect8722Sberrors;

  /// No description provided for @post8722Sbad250Sberror250Sbdialog8722Sbback8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get post8722Sbad250Sberror250Sbdialog8722Sbback8722Sbbtn;

  /// No description provided for @post8722Sbad250Sberror250Sbdialog8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get post8722Sbad250Sberror250Sbdialog8722Sbbtn;

  /// No description provided for @post8722Sbad250Sberror250Sbdialog8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Form error'**
  String get post8722Sbad250Sberror250Sbdialog8722Sbtitle;

  /// No description provided for @post8722Sbad250Sberror250Sbdialog8722Sbtitle8722Sbtoo8722Sbmany8722Sbads.
  ///
  /// In en, this message translates to:
  /// **'Too many ads'**
  String get post8722Sbad250Sberror250Sbdialog8722Sbtitle8722Sbtoo8722Sbmany8722Sbads;

  /// No description provided for @post8722Sbad250Sberror250Sbfirst8722Sbtime8722Sblimit8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid first time {assetSymbol} limit value. Only numbers between{min_asset_amount} and {max_asset_amount} are allowed.'**
  String post8722Sbad250Sberror250Sbfirst8722Sbtime8722Sblimit8722Sbnot8722Sbvalid(Object assetSymbol, Object min_asset_amount, Object max_asset_amount);

  /// No description provided for @post8722Sbad250Sberror250Sblimit8722Sbamounts8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid limit to amounts value. Only integers between 1 and 1000000000000 are allowed.'**
  String get post8722Sbad250Sberror250Sblimit8722Sbamounts8722Sbnot8722Sbvalid;

  /// No description provided for @post8722Sbad250Sberror250Sblimit8722Sbrequests8722Sbcontent.
  ///
  /// In en, this message translates to:
  /// **'You are trying to create too many ads'**
  String get post8722Sbad250Sberror250Sblimit8722Sbrequests8722Sbcontent;

  /// No description provided for @post8722Sbad250Sberror250Sblimit8722Sbrequests8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Too many requests'**
  String get post8722Sbad250Sberror250Sblimit8722Sbrequests8722Sbtitle;

  /// No description provided for @post8722Sbad250Sberror250Sbmargin8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid margin value. Only numbers between -100 and 1000 are allowed.'**
  String get post8722Sbad250Sberror250Sbmargin8722Sbnot8722Sbvalid;

  /// No description provided for @post8722Sbad250Sberror250Sbmax8722Sbamount8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid maximum amount value. Only numbers between 0.000000000001 and 10000000000000 are allowed.'**
  String get post8722Sbad250Sberror250Sbmax8722Sbamount8722Sbnot8722Sbvalid;

  /// No description provided for @post8722Sbad250Sberror250Sbmin8722Sbamount8722Sbless8722Sbthan8722Sbbalance.
  ///
  /// In en, this message translates to:
  /// **'Minimum transaction amount cannot be lower than your current balance. Try lowering minimum amount or depositing funds to your {appName} wallet.'**
  String post8722Sbad250Sberror250Sbmin8722Sbamount8722Sbless8722Sbthan8722Sbbalance(Object appName);

  /// No description provided for @post8722Sbad250Sberror250Sbmin8722Sbamount8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid minimum amount value. Only numbers between 0.000000000001 and 10000000000000 are allowed.'**
  String get post8722Sbad250Sberror250Sbmin8722Sbamount8722Sbnot8722Sbvalid;

  /// No description provided for @post8722Sbad250Sberror250Sbnetwork.
  ///
  /// In en, this message translates to:
  /// **'Network error'**
  String get post8722Sbad250Sberror250Sbnetwork;

  /// No description provided for @post8722Sbad250Sberror250Sbpayment8722Sbwindow8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid payment window value. Only integers between 15 and 90 are allowed.'**
  String get post8722Sbad250Sberror250Sbpayment8722Sbwindow8722Sbnot8722Sbvalid;

  /// No description provided for @post8722Sbad250Sberror250Sbprice8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid price value. Only numbers between 0.000000000001 and 10000000000000 are allowed.'**
  String get post8722Sbad250Sberror250Sbprice8722Sbnot8722Sbvalid;

  /// No description provided for @post8722Sbad250Sberror250Sbrequire8722Sbfeedback8722Sbnot8722Sbvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid limit to require feedback score value. Only integers between 0 and 100 are allowed.'**
  String get post8722Sbad250Sberror250Sbrequire8722Sbfeedback8722Sbnot8722Sbvalid;

  /// No description provided for @post8722Sbad250Sberror250Sbwallet8722Sbbalance.
  ///
  /// In en, this message translates to:
  /// **'Wallet balance less than required minimum for this ad type'**
  String get post8722Sbad250Sberror250Sbwallet8722Sbbalance;

  /// No description provided for @post8722Sbad250Sbfirst8722Sbtime8722Sbxmr8722Sblimit.
  ///
  /// In en, this message translates to:
  /// **'First time limit ({assetSymbol})'**
  String post8722Sbad250Sbfirst8722Sbtime8722Sbxmr8722Sblimit(Object assetSymbol);

  /// No description provided for @post8722Sbad250Sbfirst8722Sbtime8722Sbxmr8722Sblimit8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Optional. Limit maximum transaction amount for users you don\'t have previous trades with. Minimum 0.'**
  String get post8722Sbad250Sbfirst8722Sbtime8722Sbxmr8722Sblimit8722Sbtip;

  /// No description provided for @post8722Sbad250Sbfor8722Sbtrusted8722Sbswitch8722Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Makes this ad accessible only for the users you have marked as trusted'**
  String get post8722Sbad250Sbfor8722Sbtrusted8722Sbswitch8722Sbdescription;

  /// No description provided for @post8722Sbad250Sbfor8722Sbtrusted8722Sbswitch8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'For trusted users only'**
  String get post8722Sbad250Sbfor8722Sbtrusted8722Sbswitch8722Sblabel;

  /// No description provided for @post8722Sbad250Sblimit8722Sbfiat8722Sbamounts.
  ///
  /// In en, this message translates to:
  /// **'Limit amounts to'**
  String get post8722Sbad250Sblimit8722Sbfiat8722Sbamounts;

  /// No description provided for @post8722Sbad250Sblimit8722Sbfiat8722Sbamounts8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Optional. Restrict trading amounts to specific comma-separated integers, for example 20,50,100. In fiat currency (USD/EUR/etc). Handy for coupons, gift cards, etc.'**
  String get post8722Sbad250Sblimit8722Sbfiat8722Sbamounts8722Sbtip;

  /// No description provided for @post8722Sbad250Sblocation250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get post8722Sbad250Sblocation250Sbtitle;

  /// No description provided for @post8722Sbad250Sblogged8722Sbout8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'In order to post a new ad please {logIn} or {signUp}'**
  String post8722Sbad250Sblogged8722Sbout8722Sbnotice(Object logIn, Object signUp);

  /// No description provided for @post8722Sbad250Sblogged8722Sbout8722Sbnotice8722Sblog8722Sbin.
  ///
  /// In en, this message translates to:
  /// **'log in'**
  String get post8722Sbad250Sblogged8722Sbout8722Sbnotice8722Sblog8722Sbin;

  /// No description provided for @post8722Sbad250Sblogged8722Sbout8722Sbnotice8722Sbsign8722Sbup.
  ///
  /// In en, this message translates to:
  /// **'sign up'**
  String get post8722Sbad250Sblogged8722Sbout8722Sbnotice8722Sbsign8722Sbup;

  /// No description provided for @post8722Sbad250Sbmax8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Maximum amount'**
  String get post8722Sbad250Sbmax8722Sbamount;

  /// No description provided for @post8722Sbad250Sbmax8722Sbamount8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Optional. Maximum transaction limit in one trade.'**
  String get post8722Sbad250Sbmax8722Sbamount8722Sbtip;

  /// No description provided for @post8722Sbad250Sbmin8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Minimum amount'**
  String get post8722Sbad250Sbmin8722Sbamount;

  /// No description provided for @post8722Sbad250Sbmin8722Sbamount8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Optional. Minimum transaction limit in one trade'**
  String get post8722Sbad250Sbmin8722Sbamount8722Sbtip;

  /// No description provided for @post8722Sbad250Sbmin8722Sbfeedback8722Sbscore.
  ///
  /// In en, this message translates to:
  /// **'Minimum feedback score'**
  String get post8722Sbad250Sbmin8722Sbfeedback8722Sbscore;

  /// No description provided for @post8722Sbad250Sbmin8722Sbfeedback8722Sbscore8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Optional. Minimum user feedback score required to request a trade from 0 to 100.'**
  String get post8722Sbad250Sbmin8722Sbfeedback8722Sbscore8722Sbtip;

  /// No description provided for @post8722Sbad250Sbpayment8722Sbmethod8722Sbdetail.
  ///
  /// In en, this message translates to:
  /// **'Payment method detail'**
  String get post8722Sbad250Sbpayment8722Sbmethod8722Sbdetail;

  /// No description provided for @post8722Sbad250Sbpayment8722Sbmethod8722Sbdetail8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Optional. Specify some brief detail about the payment method to be shown in the ad list, such as the name of the bank in case the payment method is bank transfer. Maximum 64 characters.'**
  String get post8722Sbad250Sbpayment8722Sbmethod8722Sbdetail8722Sbtip;

  /// No description provided for @post8722Sbad250Sbpayment8722Sbmethod8722Sbinfo.
  ///
  /// In en, this message translates to:
  /// **'Payment method info'**
  String get post8722Sbad250Sbpayment8722Sbmethod8722Sbinfo;

  /// No description provided for @post8722Sbad250Sbpayment8722Sbmethod8722Sbinfo8722Sbtip8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Specify payment method info to be shown during trade. Maximum 4096 characters. You can use markdown to style your payment method info (images not allowed).'**
  String get post8722Sbad250Sbpayment8722Sbmethod8722Sbinfo8722Sbtip8722Sb0;

  /// No description provided for @post8722Sbad250Sbpayment8722Sbmethod250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Payment method'**
  String get post8722Sbad250Sbpayment8722Sbmethod250Sbtitle;

  /// No description provided for @post8722Sbad250Sbpayment8722Sbwindow.
  ///
  /// In en, this message translates to:
  /// **'Payment window (minutes)'**
  String get post8722Sbad250Sbpayment8722Sbwindow;

  /// No description provided for @post8722Sbad250Sbpayment8722Sbwindow8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Payment window time in minutes. Minimum 15. Maximum 90. If none provided then sets to default of 90.'**
  String get post8722Sbad250Sbpayment8722Sbwindow8722Sbtip;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbfixed.
  ///
  /// In en, this message translates to:
  /// **'Fixed price'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbfixed;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbfixed8722Sbprice8722Sbin.
  ///
  /// In en, this message translates to:
  /// **'Fixed price in {currency}'**
  String post8722Sbad250Sbprice8722Sbtype250Sbfixed8722Sbprice8722Sbin(Object currency);

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbfixed8722Sbprice8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Price for 1 {assetSymbol} in {currency}. This price will not change unless you manually change it.'**
  String post8722Sbad250Sbprice8722Sbtype250Sbfixed8722Sbprice8722Sbtip(Object assetSymbol, Object currency);

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbfixed8722Sbprice8722Sbtip250Sbnojs.
  ///
  /// In en, this message translates to:
  /// **'Price for 1 coin in the selected ad currency. This price will not change unless you manually change it.'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbfixed8722Sbprice8722Sbtip250Sbnojs;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbfloating.
  ///
  /// In en, this message translates to:
  /// **'Floating price'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbfloating;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbfloating8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Make the exchange rate float with the market while the trade is open. The trading price is determined at the time of finalization. Note that an extra 15% reserve is added to the {assetName} amount reserved into arbitration bond. The excess amount will be returned after the trade is finalized.'**
  String post8722Sbad250Sbprice8722Sbtype250Sbfloating8722Sbtip(Object assetName);

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbfloating8722Sbtip250Sbnojs.
  ///
  /// In en, this message translates to:
  /// **'Make the exchange rate float with the market while the trade is open. The trading price is determined at the time of the trade finalization. Note that an extra 15% reserve is added to the selected cryptocurrency asset amount reserved to arbitration bond. The excess amount will be returned after the trade is finished.'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbfloating8722Sbtip250Sbnojs;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbmargin.
  ///
  /// In en, this message translates to:
  /// **'Margin in %'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbmargin;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbmargin250Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Margin is the difference between your price and market price. 0% is the market price. Use positive value to go above market price and negative value to go below market price.'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbmargin250Sbtip;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbmarket.
  ///
  /// In en, this message translates to:
  /// **'Market price'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbmarket;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbradio250Sbformula.
  ///
  /// In en, this message translates to:
  /// **'Price formula (advanced)'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbradio250Sbformula;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Market price means price on your ad will change as the market price changes. Fixed price means that despite market fluctuations your price will stay the same until you manually change it. Use price formula (advanced) to create more complicated pricing mechanisms.'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbtip;

  /// No description provided for @post8722Sbad250Sbprice8722Sbtype250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Price input type'**
  String get post8722Sbad250Sbprice8722Sbtype250Sbtitle;

  /// No description provided for @post8722Sbad250Sbprice250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get post8722Sbad250Sbprice250Sbtitle;

  /// No description provided for @post8722Sbad250Sbpublish8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Publish advertisement'**
  String get post8722Sbad250Sbpublish8722Sbbtn;

  /// No description provided for @post8722Sbad250Sbrestrictions.
  ///
  /// In en, this message translates to:
  /// **'Restrictions'**
  String get post8722Sbad250Sbrestrictions;

  /// No description provided for @post8722Sbad250Sbreview.
  ///
  /// In en, this message translates to:
  /// **'Review your advertisement'**
  String get post8722Sbad250Sbreview;

  /// No description provided for @post8722Sbad250Sbreview250Sbad8722Sbtype.
  ///
  /// In en, this message translates to:
  /// **'Ad type'**
  String get post8722Sbad250Sbreview250Sbad8722Sbtype;

  /// No description provided for @post8722Sbad250Sbreview250Sbmargin.
  ///
  /// In en, this message translates to:
  /// **'Margin'**
  String get post8722Sbad250Sbreview250Sbmargin;

  /// No description provided for @post8722Sbad250Sbreview250Sbminutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get post8722Sbad250Sbreview250Sbminutes;

  /// No description provided for @post8722Sbad250Sbreview250Sbno.
  ///
  /// In en, this message translates to:
  /// **'no'**
  String get post8722Sbad250Sbreview250Sbno;

  /// No description provided for @post8722Sbad250Sbreview250Sbyes.
  ///
  /// In en, this message translates to:
  /// **'yes'**
  String get post8722Sbad250Sbreview250Sbyes;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Before creating an advertisement please read through our {termsOfservice} and {guides}'**
  String post8722Sbad250Sbrules8722Sbtext8722Sb0(Object termsOfservice, Object guides);

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb08722Sbguides.
  ///
  /// In en, this message translates to:
  /// **'guides'**
  String get post8722Sbad250Sbrules8722Sbtext8722Sb08722Sbguides;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb08722Sbterms8722Sbof8722Sbservice.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get post8722Sbad250Sbrules8722Sbtext8722Sb08722Sbterms8722Sbof8722Sbservice;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Each completed trade costs advertisers 1% of the total trade amount (arbitration protection fee).'**
  String get post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb0;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb1.
  ///
  /// In en, this message translates to:
  /// **'You must have at least {minimumXmrAmount} {assetSymbol} in your {appName} arbitration bond wallet for a posted {assetSymbol} sell ad to be visible.'**
  String post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb1(Object minimumXmrAmount, Object assetSymbol, Object appName);

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb1250Sbagoradesk8722Sbnojs.
  ///
  /// In en, this message translates to:
  /// **'You must have at least {minimumXmrAmount} {assetSymbol} in your {appName} wallet for a posted {assetSymbol} sell or {assetSymbol} call sell or {assetSymbol} put buy ad to be visible.'**
  String post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb1250Sbagoradesk8722Sbnojs(Object minimumXmrAmount, Object assetSymbol, Object appName);

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Each user is allowed to create up to {maximumNumberOfAds} ads.'**
  String post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb2(Object maximumNumberOfAds);

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Once a trade is opened the price is final, except when there is a clear mistake in the pricing.'**
  String get post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb3;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb4.
  ///
  /// In en, this message translates to:
  /// **'You are not allowed to buy or sell {assetName} on behalf of someone else (brokering).'**
  String post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb4(Object assetName);

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb4250Sbnojs.
  ///
  /// In en, this message translates to:
  /// **'You are not allowed to buy or sell cryptocurrency on behalf of someone else (brokering).'**
  String get post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb4250Sbnojs;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb5.
  ///
  /// In en, this message translates to:
  /// **'You may only use payment accounts that are registered in your own name (no third party payments!).'**
  String get post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb5;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb6.
  ///
  /// In en, this message translates to:
  /// **'You must provide your payment details in the advertisement or in the trade chat.'**
  String get post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb6;

  /// No description provided for @post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb7.
  ///
  /// In en, this message translates to:
  /// **'All communication must happen on {appName}.'**
  String post8722Sbad250Sbrules8722Sbtext8722Sb18722Sb7(Object appName);

  /// No description provided for @post8722Sbad250Sbrules8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Advertisement rules and requirements'**
  String get post8722Sbad250Sbrules8722Sbtitle;

  /// No description provided for @post8722Sbad250Sbsettlement8722Sbaddress250Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Required. Your address to which the coins will be sent to. Cannot be an internal {appName} address.'**
  String post8722Sbad250Sbsettlement8722Sbaddress250Sbtip(Object appName);

  /// No description provided for @post8722Sbad250Sbstep8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Step {step_number}'**
  String post8722Sbad250Sbstep8722Sb1(Object step_number);

  /// No description provided for @post8722Sbad250Sbstep8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Step 2'**
  String get post8722Sbad250Sbstep8722Sb2;

  /// No description provided for @post8722Sbad250Sbstep8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Step 3'**
  String get post8722Sbad250Sbstep8722Sb3;

  /// No description provided for @post8722Sbad250Sbstep8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'Step 4'**
  String get post8722Sbad250Sbstep8722Sb4;

  /// No description provided for @post8722Sbad250Sbstep8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Step 5'**
  String get post8722Sbad250Sbstep8722Sb5;

  /// No description provided for @post8722Sbad250Sbstep8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'Step 6'**
  String get post8722Sbad250Sbstep8722Sb6;

  /// No description provided for @post8722Sbad250Sbswitch8722Sbform8722Sbtoggle250Sbshow8722Sbfull.
  ///
  /// In en, this message translates to:
  /// **'Show full form'**
  String get post8722Sbad250Sbswitch8722Sbform8722Sbtoggle250Sbshow8722Sbfull;

  /// No description provided for @post8722Sbad250Sbswitch8722Sbform8722Sbtoggle250Sbshow8722Sbstep.
  ///
  /// In en, this message translates to:
  /// **'Show step view'**
  String get post8722Sbad250Sbswitch8722Sbform8722Sbtoggle250Sbshow8722Sbstep;

  /// No description provided for @post8722Sbad250Sbterms.
  ///
  /// In en, this message translates to:
  /// **'Terms of trade'**
  String get post8722Sbad250Sbterms;

  /// No description provided for @post8722Sbad250Sbterms8722Sbtip8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Terms of trade of the advertisement, maximum 4096 characters. You can use markdown to style your ad\'s terms (images not allowed).'**
  String get post8722Sbad250Sbterms8722Sbtip8722Sb0;

  /// No description provided for @post8722Sbad250Sbterms8722Sbtip8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'How to use markdown?'**
  String get post8722Sbad250Sbterms8722Sbtip8722Sb1;

  /// No description provided for @post8722Sbad250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Create an advertisement'**
  String get post8722Sbad250Sbtitle;

  /// No description provided for @post8722Sbad250Sbtrack8722Sbmax8722Sbamount8722Sbliquidity.
  ///
  /// In en, this message translates to:
  /// **'Track maximum amount liquidity'**
  String get post8722Sbad250Sbtrack8722Sbmax8722Sbamount8722Sbliquidity;

  /// No description provided for @post8722Sbad250Sbtrack8722Sbmax8722Sbamount8722Sbliquidity8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'This option limits the liquidity of this advertisement to the max. transaction limit. Buyers cannot open and complete trades for more than this amount. Example: With track liquidity turned on and max. transaction limit set to 100 USD when a buyer opens a trade for 20 USD the max. transaction limit is automatically decreased to 80 USD. It returns to 100 USD if the buyer cancels the trade, and stays at 80 USD if the trade is completed.'**
  String get post8722Sbad250Sbtrack8722Sbmax8722Sbamount8722Sbliquidity8722Sbtip;

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} for cash (locally)'**
  String post8722Sbad250Sbtrade8722Sbtype250Sblocal8722Sbbuy(Object assetName);

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sblocal8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} for cash (locally)'**
  String post8722Sbad250Sbtrade8722Sbtype250Sblocal8722Sbsell(Object assetName);

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sbonline8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} online'**
  String post8722Sbad250Sbtrade8722Sbtype250Sbonline8722Sbbuy(Object assetName);

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sbonline8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} online'**
  String post8722Sbad250Sbtrade8722Sbtype250Sbonline8722Sbsell(Object assetName);

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'I want to...'**
  String get post8722Sbad250Sbtrade8722Sbtype250Sbsubtitle;

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sbtip.
  ///
  /// In en, this message translates to:
  /// **'What kind of trade advertisement do you wish to create? If you wish to sell {assetName} make sure you have {assetName} in your {appName} arbitration bond wallet.'**
  String post8722Sbad250Sbtrade8722Sbtype250Sbtip(Object assetName, Object appName);

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sbtip250Sbnojs.
  ///
  /// In en, this message translates to:
  /// **'What kind of trade advertisement do you wish to create? If you wish to sell Monero, make sure you have Monero in your {appName} arbitration bond wallet.'**
  String post8722Sbad250Sbtrade8722Sbtype250Sbtip250Sbnojs(Object appName);

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sbtip250Sbnojs57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'What kind of trade advertisement do you wish to create? If you wish to sell cryptocurrency make sure you have the relevant cryptocurrency in your {appName} arbitration bond wallet.'**
  String post8722Sbad250Sbtrade8722Sbtype250Sbtip250Sbnojs57Sbagoradesk(Object appName);

  /// No description provided for @post8722Sbad250Sbtrade8722Sbtype250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Type of trade'**
  String get post8722Sbad250Sbtrade8722Sbtype250Sbtitle;

  /// No description provided for @price8722Sbformula8722Sbinterface250Sbtickers250Sbasset8722Sbpairs.
  ///
  /// In en, this message translates to:
  /// **'{asset} pairs'**
  String price8722Sbformula8722Sbinterface250Sbtickers250Sbasset8722Sbpairs(Object asset);

  /// No description provided for @price8722Sbformula8722Sbinterface250Sbtickers250Sbasset8722Sbpairs250Sbother8722Sbasset.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get price8722Sbformula8722Sbinterface250Sbtickers250Sbasset8722Sbpairs250Sbother8722Sbasset;

  /// No description provided for @read8722Sbmore.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get read8722Sbmore;

  /// No description provided for @recaptcha250Sbno8722Sbgoogle8722Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'We have noticed that Google Services are blocked in your browser. Since we use Google\'s reCAPTCHA for some site actions, you will need to find a way to reach Google\'s services (e.g. VPN, proxy, or using a Tor browser).'**
  String get recaptcha250Sbno8722Sbgoogle8722Sbmessage;

  /// No description provided for @receipt250Sbchat8722Sbmessages.
  ///
  /// In en, this message translates to:
  /// **'Messaging'**
  String get receipt250Sbchat8722Sbmessages;

  /// No description provided for @receipt250Sbchat8722Sbmessages8722Sbnone.
  ///
  /// In en, this message translates to:
  /// **'No messages'**
  String get receipt250Sbchat8722Sbmessages8722Sbnone;

  /// No description provided for @receipt250Sbdetails250Sbopened.
  ///
  /// In en, this message translates to:
  /// **'Opened'**
  String get receipt250Sbdetails250Sbopened;

  /// No description provided for @receipt250Sbno8722SbaccountInfo.
  ///
  /// In en, this message translates to:
  /// **'No payment method info provided'**
  String get receipt250Sbno8722SbaccountInfo;

  /// No description provided for @receipt250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'{appName} — Trade ID: {id}'**
  String receipt250Sbtitle(Object appName, Object id);

  /// No description provided for @reputation8722Sbimport250Sbdenied250Sbtip.
  ///
  /// In en, this message translates to:
  /// **'You can try again with a different username'**
  String get reputation8722Sbimport250Sbdenied250Sbtip;

  /// No description provided for @reputation8722Sbimport250Sbdenied250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Denied'**
  String get reputation8722Sbimport250Sbdenied250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbinitial250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Not started'**
  String get reputation8722Sbimport250Sbinitial250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbpending250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get reputation8722Sbimport250Sbpending250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbstats250Sbfeedback.
  ///
  /// In en, this message translates to:
  /// **'feedback'**
  String get reputation8722Sbimport250Sbstats250Sbfeedback;

  /// No description provided for @reputation8722Sbimport250Sbstats250Sbregistered.
  ///
  /// In en, this message translates to:
  /// **'registered'**
  String get reputation8722Sbimport250Sbstats250Sbregistered;

  /// No description provided for @reputation8722Sbimport250Sbstats250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'{platform} reputation'**
  String reputation8722Sbimport250Sbstats250Sbtitle(Object platform);

  /// No description provided for @reputation8722Sbimport250Sbstats250Sbtrades.
  ///
  /// In en, this message translates to:
  /// **'trades'**
  String get reputation8722Sbimport250Sbstats250Sbtrades;

  /// No description provided for @reputation8722Sbimport250Sbstats250Sbvolume.
  ///
  /// In en, this message translates to:
  /// **'volume'**
  String get reputation8722Sbimport250Sbstats250Sbvolume;

  /// No description provided for @reputation8722Sbimport250Sbstep250Sbcode250Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'Add this code somewhere on your public {platform} profile. Once we\'ve verified the code, you can remove it.'**
  String reputation8722Sbimport250Sbstep250Sbcode250Sbmessage(Object platform);

  /// No description provided for @reputation8722Sbimport250Sbstep250Sbcode250Sbmessage250Sblbc.
  ///
  /// In en, this message translates to:
  /// **'Add this code to your LocalBitcoins profile as your personal webpage, adding \".com\" to the end. Once we\'ve verified the code, you can remove it.'**
  String get reputation8722Sbimport250Sbstep250Sbcode250Sbmessage250Sblbc;

  /// No description provided for @reputation8722Sbimport250Sbstep250Sbcode250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Add the code'**
  String get reputation8722Sbimport250Sbstep250Sbcode250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbstep250Sbfinal250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Wait for verification'**
  String get reputation8722Sbimport250Sbstep250Sbfinal250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbstep250Sbusername250Sbinput250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Your {platform} username'**
  String reputation8722Sbimport250Sbstep250Sbusername250Sbinput250Sblabel(Object platform);

  /// No description provided for @reputation8722Sbimport250Sbstep250Sbusername250Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'What\'s your username on {platform}?'**
  String reputation8722Sbimport250Sbstep250Sbusername250Sbmessage(Object platform);

  /// No description provided for @reputation8722Sbimport250Sbstep250Sbusername250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Select username'**
  String get reputation8722Sbimport250Sbstep250Sbusername250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbstepper250Sbfinal250Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'Just wait a little bit for us to verify your profile.'**
  String get reputation8722Sbimport250Sbstepper250Sbfinal250Sbmessage;

  /// No description provided for @reputation8722Sbimport250Sbstepper250Sbfinal250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Almost there!'**
  String get reputation8722Sbimport250Sbstepper250Sbfinal250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbunconfirmed250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Unconfirmed'**
  String get reputation8722Sbimport250Sbunconfirmed250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbverified250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get reputation8722Sbimport250Sbverified250Sbtitle;

  /// No description provided for @reputation8722Sbimport250Sbwizard8722Sbtoggle250Sbedit.
  ///
  /// In en, this message translates to:
  /// **'Edit import info'**
  String get reputation8722Sbimport250Sbwizard8722Sbtoggle250Sbedit;

  /// No description provided for @reputation8722Sbimport250Sbwizard8722Sbtoggle250Sbinitial.
  ///
  /// In en, this message translates to:
  /// **'Link account'**
  String get reputation8722Sbimport250Sbwizard8722Sbtoggle250Sbinitial;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Send reset letter'**
  String get request8722Sbpassword8722Sbreset250Sbbtn;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sbemail.
  ///
  /// In en, this message translates to:
  /// **'Your email'**
  String get request8722Sbpassword8722Sbreset250Sbemail;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sbemail8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Enter verified email that is linked to your account. We will send a letter with password reset instructions'**
  String get request8722Sbpassword8722Sbreset250Sbemail8722Sbtip;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sberror8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'We don\'t have an account associated with this email.'**
  String get request8722Sbpassword8722Sbreset250Sberror8722Sb1;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sberror8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'This email is unverified'**
  String get request8722Sbpassword8722Sbreset250Sberror8722Sb2;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sberror8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get request8722Sbpassword8722Sbreset250Sberror8722Sb3;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sberror8722Sb58722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Please wait before resetting your password again'**
  String get request8722Sbpassword8722Sbreset250Sberror8722Sb58722Sbtext;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sberror8722Sb58722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Too many requests'**
  String get request8722Sbpassword8722Sbreset250Sberror8722Sb58722Sbtitle;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sberror8722Sb6.
  ///
  /// In en, this message translates to:
  /// **'Password reset error'**
  String get request8722Sbpassword8722Sbreset250Sberror8722Sb6;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sbletter8722Sbsent.
  ///
  /// In en, this message translates to:
  /// **'If this email is verified with an account, you\'ll receive a letter.'**
  String get request8722Sbpassword8722Sbreset250Sbletter8722Sbsent;

  /// No description provided for @request8722Sbpassword8722Sbreset250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get request8722Sbpassword8722Sbreset250Sbtitle;

  /// No description provided for @right8722Sbdrawer250Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'Affiliate program'**
  String get right8722Sbdrawer250Sbaffiliate;

  /// No description provided for @right8722Sbdrawer250Sbcancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled trades'**
  String get right8722Sbdrawer250Sbcancelled;

  /// No description provided for @right8722Sbdrawer250Sbcompleted.
  ///
  /// In en, this message translates to:
  /// **'Completed trades'**
  String get right8722Sbdrawer250Sbcompleted;

  /// No description provided for @right8722Sbdrawer250Sbdashboard.
  ///
  /// In en, this message translates to:
  /// **'Open trades & ads'**
  String get right8722Sbdrawer250Sbdashboard;

  /// No description provided for @right8722Sbdrawer250Sblogout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get right8722Sbdrawer250Sblogout;

  /// No description provided for @right8722Sbdrawer250Sbprofile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get right8722Sbdrawer250Sbprofile;

  /// No description provided for @right8722Sbdrawer250Sbsettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get right8722Sbdrawer250Sbsettings;

  /// No description provided for @right8722Sbdrawer250Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get right8722Sbdrawer250Sbwallet;

  /// No description provided for @sanction250Sbaction8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'You are prohibited from performing this action due to the following restriction on your account:'**
  String get sanction250Sbaction8722Sbnotice;

  /// No description provided for @sanction250Sbban250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Banned'**
  String get sanction250Sbban250Sblabel;

  /// No description provided for @sanction250Sbexpires.
  ///
  /// In en, this message translates to:
  /// **'Expires'**
  String get sanction250Sbexpires;

  /// No description provided for @sanction250Sblabel250Sbtrading8722Sbsuspension.
  ///
  /// In en, this message translates to:
  /// **'Trading suspended'**
  String get sanction250Sblabel250Sbtrading8722Sbsuspension;

  /// No description provided for @sanction250Sbreason.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get sanction250Sbreason;

  /// No description provided for @sanction250Sbsanctioned8722Sbat.
  ///
  /// In en, this message translates to:
  /// **'Since'**
  String get sanction250Sbsanctioned8722Sbat;

  /// No description provided for @sanction250Sbuser.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get sanction250Sbuser;

  /// No description provided for @sanction250Sbwallet8722Sbfreeze250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Wallet frozen, trading suspended'**
  String get sanction250Sbwallet8722Sbfreeze250Sblabel;

  /// No description provided for @search250Sball8722Sbmethods.
  ///
  /// In en, this message translates to:
  /// **'All {code} methods'**
  String search250Sball8722Sbmethods(Object code);

  /// No description provided for @search250Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get search250Sbamount;

  /// No description provided for @search250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search250Sbbtn;

  /// No description provided for @search250Sbbuy8722Sbtab.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get search250Sbbuy8722Sbtab;

  /// No description provided for @search250Sbcoordinates250Sblat.
  ///
  /// In en, this message translates to:
  /// **'Latitude'**
  String get search250Sbcoordinates250Sblat;

  /// No description provided for @search250Sbcoordinates250Sblon.
  ///
  /// In en, this message translates to:
  /// **'Longitude'**
  String get search250Sbcoordinates250Sblon;

  /// No description provided for @search250Sbheading8722Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} for cash in {location}'**
  String search250Sbheading8722Sblocal8722Sbbuy(Object assetName, Object location);

  /// No description provided for @search250Sbheading8722Sblocal8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} with cash in {location}'**
  String search250Sbheading8722Sblocal8722Sbsell(Object assetName, Object location);

  /// No description provided for @search250Sbheading8722Sbonline8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} online in {country} {usingMethod}'**
  String search250Sbheading8722Sbonline8722Sbbuy(Object assetName, Object country, Object usingMethod);

  /// No description provided for @search250Sbheading8722Sbonline8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} online in {country} {usingMethod}'**
  String search250Sbheading8722Sbonline8722Sbsell(Object assetName, Object country, Object usingMethod);

  /// No description provided for @search250Sbheading8722Sbusing8722Sbmethod.
  ///
  /// In en, this message translates to:
  /// **'using {method}'**
  String search250Sbheading8722Sbusing8722Sbmethod(Object method);

  /// No description provided for @search250Sblocation8722Sbplaceholder.
  ///
  /// In en, this message translates to:
  /// **'Type in your location...'**
  String get search250Sblocation8722Sbplaceholder;

  /// No description provided for @search250Sbno8722Sbgoogle8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'We have noticed that Google Services are blocked in your browser. That\'s OK, but we are using them to find local deals near you. That means you will have to enter your coordinates manually. You can use services such as {value} to help you with that.'**
  String search250Sbno8722Sbgoogle8722Sbtext(Object value);

  /// No description provided for @search250Sbno8722Sbgoogle8722Sbtext8722Sbhere.
  ///
  /// In en, this message translates to:
  /// **'this'**
  String get search250Sbno8722Sbgoogle8722Sbtext8722Sbhere;

  /// No description provided for @search250Sbno8722Sbresults.
  ///
  /// In en, this message translates to:
  /// **'No results in {country} with the selected criteria... yet. '**
  String search250Sbno8722Sbresults(Object country);

  /// No description provided for @search250Sbno8722Sbresults8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Try with different payment method, different amount or no amount at all. '**
  String get search250Sbno8722Sbresults8722Sb1;

  /// No description provided for @search250Sbno8722Sbresults8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Alternatively, be the first one to {postAnad} here!'**
  String search250Sbno8722Sbresults8722Sb2(Object postAnad);

  /// No description provided for @search250Sbno8722Sbresults8722Sbpost8722Sban8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'post an ad'**
  String get search250Sbno8722Sbresults8722Sbpost8722Sban8722Sbad;

  /// No description provided for @search250Sbpopular8722Sbmethods.
  ///
  /// In en, this message translates to:
  /// **'🔥 Popular {code} methods'**
  String search250Sbpopular8722Sbmethods(Object code);

  /// No description provided for @search250Sbsell8722Sbtab.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get search250Sbsell8722Sbtab;

  /// No description provided for @seo250Sbheadline8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Protect your right to privacy - buy Monero.'**
  String get seo250Sbheadline8722Sb1;

  /// No description provided for @seo250Sbheadline8722Sb157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'The best cryptocurrency exchange to buy and sell Bitcoin online without ID verification.'**
  String get seo250Sbheadline8722Sb157Sbagoradesk;

  /// No description provided for @seo250Sbheadline8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Sell Monero to people worldwide or locally - support the community and make money with cryptocurrency.'**
  String get seo250Sbheadline8722Sb2;

  /// No description provided for @seo250Sbheadline8722Sb257Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'A true LocalBitcoins and Paxful alternative.'**
  String get seo250Sbheadline8722Sb257Sbagoradesk;

  /// No description provided for @seo250Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'If you are concerned about the invasion of privacy - the best cryptocurrency to invest in is XMR. Monero is an untraceable coin developed with privacy by design in mind. \n<br/>\nWhere to buy Monero? LocalMonero is the biggest, most trusted and well-established P2P Monero exchange in the XMR community. We have no KYC checks - you can simply buy Monero anonymously without ID verification with PayPal, credit card, gift card, cash by mail or convert bitcoin to Monero - our platform supports any payment method.'**
  String get seo250Sbtext8722Sb1;

  /// No description provided for @seo250Sbtext8722Sb157Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Wondering how to invest in Bitcoin? On AgoraDesk, purchasing bitcoins has never been easier - instantly buy BTC from a person using your favorite online payment method: PayPal, credit/debit card or bank transfer, gift cards, Venmo or any other.\n<br/>\nIf you want to buy bitcoins near you with cash, you can find someone willing to sell bitcoins locally - the trading platform supports buying and seling BTC with cash. You can even buy bitcoins using cash by mail.'**
  String get seo250Sbtext8722Sb157Sbagoradesk;

  /// No description provided for @seo250Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'LocalMonero is the best place to sell XMR - whether it\'s your mining rewards, \nMonero price arbitrage, or you simply see the value in servicing the community. The arbitration bond protection system and our secure Monero arbitration bond wallet provide you with a robust XMR trading experience - so you can convert XMR to USD, EUR, AUD, GBP or any other local currency with peace of mind.'**
  String get seo250Sbtext8722Sb2;

  /// No description provided for @seo250Sbtext8722Sb257Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Are you a bitcoin trader looking to make money with crypto arbitrage? A miner who wants to cash out BTC to USD or other local currency? \n<br/>\nAgoraDesk is a <a href=\"/localbitcoins-alternative\" style=\"color: #0b4f6c\"> LocalBitcoins alternative </a> that respects your privacy and security, while providing you with a smooth and fast experience of cashing in your bitcoins.'**
  String get seo250Sbtext8722Sb257Sbagoradesk;

  /// No description provided for @settings250Sb2fa250Sbbackup8722Sbcode.
  ///
  /// In en, this message translates to:
  /// **'Your backup code is:'**
  String get settings250Sb2fa250Sbbackup8722Sbcode;

  /// No description provided for @settings250Sb2fa250Sbdisable8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Disable 2FA'**
  String get settings250Sb2fa250Sbdisable8722Sbbtn;

  /// No description provided for @settings250Sb2fa250Sbdisable8722Sberror.
  ///
  /// In en, this message translates to:
  /// **'Wrong password or one-time password.'**
  String get settings250Sb2fa250Sbdisable8722Sberror;

  /// No description provided for @settings250Sb2fa250Sbdisable8722Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'To disable 2FA enter your password and one-time password.'**
  String get settings250Sb2fa250Sbdisable8722Sbsubtitle;

  /// No description provided for @settings250Sb2fa250Sbdisable8722Sbsuccess.
  ///
  /// In en, this message translates to:
  /// **'Success! 2FA disabled.'**
  String get settings250Sb2fa250Sbdisable8722Sbsuccess;

  /// No description provided for @settings250Sb2fa250Sbdisable8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Disable two-factor authentication'**
  String get settings250Sb2fa250Sbdisable8722Sbtitle;

  /// No description provided for @settings250Sb2fa250Sbenable.
  ///
  /// In en, this message translates to:
  /// **'Enable two-factor authentication'**
  String get settings250Sb2fa250Sbenable;

  /// No description provided for @settings250Sb2fa250Sbenable8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Enable 2FA'**
  String get settings250Sb2fa250Sbenable8722Sbbtn;

  /// No description provided for @settings250Sb2fa250Sbenable8722Sbenter8722Sbpass.
  ///
  /// In en, this message translates to:
  /// **'To enable 2FA enter your password.'**
  String get settings250Sb2fa250Sbenable8722Sbenter8722Sbpass;

  /// No description provided for @settings250Sb2fa250Sbnetwork8722Sberror.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with the request! Try refreshing the page and repeat the request.'**
  String get settings250Sb2fa250Sbnetwork8722Sberror;

  /// No description provided for @settings250Sb2fa250Sbnot8722Sbenabled8722Sbyet.
  ///
  /// In en, this message translates to:
  /// **'Your 2FA has not been enabled yet! You need to enter the one-time password to activate it.'**
  String get settings250Sb2fa250Sbnot8722Sbenabled8722Sbyet;

  /// No description provided for @settings250Sb2fa250Sbrtfm.
  ///
  /// In en, this message translates to:
  /// **'Read the two-factor authentication activation guide'**
  String get settings250Sb2fa250Sbrtfm;

  /// No description provided for @settings250Sb2fa250Sbstatus.
  ///
  /// In en, this message translates to:
  /// **'Your 2FA status:'**
  String get settings250Sb2fa250Sbstatus;

  /// No description provided for @settings250Sb2fa250Sbstatus8722Sbdisabled.
  ///
  /// In en, this message translates to:
  /// **'DISABLED'**
  String get settings250Sb2fa250Sbstatus8722Sbdisabled;

  /// No description provided for @settings250Sb2fa250Sbstatus8722Sbenabled.
  ///
  /// In en, this message translates to:
  /// **'ENABLED'**
  String get settings250Sb2fa250Sbstatus8722Sbenabled;

  /// No description provided for @settings250Sb2fa250Sbstep8722Sbfour.
  ///
  /// In en, this message translates to:
  /// **'<strong> Enter the code</strong> given by your 2FA mobile app in the box below the QR code and <strong> press the \'Verify 2FA\' button</strong>.'**
  String get settings250Sb2fa250Sbstep8722Sbfour;

  /// No description provided for @settings250Sb2fa250Sbstep8722Sbone.
  ///
  /// In en, this message translates to:
  /// **'{downloadA2faapp} such as {andotp} or {anyOther2faapp} that supports {totp} for your device.'**
  String settings250Sb2fa250Sbstep8722Sbone(Object downloadA2faapp, Object andotp, Object anyOther2faapp, Object totp);

  /// No description provided for @settings250Sb2fa250Sbstep8722Sbone8722Sbany8722Sbother8722Sb2fa8722Sbapp.
  ///
  /// In en, this message translates to:
  /// **'any other 2FA app'**
  String get settings250Sb2fa250Sbstep8722Sbone8722Sbany8722Sbother8722Sb2fa8722Sbapp;

  /// No description provided for @settings250Sb2fa250Sbstep8722Sbone8722Sbdownload8722Sba8722Sb2fa8722Sbapp.
  ///
  /// In en, this message translates to:
  /// **'Download a 2FA app'**
  String get settings250Sb2fa250Sbstep8722Sbone8722Sbdownload8722Sba8722Sb2fa8722Sbapp;

  /// No description provided for @settings250Sb2fa250Sbstep8722Sbthree.
  ///
  /// In en, this message translates to:
  /// **'Launch the 2FA app on your mobile device. Find the scan a barcode function in the app and <strong> scan the QR code </strong> displayed on this page.'**
  String get settings250Sb2fa250Sbstep8722Sbthree;

  /// No description provided for @settings250Sb2fa250Sbstep8722Sbtwo.
  ///
  /// In en, this message translates to:
  /// **'<strong> Write down your backup code </strong> (above in green) on a piece of paper and store it in a safe place. You will need it if you lose your phone, or you will be locked out of your account. {appName} will not be able to help you should you lose this code.'**
  String settings250Sb2fa250Sbstep8722Sbtwo(Object appName);

  /// No description provided for @settings250Sb2fa250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'When two-factor authentication is active you need to enter a one time code every time you log in or withdraw funds.'**
  String get settings250Sb2fa250Sbsubtitle;

  /// No description provided for @settings250Sb2fa250Sbsuccess.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get settings250Sb2fa250Sbsuccess;

  /// No description provided for @settings250Sb2fa250Sbsuccess8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication has been set on your account.'**
  String get settings250Sb2fa250Sbsuccess8722Sbtext;

  /// No description provided for @settings250Sb2fa250Sbsuccess8722Sbwarn.
  ///
  /// In en, this message translates to:
  /// **'This is the last chance to write down your backup code!'**
  String get settings250Sb2fa250Sbsuccess8722Sbwarn;

  /// No description provided for @settings250Sb2fa250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication (2FA)'**
  String get settings250Sb2fa250Sbtitle;

  /// No description provided for @settings250Sb2fa250Sbverify8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Verify 2FA'**
  String get settings250Sb2fa250Sbverify8722Sbbtn;

  /// No description provided for @settings250Sb2fa250Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'We highly recommend that you enable 2FA on your account for improved security.'**
  String get settings250Sb2fa250Sbwarning;

  /// No description provided for @settings250Sb2fa250Sbwarning250Sbenable.
  ///
  /// In en, this message translates to:
  /// **'Enable'**
  String get settings250Sb2fa250Sbwarning250Sbenable;

  /// No description provided for @settings250Sb2fa250Sbwrong8722Sbotp.
  ///
  /// In en, this message translates to:
  /// **'Wrong one-time password.'**
  String get settings250Sb2fa250Sbwrong8722Sbotp;

  /// No description provided for @settings250Sbapi8722Sbkey250Sbcopy8722Sbtooltip.
  ///
  /// In en, this message translates to:
  /// **'Copy to clipboard'**
  String get settings250Sbapi8722Sbkey250Sbcopy8722Sbtooltip;

  /// No description provided for @settings250Sbapi8722Sbkey250Sbdelete8722Sbtooltip.
  ///
  /// In en, this message translates to:
  /// **'Delete and expire active key'**
  String get settings250Sbapi8722Sbkey250Sbdelete8722Sbtooltip;

  /// No description provided for @settings250Sbapi8722Sbkey250Sbgenerate250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Generate'**
  String get settings250Sbapi8722Sbkey250Sbgenerate250Sbbutton;

  /// No description provided for @settings250Sbapi8722Sbkey250Sbgenerate250Sbcaption.
  ///
  /// In en, this message translates to:
  /// **'Generating a key will also invalidate the previously generated API key'**
  String get settings250Sbapi8722Sbkey250Sbgenerate250Sbcaption;

  /// No description provided for @settings250Sbapi8722Sbkey250Sbgenerate250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Generate new API key'**
  String get settings250Sbapi8722Sbkey250Sbgenerate250Sbtitle;

  /// No description provided for @settings250Sbapi8722Sbkey250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'API key'**
  String get settings250Sbapi8722Sbkey250Sblabel;

  /// No description provided for @settings250Sbapi8722Sbkey250Sblabel250Sbcaption.
  ///
  /// In en, this message translates to:
  /// **'To be able to use private API endpoints, you have to set your API key as the \"Authorization\" header. The key expires in 5 years. Find more details in the {apiDocs}.'**
  String settings250Sbapi8722Sbkey250Sblabel250Sbcaption(Object apiDocs);

  /// No description provided for @settings250Sbapi8722Sbkey250Sblabel250Sbcaption250Sbapi8722Sbdocs8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'API docs'**
  String get settings250Sbapi8722Sbkey250Sblabel250Sbcaption250Sbapi8722Sbdocs8722Sblink;

  /// No description provided for @settings250Sbbasic8722Sbinfo8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Basic user information'**
  String get settings250Sbbasic8722Sbinfo8722Sbtitle;

  /// No description provided for @settings250Sbbuying8722Sbvacation8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'No one who wants to sell you coins will see your ads or open trades on them'**
  String get settings250Sbbuying8722Sbvacation8722Sbtip;

  /// No description provided for @settings250Sbbuying8722Sbvacation8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Buying vacation'**
  String get settings250Sbbuying8722Sbvacation8722Sbtitle;

  /// No description provided for @settings250Sbchange8722Sbemail250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Change email'**
  String get settings250Sbchange8722Sbemail250Sbbtn;

  /// No description provided for @settings250Sbchange8722Sbemail250Sbnew.
  ///
  /// In en, this message translates to:
  /// **'New email'**
  String get settings250Sbchange8722Sbemail250Sbnew;

  /// No description provided for @settings250Sbchange8722Sbemail250Sbnew8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'A verification letter will be sent to verify your email'**
  String get settings250Sbchange8722Sbemail250Sbnew8722Sbtip;

  /// No description provided for @settings250Sbchange8722Sbemail250Sbnone.
  ///
  /// In en, this message translates to:
  /// **'No email provided'**
  String get settings250Sbchange8722Sbemail250Sbnone;

  /// No description provided for @settings250Sbchange8722Sbemail250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Current email: {email}'**
  String settings250Sbchange8722Sbemail250Sbsubtitle(Object email);

  /// No description provided for @settings250Sbchange8722Sbemail250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Change/verify email'**
  String get settings250Sbchange8722Sbemail250Sbtitle;

  /// No description provided for @settings250Sbchange8722Sbemail250Sbunverified.
  ///
  /// In en, this message translates to:
  /// **'Unverified'**
  String get settings250Sbchange8722Sbemail250Sbunverified;

  /// No description provided for @settings250Sbchange8722Sbemail250Sbverified.
  ///
  /// In en, this message translates to:
  /// **'Verified'**
  String get settings250Sbchange8722Sbemail250Sbverified;

  /// No description provided for @settings250Sbchange8722Sbpassword8722Sbwrong.
  ///
  /// In en, this message translates to:
  /// **'Wrong current password'**
  String get settings250Sbchange8722Sbpassword8722Sbwrong;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get settings250Sbchange8722Sbpassword250Sbbtn;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbconfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get settings250Sbchange8722Sbpassword250Sbconfirm;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbconfirm8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your new password'**
  String get settings250Sbchange8722Sbpassword250Sbconfirm8722Sbtip;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbnew.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get settings250Sbchange8722Sbpassword250Sbnew;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbold.
  ///
  /// In en, this message translates to:
  /// **'Old Password'**
  String get settings250Sbchange8722Sbpassword250Sbold;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbold8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Please enter your current password to proceed'**
  String get settings250Sbchange8722Sbpassword250Sbold8722Sbtip;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'After changing the password you will have to log in again using your new password'**
  String get settings250Sbchange8722Sbpassword250Sbsubtitle;

  /// No description provided for @settings250Sbchange8722Sbpassword250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Change password'**
  String get settings250Sbchange8722Sbpassword250Sbtitle;

  /// No description provided for @settings250Sbdelete8722Sbaccount250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get settings250Sbdelete8722Sbaccount250Sbbutton;

  /// No description provided for @settings250Sbdelete8722Sbaccount250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'This will delete and anonymize all your account data. Your account will be deleted entirely - this action cannot be undone.'**
  String get settings250Sbdelete8722Sbaccount250Sbdescription;

  /// No description provided for @settings250Sbdelete8722Sbaccount250Sbdialog250Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'Your account will be deleted entirely - are you sure you want to proceed? This cannot be undone.'**
  String get settings250Sbdelete8722Sbaccount250Sbdialog250Sbwarning;

  /// No description provided for @settings250Sbemail8722Sbalready8722Sblinked.
  ///
  /// In en, this message translates to:
  /// **'This email is linked to another user'**
  String get settings250Sbemail8722Sbalready8722Sblinked;

  /// No description provided for @settings250Sberror250Sbemail8722Sbchange8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Email change error'**
  String get settings250Sberror250Sbemail8722Sbchange8722Sbtitle;

  /// No description provided for @settings250Sbgeneric8722Sberror.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong! Please try again.'**
  String get settings250Sbgeneric8722Sberror;

  /// No description provided for @settings250Sbhavent8722Sbreceived8722Sbemail.
  ///
  /// In en, this message translates to:
  /// **'If you don\'t see a letter from us in your email inbox'**
  String get settings250Sbhavent8722Sbreceived8722Sbemail;

  /// No description provided for @settings250Sbhavent8722Sbreceived8722Sbemail8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Click here to send verification letter'**
  String get settings250Sbhavent8722Sbreceived8722Sbemail8722Sbbtn;

  /// No description provided for @settings250Sbhomepage.
  ///
  /// In en, this message translates to:
  /// **'Homepage'**
  String get settings250Sbhomepage;

  /// No description provided for @settings250Sbhomepage8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Shown on your public profile. Only valid URL accepted (e.g. https://{example_url})'**
  String settings250Sbhomepage8722Sbtip(Object example_url);

  /// No description provided for @settings250Sbno8722Sbemail8722Sbwarn.
  ///
  /// In en, this message translates to:
  /// **'Your account doesn\'t have a verified email set. If you lose your password, {appName} will not be able to help you reset it.'**
  String settings250Sbno8722Sbemail8722Sbwarn(Object appName);

  /// No description provided for @settings250Sbnotifications250Sbemail8722Sbmessage8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send email notifications when new trade message is received (once per hour)'**
  String get settings250Sbnotifications250Sbemail8722Sbmessage8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbemail8722Sbmessage8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'New trade message (once per hour)'**
  String get settings250Sbnotifications250Sbemail8722Sbmessage8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbemail250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Email Notifications'**
  String get settings250Sbnotifications250Sbemail250Sbtitle;

  /// No description provided for @settings250Sbnotifications250Sbescrow8722Sbrelease8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send email notifications when a trade is finalized'**
  String get settings250Sbnotifications250Sbescrow8722Sbrelease8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbescrow8722Sbrelease8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Trade finalized'**
  String get settings250Sbnotifications250Sbescrow8722Sbrelease8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbescrow8722Sbrelease8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Send email notifications when a trade is finalized'**
  String get settings250Sbnotifications250Sbescrow8722Sbrelease8722Sbtip;

  /// No description provided for @settings250Sbnotifications250Sbnew8722Sboffers8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send email notifications for new trade contacts'**
  String get settings250Sbnotifications250Sbnew8722Sboffers8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbnew8722Sboffers8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'New trade contacts'**
  String get settings250Sbnotifications250Sbnew8722Sboffers8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbnew8722Sboffers8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Send email notifications for new contact requests'**
  String get settings250Sbnotifications250Sbnew8722Sboffers8722Sbtip;

  /// No description provided for @settings250Sbnotifications250Sbnew8722Sbpayments8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send email notifications for new online payments'**
  String get settings250Sbnotifications250Sbnew8722Sbpayments8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbnew8722Sbpayments8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'New online payments'**
  String get settings250Sbnotifications250Sbnew8722Sbpayments8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbnew8722Sbpayments8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Send email notifications for new online payments in your trades'**
  String get settings250Sbnotifications250Sbnew8722Sbpayments8722Sbtip;

  /// No description provided for @settings250Sbnotifications250Sbsensitive8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Disable sensitive information from email notifications'**
  String get settings250Sbnotifications250Sbsensitive8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbsensitive8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Disable sensitive info'**
  String get settings250Sbnotifications250Sbsensitive8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbsensitive8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'The emails will just ask you to log in to the site, where the actual notifications will be'**
  String get settings250Sbnotifications250Sbsensitive8722Sbtip;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbdialog8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Mobile Telegram Notifications'**
  String get settings250Sbnotifications250Sbtelegram250Sbdialog8722Sbtitle;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbdisable8722Sbconfirm8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Disable Telegram notifications'**
  String get settings250Sbnotifications250Sbtelegram250Sbdisable8722Sbconfirm8722Sbbtn;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbdisable8722Sbconfirm8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'This will disable notifications on Telegram. You can enable Telegram notifications again by entering your Telegram Notification ID.'**
  String get settings250Sbnotifications250Sbtelegram250Sbdisable8722Sbconfirm8722Sbtext;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sberror250Sbgeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try refreshing the page and repeating the request.'**
  String get settings250Sbnotifications250Sbtelegram250Sberror250Sbgeneric;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sberror250Sbid8722Sbalready8722Sblinked.
  ///
  /// In en, this message translates to:
  /// **'This Telegram ID is linked to other user'**
  String get settings250Sbnotifications250Sbtelegram250Sberror250Sbid8722Sbalready8722Sblinked;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbescrow8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send Telegram notifications when a trade is finalized'**
  String get settings250Sbnotifications250Sbtelegram250Sbescrow8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbescrow8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Trade finalized'**
  String get settings250Sbnotifications250Sbtelegram250Sbescrow8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbhow8722Sbto.
  ///
  /// In en, this message translates to:
  /// **'How do I turn on {appName} Telegram mobile notifications?'**
  String settings250Sbnotifications250Sbtelegram250Sbhow8722Sbto(Object appName);

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbid.
  ///
  /// In en, this message translates to:
  /// **'Telegram Notifications ID'**
  String get settings250Sbnotifications250Sbtelegram250Sbid;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbid8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Telegram Notifications ID given to you by the {appName} Notification Bot'**
  String settings250Sbnotifications250Sbtelegram250Sbid8722Sbtip(Object appName);

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbmessages8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send Telegram notifications for new chat messages in trades'**
  String get settings250Sbnotifications250Sbtelegram250Sbmessages8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbmessages8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Chat messages in trade'**
  String get settings250Sbnotifications250Sbtelegram250Sbmessages8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbpayments8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send Telegram notifications for new online payments'**
  String get settings250Sbnotifications250Sbtelegram250Sbpayments8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbpayments8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'New online payments'**
  String get settings250Sbnotifications250Sbtelegram250Sbpayments8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbpayments8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Send Telegram notifications for new online payments in your trades'**
  String get settings250Sbnotifications250Sbtelegram250Sbpayments8722Sbtip;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Telegram Notifications'**
  String get settings250Sbnotifications250Sbtelegram250Sbtitle;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbtrade8722Sbrequests8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send Telegram notifications for new trade requests'**
  String get settings250Sbnotifications250Sbtelegram250Sbtrade8722Sbrequests8722Sblong;

  /// No description provided for @settings250Sbnotifications250Sbtelegram250Sbtrade8722Sbrequests8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'New trade requests'**
  String get settings250Sbnotifications250Sbtelegram250Sbtrade8722Sbrequests8722Sbshort;

  /// No description provided for @settings250Sbnotifications250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settings250Sbnotifications250Sbtitle;

  /// No description provided for @settings250Sbnotifications250Sbweb8722Sbnotifications.
  ///
  /// In en, this message translates to:
  /// **'Enable web notifications'**
  String get settings250Sbnotifications250Sbweb8722Sbnotifications;

  /// No description provided for @settings250Sbnotifications250Sbweb8722Sbnotifications8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'You will get external notifications outside the browser window'**
  String get settings250Sbnotifications250Sbweb8722Sbnotifications8722Sbtip;

  /// No description provided for @settings250Sbpersonal8722Sbinfo.
  ///
  /// In en, this message translates to:
  /// **'Personal introduction'**
  String get settings250Sbpersonal8722Sbinfo;

  /// No description provided for @settings250Sbpersonal8722Sbinfo8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Shown on your public profile. Maximum 65536 characters. Can use markdown for styling.'**
  String get settings250Sbpersonal8722Sbinfo8722Sbtip;

  /// No description provided for @settings250Sbpersonal8722Sbinfo8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get settings250Sbpersonal8722Sbinfo8722Sbtitle;

  /// No description provided for @settings250Sbreputation8722Sbimport250Sberror250Sbimported8722Sbby8722Sbother8722Sbuser.
  ///
  /// In en, this message translates to:
  /// **'This account\'s reputation has already been imported by another user. Perhaps you\'ve made a typo in the username, or maybe chosen the wrong platform?'**
  String get settings250Sbreputation8722Sbimport250Sberror250Sbimported8722Sbby8722Sbother8722Sbuser;

  /// No description provided for @settings250Sbreputation8722Sbimport250Sberror250Sblbc8722Sbinvalid8722Sbusername.
  ///
  /// In en, this message translates to:
  /// **'Your LocalBitcoins profile is not publicly available, you can test it yourself by attempting to open your own LocalBitcoins profile while being logged out: {link}. We cannot import profiles that aren\'t publicly available. Try contacting LocalBitcoins support to resolve this, but remove the code from your LocalBitcoins introduction before doing so.'**
  String settings250Sbreputation8722Sbimport250Sberror250Sblbc8722Sbinvalid8722Sbusername(Object link);

  /// No description provided for @settings250Sbreputation8722Sbimport250Sberror250Sbplatform8722Sberror.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Check that the username is correct and that you\'ve selected the correct platform. If they are correct, try again in 5 minutes. If that still doesn\'t help, open a support ticket.'**
  String get settings250Sbreputation8722Sbimport250Sberror250Sbplatform8722Sberror;

  /// No description provided for @settings250Sbresend8722Sbletter8722Sbdialog250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Please complete CAPTCHA'**
  String get settings250Sbresend8722Sbletter8722Sbdialog250Sbtitle;

  /// No description provided for @settings250Sbresend8722Sbletter250Sbsent.
  ///
  /// In en, this message translates to:
  /// **'Letter sent!'**
  String get settings250Sbresend8722Sbletter250Sbsent;

  /// No description provided for @settings250Sbsaved.
  ///
  /// In en, this message translates to:
  /// **'Saved!'**
  String get settings250Sbsaved;

  /// No description provided for @settings250Sbselling8722Sbvacation8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'No one who wants to buy your coins will see your ads or open trades on them'**
  String get settings250Sbselling8722Sbvacation8722Sbtip;

  /// No description provided for @settings250Sbselling8722Sbvacation8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Selling vacation'**
  String get settings250Sbselling8722Sbvacation8722Sbtitle;

  /// No description provided for @settings250Sbtab250Sb2fa8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'2FA'**
  String get settings250Sbtab250Sb2fa8722Sblong;

  /// No description provided for @settings250Sbtab250Sbchange8722Sbemail8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Change email'**
  String get settings250Sbtab250Sbchange8722Sbemail8722Sblong;

  /// No description provided for @settings250Sbtab250Sbchange8722Sbemail8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get settings250Sbtab250Sbchange8722Sbemail8722Sbshort;

  /// No description provided for @settings250Sbtab250Sbchange8722Sbpassword8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get settings250Sbtab250Sbchange8722Sbpassword8722Sblong;

  /// No description provided for @settings250Sbtab250Sbimport8722Sbreputation.
  ///
  /// In en, this message translates to:
  /// **'Import reputation'**
  String get settings250Sbtab250Sbimport8722Sbreputation;

  /// No description provided for @settings250Sbtab250Sbimport8722Sbreputation250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'You can import your reputation from another P2P platform to {appName}. You\'ll need to place a code somewhere in your profile  on the other platform, which we\'ll then verify. You can link one account per platform.'**
  String settings250Sbtab250Sbimport8722Sbreputation250Sbdescription(Object appName);

  /// No description provided for @settings250Sbtab250Sbnotifications250Sblong.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get settings250Sbtab250Sbnotifications250Sblong;

  /// No description provided for @settings250Sbtab250Sbuser8722Sbsettings8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Personal'**
  String get settings250Sbtab250Sbuser8722Sbsettings8722Sblong;

  /// No description provided for @settings250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Account settings'**
  String get settings250Sbtitle;

  /// No description provided for @settings250Sbvacation8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Vacation'**
  String get settings250Sbvacation8722Sbtitle;

  /// No description provided for @settings250Sbwrong8722Sbpassword.
  ///
  /// In en, this message translates to:
  /// **'Wrong password'**
  String get settings250Sbwrong8722Sbpassword;

  /// No description provided for @settlement8722Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Settlement wallet address'**
  String get settlement8722Sbaddress;

  /// No description provided for @signup8722Sbsuccess250Sbletter8722Sbsent.
  ///
  /// In en, this message translates to:
  /// **'A verification letter has been sent to your email.'**
  String get signup8722Sbsuccess250Sbletter8722Sbsent;

  /// No description provided for @signup8722Sbsuccess250Sblogin.
  ///
  /// In en, this message translates to:
  /// **'You will now be redirected to the homepage.'**
  String get signup8722Sbsuccess250Sblogin;

  /// No description provided for @signup8722Sbsuccess250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Registration success!'**
  String get signup8722Sbsuccess250Sbtitle;

  /// No description provided for @signup250Sbagree8722Sbto8722Sbtos.
  ///
  /// In en, this message translates to:
  /// **'I have read and agreed to {terms}'**
  String signup250Sbagree8722Sbto8722Sbtos(Object terms);

  /// No description provided for @signup250Sbagree8722Sbto8722Sbtos8722Sbterms.
  ///
  /// In en, this message translates to:
  /// **'{appName} terms of service'**
  String signup250Sbagree8722Sbto8722Sbtos8722Sbterms(Object appName);

  /// No description provided for @signup250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get signup250Sbbtn;

  /// No description provided for @signup250Sbconfirm8722Sbpass.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get signup250Sbconfirm8722Sbpass;

  /// No description provided for @signup250Sbemail.
  ///
  /// In en, this message translates to:
  /// **'Email (optional)'**
  String get signup250Sbemail;

  /// No description provided for @signup250Sbemail8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have to enter your email to trade Monero, but without it we won\'t be able to recover your password or send you email notifications. Your email will be checked against a third-party database of disposable email providers.'**
  String get signup250Sbemail8722Sbtip;

  /// No description provided for @signup250Sbemail8722Sbtip57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have to enter your email to trade cryptocurrencies, but without it we won\'t be able to recover your password or send you email notifications. Your email will be checked against a third-party database of disposable email providers.'**
  String get signup250Sbemail8722Sbtip57Sbagoradesk;

  /// No description provided for @signup250Sberror8722Sb28722Sbdialog8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Registration error'**
  String get signup250Sberror8722Sb28722Sbdialog8722Sbtitle;

  /// No description provided for @signup250Sberror8722Sbdialog8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Please enter valid information.'**
  String get signup250Sberror8722Sbdialog8722Sbtext;

  /// No description provided for @signup250Sberror8722Sbdialog8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Form error'**
  String get signup250Sberror8722Sbdialog8722Sbtitle;

  /// No description provided for @signup250Sblogin.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? {link}'**
  String signup250Sblogin(Object link);

  /// No description provided for @signup250Sblogin8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'Log in.'**
  String get signup250Sblogin8722Sblink;

  /// No description provided for @signup250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signup250Sbtitle;

  /// No description provided for @signup250Sbtos8722Sbdialog8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'In order to register, please read and agree with {terms}'**
  String signup250Sbtos8722Sbdialog8722Sbtext(Object terms);

  /// No description provided for @signup250Sbtos8722Sbdialog8722Sbtext8722Sbagree.
  ///
  /// In en, this message translates to:
  /// **'Agree'**
  String get signup250Sbtos8722Sbdialog8722Sbtext8722Sbagree;

  /// No description provided for @signup250Sbtos8722Sbdialog8722Sbtext8722Sbdisagree.
  ///
  /// In en, this message translates to:
  /// **'Disagree'**
  String get signup250Sbtos8722Sbdialog8722Sbtext8722Sbdisagree;

  /// No description provided for @signup250Sbtos8722Sbdialog8722Sbtext8722Sbterms.
  ///
  /// In en, this message translates to:
  /// **'{appName} terms of service'**
  String signup250Sbtos8722Sbdialog8722Sbtext8722Sbterms(Object appName);

  /// No description provided for @signup250Sbtos8722Sbdialog8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Terms of service'**
  String get signup250Sbtos8722Sbdialog8722Sbtitle;

  /// No description provided for @sso250Sblogout8722Sbportal.
  ///
  /// In en, this message translates to:
  /// **'You are being logged out...'**
  String get sso250Sblogout8722Sbportal;

  /// No description provided for @sso250Sbunverified8722Sbemail8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'You need to verify your email to continue. You can do it at the {settingsPage}.'**
  String sso250Sbunverified8722Sbemail8722Sbtext(Object settingsPage);

  /// No description provided for @sso250Sbunverified8722Sbemail8722Sbtext8722Sbsettings8722Sbpage.
  ///
  /// In en, this message translates to:
  /// **'settings page'**
  String get sso250Sbunverified8722Sbemail8722Sbtext8722Sbsettings8722Sbpage;

  /// No description provided for @sso250Sbunverified8722Sbemail8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Unverified email'**
  String get sso250Sbunverified8722Sbemail8722Sbtitle;

  /// No description provided for @start250Sb2fa.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication'**
  String get start250Sb2fa;

  /// No description provided for @start250Sbbuy8722Sbonline.
  ///
  /// In en, this message translates to:
  /// **'How to buy {assetName} online'**
  String start250Sbbuy8722Sbonline(Object assetName);

  /// No description provided for @start250Sbbuy8722Sbonline57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How to buy cryptocurrencies online'**
  String get start250Sbbuy8722Sbonline57Sbagoradesk;

  /// No description provided for @start250Sblearn8722Sbmore.
  ///
  /// In en, this message translates to:
  /// **'Learn More'**
  String get start250Sblearn8722Sbmore;

  /// No description provided for @start250Sblocal.
  ///
  /// In en, this message translates to:
  /// **'How to buy or sell {assetName} for cash'**
  String start250Sblocal(Object assetName);

  /// No description provided for @start250Sblocal57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How to buy or sell cryptocurrencies for cash'**
  String get start250Sblocal57Sbagoradesk;

  /// No description provided for @start250Sbsettings.
  ///
  /// In en, this message translates to:
  /// **'{appName} settings'**
  String start250Sbsettings(Object appName);

  /// No description provided for @start250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'{appName} guides: how to buy or sell Monero'**
  String start250Sbtitle(Object appName);

  /// No description provided for @start250Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'Introduction on trading {assetName}'**
  String start250Sbtrade(Object assetName);

  /// No description provided for @start250Sbtrade57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Introduction on trading cryptocurrencies'**
  String get start250Sbtrade57Sbagoradesk;

  /// No description provided for @statistics250Sbno8722Sbdata.
  ///
  /// In en, this message translates to:
  /// **'No data'**
  String get statistics250Sbno8722Sbdata;

  /// No description provided for @statistics250Sbticker8722Sb12hr.
  ///
  /// In en, this message translates to:
  /// **'12 hours:'**
  String get statistics250Sbticker8722Sb12hr;

  /// No description provided for @statistics250Sbticker8722Sb1hr.
  ///
  /// In en, this message translates to:
  /// **'1 hour:'**
  String get statistics250Sbticker8722Sb1hr;

  /// No description provided for @statistics250Sbticker8722Sb24hr.
  ///
  /// In en, this message translates to:
  /// **'24 hours:'**
  String get statistics250Sbticker8722Sb24hr;

  /// No description provided for @statistics250Sbticker8722Sb6hr.
  ///
  /// In en, this message translates to:
  /// **'6 hours:'**
  String get statistics250Sbticker8722Sb6hr;

  /// No description provided for @statistics250Sbticker8722Sbapi8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'{appName} Average Price Ticker API'**
  String statistics250Sbticker8722Sbapi8722Sbtitle(Object appName);

  /// No description provided for @statistics250Sbticker8722Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Only currencies with data available shown'**
  String get statistics250Sbticker8722Sbsubtitle;

  /// No description provided for @statistics250Sbticker8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Average price/{assetSymbol} based on completed trades'**
  String statistics250Sbticker8722Sbtitle(Object assetSymbol);

  /// No description provided for @statistics250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get statistics250Sbtitle;

  /// No description provided for @statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbconvert.
  ///
  /// In en, this message translates to:
  /// **'Convert to {currencyCode} from USD'**
  String statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbconvert(Object currencyCode);

  /// No description provided for @statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbnone.
  ///
  /// In en, this message translates to:
  /// **'Show \'No data\' message'**
  String get statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbnone;

  /// No description provided for @statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'If no data for {currencyCode} is present...'**
  String statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbtitle(Object currencyCode);

  /// No description provided for @statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbusd.
  ///
  /// In en, this message translates to:
  /// **'Show price in USD'**
  String get statistics250Sbwidget250Sbinstructions250Sbno8722Sbdata250Sbusd;

  /// No description provided for @stepper250Sbback8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get stepper250Sbback8722Sbbtn;

  /// No description provided for @stepper250Sbnext8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get stepper250Sbnext8722Sbbtn;

  /// No description provided for @support250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'You can get support by opening a ticket, sending an email, or reaching out on Telegram.'**
  String get support250Sbdescription;

  /// No description provided for @support250Sbemail250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Send an email'**
  String get support250Sbemail250Sbbutton;

  /// No description provided for @support250Sbemail250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'You can send an email to {email}'**
  String support250Sbemail250Sbdescription(Object email);

  /// No description provided for @support250Sbemail250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get support250Sbemail250Sbtitle;

  /// No description provided for @support250Sbmatrix250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Message on Matrix'**
  String get support250Sbmatrix250Sbbutton;

  /// No description provided for @support250Sbmatrix250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'You can message us on Matrix'**
  String get support250Sbmatrix250Sbdescription;

  /// No description provided for @support250Sbsubtitle.
  ///
  /// In en, this message translates to:
  /// **'Reach out to us - we love helping our users! Our response times are usually fast, you can get support via the following methods:    '**
  String get support250Sbsubtitle;

  /// No description provided for @support250Sbtelegram250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Message on Telegram'**
  String get support250Sbtelegram250Sbbutton;

  /// No description provided for @support250Sbtelegram250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'You can message us on Telegram'**
  String get support250Sbtelegram250Sbdescription;

  /// No description provided for @support250Sbticket250Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Open a ticket'**
  String get support250Sbticket250Sbbutton;

  /// No description provided for @support250Sbticket250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'You can raise a ticket on our support portal'**
  String get support250Sbticket250Sbdescription;

  /// No description provided for @support250Sbticket250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Ticket'**
  String get support250Sbticket250Sbtitle;

  /// No description provided for @support250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Get support'**
  String get support250Sbtitle;

  /// No description provided for @trade8722Sbnoun.
  ///
  /// In en, this message translates to:
  /// **'Trade'**
  String get trade8722Sbnoun;

  /// No description provided for @trade250Sbamount8722Sbminus8722Sbfee250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Amount minus the fee:'**
  String get trade250Sbamount8722Sbminus8722Sbfee250Sblabel;

  /// No description provided for @trade250Sbamount8722Sbplus8722Sbfee250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Amount plus the fee:'**
  String get trade250Sbamount8722Sbplus8722Sbfee250Sblabel;

  /// No description provided for @trade250Sbamount8722Sbto8722Sbpay.
  ///
  /// In en, this message translates to:
  /// **'Amount that you need to pay: {amount}.'**
  String trade250Sbamount8722Sbto8722Sbpay(Object amount);

  /// No description provided for @trade250Sbamount8722Sbto8722Sbreceive.
  ///
  /// In en, this message translates to:
  /// **'Amount the buyer needs to pay: {amount}.'**
  String trade250Sbamount8722Sbto8722Sbreceive(Object amount);

  /// No description provided for @trade250Sbbuyer8722Sbhasnt8722Sbcompleted8722Sbpayment8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'The buyer has not yet marked the payment complete and has {minutes} minutes to make the payment before you are able to cancel the trade. When you receive the payment, finalize the trade.'**
  String trade250Sbbuyer8722Sbhasnt8722Sbcompleted8722Sbpayment8722Sbtext(Object minutes);

  /// No description provided for @trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Right now the seller can cancel the trade, unless you <strong> confirm the payment </strong> by pressing the \'I have paid\' button.'**
  String get trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb0;

  /// No description provided for @trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'The seller won\'t be able to cancel the trade for {minutes} minutes, during which it is safe to pay.'**
  String trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb1(Object minutes);

  /// No description provided for @trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'After paying you need to <strong> mark the payment complete </strong> by pressing the \'I have paid\' button or the seller will be able to cancel the trade, once payment window time runs out.'**
  String get trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb2;

  /// No description provided for @trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb3.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the seller to confirm your payment'**
  String get trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb3;

  /// No description provided for @trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb4.
  ///
  /// In en, this message translates to:
  /// **'You have marked the payment complete at {time}.'**
  String trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb4(Object time);

  /// No description provided for @trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Once {username} confirms the payment, the {assetSymbol} will be sent to your settlement wallet.'**
  String trade250Sbbuyer8722Sbinstruction8722Sbstep8722Sbtwo8722Sbtext8722Sb5(Object username, Object assetSymbol);

  /// No description provided for @trade250Sbbuyer8722Sbsettlement8722Sbaddress8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'If the address provided when opening the trade is wrong, you\'ll need to reopen the trade with the correct address, otherwise the coins may be irretrievably lost.'**
  String get trade250Sbbuyer8722Sbsettlement8722Sbaddress8722Sbwarning;

  /// No description provided for @trade250Sbbuyer8722Sbsettlement8722Sbaddress8722Sbwarning250Sbtoggle.
  ///
  /// In en, this message translates to:
  /// **'Show the address'**
  String get trade250Sbbuyer8722Sbsettlement8722Sbaddress8722Sbwarning250Sbtoggle;

  /// No description provided for @trade250Sbbuyer8722Sbsettlement8722Sbaddress8722Sbwarning250Sbtoggle8722Sbsettlement.
  ///
  /// In en, this message translates to:
  /// **'Show destination address'**
  String get trade250Sbbuyer8722Sbsettlement8722Sbaddress8722Sbwarning250Sbtoggle8722Sbsettlement;

  /// No description provided for @trade250Sbcancel8722Sbtrade8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Cancel trade'**
  String get trade250Sbcancel8722Sbtrade8722Sbbtn;

  /// No description provided for @trade250Sbdialog8722Sbconfirm8722Sbdispute8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Please confirm that you want to start a dispute.'**
  String get trade250Sbdialog8722Sbconfirm8722Sbdispute8722Sbtext;

  /// No description provided for @trade250Sbdialog8722Sbconfirm8722Sbdispute8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm dispute'**
  String get trade250Sbdialog8722Sbconfirm8722Sbdispute8722Sbtitle;

  /// No description provided for @trade250Sbdialog8722Sbconfirm8722Sbpayment8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'You, {username}, declare that you have completed the payment'**
  String trade250Sbdialog8722Sbconfirm8722Sbpayment8722Sbtext(Object username);

  /// No description provided for @trade250Sbdialog8722Sbconfirm8722Sbpayment8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm payment'**
  String get trade250Sbdialog8722Sbconfirm8722Sbpayment8722Sbtitle;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbcancel8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get trade250Sbdialog250Sbconfirm8722Sbcancel8722Sbbtn;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbcancel8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Please confirm that you want to cancel the trade'**
  String get trade250Sbdialog250Sbconfirm8722Sbcancel8722Sbtext;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbcancel8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm cancellation'**
  String get trade250Sbdialog250Sbconfirm8722Sbcancel8722Sbtitle;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbescrow8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Please confirm that you want to enable arbitration bond protection'**
  String get trade250Sbdialog250Sbconfirm8722Sbescrow8722Sbtext;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbescrow8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm enabling arbitration bond protection'**
  String get trade250Sbdialog250Sbconfirm8722Sbescrow8722Sbtitle;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbmonero8722Sbnot8722Sbpaid8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'The buyer hasn\'t marked the payment complete yet! Are you sure you want to finalize the trade now?'**
  String get trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbmonero8722Sbnot8722Sbpaid8722Sbtext;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbmonero8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Please confirm that you have received the payment and want to finalize the trade'**
  String get trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbmonero8722Sbtext;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbmonero8722Sbtext8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'Be careful! Only finalize a trade when you are sure you have received the payment. There have been scammers who try to trick sellers to finalize a trade prematurely.'**
  String get trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbmonero8722Sbtext8722Sbwarning;

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Finalizing the trade for {amount} with {username}'**
  String trade250Sbdialog250Sbconfirm8722Sbrelease8722Sbtitle(Object amount, Object username);

  /// No description provided for @trade250Sbdialog250Sbconfirm8722Sbrelease250Sboffset8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'This password is used as the offset to generate the non-custodial settlement wallet and sign the transaction. {appName} will have no way of recovering the wallet if you lose this password.'**
  String trade250Sbdialog250Sbconfirm8722Sbrelease250Sboffset8722Sbnotice(Object appName);

  /// No description provided for @trade250Sbdialog250Sbfunding8722Sbconfirm8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Please confirm that you want to fund the trade from your {appName} wallet'**
  String trade250Sbdialog250Sbfunding8722Sbconfirm8722Sbtext(Object appName);

  /// No description provided for @trade250Sbdialog250Sbfunding8722Sbconfirm8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm funding'**
  String get trade250Sbdialog250Sbfunding8722Sbconfirm8722Sbtitle;

  /// No description provided for @trade250Sbdialog250Sbfunding8722Sberror8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'Insufficient balance to fund a trade'**
  String get trade250Sbdialog250Sbfunding8722Sberror8722Sbtext;

  /// No description provided for @trade250Sbdialog250Sbfunding8722Sberror8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Funding error!'**
  String get trade250Sbdialog250Sbfunding8722Sberror8722Sbtitle;

  /// No description provided for @trade250Sbdispute8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Start a dispute'**
  String get trade250Sbdispute8722Sbbtn;

  /// No description provided for @trade250Sbdispute8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'If there is a disagreement regarding the trade, you can start a dispute. After that, {appName} support will contact you through this trade\'s chat.'**
  String trade250Sbdispute8722Sbtext(Object appName);

  /// No description provided for @trade250Sbenable8722Sbescrow8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Enable arbitration bond'**
  String get trade250Sbenable8722Sbescrow8722Sbbtn;

  /// No description provided for @trade250Sberror250Sb247.
  ///
  /// In en, this message translates to:
  /// **'Your account is prohibited from withdrawing due to sanctions'**
  String get trade250Sberror250Sb247;

  /// No description provided for @trade250Sberror250Sb248.
  ///
  /// In en, this message translates to:
  /// **'The amount of the trade isn’t enough to cover the settlement-related fees. Please try again later when the fees are lower or re-open the trade for a larger amount and cancel this one.'**
  String get trade250Sberror250Sb248;

  /// No description provided for @trade250Sbescrow8722Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'{appName} can only offer protection if arbitration bond protection for the trade was enabled'**
  String trade250Sbescrow8722Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb0(Object appName);

  /// No description provided for @trade250Sbescrow8722Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'When enabled, only the buyer and {appName} staff can cancel the deal'**
  String trade250Sbescrow8722Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb1(Object appName);

  /// No description provided for @trade250Sbescrow8722Sbterms8722Sband8722Sbinfo8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'{appName} arbitration bond protection terms and info'**
  String trade250Sbescrow8722Sbterms8722Sband8722Sbinfo8722Sbtitle(Object appName);

  /// No description provided for @trade250Sbfeedback250Sbblock.
  ///
  /// In en, this message translates to:
  /// **'Block user'**
  String get trade250Sbfeedback250Sbblock;

  /// No description provided for @trade250Sbfeedback250Sbleave8722Sbfeedback8722Sbon.
  ///
  /// In en, this message translates to:
  /// **'Leave feedback on {username}'**
  String trade250Sbfeedback250Sbleave8722Sbfeedback8722Sbon(Object username);

  /// No description provided for @trade250Sbfeedback250Sbnegative.
  ///
  /// In en, this message translates to:
  /// **'Negative'**
  String get trade250Sbfeedback250Sbnegative;

  /// No description provided for @trade250Sbfeedback250Sbneutral.
  ///
  /// In en, this message translates to:
  /// **'Neutral'**
  String get trade250Sbfeedback250Sbneutral;

  /// No description provided for @trade250Sbfeedback250Sbpositive.
  ///
  /// In en, this message translates to:
  /// **'Positive'**
  String get trade250Sbfeedback250Sbpositive;

  /// No description provided for @trade250Sbfeedback250Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Feedback will be visible only if the total trade volume between you and your trading partner is over a 100 USD equivalent.'**
  String get trade250Sbfeedback250Sbtip;

  /// No description provided for @trade250Sbfeedback250Sbtrust.
  ///
  /// In en, this message translates to:
  /// **'Trustworthy'**
  String get trade250Sbfeedback250Sbtrust;

  /// No description provided for @trade250Sbfeedback250Sbupdate8722Sbfeedback8722Sbon.
  ///
  /// In en, this message translates to:
  /// **'Update feedback on {username}'**
  String trade250Sbfeedback250Sbupdate8722Sbfeedback8722Sbon(Object username);

  /// No description provided for @trade250Sbfeedback250Sbyour8722Sbmessage8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Optional. Leave a message about {username} to be displayed alongside feedback on the receiver\'s profile page. Maximum 256 characters.'**
  String trade250Sbfeedback250Sbyour8722Sbmessage8722Sbtip(Object username);

  /// No description provided for @trade250Sbfeedback250Sbyour8722Sbmessage8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your feedback message'**
  String get trade250Sbfeedback250Sbyour8722Sbmessage8722Sbtitle;

  /// No description provided for @trade250Sbfloating8722Sbprice8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'The {assetName} amount is {floating} with the market price.'**
  String trade250Sbfloating8722Sbprice8722Sbtext(Object assetName, Object floating);

  /// No description provided for @trade250Sbfloating8722Sbprice8722Sbtext8722Sbfloating.
  ///
  /// In en, this message translates to:
  /// **'floating'**
  String get trade250Sbfloating8722Sbprice8722Sbtext8722Sbfloating;

  /// No description provided for @trade250Sbfund8722Sbtrade8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Fund this trade'**
  String get trade250Sbfund8722Sbtrade8722Sbbtn;

  /// No description provided for @trade250Sbi8722Sbhave8722Sbpaid8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'I have paid'**
  String get trade250Sbi8722Sbhave8722Sbpaid8722Sbbtn;

  /// No description provided for @trade250Sbinfo250Sbfee250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'1% {appName} fee:'**
  String trade250Sbinfo250Sbfee250Sblabel(Object appName);

  /// No description provided for @trade250Sbinfo250Sbtrade8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'Trade ad ({ad_type})'**
  String trade250Sbinfo250Sbtrade8722Sbad(Object ad_type);

  /// No description provided for @trade250Sbleave8722Sbfeedback8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Leave feedback'**
  String get trade250Sbleave8722Sbfeedback8722Sbbtn;

  /// No description provided for @trade250Sblocal250Sbbuyer250Sbescrowed.
  ///
  /// In en, this message translates to:
  /// **'The seller has enabled arbitration bond protection on this trade, meaning the seller can\'t cancel this trade.'**
  String get trade250Sblocal250Sbbuyer250Sbescrowed;

  /// No description provided for @trade250Sblocal250Sbbuyer250Sbnot8722Sbescrowed.
  ///
  /// In en, this message translates to:
  /// **'The seller hasn\'t enabled arbitration bond protection on this trade, meaning the seller can cancel the trade at any moment. You can request arbitration bond protection via chat.'**
  String get trade250Sblocal250Sbbuyer250Sbnot8722Sbescrowed;

  /// No description provided for @trade250Sblocal250Sbbuyer250Sbverification8722Sbcode.
  ///
  /// In en, this message translates to:
  /// **'{verificationCode} is your verification code. The seller will know it only after they\'ve finalized the trade. You can write it down and use it to verify the seller has actually sent the coins after receiving your payment when you meet, without needing to use a device at all.'**
  String trade250Sblocal250Sbbuyer250Sbverification8722Sbcode(Object verificationCode);

  /// No description provided for @trade250Sblocal250Sbstep8722Sb0250Sbbuyer250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Waiting for the seller to fund the trade'**
  String get trade250Sblocal250Sbstep8722Sb0250Sbbuyer250Sbtitle;

  /// No description provided for @trade250Sblocal250Sbstep8722Sb0250Sbbuyer250Sbwait8722Sbfor8722Sbfunding.
  ///
  /// In en, this message translates to:
  /// **'Wait for the seller to deposit more coins into their {appName} wallet to cover the amount of this trade.'**
  String trade250Sblocal250Sbstep8722Sb0250Sbbuyer250Sbwait8722Sbfor8722Sbfunding(Object appName);

  /// No description provided for @trade250Sblocal250Sbstep8722Sb0250Sbseller250Sbfund8722Sbthe8722Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'You need to have at least {amount} in your {appName} wallet to fund this trade.'**
  String trade250Sblocal250Sbstep8722Sb0250Sbseller250Sbfund8722Sbthe8722Sbtrade(Object amount, Object appName);

  /// No description provided for @trade250Sblocal250Sbstep8722Sb0250Sbseller250Sbpress8722Sbfund8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'After depositing the required amount, press the button to fund the trade.'**
  String get trade250Sblocal250Sbstep8722Sb0250Sbseller250Sbpress8722Sbfund8722Sbbtn;

  /// No description provided for @trade250Sblocal250Sbstep8722Sb0250Sbseller250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Fund the trade'**
  String get trade250Sblocal250Sbstep8722Sb0250Sbseller250Sbtitle;

  /// No description provided for @trade250Sblocal250Sbstep8722Sb1250Sbbuyer250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Arrange the meeting and make the payment'**
  String get trade250Sblocal250Sbstep8722Sb1250Sbbuyer250Sbtitle;

  /// No description provided for @trade250Sblocal250Sbstep8722Sb1250Sbseller250Sbrelease8722Sbafter8722Sbpayment.
  ///
  /// In en, this message translates to:
  /// **'After receiving the payment, finalize the trade. Make sure to check the cash for authenticity before accepting it and finalizing the trade. Only finalize after making sure the payment is firmly in your hands.'**
  String get trade250Sblocal250Sbstep8722Sb1250Sbseller250Sbrelease8722Sbafter8722Sbpayment;

  /// No description provided for @trade250Sblocal250Sbstep8722Sb1250Sbseller250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Arrange the meeting and receive the payment'**
  String get trade250Sblocal250Sbstep8722Sb1250Sbseller250Sbtitle;

  /// No description provided for @trade250Sblocal250Sbstep8722Sb2250Sbbuyer250Sbcompleted.
  ///
  /// In en, this message translates to:
  /// **'The trade is now completed, the coins are in your wallet!'**
  String get trade250Sblocal250Sbstep8722Sb2250Sbbuyer250Sbcompleted;

  /// No description provided for @trade250Sblocal250Sbstep8722Sb2250Sbseller250Sbverification8722Sbcode.
  ///
  /// In en, this message translates to:
  /// **'{verificationCode} is the verification code. You can tell it to the buyer so that the buyer can verify you\'ve finalized the trade without them needing to use a device.'**
  String trade250Sblocal250Sbstep8722Sb2250Sbseller250Sbverification8722Sbcode(Object verificationCode);

  /// No description provided for @trade250Sbmark8722Sbpaid.
  ///
  /// In en, this message translates to:
  /// **'When you have paid, press the \'I have paid\' button. This will prevent the seller from being able to cancel the trade. Don\'t press this button unless you have actually paid.'**
  String get trade250Sbmark8722Sbpaid;

  /// No description provided for @trade250Sbno8722Sbpayment8722Sbdetails.
  ///
  /// In en, this message translates to:
  /// **'No payment details specified. Discuss them in chat.'**
  String get trade250Sbno8722Sbpayment8722Sbdetails;

  /// No description provided for @trade250Sbno8722Sbpayment8722Sbinfo250Sbpaying8722Sbparty.
  ///
  /// In en, this message translates to:
  /// **'Ask your trading partner about their payment details in the chat and make the payment. <strong>If you\'ve traded before, do not send the payment to the account that was given to you by the seller in a previous trade without first confirming with the seller in this trade chat.</strong>'**
  String get trade250Sbno8722Sbpayment8722Sbinfo250Sbpaying8722Sbparty;

  /// No description provided for @trade250Sbno8722Sbpayment8722Sbinfo250Sbreceiving8722Sbparty.
  ///
  /// In en, this message translates to:
  /// **'Tell your trading partner about your payment details in the chat.'**
  String get trade250Sbno8722Sbpayment8722Sbinfo250Sbreceiving8722Sbparty;

  /// No description provided for @trade250Sbpay.
  ///
  /// In en, this message translates to:
  /// **'Pay according to the payment details shown below. If you  have any questions, ask the seller in the chat.'**
  String get trade250Sbpay;

  /// No description provided for @trade250Sbpayment8722Sbdetails.
  ///
  /// In en, this message translates to:
  /// **'Payment details'**
  String get trade250Sbpayment8722Sbdetails;

  /// No description provided for @trade250Sbprice.
  ///
  /// In en, this message translates to:
  /// **'Price: {price} {currency} / {assetSymbol}'**
  String trade250Sbprice(Object price, Object currency, Object assetSymbol);

  /// No description provided for @trade250Sbreceipt250Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'View receipt'**
  String get trade250Sbreceipt250Sbbtn;

  /// No description provided for @trade250Sbreceipt250Sbinclude8722Sbchat.
  ///
  /// In en, this message translates to:
  /// **'Include chat messages'**
  String get trade250Sbreceipt250Sbinclude8722Sbchat;

  /// No description provided for @trade250Sbreceipt250Sbinclude8722Sbinfo.
  ///
  /// In en, this message translates to:
  /// **'Include payment method info'**
  String get trade250Sbreceipt250Sbinclude8722Sbinfo;

  /// No description provided for @trade250Sbreceipt250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'View printable receipt'**
  String get trade250Sbreceipt250Sbtitle;

  /// No description provided for @trade250Sbrelease8722Sbmonero8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Finalize'**
  String get trade250Sbrelease8722Sbmonero8722Sbbtn;

  /// No description provided for @trade250Sbseller8722Sbcan8722Sbcancel.
  ///
  /// In en, this message translates to:
  /// **'You are now able to <strong> cancel the trade</strong>, since the buyer has failed to complete the payment within the payment window.'**
  String get trade250Sbseller8722Sbcan8722Sbcancel;

  /// No description provided for @trade250Sbsettlement8722Sbfees8722Sbnotice.
  ///
  /// In en, this message translates to:
  /// **'Network transaction fees associated with settling the trade will be deducted from the trade amount, meaning you\'ll receive slightly less than the amount shown.'**
  String get trade250Sbsettlement8722Sbfees8722Sbnotice;

  /// No description provided for @trade250Sbstatus250Sbcancelled8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'This trade has been cancelled {linebreak}  at {time}.'**
  String trade250Sbstatus250Sbcancelled8722Sbtext(Object linebreak, Object time);

  /// No description provided for @trade250Sbstatus250Sbcancelled8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get trade250Sbstatus250Sbcancelled8722Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbclosed8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'This trade has been closed by an administrator {linebreak}  at {time}.'**
  String trade250Sbstatus250Sbclosed8722Sbtext8722Sb0(Object linebreak, Object time);

  /// No description provided for @trade250Sbstatus250Sbclosed8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'The trade was neither finalized nor canceled.'**
  String get trade250Sbstatus250Sbclosed8722Sbtext8722Sb1;

  /// No description provided for @trade250Sbstatus250Sbclosed8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get trade250Sbstatus250Sbclosed8722Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbcompleted8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'This trade has been completed {linebreak}  at {time}.'**
  String trade250Sbstatus250Sbcompleted8722Sbtext(Object linebreak, Object time);

  /// No description provided for @trade250Sbstatus250Sbcompleted8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get trade250Sbstatus250Sbcompleted8722Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbdisputed8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'This trade has been disputed {linebreak}  at {time}.'**
  String trade250Sbstatus250Sbdisputed8722Sbtext8722Sb0(Object linebreak, Object time);

  /// No description provided for @trade250Sbstatus250Sbdisputed8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Please wait for a {appName} administrator to join the chat and decide the trade\'s outcome.'**
  String trade250Sbstatus250Sbdisputed8722Sbtext8722Sb1(Object appName);

  /// No description provided for @trade250Sbstatus250Sbdisputed8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Disputed'**
  String get trade250Sbstatus250Sbdisputed8722Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbescrowed.
  ///
  /// In en, this message translates to:
  /// **'Protected by arbitration bond'**
  String get trade250Sbstatus250Sbescrowed;

  /// No description provided for @trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Arbitration bond protection is enabled.'**
  String get trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtext8722Sb0;

  /// No description provided for @trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Only the buyer and {appName} staff can cancel the transaction.'**
  String trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtext8722Sb1(Object appName);

  /// No description provided for @trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Seller can cancel the trade once payment window time has run out'**
  String get trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtext8722Sb2;

  /// No description provided for @trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Funded, protected by arbitration bond'**
  String get trade250Sbstatus250Sbfunded8722Sbescrowed8722Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbfunded8722Sbnot8722Sbescrowed8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Funded, not protected by arbitration bond'**
  String get trade250Sbstatus250Sbfunded8722Sbnot8722Sbescrowed8722Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbaccordion8722Sbsummary.
  ///
  /// In en, this message translates to:
  /// **'Transaction details'**
  String get trade250Sbstatus250Sbsettlement250Sbaccordion8722Sbsummary;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get trade250Sbstatus250Sbsettlement250Sbaddress;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbarbitrated.
  ///
  /// In en, this message translates to:
  /// **'Arbitrated by an administrator'**
  String get trade250Sbstatus250Sbsettlement250Sbarbitrated;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbbuyer8722Sbtx250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Transfer to the buyer\'s settlement wallet'**
  String get trade250Sbstatus250Sbsettlement250Sbbuyer8722Sbtx250Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbcheck8722Sbyour8722Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'Check your receiving wallet and you’ll see the transaction!'**
  String get trade250Sbstatus250Sbsettlement250Sbcheck8722Sbyour8722Sbwallet;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbmnemonic8722Sbguide8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'How do I restore my wallet from the seed?'**
  String get trade250Sbstatus250Sbsettlement250Sbmnemonic8722Sbguide8722Sblink;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbmnemonic8722Sbseed.
  ///
  /// In en, this message translates to:
  /// **'Your non-custodial wallet mnemonic seed'**
  String get trade250Sbstatus250Sbsettlement250Sbmnemonic8722Sbseed;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprocessing.
  ///
  /// In en, this message translates to:
  /// **'Processing'**
  String get trade250Sbstatus250Sbsettlement250Sbprocessing;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprocessing250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'The settlement is being processed. <br /> Please wait, there\'s nothing that you need to do.'**
  String get trade250Sbstatus250Sbsettlement250Sbprocessing250Sbdescription;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprocessing250Sbtime8722Sbestimation.
  ///
  /// In en, this message translates to:
  /// **'This may take 10-60 minutes.'**
  String get trade250Sbstatus250Sbsettlement250Sbprocessing250Sbtime8722Sbestimation;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbawaiting8722Sbto8722Sbbuyer.
  ///
  /// In en, this message translates to:
  /// **'Awaiting transfer to the buyer\'s settlement wallet...'**
  String get trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbawaiting8722Sbto8722Sbbuyer;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbawaiting8722Sbto8722Sbseller.
  ///
  /// In en, this message translates to:
  /// **'Awaiting transfer to the seller\'s non-custodial wallet...'**
  String get trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbawaiting8722Sbto8722Sbseller;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbconfirming8722Sbto8722Sbseller.
  ///
  /// In en, this message translates to:
  /// **'Confirming transfer to the seller\'s non-custodial wallet...'**
  String get trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbconfirming8722Sbto8722Sbseller;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbdone250Sbbuyer.
  ///
  /// In en, this message translates to:
  /// **'Done! Check your receiving wallet and you’ll see the transaction!'**
  String get trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbdone250Sbbuyer;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbdone250Sbseller.
  ///
  /// In en, this message translates to:
  /// **'Done! The buyer should now see the transaction in the receiving wallet.'**
  String get trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbdone250Sbseller;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbeta8722Sbminutes.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbeta8722Sbminutes;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbexplorer8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Open explorer'**
  String get trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbexplorer8722Sbbtn;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbtotal8722Sbeta.
  ///
  /// In en, this message translates to:
  /// **'Estimated remaining time: ≈ {eta} min'**
  String trade250Sbstatus250Sbsettlement250Sbprogress250Sbstepper250Sbtotal8722Sbeta(Object eta);

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbproof.
  ///
  /// In en, this message translates to:
  /// **'Settlement proof'**
  String get trade250Sbstatus250Sbsettlement250Sbproof;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbseller8722Sbtx250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Transfer to the seller\'s non-custodial wallet'**
  String get trade250Sbstatus250Sbsettlement250Sbseller8722Sbtx250Sbtitle;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbshow8722Sbproof.
  ///
  /// In en, this message translates to:
  /// **'Show payment proof'**
  String get trade250Sbstatus250Sbsettlement250Sbshow8722Sbproof;

  /// No description provided for @trade250Sbstatus250Sbsettlement250Sbtx8722Sbkey.
  ///
  /// In en, this message translates to:
  /// **'Transaction key'**
  String get trade250Sbstatus250Sbsettlement250Sbtx8722Sbkey;

  /// No description provided for @trade250Sbstatus250Sbunfunded8722Sbescrowed.
  ///
  /// In en, this message translates to:
  /// **'Unfunded, protected by arbitration bond'**
  String get trade250Sbstatus250Sbunfunded8722Sbescrowed;

  /// No description provided for @trade250Sbstatus250Sbunfunded8722Sbnot8722Sbescrowed.
  ///
  /// In en, this message translates to:
  /// **'Unfunded, not protected by arbitration bond'**
  String get trade250Sbstatus250Sbunfunded8722Sbnot8722Sbescrowed;

  /// No description provided for @trade250Sbstep250Sbprocessing8722Sbsettlement.
  ///
  /// In en, this message translates to:
  /// **'The settlement is being processed, the coins are being transferred to your wallet. Please wait, there\'s nothing that you need to do.'**
  String get trade250Sbstep250Sbprocessing8722Sbsettlement;

  /// No description provided for @trade250Sbsubtitle8722Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'{username} has responded to your {ad} at {time}'**
  String trade250Sbsubtitle8722Sblocal8722Sbbuy(Object username, Object ad, Object time);

  /// No description provided for @trade250Sbsubtitle8722Sblocal8722Sbbuy8722Sbad.
  ///
  /// In en, this message translates to:
  /// **'local buy advertisement'**
  String get trade250Sbsubtitle8722Sblocal8722Sbbuy8722Sbad;

  /// No description provided for @trade250Sbsubtitle8722Sblocal8722Sbbuy8722Sbseller.
  ///
  /// In en, this message translates to:
  /// **'You have responded to {username} {ad} at {time}'**
  String trade250Sbsubtitle8722Sblocal8722Sbbuy8722Sbseller(Object username, Object ad, Object time);

  /// No description provided for @trade250Sbsubtitle8722Sblocal8722Sbsell8722Sbbuyer.
  ///
  /// In en, this message translates to:
  /// **'local sell advertisement'**
  String get trade250Sbsubtitle8722Sblocal8722Sbsell8722Sbbuyer;

  /// No description provided for @trade250Sbsubtitle8722Sbonline8722Sbbuy8722Sbadvertisement.
  ///
  /// In en, this message translates to:
  /// **'online buy advertisement'**
  String get trade250Sbsubtitle8722Sbonline8722Sbbuy8722Sbadvertisement;

  /// No description provided for @trade250Sbsubtitle8722Sbonline8722Sbsell8722Sbadvertisement.
  ///
  /// In en, this message translates to:
  /// **'online sell advertisement'**
  String get trade250Sbsubtitle8722Sbonline8722Sbsell8722Sbadvertisement;

  /// No description provided for @trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Buyer doesn\'t need a device at all - confirm successful transaction with the verification code'**
  String get trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb0;

  /// No description provided for @trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Seller can finalize the transaction using a smartphone or laptop'**
  String get trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb1;

  /// No description provided for @trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb2.
  ///
  /// In en, this message translates to:
  /// **'Finalized transaction is irreversible'**
  String get trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb2;

  /// No description provided for @trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb5.
  ///
  /// In en, this message translates to:
  /// **'Please do not use online payment methods! Use online trades for that'**
  String get trade250Sbterms8722Sband8722Sbinfo8722Sbtext8722Sb5;

  /// No description provided for @trade250Sbterms8722Sband8722Sbinfo8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'{appName} local cash transactions terms and info'**
  String trade250Sbterms8722Sband8722Sbinfo8722Sbtitle(Object appName);

  /// No description provided for @trade250Sbterms8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Terms of trade with {username}'**
  String trade250Sbterms8722Sbtitle(Object username);

  /// No description provided for @trade250Sbtitle8722Sbid.
  ///
  /// In en, this message translates to:
  /// **'Trade ID: {id}'**
  String trade250Sbtitle8722Sbid(Object id);

  /// No description provided for @trade250Sbtitle8722Sblocal8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Buying {amountXmr} {assetSymbol} for {amountFiat} {currency} with cash'**
  String trade250Sbtitle8722Sblocal8722Sbbuy(Object amountXmr, Object assetSymbol, Object amountFiat, Object currency);

  /// No description provided for @trade250Sbtitle8722Sblocal8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Selling {amountXmr} {assetSymbol} for {amountFiat} {currency} for cash'**
  String trade250Sbtitle8722Sblocal8722Sbsell(Object amountXmr, Object assetSymbol, Object amountFiat, Object currency);

  /// No description provided for @trade250Sbtitle8722Sbonline8722Sbbuy.
  ///
  /// In en, this message translates to:
  /// **'Buying {amountXmr} {assetSymbol} for {amountFiat} {currency} using {method}'**
  String trade250Sbtitle8722Sbonline8722Sbbuy(Object amountXmr, Object assetSymbol, Object amountFiat, Object currency, Object method);

  /// No description provided for @trade250Sbtitle8722Sbonline8722Sbsell.
  ///
  /// In en, this message translates to:
  /// **'Selling {amountXmr} {assetSymbol} for {amountFiat} {currency} using {method}'**
  String trade250Sbtitle8722Sbonline8722Sbsell(Object amountXmr, Object assetSymbol, Object amountFiat, Object currency, Object method);

  /// No description provided for @trade250Sbtitle250Sbbuying.
  ///
  /// In en, this message translates to:
  /// **'Buying'**
  String get trade250Sbtitle250Sbbuying;

  /// No description provided for @trade250Sbtitle250Sbexpiry.
  ///
  /// In en, this message translates to:
  /// **'Contract length:'**
  String get trade250Sbtitle250Sbexpiry;

  /// No description provided for @trade250Sbtitle250Sbselling.
  ///
  /// In en, this message translates to:
  /// **'Selling'**
  String get trade250Sbtitle250Sbselling;

  /// No description provided for @trade250Sbupdate8722Sbfeedback8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Update feedback'**
  String get trade250Sbupdate8722Sbfeedback8722Sbbtn;

  /// No description provided for @trade250Sbwarning250Sbimpersonation.
  ///
  /// In en, this message translates to:
  /// **'Beware of scammers trying to impersonate staff! <br /> {appName} administrators will never tell you to finalize a trade. <br /> Staff messages have a red background.'**
  String trade250Sbwarning250Sbimpersonation(Object appName);

  /// No description provided for @trades8722Sbtable250Sbstatus250Sbnot8722Sbpaid.
  ///
  /// In en, this message translates to:
  /// **'Not paid'**
  String get trades8722Sbtable250Sbstatus250Sbnot8722Sbpaid;

  /// No description provided for @trades8722Sbtable250Sbstatus250Sbpaid.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get trades8722Sbtable250Sbstatus250Sbpaid;

  /// No description provided for @try8722Sbagain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get try8722Sbagain;

  /// No description provided for @user250Sbaccount8722Sbcreated.
  ///
  /// In en, this message translates to:
  /// **'Account created:'**
  String get user250Sbaccount8722Sbcreated;

  /// No description provided for @user250Sbads250Sblocal8722Sbbuy8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} for cash to {user}'**
  String user250Sbads250Sblocal8722Sbbuy8722Sbtitle(Object assetName, Object user);

  /// No description provided for @user250Sbads250Sblocal8722Sbsell8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} with cash from {user}'**
  String user250Sbads250Sblocal8722Sbsell8722Sbtitle(Object assetName, Object user);

  /// No description provided for @user250Sbads250Sbonline8722Sbbuy8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Sell {assetName} online to {user}'**
  String user250Sbads250Sbonline8722Sbbuy8722Sbtitle(Object assetName, Object user);

  /// No description provided for @user250Sbads250Sbonline8722Sbsell8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} online from {user}'**
  String user250Sbads250Sbonline8722Sbsell8722Sbtitle(Object assetName, Object user);

  /// No description provided for @user250Sbblock8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Block {username}'**
  String user250Sbblock8722Sbbtn(Object username);

  /// No description provided for @user250Sbblock8722Sbstatus.
  ///
  /// In en, this message translates to:
  /// **'You are blocking {username}'**
  String user250Sbblock8722Sbstatus(Object username);

  /// No description provided for @user250Sbblock8722Sbstatus8722Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'They will not be able to respond to your ads. Their ads are hidden from your search results.'**
  String get user250Sbblock8722Sbstatus8722Sbdescription;

  /// No description provided for @user250Sbblock250Sbwill8722Sbhide8722Sbads.
  ///
  /// In en, this message translates to:
  /// **'Blocking a user will hide their ads from your search results'**
  String get user250Sbblock250Sbwill8722Sbhide8722Sbads;

  /// No description provided for @user250Sbcache8722Sbdisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Updated once an hour'**
  String get user250Sbcache8722Sbdisclaimer;

  /// No description provided for @user250Sbfeedback8722Sbmore.
  ///
  /// In en, this message translates to:
  /// **'See more feedback on {user}'**
  String user250Sbfeedback8722Sbmore(Object user);

  /// No description provided for @user250Sbfeedback8722Sbscore.
  ///
  /// In en, this message translates to:
  /// **'Feedback score:'**
  String get user250Sbfeedback8722Sbscore;

  /// No description provided for @user250Sbfeedback8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get user250Sbfeedback8722Sbtitle;

  /// No description provided for @user250Sbhave8722Sbtraded.
  ///
  /// In en, this message translates to:
  /// **'You\'ve traded with this user'**
  String get user250Sbhave8722Sbtraded;

  /// No description provided for @user250Sbhavent8722Sbtraded.
  ///
  /// In en, this message translates to:
  /// **'You have not traded with this user yet'**
  String get user250Sbhavent8722Sbtraded;

  /// No description provided for @user250Sbinformation.
  ///
  /// In en, this message translates to:
  /// **'Information'**
  String get user250Sbinformation;

  /// No description provided for @user250Sblast8722Sbseen.
  ///
  /// In en, this message translates to:
  /// **'Seen'**
  String get user250Sblast8722Sbseen;

  /// No description provided for @user250Sblast8722Sbseen250Sbjust8722Sbnow.
  ///
  /// In en, this message translates to:
  /// **'just now'**
  String get user250Sblast8722Sbseen250Sbjust8722Sbnow;

  /// No description provided for @user250Sbmedian8722Sbdays.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get user250Sbmedian8722Sbdays;

  /// No description provided for @user250Sbmedian8722Sbhours.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get user250Sbmedian8722Sbhours;

  /// No description provided for @user250Sbmedian8722Sbminutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get user250Sbmedian8722Sbminutes;

  /// No description provided for @user250Sbmedian8722Sbnot8722Sbknown.
  ///
  /// In en, this message translates to:
  /// **'Not known'**
  String get user250Sbmedian8722Sbnot8722Sbknown;

  /// No description provided for @user250Sbmedian8722Sbseconds.
  ///
  /// In en, this message translates to:
  /// **'seconds'**
  String get user250Sbmedian8722Sbseconds;

  /// No description provided for @user250Sbmedian8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Typical trade finalization time:'**
  String get user250Sbmedian8722Sbtitle;

  /// No description provided for @user250Sbno8722Sbfeedback250Sbwhy250Sb1.
  ///
  /// In en, this message translates to:
  /// **'Feedback takes up to an hour to reflect.'**
  String get user250Sbno8722Sbfeedback250Sbwhy250Sb1;

  /// No description provided for @user250Sbno8722Sbfeedback250Sbwhy250Sb2.
  ///
  /// In en, this message translates to:
  /// **'Feedback is only shown if the total <strong>market value</strong> (as calculated by the CoinGecko price, not the price set in the offer) of the coins traded between you is more than 100 USD equivalent.'**
  String get user250Sbno8722Sbfeedback250Sbwhy250Sb2;

  /// No description provided for @user250Sbno8722Sbfeedback250Sbwhy250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Where\'s my feedback?'**
  String get user250Sbno8722Sbfeedback250Sbwhy250Sbtitle;

  /// No description provided for @user250Sbnumber8722Sbof8722Sbpartners.
  ///
  /// In en, this message translates to:
  /// **'Trading partners:'**
  String get user250Sbnumber8722Sbof8722Sbpartners;

  /// No description provided for @user250Sbnumber8722Sbof8722Sbtrades.
  ///
  /// In en, this message translates to:
  /// **'Trades:'**
  String get user250Sbnumber8722Sbof8722Sbtrades;

  /// No description provided for @user250Sbthis8722Sbis8722Sbyou.
  ///
  /// In en, this message translates to:
  /// **'This is you'**
  String get user250Sbthis8722Sbis8722Sbyou;

  /// No description provided for @user250Sbtrust8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Trust {username}'**
  String user250Sbtrust8722Sbbtn(Object username);

  /// No description provided for @user250Sbtrust8722Sbstatus.
  ///
  /// In en, this message translates to:
  /// **'You are trusting {username}'**
  String user250Sbtrust8722Sbstatus(Object username);

  /// No description provided for @user250Sbtrust8722Sbstatus8722Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'They will be able to respond to ads you have made for trusted users only'**
  String get user250Sbtrust8722Sbstatus8722Sbdescription;

  /// No description provided for @user250Sbunblock8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Unblock {username}'**
  String user250Sbunblock8722Sbbtn(Object username);

  /// No description provided for @user250Sbuntrust8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Untrust {username}'**
  String user250Sbuntrust8722Sbbtn(Object username);

  /// No description provided for @user250Sbupdate8722Sbfeedback8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Update feedback on {username}'**
  String user250Sbupdate8722Sbfeedback8722Sbtitle(Object username);

  /// No description provided for @validation250Sberror250Sbad8722Sbid.
  ///
  /// In en, this message translates to:
  /// **'Invalid ID!'**
  String get validation250Sberror250Sbad8722Sbid;

  /// No description provided for @validation250Sberror250Sbattachment8722Sbid.
  ///
  /// In en, this message translates to:
  /// **'Invalid attachment ID'**
  String get validation250Sberror250Sbattachment8722Sbid;

  /// No description provided for @validation250Sberror250Sbcountry8722Sbcode.
  ///
  /// In en, this message translates to:
  /// **'Invalid country code!'**
  String get validation250Sberror250Sbcountry8722Sbcode;

  /// No description provided for @validation250Sberror250Sbiso86018722Sbtimestamp.
  ///
  /// In en, this message translates to:
  /// **'Should be a valid UTC date in ISO 8601 format: https://en.wikipedia.org/wiki/ISO_8601'**
  String get validation250Sberror250Sbiso86018722Sbtimestamp;

  /// No description provided for @validation250Sberror250Sbnotification8722Sbid.
  ///
  /// In en, this message translates to:
  /// **'Invalid notification ID'**
  String get validation250Sberror250Sbnotification8722Sbid;

  /// No description provided for @validation250Sberror250Sbpage.
  ///
  /// In en, this message translates to:
  /// **'Page should be a number'**
  String get validation250Sberror250Sbpage;

  /// No description provided for @validation250Sberror250Sbtrade8722Sbid.
  ///
  /// In en, this message translates to:
  /// **'Invalid trade ID'**
  String get validation250Sberror250Sbtrade8722Sbid;

  /// No description provided for @verify8722Sbemail250Sberror.
  ///
  /// In en, this message translates to:
  /// **'There has been an error with the email verification'**
  String get verify8722Sbemail250Sberror;

  /// No description provided for @verify8722Sbemail250Sbsuccess.
  ///
  /// In en, this message translates to:
  /// **'Email successfully verified!'**
  String get verify8722Sbemail250Sbsuccess;

  /// No description provided for @wallet250Sbclipboard8722Sbvirus8722Sbwarning.
  ///
  /// In en, this message translates to:
  /// **'<strong> Make sure the address you\'ve pasted is the same as the address you\'ve copied! </strong> Some users have gotten their funds stolen by <a style=\"text-decoration:underline;font-size:inherit;color:inherit\" href=\"https://reddit.com/r/Monero/comments/mcvuxc/beware_crypto_stealing_malware/\" target=\"_blank\">malware replacing the address copied to clipboard with the attacker\'s address</a>.'**
  String get wallet250Sbclipboard8722Sbvirus8722Sbwarning;

  /// No description provided for @wallet250Sbdownload8722Sbcsv8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Download CSV'**
  String get wallet250Sbdownload8722Sbcsv8722Sbbtn;

  /// No description provided for @wallet250Sbfee250Sbbtc250Sbhigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get wallet250Sbfee250Sbbtc250Sbhigh;

  /// No description provided for @wallet250Sbfee250Sbbtc250Sbhigh250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'High fee, estimated to be confirmed within a few blocks'**
  String get wallet250Sbfee250Sbbtc250Sbhigh250Sblabel;

  /// No description provided for @wallet250Sbfee250Sbbtc250Sblow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get wallet250Sbfee250Sbbtc250Sblow;

  /// No description provided for @wallet250Sbfee250Sbbtc250Sblow250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Low fee, estimated to be confirmed within a week'**
  String get wallet250Sbfee250Sbbtc250Sblow250Sblabel;

  /// No description provided for @wallet250Sbfee250Sbbtc250Sbmedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get wallet250Sbfee250Sbbtc250Sbmedium;

  /// No description provided for @wallet250Sbfee250Sbbtc250Sbmedium250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Medium fee, estimated to be confirmed within a day'**
  String get wallet250Sbfee250Sbbtc250Sbmedium250Sblabel;

  /// No description provided for @wallet250Sbfee250Sbbtc250Sbradio8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Select fee level'**
  String get wallet250Sbfee250Sbbtc250Sbradio8722Sbtitle;

  /// No description provided for @wallet250Sbfee250Sbxmr250Sblow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get wallet250Sbfee250Sbxmr250Sblow;

  /// No description provided for @wallet250Sbfee250Sbxmr250Sbstandard.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get wallet250Sbfee250Sbxmr250Sbstandard;

  /// No description provided for @wallet250Sbfunds8722Sbunlock8722Sbtime8722Sbblock.
  ///
  /// In en, this message translates to:
  /// **'Funds will be unlocked at block {blockHeight}'**
  String wallet250Sbfunds8722Sbunlock8722Sbtime8722Sbblock(Object blockHeight);

  /// No description provided for @wallet250Sbfunds8722Sbunlock8722Sbtime8722Sbtime.
  ///
  /// In en, this message translates to:
  /// **'Funds will be unlocked at {time}'**
  String wallet250Sbfunds8722Sbunlock8722Sbtime8722Sbtime(Object time);

  /// No description provided for @wallet250Sbfunds8722Sbunlocked.
  ///
  /// In en, this message translates to:
  /// **'Unlocked'**
  String get wallet250Sbfunds8722Sbunlocked;

  /// No description provided for @wallet250Sbinternal8722Sbtransfer.
  ///
  /// In en, this message translates to:
  /// **'Internal transfer'**
  String get wallet250Sbinternal8722Sbtransfer;

  /// No description provided for @wallet250Sbnojs250Sbsend250Sbsend8722Sbbalance8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Send all balance'**
  String get wallet250Sbnojs250Sbsend250Sbsend8722Sbbalance8722Sbbtn;

  /// No description provided for @wallet250Sbpassword8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Please enter your current password to proceed. 8-72 characters.'**
  String get wallet250Sbpassword8722Sbtip;

  /// No description provided for @wallet250Sbpriority250Sbfee.
  ///
  /// In en, this message translates to:
  /// **'fee: {amount} {asset}'**
  String wallet250Sbpriority250Sbfee(Object amount, Object asset);

  /// No description provided for @wallet250Sbpriority250Sblow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get wallet250Sbpriority250Sblow;

  /// No description provided for @wallet250Sbpriority250Sbstandard.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get wallet250Sbpriority250Sbstandard;

  /// No description provided for @wallet250Sbreceive250Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Your deposit {assetName} address:'**
  String wallet250Sbreceive250Sbaddress(Object assetName);

  /// No description provided for @wallet250Sbreceive250Sbcopied.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard!'**
  String get wallet250Sbreceive250Sbcopied;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbamount;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbconfirmations.
  ///
  /// In en, this message translates to:
  /// **'Confirmations:'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbconfirmations;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbdate.
  ///
  /// In en, this message translates to:
  /// **'Date:'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbdate;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbid.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID:'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbid;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sblocked8722Sbstatus.
  ///
  /// In en, this message translates to:
  /// **'Locked status:'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sblocked8722Sbstatus;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sblocked8722Sbstatus8722Sbunlocked.
  ///
  /// In en, this message translates to:
  /// **'Unlocked'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sblocked8722Sbstatus8722Sbunlocked;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbnote.
  ///
  /// In en, this message translates to:
  /// **'Note:'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbnote;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbstatus.
  ///
  /// In en, this message translates to:
  /// **'Status:'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbstatus;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbstatus8722Sbpending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbstatus8722Sbpending;

  /// No description provided for @wallet250Sbreceive250Sbdetails8722Sbdialog250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Deposit details'**
  String get wallet250Sbreceive250Sbdetails8722Sbdialog250Sbtitle;

  /// No description provided for @wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Amount {assetSymbol}'**
  String wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbamount(Object assetSymbol);

  /// No description provided for @wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbconfirmations8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Confirmations'**
  String get wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbconfirmations8722Sblong;

  /// No description provided for @wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbconfirmations8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Conf.'**
  String get wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbconfirmations8722Sbshort;

  /// No description provided for @wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbdate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbdate;

  /// No description provided for @wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbdetails8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbdetails8722Sbbtn;

  /// No description provided for @wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbstatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtable250Sbstatus;

  /// No description provided for @wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Incoming deposits'**
  String get wallet250Sbreceive250Sbincoming8722Sbdeposits8722Sbtitle;

  /// No description provided for @wallet250Sbreceive250Sbno8722Sbincoming.
  ///
  /// In en, this message translates to:
  /// **'Your pending deposits will be shown here'**
  String get wallet250Sbreceive250Sbno8722Sbincoming;

  /// No description provided for @wallet250Sbreceive250Sbqr.
  ///
  /// In en, this message translates to:
  /// **'QR representation of your {appName} {assetSymbol} address'**
  String wallet250Sbreceive250Sbqr(Object appName, Object assetSymbol);

  /// No description provided for @wallet250Sbreceive250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Receive {assetName}'**
  String wallet250Sbreceive250Sbtitle(Object assetName);

  /// No description provided for @wallet250Sbselect8722Sball8722Sbbalance.
  ///
  /// In en, this message translates to:
  /// **'All available balance'**
  String get wallet250Sbselect8722Sball8722Sbbalance;

  /// No description provided for @wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbreceived.
  ///
  /// In en, this message translates to:
  /// **'Receive amount in {assetName}'**
  String wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbreceived(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbreceived8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'This is the amount of {assetName} to be received on the receiving {assetName} address.'**
  String wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbreceived8722Sbtip(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbreceived8722Sbtip250Sbfee8722Sbon8722Sbtop.
  ///
  /// In en, this message translates to:
  /// **'Network transaction fee will be added on top of this amount.'**
  String get wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbreceived8722Sbtip250Sbfee8722Sbon8722Sbtop;

  /// No description provided for @wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbwithdrawn.
  ///
  /// In en, this message translates to:
  /// **'Amount to be deducted in {assetName}'**
  String wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbwithdrawn(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbwithdrawn8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'This is the estimated amount of {assetSymbol} to be deducted from your {appName} {assetName} wallet including the {assetName} transaction network fee.'**
  String wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbwithdrawn8722Sbtip(Object assetSymbol, Object appName, Object assetName);

  /// No description provided for @wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbwithdrawn8722Sbtip250Sbonly8722Sbfor8722Sbexternal.
  ///
  /// In en, this message translates to:
  /// **'Only relevant for the transactions sent to an external {assetName} wallet. Internal transactions between {appName} wallets are completely free.'**
  String wallet250Sbsend250Sbamount8722Sbto8722Sbbe8722Sbwithdrawn8722Sbtip250Sbonly8722Sbfor8722Sbexternal(Object assetName, Object appName);

  /// No description provided for @wallet250Sbsend250Sbavailable8722Sbbalance.
  ///
  /// In en, this message translates to:
  /// **'You can send up to {amount} {assetSymbol}'**
  String wallet250Sbsend250Sbavailable8722Sbbalance(Object amount, Object assetSymbol);

  /// No description provided for @wallet250Sbsend250Sbcontinue8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get wallet250Sbsend250Sbcontinue8722Sbbtn;

  /// No description provided for @wallet250Sbsend250Sbdialog250Sbconfirm8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm withdrawing arbitration bond'**
  String get wallet250Sbsend250Sbdialog250Sbconfirm8722Sbtitle;

  /// No description provided for @wallet250Sbsend250Sblocal8722Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'{appName} wallet address'**
  String wallet250Sbsend250Sblocal8722Sbwallet(Object appName);

  /// No description provided for @wallet250Sbsend250Sbpriority250Sbfaq8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'What\'s this?'**
  String get wallet250Sbsend250Sbpriority250Sbfaq8722Sblink;

  /// No description provided for @wallet250Sbsend250Sbpriority250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Select transaction priority'**
  String get wallet250Sbsend250Sbpriority250Sbtitle;

  /// No description provided for @wallet250Sbsend250Sbreceiving8722Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'Receiving {assetName} address'**
  String wallet250Sbsend250Sbreceiving8722Sbaddress(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbreceiving8722Sbaddress8722Sbtip.
  ///
  /// In en, this message translates to:
  /// **'Only valid {assetName} addresses accepted'**
  String wallet250Sbsend250Sbreceiving8722Sbaddress8722Sbtip(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbsend8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Send {assetName}'**
  String wallet250Sbsend250Sbsend8722Sbbtn(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbsuccess.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get wallet250Sbsend250Sbsuccess;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb08722Sbtext8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'Monero transactions normally take about 30 to 60 minutes to send, on occasion it can take a few hours if the network is slow.'**
  String get wallet250Sbsend250Sbtip8722Sb08722Sbtext8722Sb0;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb08722Sbtext8722Sb057Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency transactions normally take about 30 to 60 minutes to send, on occasion it can take a few hours if the network is slow.'**
  String get wallet250Sbsend250Sbtip8722Sb08722Sbtext8722Sb057Sbagoradesk;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb08722Sbtext8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'See why sometimes it takes longer'**
  String get wallet250Sbsend250Sbtip8722Sb08722Sbtext8722Sb1;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb08722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'How Long Does a Monero Transaction Take?'**
  String get wallet250Sbsend250Sbtip8722Sb08722Sbtitle;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb08722Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'How Long Does a Cryptocurrency Transaction Take?'**
  String get wallet250Sbsend250Sbtip8722Sb08722Sbtitle57Sbagoradesk;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb18722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'{appName} wallet is a web wallet - outgoing Monero addresses are not connected to your account. If you are asking for a refund from a merchant, please ask them to send the refund to your receiving address.'**
  String wallet250Sbsend250Sbtip8722Sb18722Sbtext(Object appName);

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb18722Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'{appName} wallet is a web wallet - outgoing cryptocurrency addresses are not connected to your account. If you are asking for a refund from a merchant, please ask them to send the refund to your receiving address.'**
  String wallet250Sbsend250Sbtip8722Sb18722Sbtext57Sbagoradesk(Object appName);

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb18722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Monero Refunds and Payouts'**
  String get wallet250Sbsend250Sbtip8722Sb18722Sbtitle;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb18722Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Cryptocurrency Refunds and Payouts'**
  String get wallet250Sbsend250Sbtip8722Sb18722Sbtitle57Sbagoradesk;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb28722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'When sending from the {appName} wallet, a Monero network fee is reserved and deducted from your balance. Transactions to wallets of other {appName} users are free.'**
  String wallet250Sbsend250Sbtip8722Sb28722Sbtext(Object appName);

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb28722Sbtext8722Sbfee.
  ///
  /// In en, this message translates to:
  /// **'Current outgoing {assetName} network fees'**
  String wallet250Sbsend250Sbtip8722Sb28722Sbtext8722Sbfee(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb28722Sbtext8722Sbfee8722Sbrates.
  ///
  /// In en, this message translates to:
  /// **'Current outgoing {assetName} network fee rates'**
  String wallet250Sbsend250Sbtip8722Sb28722Sbtext8722Sbfee8722Sbrates(Object assetName);

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb28722Sbtext57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'When sending from the {appName} wallet, a network fee is reserved and deducted from your balance. Transactions to wallets of other {appName} users are free.'**
  String wallet250Sbsend250Sbtip8722Sb28722Sbtext57Sbagoradesk(Object appName);

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb28722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Outgoing Monero Fees'**
  String get wallet250Sbsend250Sbtip8722Sb28722Sbtitle;

  /// No description provided for @wallet250Sbsend250Sbtip8722Sb28722Sbtitle57Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Outgoing Cryptocurrency Fees'**
  String get wallet250Sbsend250Sbtip8722Sb28722Sbtitle57Sbagoradesk;

  /// No description provided for @wallet250Sbsend250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Send {assetName}'**
  String wallet250Sbsend250Sbtitle(Object assetName);

  /// No description provided for @wallet250Sbswap250Sbcheckbox250Sbdeposit.
  ///
  /// In en, this message translates to:
  /// **'I want to deposit another currency'**
  String get wallet250Sbswap250Sbcheckbox250Sbdeposit;

  /// No description provided for @wallet250Sbswap250Sbcheckbox250Sbwithdraw.
  ///
  /// In en, this message translates to:
  /// **'I want to receive another currency'**
  String get wallet250Sbswap250Sbcheckbox250Sbwithdraw;

  /// No description provided for @wallet250Sbswap250Sbconfirmation250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Your {partner} trade'**
  String wallet250Sbswap250Sbconfirmation250Sbtitle(Object partner);

  /// No description provided for @wallet250Sbswap250Sbconnection8722Sberror.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong while connecting to {partner}, please try again later.'**
  String wallet250Sbswap250Sbconnection8722Sberror(Object partner);

  /// No description provided for @wallet250Sbswap250Sbcontinue8722Sbon.
  ///
  /// In en, this message translates to:
  /// **'Continue on {partner}'**
  String wallet250Sbswap250Sbcontinue8722Sbon(Object partner);

  /// No description provided for @wallet250Sbswap250Sbcurrencies250Sbdeposit.
  ///
  /// In en, this message translates to:
  /// **'I want to send...'**
  String get wallet250Sbswap250Sbcurrencies250Sbdeposit;

  /// No description provided for @wallet250Sbswap250Sbcurrencies250Sbwithdrawal.
  ///
  /// In en, this message translates to:
  /// **'I want to receive...'**
  String get wallet250Sbswap250Sbcurrencies250Sbwithdrawal;

  /// No description provided for @wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress.
  ///
  /// In en, this message translates to:
  /// **'to this address:'**
  String get wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress;

  /// No description provided for @wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress250Sbhelper.
  ///
  /// In en, this message translates to:
  /// **'After receiving your transaction, {partner} will send the {asset} to your {appName} wallet'**
  String wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress250Sbhelper(Object partner, Object asset, Object appName);

  /// No description provided for @wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress250Sbsend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress250Sbsend;

  /// No description provided for @wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress250Sbto8722Sbthis.
  ///
  /// In en, this message translates to:
  /// **' to this address:'**
  String get wallet250Sbswap250Sbdeposit250Sbconfirmation250Sbaddress250Sbto8722Sbthis;

  /// No description provided for @wallet250Sbswap250Sbdeposits250Sbhelper.
  ///
  /// In en, this message translates to:
  /// **'You\'ll see the transaction on the receiving wallet after it\'s confirmed by the {asset} network (≈10-60 min)'**
  String wallet250Sbswap250Sbdeposits250Sbhelper(Object asset);

  /// No description provided for @wallet250Sbswap250Sblimits250Sbdeposit250SbmaxAmount.
  ///
  /// In en, this message translates to:
  /// **'Maximum deposit amount'**
  String get wallet250Sbswap250Sblimits250Sbdeposit250SbmaxAmount;

  /// No description provided for @wallet250Sbswap250Sblimits250Sbdeposit250SbminAmount.
  ///
  /// In en, this message translates to:
  /// **'Minimum deposit amount'**
  String get wallet250Sbswap250Sblimits250Sbdeposit250SbminAmount;

  /// No description provided for @wallet250Sbswap250Sbnative250Sbamount8722Sbtype8722Sbselector250Sbnojs8722Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Choose whether you want to calculate the exchange based on how much {asset} you want to send or how much {currencyCode} you want to receive. We\'ll use it to find the best offers for you.'**
  String wallet250Sbswap250Sbnative250Sbamount8722Sbtype8722Sbselector250Sbnojs8722Sbdescription(Object asset, Object currencyCode);

  /// No description provided for @wallet250Sbswap250Sbnative250Sbamount8722Sbtype8722Sbselector250Sbreceive.
  ///
  /// In en, this message translates to:
  /// **'Receive {currencyCode}'**
  String wallet250Sbswap250Sbnative250Sbamount8722Sbtype8722Sbselector250Sbreceive(Object currencyCode);

  /// No description provided for @wallet250Sbswap250Sbnative250Sbamount8722Sbtype8722Sbselector250Sbsend.
  ///
  /// In en, this message translates to:
  /// **'Send {asset}'**
  String wallet250Sbswap250Sbnative250Sbamount8722Sbtype8722Sbselector250Sbsend(Object asset);

  /// No description provided for @wallet250Sbswap250Sbnative250Sbamount250Sbdescription250Sbamount8722Sbtype8722Sbreceive.
  ///
  /// In en, this message translates to:
  /// **'The amount of {currencyCode} you want to receive'**
  String wallet250Sbswap250Sbnative250Sbamount250Sbdescription250Sbamount8722Sbtype8722Sbreceive(Object currencyCode);

  /// No description provided for @wallet250Sbswap250Sbnative250Sbamount250Sbdescription250Sbamount8722Sbtype8722Sbsend.
  ///
  /// In en, this message translates to:
  /// **'The amount of {asset} you want to send'**
  String wallet250Sbswap250Sbnative250Sbamount250Sbdescription250Sbamount8722Sbtype8722Sbsend(Object asset);

  /// No description provided for @wallet250Sbswap250Sbnative250Sberror250Sbinvalid8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Invalid amount'**
  String get wallet250Sbswap250Sbnative250Sberror250Sbinvalid8722Sbamount;

  /// No description provided for @wallet250Sbswap250Sbnative250Sberror250Sbno8722Sboffers.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find any suitable offers... try adjusting the amount.'**
  String get wallet250Sbswap250Sbnative250Sberror250Sbno8722Sboffers;

  /// No description provided for @wallet250Sbswap250Sbnative250Sboffers250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose an offer'**
  String get wallet250Sbswap250Sbnative250Sboffers250Sbtitle;

  /// No description provided for @wallet250Sbswap250Sbnative250Sboffers250Sbview8722Sbad8722Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'View ad'**
  String get wallet250Sbswap250Sbnative250Sboffers250Sbview8722Sbad8722Sbbutton;

  /// No description provided for @wallet250Sbswap250Sbnative250Sbtrade8722Sbbutton.
  ///
  /// In en, this message translates to:
  /// **'Trade'**
  String get wallet250Sbswap250Sbnative250Sbtrade8722Sbbutton;

  /// No description provided for @wallet250Sbswap250Sbpowered8722Sbby.
  ///
  /// In en, this message translates to:
  /// **'powered by {partner}'**
  String wallet250Sbswap250Sbpowered8722Sbby(Object partner);

  /// No description provided for @wallet250Sbswap250Sbprovide8722Sbemail.
  ///
  /// In en, this message translates to:
  /// **'Give {partner} my contact email'**
  String wallet250Sbswap250Sbprovide8722Sbemail(Object partner);

  /// No description provided for @wallet250Sbswap250Sbsave8722Sblink.
  ///
  /// In en, this message translates to:
  /// **'Be sure to save this link, it\'s your only way of tracking the trade!'**
  String get wallet250Sbswap250Sbsave8722Sblink;

  /// No description provided for @wallet250Sbswap250Sbsend8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Send the coins!'**
  String get wallet250Sbswap250Sbsend8722Sbbtn;

  /// No description provided for @wallet250Sbswap250Sbstatus250Sbavailable.
  ///
  /// In en, this message translates to:
  /// **'Status: available'**
  String get wallet250Sbswap250Sbstatus250Sbavailable;

  /// No description provided for @wallet250Sbswap250Sbswap8722Sbasset8722Sbinput250Sbwithdrawal.
  ///
  /// In en, this message translates to:
  /// **'Estimated sent {asset}'**
  String wallet250Sbswap250Sbswap8722Sbasset8722Sbinput250Sbwithdrawal(Object asset);

  /// No description provided for @wallet250Sbswap250Sbswap8722Sbasset8722Sbinput250Sbwithdrawal250Sbhelper.
  ///
  /// In en, this message translates to:
  /// **'Estimated amount of {asset} to be deducted from your {appName} {assetName} wallet to receive the {currency} amount above including the {assetName} transaction network fee. May change slightly due to the network fee fluctuations.'**
  String wallet250Sbswap250Sbswap8722Sbasset8722Sbinput250Sbwithdrawal250Sbhelper(Object asset, Object appName, Object assetName, Object currency);

  /// No description provided for @wallet250Sbswap250Sbswap8722Sbcurrency8722Sbinput250Sbdeposit.
  ///
  /// In en, this message translates to:
  /// **'How much {currency} do you want to send?'**
  String wallet250Sbswap250Sbswap8722Sbcurrency8722Sbinput250Sbdeposit(Object currency);

  /// No description provided for @wallet250Sbswap250Sbswap8722Sbcurrency8722Sbinput250Sbwithdrawal.
  ///
  /// In en, this message translates to:
  /// **'Estimated received {currency}'**
  String wallet250Sbswap250Sbswap8722Sbcurrency8722Sbinput250Sbwithdrawal(Object currency);

  /// No description provided for @wallet250Sbswap250Sbswap8722Sbcurrency8722Sbinput250Sbwithdrawal250Sbhelper.
  ///
  /// In en, this message translates to:
  /// **'Estimated amount of {currency} you\'ll get. Use the input below to change it. May change slightly due to {partner} exchange rate fluctuations.'**
  String wallet250Sbswap250Sbswap8722Sbcurrency8722Sbinput250Sbwithdrawal250Sbhelper(Object currency, Object partner);

  /// No description provided for @wallet250Sbswap250Sbwithdrawal250Sbsuccess250Sbhelper.
  ///
  /// In en, this message translates to:
  /// **'Just relax, wait {time} minutes, and {partner} will send you the {currency}'**
  String wallet250Sbswap250Sbwithdrawal250Sbsuccess250Sbhelper(Object time, Object partner, Object currency);

  /// No description provided for @wallet250Sbswap250Sbwithdrawal250Sbsuccess250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **' We\'ve sent the {asset} to {partner}'**
  String wallet250Sbswap250Sbwithdrawal250Sbsuccess250Sbtitle(Object asset, Object partner);

  /// No description provided for @wallet250Sbswap250Sbwithdrawal250Sbsuccess250Sbtitle250Sball8722Sbset.
  ///
  /// In en, this message translates to:
  /// **'All set for the {partner} trade!'**
  String wallet250Sbswap250Sbwithdrawal250Sbsuccess250Sbtitle250Sball8722Sbset(Object partner);

  /// No description provided for @wallet250Sbtab250Sbreceive8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Receive {assetName}'**
  String wallet250Sbtab250Sbreceive8722Sblong(Object assetName);

  /// No description provided for @wallet250Sbtab250Sbreceive8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get wallet250Sbtab250Sbreceive8722Sbshort;

  /// No description provided for @wallet250Sbtab250Sbsend8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Send {assetName}'**
  String wallet250Sbtab250Sbsend8722Sblong(Object assetName);

  /// No description provided for @wallet250Sbtab250Sbsend8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get wallet250Sbtab250Sbsend8722Sbshort;

  /// No description provided for @wallet250Sbtab250Sbtx8722Sblong.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get wallet250Sbtab250Sbtx8722Sblong;

  /// No description provided for @wallet250Sbtab250Sbtx8722Sbshort.
  ///
  /// In en, this message translates to:
  /// **'Txs'**
  String get wallet250Sbtab250Sbtx8722Sbshort;

  /// No description provided for @wallet250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet250Sbtitle;

  /// No description provided for @wallet250Sbtx250Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'Affiliate program commission payout'**
  String get wallet250Sbtx250Sbaffiliate;

  /// No description provided for @wallet250Sbtx250Sbfee.
  ///
  /// In en, this message translates to:
  /// **'{assetName} network transaction fee.'**
  String wallet250Sbtx250Sbfee(Object assetName);

  /// No description provided for @wallet250Sbtx250Sbinternal8722Sbreceive8722Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'Received from trade {id}'**
  String wallet250Sbtx250Sbinternal8722Sbreceive8722Sbtrade(Object id);

  /// No description provided for @wallet250Sbtx250Sbinternal8722Sbreceive8722Sbuser.
  ///
  /// In en, this message translates to:
  /// **'Received from user {username}'**
  String wallet250Sbtx250Sbinternal8722Sbreceive8722Sbuser(Object username);

  /// No description provided for @wallet250Sbtx250Sbinternal8722Sbsend8722Sbtrade.
  ///
  /// In en, this message translates to:
  /// **'Sent to trade {id}'**
  String wallet250Sbtx250Sbinternal8722Sbsend8722Sbtrade(Object id);

  /// No description provided for @wallet250Sbtx250Sbinternal8722Sbsend8722Sbuser.
  ///
  /// In en, this message translates to:
  /// **'Sent to user {username}'**
  String wallet250Sbtx250Sbinternal8722Sbsend8722Sbuser(Object username);

  /// No description provided for @wallet250Sbtx250Sbpending8722Sbsend.
  ///
  /// In en, this message translates to:
  /// **'Pending send to'**
  String get wallet250Sbtx250Sbpending8722Sbsend;

  /// No description provided for @wallet250Sbtx250Sbrebate.
  ///
  /// In en, this message translates to:
  /// **'Fee rebate. Coupon code: {code}.'**
  String wallet250Sbtx250Sbrebate(Object code);

  /// No description provided for @wallet250Sbtx250Sbreceive.
  ///
  /// In en, this message translates to:
  /// **'Received. {assetName} network transaction ID:'**
  String wallet250Sbtx250Sbreceive(Object assetName);

  /// No description provided for @wallet250Sbtx250Sbreserve.
  ///
  /// In en, this message translates to:
  /// **'{assetName} reserve for trade {id}'**
  String wallet250Sbtx250Sbreserve(Object assetName, Object id);

  /// No description provided for @wallet250Sbtx250Sbreserve8722Sbreturn.
  ///
  /// In en, this message translates to:
  /// **'{assetName} reserve return from trade {id}'**
  String wallet250Sbtx250Sbreserve8722Sbreturn(Object assetName, Object id);

  /// No description provided for @wallet250Sbtx250Sbsend.
  ///
  /// In en, this message translates to:
  /// **'Sent to'**
  String get wallet250Sbtx250Sbsend;

  /// No description provided for @wallet250Sbtx250Sbsend8722Sbid.
  ///
  /// In en, this message translates to:
  /// **'{assetName} network transaction ID:'**
  String wallet250Sbtx250Sbsend8722Sbid(Object assetName);

  /// No description provided for @wallet250Sbtxs250Sbdetails8722Sbdialog250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Transaction details'**
  String get wallet250Sbtxs250Sbdetails8722Sbdialog250Sbtitle;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbdetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get wallet250Sbtxs250Sbfilter250Sbdetails;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbdetails250Sbplaceholder.
  ///
  /// In en, this message translates to:
  /// **'Tx ID, address, trade ID, username etc.'**
  String get wallet250Sbtxs250Sbfilter250Sbdetails250Sbplaceholder;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbfrom.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get wallet250Sbtxs250Sbfilter250Sbfrom;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Filter transactions'**
  String get wallet250Sbtxs250Sbfilter250Sbtitle;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbto.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get wallet250Sbtxs250Sbfilter250Sbto;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get wallet250Sbtxs250Sbfilter250Sbtype;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'Affiliate commission'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbaffiliate;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sball.
  ///
  /// In en, this message translates to:
  /// **'All types'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sball;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbcoupon.
  ///
  /// In en, this message translates to:
  /// **'Coupon rebate'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbcoupon;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbfee.
  ///
  /// In en, this message translates to:
  /// **'Network fee'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbfee;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbinternal8722Sbreceive.
  ///
  /// In en, this message translates to:
  /// **'Internal receive'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbinternal8722Sbreceive;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbinternal8722Sbsend.
  ///
  /// In en, this message translates to:
  /// **'Internal send'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbinternal8722Sbsend;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbpending.
  ///
  /// In en, this message translates to:
  /// **'Pending send'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbpending;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbreceive.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbreceive;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbreserve.
  ///
  /// In en, this message translates to:
  /// **'Trade reserve'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbreserve;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbreserve8722Sbreturn.
  ///
  /// In en, this message translates to:
  /// **'Trade reserve return'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbreserve8722Sbreturn;

  /// No description provided for @wallet250Sbtxs250Sbfilter250Sbtype250Sbsend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get wallet250Sbtxs250Sbfilter250Sbtype250Sbsend;

  /// No description provided for @wallet250Sbtxs250Sbtable250Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Amount {assetSymbol}'**
  String wallet250Sbtxs250Sbtable250Sbamount(Object assetSymbol);

  /// No description provided for @wallet250Sbtxs250Sbtable250Sbdate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get wallet250Sbtxs250Sbtable250Sbdate;

  /// No description provided for @wallet250Sbtxs250Sbtable250Sbdescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get wallet250Sbtxs250Sbtable250Sbdescription;

  /// No description provided for @wallet250Sbtxs250Sbtable250Sbreceived.
  ///
  /// In en, this message translates to:
  /// **'Received {assetSymbol}'**
  String wallet250Sbtxs250Sbtable250Sbreceived(Object assetSymbol);

  /// No description provided for @wallet250Sbtxs250Sbtable250Sbsent.
  ///
  /// In en, this message translates to:
  /// **'Sent {assetSymbol}'**
  String wallet250Sbtxs250Sbtable250Sbsent(Object assetSymbol);

  /// No description provided for @wallet250Sbtxs250Sbtip8722Sbtext.
  ///
  /// In en, this message translates to:
  /// **'If you can see a transaction ID with a link to the blockchain explorer in the description, it means that your transaction has successfully been broadcast. Please make sure that your wallet is fully synchronized and that you are using the {latestVersion} of the {assetName} wallet'**
  String wallet250Sbtxs250Sbtip8722Sbtext(Object latestVersion, Object assetName);

  /// No description provided for @wallet250Sbtxs250Sbtip8722Sbtext8722Sblatest8722Sbversion.
  ///
  /// In en, this message translates to:
  /// **'latest version'**
  String get wallet250Sbtxs250Sbtip8722Sbtext8722Sblatest8722Sbversion;

  /// No description provided for @wallet250Sbtxs250Sbtip8722Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Tip: withdrew funds from {appName} and don\'t see them in your wallet?'**
  String wallet250Sbtxs250Sbtip8722Sbtitle(Object appName);

  /// No description provided for @wallet250Sbtxs250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Wallet transactions'**
  String get wallet250Sbtxs250Sbtitle;

  /// No description provided for @wallet250Sbupdate8722Sbsoft8722Sbwarn.
  ///
  /// In en, this message translates to:
  /// **'A new version of Monero software is out! Don\'t forget to {update} your wallet software, or you won\'t be able to send and receive transactions.'**
  String wallet250Sbupdate8722Sbsoft8722Sbwarn(Object update);

  /// No description provided for @wallet250Sbupdate8722Sbsoft8722Sbwarn8722Sbupdate.
  ///
  /// In en, this message translates to:
  /// **'update'**
  String get wallet250Sbupdate8722Sbsoft8722Sbwarn8722Sbupdate;

  /// No description provided for @wallet250Sbwithdraw250Sbamount8722Sband8722Sbfee8722Sbnext.
  ///
  /// In en, this message translates to:
  /// **'You will select the amount and fee level in the next step'**
  String get wallet250Sbwithdraw250Sbamount8722Sband8722Sbfee8722Sbnext;

  /// No description provided for @wallet250Sbwithdraw250Sbamount8722Sbnext.
  ///
  /// In en, this message translates to:
  /// **'You will select the amount in the next step'**
  String get wallet250Sbwithdraw250Sbamount8722Sbnext;

  /// No description provided for @wallet250Sbwithdraw250Sbamount8722Sbtype250Sbreceive250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Receive'**
  String get wallet250Sbwithdraw250Sbamount8722Sbtype250Sbreceive250Sblabel;

  /// No description provided for @wallet250Sbwithdraw250Sbamount8722Sbtype250Sbreceive250Sbsecondary8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Input the amount to be received (w/o fee)'**
  String get wallet250Sbwithdraw250Sbamount8722Sbtype250Sbreceive250Sbsecondary8722Sblabel;

  /// No description provided for @wallet250Sbwithdraw250Sbamount8722Sbtype250Sbsend250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get wallet250Sbwithdraw250Sbamount8722Sbtype250Sbsend250Sblabel;

  /// No description provided for @wallet250Sbwithdraw250Sbamount8722Sbtype250Sbsend250Sbsecondary8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Input the amount to be deducted (w/ fee)'**
  String get wallet250Sbwithdraw250Sbamount8722Sbtype250Sbsend250Sbsecondary8722Sblabel;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbfree8722Sbupgrade8722Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Free upgrade'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbfree8722Sbupgrade8722Sblabel;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbfree8722Sbupgrade8722Sbtooltip.
  ///
  /// In en, this message translates to:
  /// **'Because of the way we batch withdrawals, it\'s actually cheaper to send out your withdrawal with a higher fee rate. Enjoy!'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbfree8722Sbupgrade8722Sbtooltip;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees.
  ///
  /// In en, this message translates to:
  /// **'Network fees'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees250Sbhigh.
  ///
  /// In en, this message translates to:
  /// **'Fast'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees250Sbhigh;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees250Sblow.
  ///
  /// In en, this message translates to:
  /// **'Slow'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees250Sblow;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees250Sbmedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbnetwork8722Sbfees250Sbmedium;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbsend8722Sbmax.
  ///
  /// In en, this message translates to:
  /// **'Send Max'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbsend8722Sbmax;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbstepper250Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbstepper250Sbamount;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbstepper250Sbrecipient.
  ///
  /// In en, this message translates to:
  /// **'Recipient'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbstepper250Sbrecipient;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbstepper250Sbsummary.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get wallet250Sbwithdraw250Sbconfirmation8722Sbdialog250Sbstepper250Sbsummary;

  /// No description provided for @wallet250Sbwithdraw250Sbconfirmation250Sbwallet8722Sbowner.
  ///
  /// In en, this message translates to:
  /// **'By confirming the withdrawal you also confirm that the wallet you\'re withdrawing to belongs to you.'**
  String get wallet250Sbwithdraw250Sbconfirmation250Sbwallet8722Sbowner;

  /// No description provided for @wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbnew8722Sbfee.
  ///
  /// In en, this message translates to:
  /// **'New withdrawal fee'**
  String get wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbnew8722Sbfee;

  /// No description provided for @wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbold8722Sbfee.
  ///
  /// In en, this message translates to:
  /// **'Old withdrawal fee'**
  String get wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbold8722Sbfee;

  /// No description provided for @wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbreceive8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Receive amount'**
  String get wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbreceive8722Sbamount;

  /// No description provided for @wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbsend8722Sbamount.
  ///
  /// In en, this message translates to:
  /// **'Amount to be deducted'**
  String get wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbsend8722Sbamount;

  /// No description provided for @wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbtitle8722Sbdecreased.
  ///
  /// In en, this message translates to:
  /// **'The withdrawal fee has decreased'**
  String get wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbtitle8722Sbdecreased;

  /// No description provided for @wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbtitle8722Sbincreased.
  ///
  /// In en, this message translates to:
  /// **'The withdrawal fee has increased'**
  String get wallet250Sbwithdraw250Sbfee8722Sbchange8722Sbdialog250Sbtitle8722Sbincreased;

  /// No description provided for @wallet250Sbwithdraw250Sbnojs250Sbchange8722Sbaddress8722Sbbtn.
  ///
  /// In en, this message translates to:
  /// **'Change address'**
  String get wallet250Sbwithdraw250Sbnojs250Sbchange8722Sbaddress8722Sbbtn;

  /// No description provided for @wallet250Sbwithdrawal250Sbamount8722Sbinput250Sblabel.
  ///
  /// In en, this message translates to:
  /// **'Amount ({asset})'**
  String wallet250Sbwithdrawal250Sbamount8722Sbinput250Sblabel(Object asset);

  /// No description provided for @wallet250Sbwithdrawal250Sbconfirmation250Sbfee.
  ///
  /// In en, this message translates to:
  /// **'+ network fee (≈ {fee} {currency})'**
  String wallet250Sbwithdrawal250Sbconfirmation250Sbfee(Object fee, Object currency);

  /// No description provided for @wallet250Sbwithdrawal250Sberror250Sbtoo8722Sbsmall.
  ///
  /// In en, this message translates to:
  /// **'Amount that has been requested for withdrawal is less than the minimum possible amount'**
  String get wallet250Sbwithdrawal250Sberror250Sbtoo8722Sbsmall;

  /// No description provided for @wallet250Sbwithdrawal250Sbnetwork8722Sbfee.
  ///
  /// In en, this message translates to:
  /// **'Network fee'**
  String get wallet250Sbwithdrawal250Sbnetwork8722Sbfee;

  /// No description provided for @warn250Sbhigh8722Sbrisk8722Sbmethod8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'<strong>NOTE:</strong> This payment method is <strong>high-risk</strong>, since it is <strong>reversible</strong> and for that reason often used by scammers.'**
  String get warn250Sbhigh8722Sbrisk8722Sbmethod8722Sb0;

  /// No description provided for @warn250Sbhigh8722Sbrisk8722Sbmethod8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'Even if you do your due diligence and only trade with reputable users there is no guarantee you\'ll not end up in a {method} dispute situation. Here\'s something you can do to increase your chances: {linebreak}  1. Request 2 photo ID scans of the user (i.e. passport and driver\'s license), make sure that the {method} account name matches the ID. {linebreak}  2. Tell the user to send you an email from the {method} email account (maybe even tell them to put the Trade ID and something about the trade into the email).{linebreak}  3. Charge very high premiums for {method} trades. For example, 25% and higher. That way you get covered if 1 in 5 of your {method} trades are scams (given equal trade amounts). {linebreak}  4. Be wary of high trade amounts. Try to get a few lower amount trades with a trader first. {linebreak} '**
  String warn250Sbhigh8722Sbrisk8722Sbmethod8722Sb1(Object method, Object linebreak);

  /// No description provided for @warning250Sbmin8722Sbamount8722Sbless8722Sbthan8722Sbbalance8722Sb0.
  ///
  /// In en, this message translates to:
  /// **'This ad has been hidden, because the minimum amount you\'ve specified is lower than your maximum amount available'**
  String get warning250Sbmin8722Sbamount8722Sbless8722Sbthan8722Sbbalance8722Sb0;

  /// No description provided for @warning250Sbmin8722Sbamount8722Sbless8722Sbthan8722Sbbalance8722Sb1.
  ///
  /// In en, this message translates to:
  /// **'This trader is on vacation or out of available {assetName}. Please check back later or look for other offers.'**
  String warning250Sbmin8722Sbamount8722Sbless8722Sbthan8722Sbbalance8722Sb1(Object assetName);

  /// No description provided for @warning250Sbnot8722Sbenough8722Sbbalance.
  ///
  /// In en, this message translates to:
  /// **'All of your selling {asset} advertisements have been hidden from public search because your arbitration bond wallet balance is lower than {minRequiredbalance}. In order for your sell ads to become visible, please deposit at least {amountXmr} to your arbitration bond {localmoneroWallet}.'**
  String warning250Sbnot8722Sbenough8722Sbbalance(Object asset, Object minRequiredbalance, Object amountXmr, Object localmoneroWallet);

  /// No description provided for @warning250Sbnot8722Sbenough8722Sbbalance8722Sblocalmonero8722Sbwallet.
  ///
  /// In en, this message translates to:
  /// **'{appName} wallet'**
  String warning250Sbnot8722Sbenough8722Sbbalance8722Sblocalmonero8722Sbwallet(Object appName);

  /// No description provided for @web8722Sbnotification250Sbmessage.
  ///
  /// In en, this message translates to:
  /// **'You have a new message.'**
  String get web8722Sbnotification250Sbmessage;

  /// No description provided for @web8722Sbnotification250Sbtrade8722Sbcancelled.
  ///
  /// In en, this message translates to:
  /// **'A trade has been cancelled.'**
  String get web8722Sbnotification250Sbtrade8722Sbcancelled;

  /// No description provided for @web8722Sbnotification250Sbtrade8722Sbcomplete.
  ///
  /// In en, this message translates to:
  /// **'A trade was completed.'**
  String get web8722Sbnotification250Sbtrade8722Sbcomplete;

  /// No description provided for @web8722Sbnotification250Sbtrade8722Sbdisputed.
  ///
  /// In en, this message translates to:
  /// **'One of your trades has been disputed.'**
  String get web8722Sbnotification250Sbtrade8722Sbdisputed;

  /// No description provided for @web8722Sbnotification250Sbtrade8722Sbpayment8722Sbmarked8722Sbcomplete.
  ///
  /// In en, this message translates to:
  /// **'Payment marked complete.'**
  String get web8722Sbnotification250Sbtrade8722Sbpayment8722Sbmarked8722Sbcomplete;

  /// No description provided for @web8722Sbnotification250Sbtrade8722Sbrequest.
  ///
  /// In en, this message translates to:
  /// **'You have a new trade offer.'**
  String get web8722Sbnotification250Sbtrade8722Sbrequest;

  /// No description provided for @widget8722Sbinstructions250Sbaffiliate8722Sbattach8722Sbcode8722Sbcheckbox.
  ///
  /// In en, this message translates to:
  /// **'Add my affiliate referral code to the widget'**
  String get widget8722Sbinstructions250Sbaffiliate8722Sbattach8722Sbcode8722Sbcheckbox;

  /// No description provided for @widget8722Sbinstructions250Sbaffiliate8722Sblogged8722Sbout.
  ///
  /// In en, this message translates to:
  /// **'Log in to attach affiliate referral code to the widget'**
  String get widget8722Sbinstructions250Sbaffiliate8722Sblogged8722Sbout;

  /// No description provided for @widget8722Sbinstructions250Sbaffiliate8722Sbnot8722Sbenabled.
  ///
  /// In en, this message translates to:
  /// **'Enable affiliate program to attach referral code to the widget'**
  String get widget8722Sbinstructions250Sbaffiliate8722Sbnot8722Sbenabled;

  /// No description provided for @widget8722Sbinstructions250Sbinstructions.
  ///
  /// In en, this message translates to:
  /// **'To get a {assetName} street price widget for your own web site select the desired currency below and simply paste the following code into your own web page:'**
  String widget8722Sbinstructions250Sbinstructions(Object assetName);

  /// No description provided for @widget8722Sbinstructions250Sbtitle8722Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'{assetName} Street Price Widget (with your affiliate code)'**
  String widget8722Sbinstructions250Sbtitle8722Sbaffiliate(Object assetName);

  /// No description provided for @widget8722Sbinstructions250Sbtitle8722Sbno8722Sbaffiliate.
  ///
  /// In en, this message translates to:
  /// **'{assetName} Street Price Widget'**
  String widget8722Sbinstructions250Sbtitle8722Sbno8722Sbaffiliate(Object assetName);

  /// No description provided for @ads.
  ///
  /// In en, this message translates to:
  /// **'Ads'**
  String get ads;

  /// No description provided for @unknown_error.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknown_error;

  /// No description provided for @ads_choose_ad_type.
  ///
  /// In en, this message translates to:
  /// **'Choose ad type'**
  String get ads_choose_ad_type;

  /// No description provided for @ads_ad_type.
  ///
  /// In en, this message translates to:
  /// **'Ad type'**
  String get ads_ad_type;

  /// No description provided for @ads_choose_ad_cryptocurrency.
  ///
  /// In en, this message translates to:
  /// **'Choose cryptocurrency'**
  String get ads_choose_ad_cryptocurrency;

  /// No description provided for @ads_choose_price_type.
  ///
  /// In en, this message translates to:
  /// **'Choose price type'**
  String get ads_choose_price_type;

  /// No description provided for @ads_which_type_to_choose.
  ///
  /// In en, this message translates to:
  /// **'Which type to choose?'**
  String get ads_which_type_to_choose;

  /// No description provided for @enter_margin.
  ///
  /// In en, this message translates to:
  /// **'Enter margin'**
  String get enter_margin;

  /// No description provided for @what_is_margin.
  ///
  /// In en, this message translates to:
  /// **'What\'s a margin?'**
  String get what_is_margin;

  /// No description provided for @price_formula_examples.
  ///
  /// In en, this message translates to:
  /// **'Price formula examples'**
  String get price_formula_examples;

  /// No description provided for @see_examples.
  ///
  /// In en, this message translates to:
  /// **'See examples'**
  String get see_examples;

  /// No description provided for @see_example.
  ///
  /// In en, this message translates to:
  /// **'See example'**
  String get see_example;

  /// No description provided for @final_price_in.
  ///
  /// In en, this message translates to:
  /// **'Final price in'**
  String get final_price_in;

  /// No description provided for @show_formula_controls.
  ///
  /// In en, this message translates to:
  /// **'Show formula controls'**
  String get show_formula_controls;

  /// No description provided for @market_rates.
  ///
  /// In en, this message translates to:
  /// **'Market Rates'**
  String get market_rates;

  /// No description provided for @set_trade_limits.
  ///
  /// In en, this message translates to:
  /// **'Set trade limits (optional):'**
  String get set_trade_limits;

  /// No description provided for @restrict_limit_amounts_to.
  ///
  /// In en, this message translates to:
  /// **'Restrict limit amounts to'**
  String get restrict_limit_amounts_to;

  /// No description provided for @restrict_limit_amounts.
  ///
  /// In en, this message translates to:
  /// **'Restrict limit amounts'**
  String get restrict_limit_amounts;

  /// No description provided for @what_does_it_mean.
  ///
  /// In en, this message translates to:
  /// **'What does it mean?'**
  String get what_does_it_mean;

  /// No description provided for @ads_enter_amount.
  ///
  /// In en, this message translates to:
  /// **'Enter amount {currency}'**
  String ads_enter_amount(Object currency);

  /// No description provided for @ads_enter_comma_sep_amounts.
  ///
  /// In en, this message translates to:
  /// **'Enter comma-separated amounts {currency}'**
  String ads_enter_comma_sep_amounts(Object currency);

  /// No description provided for @ads_first_trade_max_limit.
  ///
  /// In en, this message translates to:
  /// **'First trade maximum limit {currency}'**
  String ads_first_trade_max_limit(Object currency);

  /// No description provided for @ads_specify_trade_details.
  ///
  /// In en, this message translates to:
  /// **'Specify trade details (optional):'**
  String get ads_specify_trade_details;

  /// No description provided for @ads_payment_method_details.
  ///
  /// In en, this message translates to:
  /// **'Payment method details'**
  String get ads_payment_method_details;

  /// No description provided for @ads_payment_method_details_64.
  ///
  /// In en, this message translates to:
  /// **'Shown in the ad list. Maximum 64 characters.'**
  String get ads_payment_method_details_64;

  /// No description provided for @ads_maximum_64.
  ///
  /// In en, this message translates to:
  /// **'Maximum 64 characters'**
  String get ads_maximum_64;

  /// No description provided for @ads_payment_method_info_trade.
  ///
  /// In en, this message translates to:
  /// **'Payment method info'**
  String get ads_payment_method_info_trade;

  /// No description provided for @ads_payment_method_info_trade_4096.
  ///
  /// In en, this message translates to:
  /// **'Shown during trade. Maximum 4096 characters.'**
  String get ads_payment_method_info_trade_4096;

  /// No description provided for @ads_specify_restrictions.
  ///
  /// In en, this message translates to:
  /// **'Specify restrictions (optional):'**
  String get ads_specify_restrictions;

  /// No description provided for @maximum_4096.
  ///
  /// In en, this message translates to:
  /// **'Maximum 4096 characters'**
  String get maximum_4096;

  /// No description provided for @enter_number_0_100.
  ///
  /// In en, this message translates to:
  /// **'Enter number from 0 to 100'**
  String get enter_number_0_100;

  /// No description provided for @enter_number_15_90.
  ///
  /// In en, this message translates to:
  /// **'Enter number between 15-90'**
  String get enter_number_15_90;

  /// No description provided for @enter_amount_min_0.
  ///
  /// In en, this message translates to:
  /// **'Enter amount (min 0)'**
  String get enter_amount_min_0;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency:'**
  String get currency;

  /// No description provided for @payment_method.
  ///
  /// In en, this message translates to:
  /// **'Payment method:'**
  String get payment_method;

  /// No description provided for @restrict_amounts_to.
  ///
  /// In en, this message translates to:
  /// **'Restrict amounts to:'**
  String get restrict_amounts_to;

  /// No description provided for @payment_method_details.
  ///
  /// In en, this message translates to:
  /// **'Payment method details:'**
  String get payment_method_details;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @publish.
  ///
  /// In en, this message translates to:
  /// **'Publish'**
  String get publish;

  /// No description provided for @enter_your_settlement_wallet_address.
  ///
  /// In en, this message translates to:
  /// **'Enter your settlement wallet address:'**
  String get enter_your_settlement_wallet_address;

  /// No description provided for @ads_enter_verify_address.
  ///
  /// In en, this message translates to:
  /// **'Enter and verify your address to which the coins will be sent to. Cannot be an internal {appName} address.'**
  String ads_enter_verify_address(Object appName);

  /// No description provided for @what_is_settlement_fee_level.
  ///
  /// In en, this message translates to:
  /// **'What is settlement fee level?'**
  String get what_is_settlement_fee_level;

  /// No description provided for @settlement_fee_level_selector_explanation.
  ///
  /// In en, this message translates to:
  /// **'This selector allows you to choose which network fee level to use when sending the transaction to your wallet. If you\'re not sure what fee level you want, select the medium fee.'**
  String get settlement_fee_level_selector_explanation;

  /// No description provided for @ads_payment_window.
  ///
  /// In en, this message translates to:
  /// **'Payment window time (minutes)'**
  String get ads_payment_window;

  /// No description provided for @ads_payment_window_short.
  ///
  /// In en, this message translates to:
  /// **'Payment window'**
  String get ads_payment_window_short;

  /// No description provided for @ads_havent_posted.
  ///
  /// In en, this message translates to:
  /// **'You haven’t posted any ads yet.'**
  String get ads_havent_posted;

  /// No description provided for @no_trades.
  ///
  /// In en, this message translates to:
  /// **'You have no trades, yet.'**
  String get no_trades;

  /// No description provided for @no_feedbacks.
  ///
  /// In en, this message translates to:
  /// **'No feedbacks.'**
  String get no_feedbacks;

  /// No description provided for @ad_settings.
  ///
  /// In en, this message translates to:
  /// **'Ad settings'**
  String get ad_settings;

  /// No description provided for @settings_saved.
  ///
  /// In en, this message translates to:
  /// **'Settings saved'**
  String get settings_saved;

  /// No description provided for @preferences.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// No description provided for @about_this_ad.
  ///
  /// In en, this message translates to:
  /// **'About this ad'**
  String get about_this_ad;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @activity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @market.
  ///
  /// In en, this message translates to:
  /// **'Market'**
  String get market;

  /// No description provided for @help.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get help;

  /// No description provided for @sell_asset.
  ///
  /// In en, this message translates to:
  /// **'Sell {asset}'**
  String sell_asset(Object asset);

  /// No description provided for @buy_asset.
  ///
  /// In en, this message translates to:
  /// **'Buy {asset}'**
  String buy_asset(Object asset);

  /// No description provided for @trader_profile.
  ///
  /// In en, this message translates to:
  /// **'Trader\'s profile'**
  String get trader_profile;

  /// No description provided for @trader_info.
  ///
  /// In en, this message translates to:
  /// **'Trader\'s info'**
  String get trader_info;

  /// No description provided for @trading_tips.
  ///
  /// In en, this message translates to:
  /// **'Trading Tips'**
  String get trading_tips;

  /// No description provided for @clear_all.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clear_all;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @enter_amount.
  ///
  /// In en, this message translates to:
  /// **'Enter amount'**
  String get enter_amount;

  /// No description provided for @any_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Any Payment Method'**
  String get any_payment_method;

  /// No description provided for @see_more_feedback.
  ///
  /// In en, this message translates to:
  /// **'See more feedback'**
  String get see_more_feedback;

  /// No description provided for @see_more_ads.
  ///
  /// In en, this message translates to:
  /// **'See more ads'**
  String get see_more_ads;

  /// No description provided for @feedback_title.
  ///
  /// In en, this message translates to:
  /// **'Feedback on {user}'**
  String feedback_title(Object user);

  /// No description provided for @active_ads.
  ///
  /// In en, this message translates to:
  /// **'Active ads'**
  String get active_ads;

  /// No description provided for @you_sell.
  ///
  /// In en, this message translates to:
  /// **'You sell'**
  String get you_sell;

  /// No description provided for @you_buy.
  ///
  /// In en, this message translates to:
  /// **'You buy'**
  String get you_buy;

  /// No description provided for @you_receive.
  ///
  /// In en, this message translates to:
  /// **'You receive'**
  String get you_receive;

  /// No description provided for @you_pay.
  ///
  /// In en, this message translates to:
  /// **'You pay'**
  String get you_pay;

  /// No description provided for @export_csv.
  ///
  /// In en, this message translates to:
  /// **'Export CSV'**
  String get export_csv;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @sell_via.
  ///
  /// In en, this message translates to:
  /// **'Sell {asset} via {provider}'**
  String sell_via(Object asset, Object provider);

  /// No description provided for @buy_via.
  ///
  /// In en, this message translates to:
  /// **'Buy {asset} via {provider}'**
  String buy_via(Object asset, Object provider);

  /// No description provided for @sell_to.
  ///
  /// In en, this message translates to:
  /// **'Sell to {user}'**
  String sell_to(Object user);

  /// No description provided for @buy_from.
  ///
  /// In en, this message translates to:
  /// **'Buy from {user}'**
  String buy_from(Object user);

  /// No description provided for @must_be_at_least.
  ///
  /// In en, this message translates to:
  /// **'Must be at least {num} {currency}'**
  String must_be_at_least(Object num, Object currency);

  /// No description provided for @must_be_less.
  ///
  /// In en, this message translates to:
  /// **'Must be less {num} {currency}'**
  String must_be_less(Object num, Object currency);

  /// No description provided for @send_all.
  ///
  /// In en, this message translates to:
  /// **'Send all {asset}'**
  String send_all(Object asset);

  /// No description provided for @about_transactions.
  ///
  /// In en, this message translates to:
  /// **'About {asset} transactions'**
  String about_transactions(Object asset);

  /// No description provided for @trade_id.
  ///
  /// In en, this message translates to:
  /// **'Trade ID'**
  String get trade_id;

  /// No description provided for @view_trade.
  ///
  /// In en, this message translates to:
  /// **'View trade'**
  String get view_trade;

  /// No description provided for @receiving.
  ///
  /// In en, this message translates to:
  /// **'Receiving'**
  String get receiving;

  /// No description provided for @paying.
  ///
  /// In en, this message translates to:
  /// **'Paying'**
  String get paying;

  /// No description provided for @rate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get rate;

  /// No description provided for @enter_your_password.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get enter_your_password;

  /// No description provided for @good_seller.
  ///
  /// In en, this message translates to:
  /// **'Good seller'**
  String get good_seller;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @important.
  ///
  /// In en, this message translates to:
  /// **'Important'**
  String get important;

  /// No description provided for @feedback_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Feedback updated successfully.'**
  String get feedback_updated_successfully;

  /// No description provided for @pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get pay;

  /// No description provided for @send_trade_request.
  ///
  /// In en, this message translates to:
  /// **'Send a trade request'**
  String get send_trade_request;

  /// No description provided for @start_trading.
  ///
  /// In en, this message translates to:
  /// **'Start trading'**
  String get start_trading;

  /// No description provided for @api_error_13.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong on the request. It\'s most likely a validation issue. Check your request parameters, and if this still doesn\'t seem right, please contact our support.'**
  String get api_error_13;

  /// No description provided for @api_error_49.
  ///
  /// In en, this message translates to:
  /// **'The old password provided in the password change request doesn’t match the current password'**
  String get api_error_49;

  /// No description provided for @api_error_60.
  ///
  /// In en, this message translates to:
  /// **'The password provided for changing the email is incorrect'**
  String get api_error_60;

  /// No description provided for @api_error_61.
  ///
  /// In en, this message translates to:
  /// **'This email is already linked to another account'**
  String get api_error_61;

  /// No description provided for @api_error_73.
  ///
  /// In en, this message translates to:
  /// **'The password provided during withdrawal request is incorrect'**
  String get api_error_73;

  /// No description provided for @api_error_74.
  ///
  /// In en, this message translates to:
  /// **'Insufficient funds to conduct withdrawal for the requested amount'**
  String get api_error_74;

  /// No description provided for @api_error_75.
  ///
  /// In en, this message translates to:
  /// **'Attempting to withdraw funds to an internal address that doesn’t exist'**
  String get api_error_75;

  /// No description provided for @api_error_76.
  ///
  /// In en, this message translates to:
  /// **'Attempting to withdraw funds to the same account as the account that’s requesting the withdrawal'**
  String get api_error_76;

  /// No description provided for @api_error_77.
  ///
  /// In en, this message translates to:
  /// **'Insufficient funds to conduct internal transfer for the requested amount'**
  String get api_error_77;

  /// No description provided for @api_error_103.
  ///
  /// In en, this message translates to:
  /// **'Requesting trade for ad who’s poster is on selling vacation'**
  String get api_error_103;

  /// No description provided for @api_error_105.
  ///
  /// In en, this message translates to:
  /// **'Poster of the ad for which the trade is being requested doesn’t have enough balance to fund the escrow'**
  String get api_error_105;

  /// No description provided for @api_error_107.
  ///
  /// In en, this message translates to:
  /// **'Trying to track liquidity without setting maxAmount'**
  String get api_error_107;

  /// No description provided for @api_error_137.
  ///
  /// In en, this message translates to:
  /// **'Attempting to register 2FA while providing incorrect password'**
  String get api_error_137;

  /// No description provided for @api_error_138.
  ///
  /// In en, this message translates to:
  /// **'Attempting to validate 2FA while providing incorrect OTP'**
  String get api_error_138;

  /// No description provided for @api_error_139.
  ///
  /// In en, this message translates to:
  /// **'Either password or OTP incorrect when attempting to disable 2FA'**
  String get api_error_139;

  /// No description provided for @api_error_140.
  ///
  /// In en, this message translates to:
  /// **'OTP incorrect when attempting to withdraw coins from wallet'**
  String get api_error_140;

  /// No description provided for @api_error_146.
  ///
  /// In en, this message translates to:
  /// **'Attempting to enable affiliate program for account that already has it enabled'**
  String get api_error_146;

  /// No description provided for @api_error_170.
  ///
  /// In en, this message translates to:
  /// **'Amount that has been requested for withdrawal is less than the minimum possible amount for the given cryptocurrency'**
  String get api_error_170;

  /// No description provided for @api_error_171.
  ///
  /// In en, this message translates to:
  /// **'Invalid address provided when requesting withdrawal'**
  String get api_error_171;

  /// No description provided for @api_error_173.
  ///
  /// In en, this message translates to:
  /// **'Attempting to open too many trades at once for a new account'**
  String get api_error_173;

  /// No description provided for @api_error_178.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon for user that doesn’t exist'**
  String get api_error_178;

  /// No description provided for @api_error_179.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon that doesn’t exist'**
  String get api_error_179;

  /// No description provided for @api_error_180.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon that’s expired'**
  String get api_error_180;

  /// No description provided for @api_error_181.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon that’s only allowed to be redeemed during registration'**
  String get api_error_181;

  /// No description provided for @api_error_182.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon that’s already been redeemed by this user'**
  String get api_error_182;

  /// No description provided for @api_error_183.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon that’s out of stock'**
  String get api_error_183;

  /// No description provided for @api_error_184.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon when there’s a currently active coupon'**
  String get api_error_184;

  /// No description provided for @api_error_204.
  ///
  /// In en, this message translates to:
  /// **'Attempting to request reputation import code for account that doesn’t exist'**
  String get api_error_204;

  /// No description provided for @api_error_205.
  ///
  /// In en, this message translates to:
  /// **'Attempting to generate verification code for reputation import for a platform that already has a verification code generated for it'**
  String get api_error_205;

  /// No description provided for @api_error_206.
  ///
  /// In en, this message translates to:
  /// **'Attempting to generate verification code for reputation import for a platform from which reputation was already imported'**
  String get api_error_206;

  /// No description provided for @api_error_207.
  ///
  /// In en, this message translates to:
  /// **'Attempting to confirm reputation import verification code placement for user that doesn’t exist'**
  String get api_error_207;

  /// No description provided for @api_error_208.
  ///
  /// In en, this message translates to:
  /// **'Attempting to confirm reputation import verification code placement for user that isn’t in step 1 of the reputation import flow'**
  String get api_error_208;

  /// No description provided for @api_error_209.
  ///
  /// In en, this message translates to:
  /// **'LocalBitcoins error when attempting to confirm reputation import verification code placement. Perhaps the username is wrong or the profile is not visible'**
  String get api_error_209;

  /// No description provided for @api_error_210.
  ///
  /// In en, this message translates to:
  /// **'Paxful error when attempting to confirm reputation import verification code placement Perhaps the username is wrong or the profile is not visible'**
  String get api_error_210;

  /// No description provided for @api_error_225.
  ///
  /// In en, this message translates to:
  /// **'LocalBitcoins API returning “Invalid user” as error when attempting to confirm reputation code placement'**
  String get api_error_225;

  /// No description provided for @api_error_226.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password when attempting to delete account'**
  String get api_error_226;

  /// No description provided for @api_error_238.
  ///
  /// In en, this message translates to:
  /// **'Fee level not specified for external Bitcoin withdrawal'**
  String get api_error_238;

  /// No description provided for @api_error_239.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password when trying to release a trade'**
  String get api_error_239;

  /// No description provided for @api_error_243.
  ///
  /// In en, this message translates to:
  /// **'Internal AgoraDesk address can\'t be used for trade settlement. Please input an outside, non-AgoraDesk XMR address to continue.'**
  String get api_error_243;

  /// No description provided for @api_error_254.
  ///
  /// In en, this message translates to:
  /// **'Attempting to post a withdrawal to an identical address and amount within the last 10 minutes'**
  String get api_error_254;

  /// No description provided for @api_error_260.
  ///
  /// In en, this message translates to:
  /// **'Attempting to post a note on a user that doesn’t exist'**
  String get api_error_260;

  /// No description provided for @api_error_261.
  ///
  /// In en, this message translates to:
  /// **'Attempting to post a note on your own account'**
  String get api_error_261;

  /// No description provided for @api_error_262.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get a note on a user that doesn’t exist'**
  String get api_error_262;

  /// No description provided for @api_error_263.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get a note on your own account'**
  String get api_error_263;

  /// No description provided for @api_error_264.
  ///
  /// In en, this message translates to:
  /// **'Attempting to delete a note on a user that doesn’t exist'**
  String get api_error_264;

  /// No description provided for @api_error_265.
  ///
  /// In en, this message translates to:
  /// **'Attempting to delete a note on your own account'**
  String get api_error_265;

  /// No description provided for @api_error_267.
  ///
  /// In en, this message translates to:
  /// **'Attempting to delete a user note that doesn’t exist'**
  String get api_error_267;

  /// No description provided for @api_error_403.
  ///
  /// In en, this message translates to:
  /// **'You are not authorized to perform this action'**
  String get api_error_403;

  /// No description provided for @api_error_4000.
  ///
  /// In en, this message translates to:
  /// **'No internet connection.'**
  String get api_error_4000;

  /// No description provided for @api_error_4001.
  ///
  /// In en, this message translates to:
  /// **'Connection timeout, please check internet connection.'**
  String get api_error_4001;

  /// No description provided for @api_error_45.
  ///
  /// In en, this message translates to:
  /// **'You can\'t have both \'first_time_limit_asset\' and \'first_time_limit_TICKER\' in your request. Remove one of them (they are interchangeable).'**
  String get api_error_45;

  /// No description provided for @api_error_46.
  ///
  /// In en, this message translates to:
  /// **'Request must contain EITHER an application/json request body with a “msg” parameter OR a multipart/form-data request body with the image file listed under the parameter “document”'**
  String get api_error_46;

  /// No description provided for @api_error_47.
  ///
  /// In en, this message translates to:
  /// **'User with that username already exists'**
  String get api_error_47;

  /// No description provided for @api_error_48.
  ///
  /// In en, this message translates to:
  /// **'User with that email already exists'**
  String get api_error_48;

  /// No description provided for @api_error_50.
  ///
  /// In en, this message translates to:
  /// **'Attempting to send an email to a user without an email set'**
  String get api_error_50;

  /// No description provided for @api_error_51.
  ///
  /// In en, this message translates to:
  /// **'Token provided for email verification is given to a user who does not exist'**
  String get api_error_51;

  /// No description provided for @api_error_52.
  ///
  /// In en, this message translates to:
  /// **'Token provided for email verification is invalid'**
  String get api_error_52;

  /// No description provided for @api_error_53.
  ///
  /// In en, this message translates to:
  /// **'The email in the token doesn’t match the current email in the database'**
  String get api_error_53;

  /// No description provided for @api_error_54.
  ///
  /// In en, this message translates to:
  /// **'Token provided for password reset is given to a email that does not exist in the database'**
  String get api_error_54;

  /// No description provided for @api_error_55.
  ///
  /// In en, this message translates to:
  /// **'Token provided for password reset is invalid'**
  String get api_error_55;

  /// No description provided for @api_error_56.
  ///
  /// In en, this message translates to:
  /// **'Attempting to send a password reset email to an email that isn’t in the database'**
  String get api_error_56;

  /// No description provided for @api_error_57.
  ///
  /// In en, this message translates to:
  /// **'Token provided for password reset is not a reset token'**
  String get api_error_57;

  /// No description provided for @api_error_58.
  ///
  /// In en, this message translates to:
  /// **'Trying to send a password-reset email to a user with an unverified email'**
  String get api_error_58;

  /// No description provided for @api_error_59.
  ///
  /// In en, this message translates to:
  /// **'Trying reset a password for a user with an unverified email'**
  String get api_error_59;

  /// No description provided for @api_error_62.
  ///
  /// In en, this message translates to:
  /// **'No account exists with the username provided for the account public data request'**
  String get api_error_62;

  /// No description provided for @api_error_63.
  ///
  /// In en, this message translates to:
  /// **'Attempting to upload file of a forbidden type'**
  String get api_error_63;

  /// No description provided for @api_error_64.
  ///
  /// In en, this message translates to:
  /// **'Attempting to mark a non-existent notification as read'**
  String get api_error_64;

  /// No description provided for @api_error_65.
  ///
  /// In en, this message translates to:
  /// **'Attempting to mark an already read notification as read'**
  String get api_error_65;

  /// No description provided for @api_error_66.
  ///
  /// In en, this message translates to:
  /// **'Attempting to upload chat attachment to trade that doesn’t exist'**
  String get api_error_66;

  /// No description provided for @api_error_67.
  ///
  /// In en, this message translates to:
  /// **'Attempting to send chat message to trade that doesn’t exist'**
  String get api_error_67;

  /// No description provided for @api_error_68.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get chat message list of trade that doesn’t exist'**
  String get api_error_68;

  /// No description provided for @api_error_69.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get chat message that doesn’t exist'**
  String get api_error_69;

  /// No description provided for @api_error_70.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get wallet address of account that doesn’t exist'**
  String get api_error_70;

  /// No description provided for @api_error_71.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get transactions of an account that doesn’t exist'**
  String get api_error_71;

  /// No description provided for @api_error_72.
  ///
  /// In en, this message translates to:
  /// **'Attempting to withdraw funds of an account that doesn’t exist'**
  String get api_error_72;

  /// No description provided for @api_error_78.
  ///
  /// In en, this message translates to:
  /// **'Attempting to make get ads with an illegal combination of parameters'**
  String get api_error_78;

  /// No description provided for @api_error_79.
  ///
  /// In en, this message translates to:
  /// **'The requested ad ID doesn’t exist'**
  String get api_error_79;

  /// No description provided for @api_error_80.
  ///
  /// In en, this message translates to:
  /// **'Didn’t set both lat and lon in the ad update/create request'**
  String get api_error_80;

  /// No description provided for @api_error_81.
  ///
  /// In en, this message translates to:
  /// **'Didn’t set price formula when posting ad'**
  String get api_error_81;

  /// No description provided for @api_error_82.
  ///
  /// In en, this message translates to:
  /// **'Trying to set lat and lon for an online ad'**
  String get api_error_82;

  /// No description provided for @api_error_83.
  ///
  /// In en, this message translates to:
  /// **'Trying to set ONLINE_SELL/CALL_SELL/PUT_BUY-specific properties to a different type of ad'**
  String get api_error_83;

  /// No description provided for @api_error_84.
  ///
  /// In en, this message translates to:
  /// **'Trying to set ONLINE_BUY/CALL_BUY/PUT_SELL-specific properties to a different type of ad'**
  String get api_error_84;

  /// No description provided for @api_error_85.
  ///
  /// In en, this message translates to:
  /// **'Trying to set LOCAL_SELL-specific properties to a different type of ad'**
  String get api_error_85;

  /// No description provided for @api_error_86.
  ///
  /// In en, this message translates to:
  /// **'Attempting to set country or payment method or currency that isn’t valid when creating/updating ad'**
  String get api_error_86;

  /// No description provided for @api_error_87.
  ///
  /// In en, this message translates to:
  /// **'Trying to set a payment method that is invalid to that country when creating/updating ad'**
  String get api_error_87;

  /// No description provided for @api_error_88.
  ///
  /// In en, this message translates to:
  /// **'Trying to set a currency that is invalid to that payment method when creating/updating ad'**
  String get api_error_88;

  /// No description provided for @api_error_89.
  ///
  /// In en, this message translates to:
  /// **'Trying to create a LOCAL_* ad without setting lon/lat'**
  String get api_error_89;

  /// No description provided for @api_error_90.
  ///
  /// In en, this message translates to:
  /// **'Trying to access trades of a user that doesn’t exist.'**
  String get api_error_90;

  /// No description provided for @api_error_91.
  ///
  /// In en, this message translates to:
  /// **'Trying to access account public data using a token of a user that doesn’t exist'**
  String get api_error_91;

  /// No description provided for @api_error_92.
  ///
  /// In en, this message translates to:
  /// **'Trying to get notifications for user that doesn’t exist'**
  String get api_error_92;

  /// No description provided for @api_error_93.
  ///
  /// In en, this message translates to:
  /// **'Trying to get pending deposits for a user that doesn’t exist'**
  String get api_error_93;

  /// No description provided for @api_error_94.
  ///
  /// In en, this message translates to:
  /// **'Trying to get feedback score for user that doesn’t exist'**
  String get api_error_94;

  /// No description provided for @api_error_95.
  ///
  /// In en, this message translates to:
  /// **'Trying to get ads for user that doesn’t exist'**
  String get api_error_95;

  /// No description provided for @api_error_96.
  ///
  /// In en, this message translates to:
  /// **'Non-existent user trying to create a trade'**
  String get api_error_96;

  /// No description provided for @api_error_97.
  ///
  /// In en, this message translates to:
  /// **'Trying to create a trade for ad that doesn’t exist'**
  String get api_error_97;

  /// No description provided for @api_error_98.
  ///
  /// In en, this message translates to:
  /// **'Trying to create a trade for an ad who’s poster doesn’t exist'**
  String get api_error_98;

  /// No description provided for @api_error_99.
  ///
  /// In en, this message translates to:
  /// **'Trying to request higher amount than allowed by first_time_limit_asset when creating a first trade'**
  String get api_error_99;

  /// No description provided for @api_error_100.
  ///
  /// In en, this message translates to:
  /// **'Cannot request less than 0.0000000001 XMR for trade creation'**
  String get api_error_100;

  /// No description provided for @api_error_101.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is less than ad’s min_amount when creating trade'**
  String get api_error_101;

  /// No description provided for @api_error_102.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is more than ad’s max_amount_available when creating trade'**
  String get api_error_102;

  /// No description provided for @api_error_104.
  ///
  /// In en, this message translates to:
  /// **'Requesting trade for ad who’s poster is on buying vacation'**
  String get api_error_104;

  /// No description provided for @api_error_106.
  ///
  /// In en, this message translates to:
  /// **'Requester of the trade doesn’t have enough balance to fund the trade request'**
  String get api_error_106;

  /// No description provided for @api_error_108.
  ///
  /// In en, this message translates to:
  /// **'minAmount cannot be equal to or larger than maxAmount'**
  String get api_error_108;

  /// No description provided for @api_error_109.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is more than ad’s maxAmount when creating trade'**
  String get api_error_109;

  /// No description provided for @api_error_110.
  ///
  /// In en, this message translates to:
  /// **'Trade requester has lower feedback score than what is required by the poster'**
  String get api_error_110;

  /// No description provided for @api_error_111.
  ///
  /// In en, this message translates to:
  /// **'Requested amount is not one of the accepted amounts, see limit_to_fiat_amounts'**
  String get api_error_111;

  /// No description provided for @api_error_112.
  ///
  /// In en, this message translates to:
  /// **'Can’t request a trade for an ad you posted yourself'**
  String get api_error_112;

  /// No description provided for @api_error_113.
  ///
  /// In en, this message translates to:
  /// **'Can’t set paymentWindowMinutes to <15 or >90 when updating ad'**
  String get api_error_113;

  /// No description provided for @api_error_114.
  ///
  /// In en, this message translates to:
  /// **'Can’t set paymentWindowMinutes to <15 or >90 when creating ad'**
  String get api_error_114;

  /// No description provided for @api_error_115.
  ///
  /// In en, this message translates to:
  /// **'Trade by requested ID doesn’t exist'**
  String get api_error_115;

  /// No description provided for @api_error_116.
  ///
  /// In en, this message translates to:
  /// **'User requesting trade doesn’t exist'**
  String get api_error_116;

  /// No description provided for @api_error_117.
  ///
  /// In en, this message translates to:
  /// **'The currency for which the exchange rate has been requested does not exist'**
  String get api_error_117;

  /// No description provided for @api_error_118.
  ///
  /// In en, this message translates to:
  /// **'User requesting funding of trade doesn’t exist'**
  String get api_error_118;

  /// No description provided for @api_error_119.
  ///
  /// In en, this message translates to:
  /// **'Attempting to fund a trade that doesn’t exist'**
  String get api_error_119;

  /// No description provided for @api_error_120.
  ///
  /// In en, this message translates to:
  /// **'User requesting escrow of trade doesn’t exist'**
  String get api_error_120;

  /// No description provided for @api_error_121.
  ///
  /// In en, this message translates to:
  /// **'Attempting to escrow a trade that doesn’t exist'**
  String get api_error_121;

  /// No description provided for @api_error_122.
  ///
  /// In en, this message translates to:
  /// **'Insufficient funds to fund a floating LOCAL_SELL trade'**
  String get api_error_122;

  /// No description provided for @api_error_123.
  ///
  /// In en, this message translates to:
  /// **'Insufficient funds to fund a non-floating LOCAL_SELL trade'**
  String get api_error_123;

  /// No description provided for @api_error_124.
  ///
  /// In en, this message translates to:
  /// **'Error when funding a LOCAL_SELL'**
  String get api_error_124;

  /// No description provided for @api_error_125.
  ///
  /// In en, this message translates to:
  /// **'User requesting cancellation of trade doesn’t exist'**
  String get api_error_125;

  /// No description provided for @api_error_126.
  ///
  /// In en, this message translates to:
  /// **'Attempting to cancel a trade that doesn’t exist'**
  String get api_error_126;

  /// No description provided for @api_error_127.
  ///
  /// In en, this message translates to:
  /// **'User requesting payment of trade doesn’t exist'**
  String get api_error_127;

  /// No description provided for @api_error_128.
  ///
  /// In en, this message translates to:
  /// **'Attempting to mark a trade that doesn’t exist paid'**
  String get api_error_128;

  /// No description provided for @api_error_129.
  ///
  /// In en, this message translates to:
  /// **'User requesting release of trade doesn’t exist'**
  String get api_error_129;

  /// No description provided for @api_error_130.
  ///
  /// In en, this message translates to:
  /// **'Attempting to release a trade that doesn’t exist'**
  String get api_error_130;

  /// No description provided for @api_error_131.
  ///
  /// In en, this message translates to:
  /// **'User requesting dispute of trade doesn’t exist'**
  String get api_error_131;

  /// No description provided for @api_error_132.
  ///
  /// In en, this message translates to:
  /// **'Attempting to dispute a trade that doesn’t exist'**
  String get api_error_132;

  /// No description provided for @api_error_133.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get feedback of a user that doesn’t exist'**
  String get api_error_133;

  /// No description provided for @api_error_134.
  ///
  /// In en, this message translates to:
  /// **'Attempting to create an ad when user already has the maximum allowed number of ads'**
  String get api_error_134;

  /// No description provided for @api_error_135.
  ///
  /// In en, this message translates to:
  /// **'Somehow the maxAmount is set to null while trackingMaxAmount is set to true'**
  String get api_error_135;

  /// No description provided for @api_error_136.
  ///
  /// In en, this message translates to:
  /// **'Attempting to post a ad with balance less than minimum required balance.'**
  String get api_error_136;

  /// No description provided for @api_error_141.
  ///
  /// In en, this message translates to:
  /// **'Attempting to create a trade for an amount that’s less than the minimum allowed amount'**
  String get api_error_141;

  /// No description provided for @api_error_142.
  ///
  /// In en, this message translates to:
  /// **'Attempting to set a fiat limit that is less than minAmount when creating ad'**
  String get api_error_142;

  /// No description provided for @api_error_143.
  ///
  /// In en, this message translates to:
  /// **'Attempting to set a fiat limit that is more than maxAmount when creating ad'**
  String get api_error_143;

  /// No description provided for @api_error_144.
  ///
  /// In en, this message translates to:
  /// **'Attempting to set a fiat limit that is less than minAmount when updating ad'**
  String get api_error_144;

  /// No description provided for @api_error_145.
  ///
  /// In en, this message translates to:
  /// **'Attempting to set a fiat limit that is more than maxAmount when updating ad'**
  String get api_error_145;

  /// No description provided for @api_error_147.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get affiliate data for user that doesn’t have the affiliate program enabled'**
  String get api_error_147;

  /// No description provided for @api_error_148.
  ///
  /// In en, this message translates to:
  /// **'Attempting to set a telegram ID that’s already set'**
  String get api_error_148;

  /// No description provided for @api_error_149.
  ///
  /// In en, this message translates to:
  /// **'Priority not specified for external withdrawal'**
  String get api_error_149;

  /// No description provided for @api_error_150.
  ///
  /// In en, this message translates to:
  /// **'Attempting to start a trade on an ad where the requesting user is blocked by the ad poster'**
  String get api_error_150;

  /// No description provided for @api_error_151.
  ///
  /// In en, this message translates to:
  /// **'Attempting to start a trade on an ad where the requesting user is not trusted by the ad poster'**
  String get api_error_151;

  /// No description provided for @api_error_152.
  ///
  /// In en, this message translates to:
  /// **'Attempting to cancel a trade that’s already closed'**
  String get api_error_152;

  /// No description provided for @api_error_153.
  ///
  /// In en, this message translates to:
  /// **'Attempting to release a trade that’s already closed'**
  String get api_error_153;

  /// No description provided for @api_error_154.
  ///
  /// In en, this message translates to:
  /// **'Attempting to request trades for an account that doesn’t exist'**
  String get api_error_154;

  /// No description provided for @api_error_155.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get list of trusted users for a user that doesn’t exist'**
  String get api_error_155;

  /// No description provided for @api_error_156.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get list of blocked users for a user that doesn’t exist'**
  String get api_error_156;

  /// No description provided for @api_error_157.
  ///
  /// In en, this message translates to:
  /// **'Attempting to set option-specific properties for a non-option ad'**
  String get api_error_157;

  /// No description provided for @api_error_158.
  ///
  /// In en, this message translates to:
  /// **'Attempting to create an option ad without setting option-specific properties'**
  String get api_error_158;

  /// No description provided for @api_error_159.
  ///
  /// In en, this message translates to:
  /// **'User requesting to mark premium payment of trade doesn’t exist'**
  String get api_error_159;

  /// No description provided for @api_error_160.
  ///
  /// In en, this message translates to:
  /// **'Attempting to mark premium paid for a trade that doesn’t exist'**
  String get api_error_160;

  /// No description provided for @api_error_161.
  ///
  /// In en, this message translates to:
  /// **'User requesting to exercise option doesn’t exist'**
  String get api_error_161;

  /// No description provided for @api_error_162.
  ///
  /// In en, this message translates to:
  /// **'Attempting to exercise option for a trade that doesn’t exist'**
  String get api_error_162;

  /// No description provided for @api_error_163.
  ///
  /// In en, this message translates to:
  /// **'User requesting to confirm premium payment of trade doesn’t exist'**
  String get api_error_163;

  /// No description provided for @api_error_164.
  ///
  /// In en, this message translates to:
  /// **'Attempting to confirm premium paid for a trade that doesn’t exist'**
  String get api_error_164;

  /// No description provided for @api_error_165.
  ///
  /// In en, this message translates to:
  /// **'User requesting to exercise trade with net settlement doesn’t exist'**
  String get api_error_165;

  /// No description provided for @api_error_166.
  ///
  /// In en, this message translates to:
  /// **'Attempting to exercise with net settlement a trade that doesn’t exist'**
  String get api_error_166;

  /// No description provided for @api_error_167.
  ///
  /// In en, this message translates to:
  /// **'The current market price is less than or equal to the exercise price when netting a CALL trade. The trade is out-of-the-money by market standards, therefore cannot be netted. Use normal settlement if needed.'**
  String get api_error_167;

  /// No description provided for @api_error_168.
  ///
  /// In en, this message translates to:
  /// **'User requesting to confirm cover payment of trade doesn’t exist'**
  String get api_error_168;

  /// No description provided for @api_error_169.
  ///
  /// In en, this message translates to:
  /// **'Attempting to confirm cover paid for a trade that doesn’t exist'**
  String get api_error_169;

  /// No description provided for @api_error_172.
  ///
  /// In en, this message translates to:
  /// **'Attempting to post an ad where the asset is the same as the ad currency'**
  String get api_error_172;

  /// No description provided for @api_error_174.
  ///
  /// In en, this message translates to:
  /// **'Attempting to exercise out-of-the-money PUT trade'**
  String get api_error_174;

  /// No description provided for @api_error_175.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon that doesn’t exist during registration'**
  String get api_error_175;

  /// No description provided for @api_error_176.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem an expired coupon during registration'**
  String get api_error_176;

  /// No description provided for @api_error_177.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem a coupon that’s out of stock during registration'**
  String get api_error_177;

  /// No description provided for @api_error_185.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get coupons for user that doesn’t exist'**
  String get api_error_185;

  /// No description provided for @api_error_186.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get more than 50 ads when getting ads by ID'**
  String get api_error_186;

  /// No description provided for @api_error_187.
  ///
  /// In en, this message translates to:
  /// **'Attempting to give an empty list of IDs when getting ads by ID'**
  String get api_error_187;

  /// No description provided for @api_error_188.
  ///
  /// In en, this message translates to:
  /// **'Not a single of the requested ad IDs is a valid ID when getting ads by ID'**
  String get api_error_188;

  /// No description provided for @api_error_189.
  ///
  /// In en, this message translates to:
  /// **'Not a single of the requested ads exist when getting ads by ID'**
  String get api_error_189;

  /// No description provided for @api_error_190.
  ///
  /// In en, this message translates to:
  /// **'Attempting to give an empty list of IDs when getting trades by ID'**
  String get api_error_190;

  /// No description provided for @api_error_191.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get more than 50 ads when getting trades by ID'**
  String get api_error_191;

  /// No description provided for @api_error_192.
  ///
  /// In en, this message translates to:
  /// **'Not a single of the requested trade IDs is a valid ID when getting trades by ID'**
  String get api_error_192;

  /// No description provided for @api_error_193.
  ///
  /// In en, this message translates to:
  /// **'Not a single of the requested trades exist when getting trades by ID'**
  String get api_error_193;

  /// No description provided for @api_error_194.
  ///
  /// In en, this message translates to:
  /// **'Attempting to generate public API token for user that doesn’t exist'**
  String get api_error_194;

  /// No description provided for @api_error_195.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password when attempting to get public API token'**
  String get api_error_195;

  /// No description provided for @api_error_196.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get recent messages for user that doesn’t exist'**
  String get api_error_196;

  /// No description provided for @api_error_197.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get trade chat messages with “after” timestamp that’s outside of the allowed range'**
  String get api_error_197;

  /// No description provided for @api_error_198.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get account recent chat messages with “after” timestamp that’s outside of the allowed range'**
  String get api_error_198;

  /// No description provided for @api_error_199.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get public API token for user that doesn’t exist'**
  String get api_error_199;

  /// No description provided for @api_error_200.
  ///
  /// In en, this message translates to:
  /// **'Attempting to expire and delete public API token for user without a public API token'**
  String get api_error_200;

  /// No description provided for @api_error_201.
  ///
  /// In en, this message translates to:
  /// **'Attempting to update price formula for ad that doesn’t exist'**
  String get api_error_201;

  /// No description provided for @api_error_202.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get account transactions with “after” timestamp that’s outside of the allowed range'**
  String get api_error_202;

  /// No description provided for @api_error_203.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get reputation import data for account that doesn’t exist'**
  String get api_error_203;

  /// No description provided for @api_error_211.
  ///
  /// In en, this message translates to:
  /// **'Attempting to approve reputation import for user that doesn’t exist'**
  String get api_error_211;

  /// No description provided for @api_error_212.
  ///
  /// In en, this message translates to:
  /// **'Attempting to approve reputation import for user that isn’t in step 2 of the reputation import flow'**
  String get api_error_212;

  /// No description provided for @api_error_213.
  ///
  /// In en, this message translates to:
  /// **'Attempting to deny reputation import for user that doesn’t exist'**
  String get api_error_213;

  /// No description provided for @api_error_214.
  ///
  /// In en, this message translates to:
  /// **'Attempting to deny reputation import for user that isn’t in step 2 of the reputation import flow'**
  String get api_error_214;

  /// No description provided for @api_error_215.
  ///
  /// In en, this message translates to:
  /// **'Attempting to specify both country_code and currency_code when requesting most popular payment methods'**
  String get api_error_215;

  /// No description provided for @api_error_216.
  ///
  /// In en, this message translates to:
  /// **'Attempting to request most popular payment methods for a country_code that doesn’t exist'**
  String get api_error_216;

  /// No description provided for @api_error_217.
  ///
  /// In en, this message translates to:
  /// **'Attempting to request most popular payment methods for a currency_code that doesn’t exist'**
  String get api_error_217;

  /// No description provided for @api_error_218.
  ///
  /// In en, this message translates to:
  /// **'Attempting to open a trade on an ad that requires a verified email when the requesting user doesn’t have a verified email'**
  String get api_error_218;

  /// No description provided for @api_error_219.
  ///
  /// In en, this message translates to:
  /// **'Attempting to register with an email that’s from a disposable email provider'**
  String get api_error_219;

  /// No description provided for @api_error_220.
  ///
  /// In en, this message translates to:
  /// **'Attempting to change account email to an email from a disposable email provider'**
  String get api_error_220;

  /// No description provided for @api_error_221.
  ///
  /// In en, this message translates to:
  /// **'Attempting to mark all notifications read for a user that doesn’t exist'**
  String get api_error_221;

  /// No description provided for @api_error_222.
  ///
  /// In en, this message translates to:
  /// **'Attempting to request reputation code for a outside platform account that has already been imported'**
  String get api_error_222;

  /// No description provided for @api_error_223.
  ///
  /// In en, this message translates to:
  /// **'Attempting to update ad with specifying verificationRequired as true while verificationMsg is null'**
  String get api_error_223;

  /// No description provided for @api_error_224.
  ///
  /// In en, this message translates to:
  /// **'Attempting to update ad with specifying verificationMsg but the ad not requiring verification and the ad update request also not setting verificationRequired as true'**
  String get api_error_224;

  /// No description provided for @api_error_227.
  ///
  /// In en, this message translates to:
  /// **'Attempting to sanction a user that doesn’t exist'**
  String get api_error_227;

  /// No description provided for @api_error_228.
  ///
  /// In en, this message translates to:
  /// **'Attempting to sanction user with an admin account that doesn’t exist'**
  String get api_error_228;

  /// No description provided for @api_error_229.
  ///
  /// In en, this message translates to:
  /// **'Attempting to remove a sanction from a user that doesn’t exist'**
  String get api_error_229;

  /// No description provided for @api_error_230.
  ///
  /// In en, this message translates to:
  /// **'Attempting to remove a sanction from a user with an admin account that doesn’t exist'**
  String get api_error_230;

  /// No description provided for @api_error_231.
  ///
  /// In en, this message translates to:
  /// **'Attempting to remove a sanction from a user that doesn’t have any sanctions on them'**
  String get api_error_231;

  /// No description provided for @api_error_232.
  ///
  /// In en, this message translates to:
  /// **'Attempting to open a trade with a user that’s currently prohibited from trading due to a sanction'**
  String get api_error_232;

  /// No description provided for @api_error_233.
  ///
  /// In en, this message translates to:
  /// **'Attempting to remove feedback with ID that doesn’t exist'**
  String get api_error_233;

  /// No description provided for @api_error_234.
  ///
  /// In en, this message translates to:
  /// **'Attempting to remove feedback that’s already removed'**
  String get api_error_234;

  /// No description provided for @api_error_235.
  ///
  /// In en, this message translates to:
  /// **'Attempting to remove dispute status from a trade that doesn’t exist'**
  String get api_error_235;

  /// No description provided for @api_error_236.
  ///
  /// In en, this message translates to:
  /// **'Attempting to remove dispute status from a trade that isn’t disputed'**
  String get api_error_236;

  /// No description provided for @api_error_237.
  ///
  /// In en, this message translates to:
  /// **'Attempting to open a trade as a user that doesn’t exist when calling the trade opening endpoint as an admin and specifying the openAsUsername parameter'**
  String get api_error_237;

  /// No description provided for @api_error_240.
  ///
  /// In en, this message translates to:
  /// **'Invalid address provided by the buyer when responding to a SELL-type ad'**
  String get api_error_240;

  /// No description provided for @api_error_241.
  ///
  /// In en, this message translates to:
  /// **'Buyer attempting to provide an internal address when responding to a SELL-type ad (internal addresses are not allowed for the purpose of trade settlement)'**
  String get api_error_241;

  /// No description provided for @api_error_242.
  ///
  /// In en, this message translates to:
  /// **'Invalid address provided by the buyer when creating a BUY-type ad'**
  String get api_error_242;

  /// No description provided for @api_error_244.
  ///
  /// In en, this message translates to:
  /// **'Invalid address provided by the buyer when updating a BUY-type ad'**
  String get api_error_244;

  /// No description provided for @api_error_245.
  ///
  /// In en, this message translates to:
  /// **'Buyer attempting to provide an internal address when updating a BUY-type ad (internal addresses are not allowed for the purpose of trade settlement)'**
  String get api_error_245;

  /// No description provided for @api_error_246.
  ///
  /// In en, this message translates to:
  /// **'Attempting to start a trade from a BUY-type ad that doesn’t specify the buyer settlement address'**
  String get api_error_246;

  /// No description provided for @api_error_247.
  ///
  /// In en, this message translates to:
  /// **'Attempting to release a trade from an account that’s prohibited from withdrawing due to sanctions'**
  String get api_error_247;

  /// No description provided for @api_error_248.
  ///
  /// In en, this message translates to:
  /// **'Attempting to release a trade when the amount of the trade isn’t enough to cover the settlement-related fees'**
  String get api_error_248;

  /// No description provided for @api_error_249.
  ///
  /// In en, this message translates to:
  /// **'Attempting to update a BUY-type ad that doesn’t have buyerSettlementAddress set without setting the buyerSettlementAddress parameter in the update request'**
  String get api_error_249;

  /// No description provided for @api_error_250.
  ///
  /// In en, this message translates to:
  /// **'Invalid address provided when requesting withdrawal fee for BTC'**
  String get api_error_250;

  /// No description provided for @api_error_251.
  ///
  /// In en, this message translates to:
  /// **'Fee level not provided when opening a trade by responding to a BTC SELL-type ad'**
  String get api_error_251;

  /// No description provided for @api_error_252.
  ///
  /// In en, this message translates to:
  /// **'Fee level not provided when creating a BTC BUY-type ad'**
  String get api_error_252;

  /// No description provided for @api_error_253.
  ///
  /// In en, this message translates to:
  /// **'Fee level not provided when updating a BTC BUY-type ad that doesn’t have a fee level set'**
  String get api_error_253;

  /// No description provided for @api_error_255.
  ///
  /// In en, this message translates to:
  /// **'Attempting to get notifications with “after” timestamp that’s outside of the allowed range'**
  String get api_error_255;

  /// No description provided for @api_error_256.
  ///
  /// In en, this message translates to:
  /// **'Attempting to register a push notification token that already exists'**
  String get api_error_256;

  /// No description provided for @api_error_257.
  ///
  /// In en, this message translates to:
  /// **'Attempting to register a push notification token that isn’t valid'**
  String get api_error_257;

  /// No description provided for @api_error_258.
  ///
  /// In en, this message translates to:
  /// **'Attempting to register a push notification token for an account that already has 500 device tokens, delete one of the existing tokens before trying this again'**
  String get api_error_258;

  /// No description provided for @api_error_259.
  ///
  /// In en, this message translates to:
  /// **'Attempting to delete a token that doesn’t exist or doesn’t belong to this user'**
  String get api_error_259;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @pin_setup.
  ///
  /// In en, this message translates to:
  /// **'Set up PIN'**
  String get pin_setup;

  /// No description provided for @pin_enter_continue.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN to continue'**
  String get pin_enter_continue;

  /// No description provided for @pin_enter.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN'**
  String get pin_enter;

  /// No description provided for @pin_enter_to_confirm_transaction.
  ///
  /// In en, this message translates to:
  /// **'Enter PIN to confirm transaction'**
  String get pin_enter_to_confirm_transaction;

  /// No description provided for @pin_you_can_use.
  ///
  /// In en, this message translates to:
  /// **'You can use this PIN to unlock the app.'**
  String get pin_you_can_use;

  /// No description provided for @pin_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm PIN'**
  String get pin_confirm;

  /// No description provided for @pin_current.
  ///
  /// In en, this message translates to:
  /// **'Current PIN'**
  String get pin_current;

  /// No description provided for @pin_set.
  ///
  /// In en, this message translates to:
  /// **'Set PIN code'**
  String get pin_set;

  /// No description provided for @pin_do_not_match.
  ///
  /// In en, this message translates to:
  /// **'PINs don\'t match'**
  String get pin_do_not_match;

  /// No description provided for @pin_second_as_first.
  ///
  /// In en, this message translates to:
  /// **'The PIN you entered the second time doesn\'t match the first one.'**
  String get pin_second_as_first;

  /// No description provided for @pin_wrong_current.
  ///
  /// In en, this message translates to:
  /// **'Wrong current PIN'**
  String get pin_wrong_current;

  /// No description provided for @pin_please_input_correct.
  ///
  /// In en, this message translates to:
  /// **'Please input correct current PIN.'**
  String get pin_please_input_correct;

  /// No description provided for @enter_email.
  ///
  /// In en, this message translates to:
  /// **'Enter email'**
  String get enter_email;

  /// No description provided for @convert.
  ///
  /// In en, this message translates to:
  /// **'Convert'**
  String get convert;

  /// No description provided for @recent_transactions.
  ///
  /// In en, this message translates to:
  /// **'Recent transactions'**
  String get recent_transactions;

  /// No description provided for @transactions_30_days.
  ///
  /// In en, this message translates to:
  /// **'Transactions for the last 30 days'**
  String get transactions_30_days;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgot_password;

  /// No description provided for @password_have_changed.
  ///
  /// In en, this message translates to:
  /// **'Password have changed.'**
  String get password_have_changed;

  /// No description provided for @i_want_to_buy.
  ///
  /// In en, this message translates to:
  /// **'I want to buy'**
  String get i_want_to_buy;

  /// No description provided for @error_password_reset_token_invalid.
  ///
  /// In en, this message translates to:
  /// **'Token provided for password reset is invalid'**
  String get error_password_reset_token_invalid;

  /// No description provided for @error_password_reset_unverified_email.
  ///
  /// In en, this message translates to:
  /// **'Trying reset a password for a user with an unverified email'**
  String get error_password_reset_unverified_email;

  /// No description provided for @i_want_to_buy_new.
  ///
  /// In en, this message translates to:
  /// **'I want to buy'**
  String get i_want_to_buy_new;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New password (8-72 characters)'**
  String get new_password;

  /// No description provided for @i_want_to_sell.
  ///
  /// In en, this message translates to:
  /// **'I want to sell'**
  String get i_want_to_sell;

  /// No description provided for @log_in_to_start_trading.
  ///
  /// In en, this message translates to:
  /// **'Log in to start trading'**
  String get log_in_to_start_trading;

  /// No description provided for @why_do_you_need_my_email.
  ///
  /// In en, this message translates to:
  /// **'Why do you need my email?'**
  String get why_do_you_need_my_email;

  /// No description provided for @view_all_transactions.
  ///
  /// In en, this message translates to:
  /// **'View all transactions'**
  String get view_all_transactions;

  /// No description provided for @email_is_used_to.
  ///
  /// In en, this message translates to:
  /// **'Email is used to recover your password or send you email notifications. Your email will be checked against a third-party database of disposable email providers.'**
  String get email_is_used_to;

  /// No description provided for @email_verified.
  ///
  /// In en, this message translates to:
  /// **'Email is verified.'**
  String get email_verified;

  /// No description provided for @email_verification_error.
  ///
  /// In en, this message translates to:
  /// **'Email verification error.'**
  String get email_verification_error;

  /// No description provided for @email_token_error.
  ///
  /// In en, this message translates to:
  /// **'Token or email are wrong. Email was not verified.'**
  String get email_token_error;

  /// No description provided for @welcome_screen_about.
  ///
  /// In en, this message translates to:
  /// **'Safe and easy-to-use person-to-person platform for trading local currency for Bitcoin and Monero.'**
  String get welcome_screen_about;

  /// No description provided for @view_in_block_explorer.
  ///
  /// In en, this message translates to:
  /// **'View in block explorer'**
  String get view_in_block_explorer;

  /// No description provided for @welcome_pick_a_payment_method.
  ///
  /// In en, this message translates to:
  /// **'Pick a payment method or choose from all the available offers.'**
  String get welcome_pick_a_payment_method;

  /// No description provided for @welcome_buy_press_buy.
  ///
  /// In en, this message translates to:
  /// **'Press BUY to start the trade.'**
  String get welcome_buy_press_buy;

  /// No description provided for @welcome_buy_follow_the_sellers.
  ///
  /// In en, this message translates to:
  /// **'Follow the seller\'s instructions in the trade chat!'**
  String get welcome_buy_follow_the_sellers;

  /// No description provided for @welcome_sell_go_to_wallet.
  ///
  /// In en, this message translates to:
  /// **'Go to your wallet and deposit your coins.'**
  String get welcome_sell_go_to_wallet;

  /// No description provided for @welcome_sell_press_sell.
  ///
  /// In en, this message translates to:
  /// **'Press SELL to start the trade.'**
  String get welcome_sell_press_sell;

  /// No description provided for @welcome_sell_follow_the_buyer.
  ///
  /// In en, this message translates to:
  /// **'Follow the buyer\'s instructions in the trade chat!'**
  String get welcome_sell_follow_the_buyer;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get started'**
  String get get_started;

  /// No description provided for @send_to.
  ///
  /// In en, this message translates to:
  /// **'Send to'**
  String get send_to;

  /// No description provided for @error_only_numbers_are_possible.
  ///
  /// In en, this message translates to:
  /// **'Only numbers are possible.'**
  String get error_only_numbers_are_possible;

  /// No description provided for @error_entered_greater_than_balance.
  ///
  /// In en, this message translates to:
  /// **'The entered value is greater than the balance.'**
  String get error_entered_greater_than_balance;

  /// No description provided for @amount_to_receive.
  ///
  /// In en, this message translates to:
  /// **'Amount to receive'**
  String get amount_to_receive;

  /// No description provided for @amount_to_send.
  ///
  /// In en, this message translates to:
  /// **'Amount to send'**
  String get amount_to_send;

  /// No description provided for @your_deposit_address.
  ///
  /// In en, this message translates to:
  /// **'Your {asset} deposit address'**
  String your_deposit_address(Object asset);

  /// No description provided for @pending.
  ///
  /// In en, this message translates to:
  /// **'Pending ({num1}/{num2})'**
  String pending(Object num1, Object num2);

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @confirm_transaction.
  ///
  /// In en, this message translates to:
  /// **'Confirm transaction'**
  String get confirm_transaction;

  /// No description provided for @transaction_fee.
  ///
  /// In en, this message translates to:
  /// **'Transaction fee'**
  String get transaction_fee;

  /// No description provided for @show_qr_code.
  ///
  /// In en, this message translates to:
  /// **'Show QR code'**
  String get show_qr_code;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @no_pending_deposits.
  ///
  /// In en, this message translates to:
  /// **'No pending deposits'**
  String get no_pending_deposits;

  /// No description provided for @create_pin.
  ///
  /// In en, this message translates to:
  /// **'Create PIN'**
  String get create_pin;

  /// No description provided for @change_pin.
  ///
  /// In en, this message translates to:
  /// **'Change PIN'**
  String get change_pin;

  /// No description provided for @remove_pin.
  ///
  /// In en, this message translates to:
  /// **'Remove PIN'**
  String get remove_pin;

  /// No description provided for @remove_pin_message_success.
  ///
  /// In en, this message translates to:
  /// **'PIN removed'**
  String get remove_pin_message_success;

  /// No description provided for @you_will_receive.
  ///
  /// In en, this message translates to:
  /// **'You will receive'**
  String get you_will_receive;

  /// No description provided for @total_amount_to_send.
  ///
  /// In en, this message translates to:
  /// **'Total amount to send'**
  String get total_amount_to_send;

  /// No description provided for @enter_amount_to_receive_without_fee.
  ///
  /// In en, this message translates to:
  /// **'Enter amount to be received (w/o fee)'**
  String get enter_amount_to_receive_without_fee;

  /// No description provided for @enter_amount_to_receive_with_fee.
  ///
  /// In en, this message translates to:
  /// **'Enter amount to be deducted (with fee)'**
  String get enter_amount_to_receive_with_fee;

  /// No description provided for @return_reserve_from_trade.
  ///
  /// In en, this message translates to:
  /// **'Return reserve from trade'**
  String get return_reserve_from_trade;

  /// No description provided for @user_profile.
  ///
  /// In en, this message translates to:
  /// **'User profile'**
  String get user_profile;

  /// No description provided for @personal_introduction.
  ///
  /// In en, this message translates to:
  /// **'Personal introduction'**
  String get personal_introduction;

  /// No description provided for @trading_reputation_on_other_platforms.
  ///
  /// In en, this message translates to:
  /// **'Trading reputation on other platforms'**
  String get trading_reputation_on_other_platforms;

  /// No description provided for @how_to_link_my_account.
  ///
  /// In en, this message translates to:
  /// **'How to link my account?'**
  String get how_to_link_my_account;

  /// No description provided for @link_account.
  ///
  /// In en, this message translates to:
  /// **'Link {platform} account'**
  String link_account(Object platform);

  /// No description provided for @what_is_your_username.
  ///
  /// In en, this message translates to:
  /// **'What is your username on {platform}?'**
  String what_is_your_username(Object platform);

  /// No description provided for @enter_username.
  ///
  /// In en, this message translates to:
  /// **'Enter username'**
  String get enter_username;

  /// No description provided for @edit_personal_introduction.
  ///
  /// In en, this message translates to:
  /// **'Edit personal introduction'**
  String get edit_personal_introduction;

  /// No description provided for @your_info.
  ///
  /// In en, this message translates to:
  /// **'Your info'**
  String get your_info;

  /// No description provided for @website.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get website;

  /// No description provided for @are_you_sure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get are_you_sure;

  /// No description provided for @no_trusted_users_yet.
  ///
  /// In en, this message translates to:
  /// **'No trusted users yet.'**
  String get no_trusted_users_yet;

  /// No description provided for @no_blocked_users_yet.
  ///
  /// In en, this message translates to:
  /// **'No blocked users yet.'**
  String get no_blocked_users_yet;

  /// No description provided for @no_transactions_yet.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet.'**
  String get no_transactions_yet;

  /// No description provided for @web_links.
  ///
  /// In en, this message translates to:
  /// **'Web links'**
  String get web_links;

  /// No description provided for @tor_links.
  ///
  /// In en, this message translates to:
  /// **'Tor links'**
  String get tor_links;

  /// No description provided for @i2p_links.
  ///
  /// In en, this message translates to:
  /// **'I2P links'**
  String get i2p_links;

  /// No description provided for @active_coupons.
  ///
  /// In en, this message translates to:
  /// **'Active coupons'**
  String get active_coupons;

  /// No description provided for @expired_coupons.
  ///
  /// In en, this message translates to:
  /// **'Expired coupons'**
  String get expired_coupons;

  /// No description provided for @hide_expired_coupons.
  ///
  /// In en, this message translates to:
  /// **'Hide expired coupons'**
  String get hide_expired_coupons;

  /// No description provided for @show_expired_coupons.
  ///
  /// In en, this message translates to:
  /// **'Show expired coupons'**
  String get show_expired_coupons;

  /// No description provided for @terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions'**
  String get terms_and_conditions;

  /// No description provided for @current_email.
  ///
  /// In en, this message translates to:
  /// **'Current email'**
  String get current_email;

  /// No description provided for @remove_email.
  ///
  /// In en, this message translates to:
  /// **'Remove email'**
  String get remove_email;

  /// No description provided for @email_not_received_content.
  ///
  /// In en, this message translates to:
  /// **'If you have not received the verification email, please check your “Spam” folder or'**
  String get email_not_received_content;

  /// No description provided for @email_not_received_link.
  ///
  /// In en, this message translates to:
  /// **'click here to resend the email.'**
  String get email_not_received_link;

  /// No description provided for @email_confirm_delete.
  ///
  /// In en, this message translates to:
  /// **'Confirm email delete'**
  String get email_confirm_delete;

  /// No description provided for @email_deleted.
  ///
  /// In en, this message translates to:
  /// **'Email deleted.'**
  String get email_deleted;

  /// No description provided for @email_confirmation_we_ve_sent_an_email.
  ///
  /// In en, this message translates to:
  /// **'We’ve sent an email to {email}. Click the link in the email to verify your email address.'**
  String email_confirmation_we_ve_sent_an_email(Object email);

  /// No description provided for @app_staff.
  ///
  /// In en, this message translates to:
  /// **'{appName} staff'**
  String app_staff(Object appName);

  /// No description provided for @current_password.
  ///
  /// In en, this message translates to:
  /// **'Current password'**
  String get current_password;

  /// No description provided for @save_your_backup_code.
  ///
  /// In en, this message translates to:
  /// **'Save your backup code'**
  String get save_your_backup_code;

  /// No description provided for @your_backup_code.
  ///
  /// In en, this message translates to:
  /// **'Your backup code'**
  String get your_backup_code;

  /// No description provided for @set_up_2fa.
  ///
  /// In en, this message translates to:
  /// **'Set up 2FA'**
  String get set_up_2fa;

  /// No description provided for @download_2fa.
  ///
  /// In en, this message translates to:
  /// **'Download a 2FA app. Copy the code below and paste it into your 2FA app.'**
  String get download_2fa;

  /// No description provided for @paste_code.
  ///
  /// In en, this message translates to:
  /// **'Paste code'**
  String get paste_code;

  /// No description provided for @code_valid.
  ///
  /// In en, this message translates to:
  /// **'Code valid'**
  String get code_valid;

  /// No description provided for @verifying_the_code.
  ///
  /// In en, this message translates to:
  /// **'Verifying the code...'**
  String get verifying_the_code;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @my_profile.
  ///
  /// In en, this message translates to:
  /// **'My profile'**
  String get my_profile;

  /// No description provided for @choose_ad_default_region.
  ///
  /// In en, this message translates to:
  /// **'Choose ad default region'**
  String get choose_ad_default_region;

  /// No description provided for @knowledge_base.
  ///
  /// In en, this message translates to:
  /// **'Knowledge base'**
  String get knowledge_base;

  /// No description provided for @report_this_ad.
  ///
  /// In en, this message translates to:
  /// **'Report this ad'**
  String get report_this_ad;

  /// No description provided for @cash_only.
  ///
  /// In en, this message translates to:
  /// **'Cash only'**
  String get cash_only;

  /// No description provided for @dispute_started.
  ///
  /// In en, this message translates to:
  /// **'Dispute started'**
  String get dispute_started;

  /// No description provided for @payment_info.
  ///
  /// In en, this message translates to:
  /// **'Payment info'**
  String get payment_info;

  /// No description provided for @trade_ad.
  ///
  /// In en, this message translates to:
  /// **'Trade ad'**
  String get trade_ad;

  /// No description provided for @ask_delete_ad.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this ad?'**
  String get ask_delete_ad;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @final_price.
  ///
  /// In en, this message translates to:
  /// **'Final price'**
  String get final_price;

  /// No description provided for @use_price_formula_to_calculate.
  ///
  /// In en, this message translates to:
  /// **'Use price formula to calculate'**
  String get use_price_formula_to_calculate;

  /// No description provided for @enter_price_formula.
  ///
  /// In en, this message translates to:
  /// **'Enter price formula'**
  String get enter_price_formula;

  /// No description provided for @trade_limits.
  ///
  /// In en, this message translates to:
  /// **'Trade limits (optional)'**
  String get trade_limits;

  /// No description provided for @trade_details.
  ///
  /// In en, this message translates to:
  /// **'Trade details (optional)'**
  String get trade_details;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// No description provided for @trade_loading_failed.
  ///
  /// In en, this message translates to:
  /// **'Trade loading failed, please check connection.'**
  String get trade_loading_failed;

  /// No description provided for @dark_theme.
  ///
  /// In en, this message translates to:
  /// **'Dark theme'**
  String get dark_theme;

  /// No description provided for @search__no_results.
  ///
  /// In en, this message translates to:
  /// **'No results in {country} with the selected criteria... yet. '**
  String search__no_results(Object country);

  /// No description provided for @affiliate__explain_is_reg.
  ///
  /// In en, this message translates to:
  /// **'Affiliation is registered when any user signs up after landing on the site from a link with your referral code.'**
  String get affiliate__explain_is_reg;

  /// No description provided for @affiliate__ref_code_title.
  ///
  /// In en, this message translates to:
  /// **'Your referral code'**
  String get affiliate__ref_code_title;

  /// No description provided for @affiliate__users__text.
  ///
  /// In en, this message translates to:
  /// **'You are currently registered as an affiliate for {number} users and will earn commissions from all trades done by these.'**
  String affiliate__users__text(Object number);

  /// No description provided for @affiliate__terms__text___agoradesk.
  ///
  /// In en, this message translates to:
  /// **'• You can link to any individual page, such as country listing or payment method listing, or anything else on {appName}. \n• You will earn cryptocurrency from the users who arrive to the site through your affiliate link register and make trades. \n• Payouts will be made daily to your {appName} wallet in the relevant cryptocurrencies. \n• Commissions will be paid for one year from the user\'s registration. Commission is based on the income the new user brings for {appName} (trading fees). \n• Any foul play, such as misleading advertising, is forbidden. \n• Spamming is forbidden. Spamming includes sending unsubscribed private or public messages on forums/reddit, unsubscribed mass-mail, etc. \n• Adding hidden iframes on a website in order to capture affiliates is forbidden. Only affiliate iframes or direct links to the webpage are allowed. \n• {appName} has the right to disable any affiliate user at any given time. If you breach the terms, your affiliate program will be terminated.'**
  String affiliate__terms__text___agoradesk(Object appName);

  /// No description provided for @affiliate__example__text.
  ///
  /// In en, this message translates to:
  /// **'You get two users, buyer and seller of the {assetName} registered on {appName}, and they do one trade valued 100 {assetSymbol}. You earn 20% commission on the {appName} trading fees from both participants, in total 40% of the {appName} fee.\n\nYour earned sum is 0.4 {assetSymbol}. Only finalized sales that go though our transaction process matter. Payouts are made daily. \n\n{appName} support is more than willing to help you with any questions.'**
  String affiliate__example__text(Object assetName, Object appName, Object assetSymbol);

  /// No description provided for @affiliate__enable_btn.
  ///
  /// In en, this message translates to:
  /// **'Enable affiliate program'**
  String get affiliate__enable_btn;

  /// No description provided for @affiliate__enabled.
  ///
  /// In en, this message translates to:
  /// **'Your affiliate program is enabled, and you can earn commissions by adding your affiliate tag {ref_code} to any {appName} URL.'**
  String affiliate__enabled(Object ref_code, Object appName);

  /// No description provided for @reputation_import__step__username__input__label.
  ///
  /// In en, this message translates to:
  /// **'Your {platform} username'**
  String reputation_import__step__username__input__label(Object platform);

  /// No description provided for @reputation_import__step__code__message.
  ///
  /// In en, this message translates to:
  /// **'Add this code somewhere on your public {platform} profile. Once we\'ve verified the code, you can remove it.'**
  String reputation_import__step__code__message(Object platform);

  /// No description provided for @settings__homepage_tip.
  ///
  /// In en, this message translates to:
  /// **'Shown on your public profile. Only valid URL accepted (e.g. https://{example_url})'**
  String settings__homepage_tip(Object example_url);

  /// No description provided for @settings__personal_info_tip.
  ///
  /// In en, this message translates to:
  /// **'Shown on your public profile. Maximum 65536 characters. Can use markdown for styling.'**
  String get settings__personal_info_tip;

  /// No description provided for @settings__personal_info_tip_1.
  ///
  /// In en, this message translates to:
  /// **'Shown on your public profile. Maximum 65536 characters.'**
  String get settings__personal_info_tip_1;

  /// No description provided for @coupons__coupon__type_here.
  ///
  /// In en, this message translates to:
  /// **'Type your coupon here'**
  String get coupons__coupon__type_here;

  /// No description provided for @trade__mark_pay_according.
  ///
  /// In en, this message translates to:
  /// **' Pay according to the payment details shown below. If you have any questions, ask the seller in the chat.'**
  String get trade__mark_pay_according;

  /// No description provided for @dashboard__trade__status__open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get dashboard__trade__status__open;

  /// No description provided for @wallet__available_balance.
  ///
  /// In en, this message translates to:
  /// **'Available Balance'**
  String get wallet__available_balance;

  /// No description provided for @trade__dialog__confirm_release_monero_text_password.
  ///
  /// In en, this message translates to:
  /// **'This password is used as the offset to generate the non-custodial settlement wallet and sign the transaction. LocalMonero will have no way of recovering the wallet if you lose this password.'**
  String get trade__dialog__confirm_release_monero_text_password;

  /// No description provided for @dont_have_an_account_yet.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account yet?'**
  String get dont_have_an_account_yet;

  /// No description provided for @app_trades.
  ///
  /// In en, this message translates to:
  /// **'Trades'**
  String get app_trades;

  /// No description provided for @app_unlimited.
  ///
  /// In en, this message translates to:
  /// **'Unlimited'**
  String get app_unlimited;

  /// No description provided for @app_guides.
  ///
  /// In en, this message translates to:
  /// **'Guides'**
  String get app_guides;

  /// No description provided for @app_edit_this_ad.
  ///
  /// In en, this message translates to:
  /// **'Edit this ad'**
  String get app_edit_this_ad;

  /// No description provided for @app_you_can_use_markdown.
  ///
  /// In en, this message translates to:
  /// **'You can use markdown to style your ad\'s terms (images not allowed).'**
  String get app_you_can_use_markdown;

  /// No description provided for @app_no_trades_to_export.
  ///
  /// In en, this message translates to:
  /// **'No trades to export.'**
  String get app_no_trades_to_export;

  /// No description provided for @app_settings_2fa_step_two.
  ///
  /// In en, this message translates to:
  /// **'Write down your backup code (above in green) on a piece of paper and store it in a safe place. You will need it if you lose your phone, or you will be locked out of your account. {appName} will not be able to help you should you lose this code.'**
  String app_settings_2fa_step_two(Object appName);

  /// No description provided for @ad_post_ad_rules_text_0.
  ///
  /// In en, this message translates to:
  /// **'Before creating an advertisement please read through our '**
  String get ad_post_ad_rules_text_0;

  /// No description provided for @app_trade_warning_impersonation.
  ///
  /// In en, this message translates to:
  /// **'Beware of scammers trying to impersonate staff! \n{appName} administrators will never tell you to finalize a trade. \nStaff messages have a red background.'**
  String app_trade_warning_impersonation(Object appName);

  /// No description provided for @app_buy_sell.
  ///
  /// In en, this message translates to:
  /// **'How much do you wish to {val}?'**
  String app_buy_sell(Object val);

  /// No description provided for @app_buyer_marked_as_paid.
  ///
  /// In en, this message translates to:
  /// **'{val} has marked the trade as paid'**
  String app_buyer_marked_as_paid(Object val);

  /// No description provided for @app_buy_crypto_from.
  ///
  /// In en, this message translates to:
  /// **'Buy crypto from {val}'**
  String app_buy_crypto_from(Object val);

  /// No description provided for @app_sell_crypto_to.
  ///
  /// In en, this message translates to:
  /// **'Sell crypto to {val}'**
  String app_sell_crypto_to(Object val);

  /// No description provided for @app_trades_with.
  ///
  /// In en, this message translates to:
  /// **'See trades with {val}'**
  String app_trades_with(Object val);

  /// No description provided for @app_able_to_cancel.
  ///
  /// In en, this message translates to:
  /// **'({val1} will be able to cancel in {val2} min unless you mark paid)'**
  String app_able_to_cancel(Object val1, Object val2);

  /// No description provided for @app_able_to_cancel_now.
  ///
  /// In en, this message translates to:
  /// **'({val} is now able to cancel unless you mark paid)'**
  String app_able_to_cancel_now(Object val);

  /// No description provided for @app_buying_from.
  ///
  /// In en, this message translates to:
  /// **'Buying {asset} {amount} from {username}'**
  String app_buying_from(Object asset, Object amount, Object username);

  /// No description provided for @app_selling_to.
  ///
  /// In en, this message translates to:
  /// **'Selling {asset} {amount} to {username}'**
  String app_selling_to(Object asset, Object amount, Object username);

  /// No description provided for @app_for_sum.
  ///
  /// In en, this message translates to:
  /// **'for {val}'**
  String app_for_sum(Object val);

  /// No description provided for @app_buy_crypto.
  ///
  /// In en, this message translates to:
  /// **'Buy crypto from'**
  String get app_buy_crypto;

  /// No description provided for @app_sell_crypto.
  ///
  /// In en, this message translates to:
  /// **'Sell crypto to'**
  String get app_sell_crypto;

  /// No description provided for @app_intall_trade_title.
  ///
  /// In en, this message translates to:
  /// **'Please install AgoraDesk to view this trade'**
  String get app_intall_trade_title;

  /// No description provided for @app_intall_ad_title.
  ///
  /// In en, this message translates to:
  /// **'Please install AgoraDesk to view this ad'**
  String get app_intall_ad_title;

  /// No description provided for @app_intall_trade_body.
  ///
  /// In en, this message translates to:
  /// **'This is a Bitcoin-based trade, it requires our AgoraDesk app to view.'**
  String get app_intall_trade_body;

  /// No description provided for @app_intall_ad_body.
  ///
  /// In en, this message translates to:
  /// **'This is a Bitcoin-based ad, it requires our AgoraDesk app to view.'**
  String get app_intall_ad_body;

  /// No description provided for @app_trade_option_payment_receiver_cancel_notice.
  ///
  /// In en, this message translates to:
  /// **'Never finalize a trade until you are 100% sure you have received the money. Scammers will try to trick you into finalizing early.'**
  String get app_trade_option_payment_receiver_cancel_notice;

  /// No description provided for @app_cancel_trade_message.
  ///
  /// In en, this message translates to:
  /// **'Made a mistake or want to try another trader? If you have transferred the funds already and want to cancel now, you need to negotiate the return of your payment with your trading partner by yourself. Never cancel unless you are sure you have received your money back.'**
  String get app_cancel_trade_message;

  /// No description provided for @app_all_feedback.
  ///
  /// In en, this message translates to:
  /// **'All feedback'**
  String get app_all_feedback;

  /// No description provided for @app_camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get app_camera;

  /// No description provided for @app_clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get app_clear;

  /// No description provided for @app_ad_deleted.
  ///
  /// In en, this message translates to:
  /// **'Ad deleted'**
  String get app_ad_deleted;

  /// No description provided for @app_verifiacetion_code_to_seller.
  ///
  /// In en, this message translates to:
  /// **'This is your verification code. You can tell it to the buyer so that the buyer can verify you’ve finalized the trade without them needing to use the device.'**
  String get app_verifiacetion_code_to_seller;

  /// No description provided for @app_verification_code.
  ///
  /// In en, this message translates to:
  /// **'Verification code'**
  String get app_verification_code;

  /// No description provided for @app_ad.
  ///
  /// In en, this message translates to:
  /// **'Ad'**
  String get app_ad;

  /// No description provided for @app_with.
  ///
  /// In en, this message translates to:
  /// **'with'**
  String get app_with;

  /// No description provided for @app_edited.
  ///
  /// In en, this message translates to:
  /// **'Edited'**
  String get app_edited;

  /// No description provided for @app_permanent.
  ///
  /// In en, this message translates to:
  /// **'Permanent'**
  String get app_permanent;

  /// No description provided for @app_error_saving.
  ///
  /// In en, this message translates to:
  /// **'Error during saving. Changes weren\'t saved.'**
  String get app_error_saving;

  /// No description provided for @app_manage_ads.
  ///
  /// In en, this message translates to:
  /// **'Manage ads'**
  String get app_manage_ads;

  /// No description provided for @app_vacation_enabled.
  ///
  /// In en, this message translates to:
  /// **'Vacation enabled'**
  String get app_vacation_enabled;

  /// No description provided for @app_trade_created.
  ///
  /// In en, this message translates to:
  /// **'Trade created'**
  String get app_trade_created;

  /// No description provided for @app_session_expired.
  ///
  /// In en, this message translates to:
  /// **'Session expired'**
  String get app_session_expired;

  /// No description provided for @app_anonymous_crash_diagnostics.
  ///
  /// In en, this message translates to:
  /// **'Anonymous crash diagnostics'**
  String get app_anonymous_crash_diagnostics;

  /// No description provided for @app_restart_now.
  ///
  /// In en, this message translates to:
  /// **'Restart now'**
  String get app_restart_now;

  /// No description provided for @app_postpone.
  ///
  /// In en, this message translates to:
  /// **'Postpone'**
  String get app_postpone;

  /// No description provided for @app_biometric_authentication.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication'**
  String get app_biometric_authentication;

  /// No description provided for @app_biometric_authentication_message.
  ///
  /// In en, this message translates to:
  /// **'Please set a PIN code to enable biometric authentication.'**
  String get app_biometric_authentication_message;

  /// No description provided for @app_anonymous_crash_diagnostics_restart.
  ///
  /// In en, this message translates to:
  /// **'Anonymous crash diagnostics have been disabled and won\'t be sent after you restart the app.'**
  String get app_anonymous_crash_diagnostics_restart;

  /// No description provided for @app_trading_partners.
  ///
  /// In en, this message translates to:
  /// **'Trading partners'**
  String get app_trading_partners;

  /// No description provided for @app_trade_status_settlement_processing_description.
  ///
  /// In en, this message translates to:
  /// **'The settlement is being processed. Please wait, there\'s nothing that you need to do.'**
  String get app_trade_status_settlement_processing_description;

  /// No description provided for @app_buyer_settlement_fee_level_description.
  ///
  /// In en, this message translates to:
  /// **'Choose a fee level to be used during the trade settlement. The values shown here are the current rate estimations and may differ from those applied during the trade settlement. Should the amount of the trade be too low to settle the trade with the selected fee level, a lower fee level will be automatically selected during the settlement.'**
  String get app_buyer_settlement_fee_level_description;

  /// No description provided for @app_change_vacation_settings.
  ///
  /// In en, this message translates to:
  /// **'Change vacation settings.'**
  String get app_change_vacation_settings;

  /// No description provided for @app_gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get app_gallery;

  /// No description provided for @app_via.
  ///
  /// In en, this message translates to:
  /// **'via'**
  String get app_via;

  /// No description provided for @app_one_percent.
  ///
  /// In en, this message translates to:
  /// **'1% fee'**
  String get app_one_percent;

  /// No description provided for @app_final_amount.
  ///
  /// In en, this message translates to:
  /// **'Final amount'**
  String get app_final_amount;

  /// No description provided for @app_note_label.
  ///
  /// In en, this message translates to:
  /// **'Your note on {val} (only seen by you)'**
  String app_note_label(Object val);

  /// No description provided for @app_note_add.
  ///
  /// In en, this message translates to:
  /// **'Add a note on {val}'**
  String app_note_add(Object val);

  /// No description provided for @app_update_new_version_available.
  ///
  /// In en, this message translates to:
  /// **'New version {val} is available.'**
  String app_update_new_version_available(Object val);

  /// No description provided for @app_update_now.
  ///
  /// In en, this message translates to:
  /// **'Update now'**
  String get app_update_now;

  /// No description provided for @app_update_ingnor_until_next.
  ///
  /// In en, this message translates to:
  /// **'Ignore until next update'**
  String get app_update_ingnor_until_next;

  /// No description provided for @app_update_ignore_always.
  ///
  /// In en, this message translates to:
  /// **'Always ignore'**
  String get app_update_ignore_always;

  /// No description provided for @app_tooltip_visibility.
  ///
  /// In en, this message translates to:
  /// **'Tap to toggle visibility'**
  String get app_tooltip_visibility;

  /// No description provided for @app_tooltip_long_press_ad.
  ///
  /// In en, this message translates to:
  /// **'Long press on the ad to enable group editing'**
  String get app_tooltip_long_press_ad;

  /// No description provided for @app_join_telegram.
  ///
  /// In en, this message translates to:
  /// **'Join Telegram group'**
  String get app_join_telegram;

  /// No description provided for @app_join_matrix.
  ///
  /// In en, this message translates to:
  /// **'Join Matrix group'**
  String get app_join_matrix;

  /// No description provided for @app_display_password.
  ///
  /// In en, this message translates to:
  /// **'Display password'**
  String get app_display_password;

  /// No description provided for @app_hide_password.
  ///
  /// In en, this message translates to:
  /// **'Hide password'**
  String get app_hide_password;

  /// No description provided for @app_trade_has_been_cancelled.
  ///
  /// In en, this message translates to:
  /// **'The trade has been cancelled.'**
  String get app_trade_has_been_cancelled;

  /// No description provided for @app_last_seen.
  ///
  /// In en, this message translates to:
  /// **'Last seen {val}'**
  String app_last_seen(Object val);

  /// No description provided for @app_open_additional_filters.
  ///
  /// In en, this message translates to:
  /// **'Open additional filters'**
  String get app_open_additional_filters;

  /// No description provided for @app_select_asset.
  ///
  /// In en, this message translates to:
  /// **'Select asset'**
  String get app_select_asset;

  /// No description provided for @app_select_trade_type.
  ///
  /// In en, this message translates to:
  /// **'Select trade type'**
  String get app_select_trade_type;

  /// No description provided for @app_paste.
  ///
  /// In en, this message translates to:
  /// **'Paste'**
  String get app_paste;

  /// No description provided for @app_scan_qr_code.
  ///
  /// In en, this message translates to:
  /// **'Scan QR code'**
  String get app_scan_qr_code;

  /// No description provided for @app250Sbapple8722Sbapp8722Sbstore8722Sbdescription250Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Buy or sell Bitcoin anonymously, without ID verification. Cash or online. Safe, fast, easy.\n\nWondering how to invest in Bitcoin? On AgoraDesk, purchasing bitcoins has never been easier - instantly buy BTC from a person using your favorite online payment method: PayPal, credit/debit card or bank transfer, gift cards, Venmo or any other. If you want to buy bitcoins near you with cash, you can find someone willing to sell bitcoins locally - the trading platform supports buying and selling BTC with cash. You can even buy bitcoins using cash by mail.\n\n- Safe and Smooth Trading\nJust like LocalBitcoins, we support any payment method, any currency, anywhere. We do not remove payment methods, and, unlike LocalBitcoins, we fully support face-to-face cash trades. All of our trades are protected by an arbitration bond. Thanks to the fact that we require funds to be held in arbitration bond before a trade can start, we ensure a smooth and safe experience for the buyer, which is essential for the popularity of the platform and repeat customers for the sellers.\n\n- No KYC/AML or ID Verification\nAgoraDesk is committed to maintaining the simplicity and straight-forwardness that made the original LocalBitcoins so popular. We do not employ KYC/AML, nor do we ever plan on doing so.\n\n- Trusted by the Community\nOur platform has operated for over four years, survived the Great Cryptocurrency Market Crash of 2018, and through its community-oriented diligent service became one of the most trusted names in the extremely skeptical cryptocurrency community.\n\n- Secure, Open Source, Privacy-Centric, Censorship-Resistant\nOur app is free and open source, which ensures that many eyes are looking at the app\'s code to ensure that there are no security holes or privacy leaks. Open sourcing our app also allows anyone to have access to our app even if a certain app repository censors the app. Our app even works on phones that have Google completely blocked. We value your privacy so much, we don’t even require you to provide an email when registering.\n\nSource code: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss\nIssue tracker: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss/issues\n\n- Stellar Support\nOur support team is fast, responsive and always eager to please. We’ve never had a support ticket that wasn’t answered within 24 hours. We are always easily reachable through social media, we listen intently to your criticisms and we always implement good user suggestions in record time.\n\nYou can reach our support at: https://agoradesk.com/support\n\n- Fair Fees\nWe do not charge exorbitant fees when you deposit or withdraw Bitcoins to/from our arbitration bond wallet. There is no deposit fee, and the withdrawal fee is very close to the fee you’d be paying on a normal transaction.'**
  String get app250Sbapple8722Sbapp8722Sbstore8722Sbdescription250Sbagoradesk;

  /// No description provided for @app250Sbapple8722Sbapp8722Sbstore8722Sbtitle250Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'AgoraDesk: buy Bitcoin easily'**
  String get app250Sbapple8722Sbapp8722Sbstore8722Sbtitle250Sbagoradesk;

  /// No description provided for @app250Sbapple8722Sbapp8722Sbstore8722Sbtitle250Sblocalmonero.
  ///
  /// In en, this message translates to:
  /// **'LocalMonero: buy XMR easily'**
  String get app250Sbapple8722Sbapp8722Sbstore8722Sbtitle250Sblocalmonero;

  /// No description provided for @app250Sbapple8722Sbapp8722Sbstore8722Sbdescription250Sblocalmonero.
  ///
  /// In en, this message translates to:
  /// **'Buy or sell Monero without ID verification. Cash or online. Safe, fast, easy.\n\nLocalMonero is the biggest, most trusted and well-established P2P trading platform in the XMR community. We have no KYC checks - you can simply buy Monero anonymously without ID verification with PayPal, credit card, gift card, cash by mail or convert Bitcoin, Ether, USDT, or any other crypto coin to Monero - our platform supports any payment method.\n\n- Safe and Smooth Trading\nWe support any payment method, any currency, anywhere. We do not remove payment methods, and we fully support face-to-face cash trades. All of our trades are protected by an arbitration bond. Thanks to the fact that we require funds to be held in arbitration bond before a trade can start, we ensure a smooth and safe experience for the buyer, which is essential for the popularity of the platform and repeat customers for the sellers.\n\n- No KYC/AML or ID Verification\nLocalMonero is committed to maintaining the simplicity and straight-forwardness of your trading experience. We do not employ KYC/AML, nor do we ever plan on doing so.\n\n- Trusted by the Community\nOur platform has operated for over four years, survived the Great Cryptocurrency Market Crash of 2018, and through its community-oriented diligent service became one of the most trusted names in the extremely skeptical Monero community.\n\n- Secure, Open Source, Privacy-Centric, Censorship-Resistant\nOur app is free and open source, which ensures that many eyes are looking at the app\'s code to ensure that there are no security holes or privacy leaks. Open sourcing our app also allows anyone to have access to our app even if a certain app repository censors the app. Our app even works on phones that have Google completely blocked. We value your privacy so much, we don’t even require you to provide an email when registering.\nBuy or sell Monero without ID verification. WARNING: THIS APP IS CURRENTLY IN OPEN BETA!\n\nSource code: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss\nIssue tracker: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss/issues\n\n- Stellar Support\nOur support team is fast, responsive and always eager to please. We’ve never had a support ticket that wasn’t answered within 24 hours. We are always easily reachable through social media, we listen intently to your criticisms and we always implement good user suggestions in record time.\n\nYou can reach our support at: https://localmonero.co/support\n\n- Fair Fees\nWe do not charge exorbitant fees when you deposit or withdraw Monero to/from our arbitration bond wallet. There is no deposit fee, and the withdrawal fee is very close to the fee you’d be paying on a normal transaction.'**
  String get app250Sbapple8722Sbapp8722Sbstore8722Sbdescription250Sblocalmonero;

  /// No description provided for @app250Sbgoogle8722Sbplay8722Sbstore8722Sbtitle250Sblocalmonero.
  ///
  /// In en, this message translates to:
  /// **'LocalMonero: buy XMR privately'**
  String get app250Sbgoogle8722Sbplay8722Sbstore8722Sbtitle250Sblocalmonero;

  /// No description provided for @app250Sbgoogle8722Sbplay8722Sbstore8722Sbdescription250Sblocalmonero.
  ///
  /// In en, this message translates to:
  /// **'Buy or sell Monero without ID verification. Cash or online. Safe, fast, easy.\n\nLocalMonero is the biggest, most trusted and well-established P2P trading platform in the XMR community. We have no KYC checks - you can simply buy Monero anonymously without ID verification with PayPal, credit card, gift card, cash by mail or convert Bitcoin, Ether, USDT, or any other crypto coin to Monero - our platform supports any payment method.\n\n- Safe and Smooth Trading\nWe support any payment method, any currency, anywhere. We do not remove payment methods, and we fully support face-to-face cash trades. All of our trades are protected by an arbitration bond. Thanks to the fact that we require funds to be held in arbitration bond before a trade can start, we ensure a smooth and safe experience for the buyer, which is essential for the popularity of the platform and repeat customers for the sellers.\n\n- No KYC/AML or ID Verification\nLocalMonero is committed to maintaining the simplicity and straight-forwardness of your trading experience. We do not employ KYC/AML, nor do we ever plan on doing so.\n\n- Trusted by the Community\nOur platform has operated for over four years, survived the Great Cryptocurrency Market Crash of 2018, and through its community-oriented diligent service became one of the most trusted names in the extremely skeptical Monero community.\n\n- Secure, Open Source, Privacy-Centric, Censorship-Resistant\nOur app is free and open source, which ensures that many eyes are looking at the app\'s code to ensure that there are no security holes or privacy leaks. Open sourcing our app also allows anyone to have access to our app even if a certain app repository censors the app. Our app even works on phones that have Google completely blocked. We value your privacy so much, we don’t even require you to provide an email when registering.\n\nSource code: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss\nIssue tracker: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss/issues\n\n- Stellar Support\nOur support team is fast, responsive and always eager to please. We’ve never had a support ticket that wasn’t answered within 24 hours. We are always easily reachable through social media, we listen intently to your criticisms and we always implement good user suggestions in record time.\n\nYou can reach our support at: https://localmonero.co/support\n\n- Fair Fees\nWe do not charge exorbitant fees when you deposit or withdraw Monero to/from our arbitration bond wallet. There is no deposit fee, and the withdrawal fee is very close to the fee you’d be paying on a normal transaction.'**
  String get app250Sbgoogle8722Sbplay8722Sbstore8722Sbdescription250Sblocalmonero;

  /// No description provided for @app250Sbgoogle8722Sbplay8722Sbstore8722Sbtitle250Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'AgoraDesk: buy BTC anonymously'**
  String get app250Sbgoogle8722Sbplay8722Sbstore8722Sbtitle250Sbagoradesk;

  /// No description provided for @app250Sbgoogle8722Sbplay8722Sbstore8722Sbdescription250Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'Buy or sell Bitcoin without ID verification. Cash or online.\n\nWondering how to invest in Bitcoin? On AgoraDesk, purchasing bitcoins has never been easier - instantly buy BTC from a person using your favorite online payment method: PayPal, credit/debit card or bank transfer, gift cards, Venmo or any other. If you want to buy bitcoins near you with cash, you can find someone willing to sell bitcoins locally - the trading platform supports buying and selling BTC with cash. You can even buy bitcoins using cash by mail.\n\n- Safe and Smooth Trading\nJust like LocalBitcoins, we support any payment method, any currency, anywhere. We do not remove payment methods, and, unlike LocalBitcoins, we fully support face-to-face cash trades. All of our trades are protected by an arbitration bond. Thanks to the fact that we require funds to be held in arbitration bond before a trade can start, we ensure a smooth and safe experience for the buyer, which is essential for the popularity of the platform and repeat customers for the sellers.\n\n- No KYC/AML or ID Verification\nAgoraDesk is committed to maintaining the simplicity and straight-forwardness that made the original LocalBitcoins so popular. We do not employ KYC/AML, nor do we ever plan on doing so.\n\n- Trusted by the Community\nOur platform has operated for over four years, survived the Great Cryptocurrency Market Crash of 2018, and through its community-oriented diligent service became one of the most trusted names in the extremely skeptical cryptocurrency community.\n\n- Secure, Open Source, Privacy-Centric, Censorship-Resistant\nOur app is free and open source, which ensures that many eyes are looking at the app\'s code to ensure that there are no security holes or privacy leaks. Open sourcing our app also allows anyone to have access to our app even if a certain app repository censors the app. Our app even works on phones that have Google completely blocked. We value your privacy so much, we don’t even require you to provide an email when registering.\n\nSource code: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss\nIssue tracker: https://github.com/AgoraDesk-LocalMonero/agoradesk-app-foss/issues\n\n- Stellar Support\nOur support team is fast, responsive and always eager to please. We’ve never had a support ticket that wasn’t answered within 24 hours. We are always easily reachable through social media, we listen intently to your criticisms and we always implement good user suggestions in record time.\n\nYou can reach our support at: https://agoradesk.com/support\n\n- Fair Fees\nWe do not charge exorbitant fees when you deposit or withdraw Bitcoins to/from our arbitration bond wallet. There is no deposit fee, and the withdrawal fee is very close to the fee you’d be paying on a normal transaction.'**
  String get app250Sbgoogle8722Sbplay8722Sbstore8722Sbdescription250Sbagoradesk;

  /// No description provided for @app250Sbapple8722Sbapp8722Sbstore8722Sbkeywords250Sblocalmonero.
  ///
  /// In en, this message translates to:
  /// **'cryptocurrency,anonymous,private,monero,xmr,p2p'**
  String get app250Sbapple8722Sbapp8722Sbstore8722Sbkeywords250Sblocalmonero;

  /// No description provided for @app250Sbapple8722Sbapp8722Sbstore8722Sbkeywords250Sbagoradesk.
  ///
  /// In en, this message translates to:
  /// **'cryptocurrency,bitcoin,monero,BTC,XMR,anonymous,private'**
  String get app250Sbapple8722Sbapp8722Sbstore8722Sbkeywords250Sbagoradesk;

  /// No description provided for @app_report_this_user.
  ///
  /// In en, this message translates to:
  /// **'Report this user'**
  String get app_report_this_user;

  /// No description provided for @app_open_dropdown.
  ///
  /// In en, this message translates to:
  /// **'Open dropdown'**
  String get app_open_dropdown;

  /// No description provided for @error250Sbsignup250Sb175.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem coupon that doesn’t exist during registration'**
  String get error250Sbsignup250Sb175;

  /// No description provided for @error250Sbsignup250Sb176.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem an expired coupon during registration'**
  String get error250Sbsignup250Sb176;

  /// No description provided for @error250Sbsignup250Sb177.
  ///
  /// In en, this message translates to:
  /// **'Attempting to redeem a coupon that’s out of stock during registration'**
  String get error250Sbsignup250Sb177;

  /// No description provided for @nojs250Sbpassword8722Sbreset250Sbsuccess.
  ///
  /// In en, this message translates to:
  /// **'Password reset letter sent! Check your inbox.'**
  String get nojs250Sbpassword8722Sbreset250Sbsuccess;

  /// No description provided for @ad8722Sbpage250Sbterms8722Sbdialog250Sbagree8722Sbcontinue.
  ///
  /// In en, this message translates to:
  /// **'Agree to terms and continue'**
  String get ad8722Sbpage250Sbterms8722Sbdialog250Sbagree8722Sbcontinue;

  /// No description provided for @logout250Sbtitle.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout250Sbtitle;

  /// No description provided for @coupons250Sbcode8722Sbapply.
  ///
  /// In en, this message translates to:
  /// **'Apply a coupon code'**
  String get coupons250Sbcode8722Sbapply;

  /// No description provided for @post8722Sbad250Sbtrade8722Stype250Sbonline8722Sbuy.
  ///
  /// In en, this message translates to:
  /// **'Buy {assetName} online'**
  String post8722Sbad250Sbtrade8722Stype250Sbonline8722Sbuy(Object assetName);

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sbcall_buy.
  ///
  /// In en, this message translates to:
  /// **'call option buy'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sbcall_buy;

  /// No description provided for @coupons250Sbcoupon250Sbdescription250Sbtypes250Sbcall_sell.
  ///
  /// In en, this message translates to:
  /// **'call option sell'**
  String get coupons250Sbcoupon250Sbdescription250Sbtypes250Sbcall_sell;

  /// No description provided for @app_accessibility_edit_box_password.
  ///
  /// In en, this message translates to:
  /// **'Edit box password, double tap to edit'**
  String get app_accessibility_edit_box_password;

  /// No description provided for @app_ad_created.
  ///
  /// In en, this message translates to:
  /// **'Ad created'**
  String get app_ad_created;

  /// No description provided for @app_503_title.
  ///
  /// In en, this message translates to:
  /// **'{val} App Maintenance'**
  String app_503_title(Object val);

  /// No description provided for @app_503_body.
  ///
  /// In en, this message translates to:
  /// **'{val} will be back soon!\nSorry for the inconvenience but we\'re performing some scheduled maintenance at the moment.\nWe\'ll probably be back online soon. Stay updated in our community groups:'**
  String app_503_body(Object val);
}

class _I18nDelegate extends LocalizationsDelegate<I18n> {
  const _I18nDelegate();

  @override
  Future<I18n> load(Locale locale) {
    return SynchronousFuture<I18n>(lookupI18n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bg', 'cs', 'de', 'en', 'es', 'fr', 'hu', 'it', 'ja', 'ko', 'lv', 'nl', 'pl', 'pt', 'ro', 'ru', 'sk', 'sw', 'tl', 'tr', 'ur', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_I18nDelegate old) => false;
}

I18n lookupI18n(Locale locale) {

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt': {
  switch (locale.countryCode) {
    case 'BR': return I18nPtBr();
   }
  break;
   }
    case 'zh': {
  switch (locale.countryCode) {
    case 'CN': return I18nZhCn();
case 'TW': return I18nZhTw();
   }
  break;
   }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return I18nAr();
    case 'bg': return I18nBg();
    case 'cs': return I18nCs();
    case 'de': return I18nDe();
    case 'en': return I18nEn();
    case 'es': return I18nEs();
    case 'fr': return I18nFr();
    case 'hu': return I18nHu();
    case 'it': return I18nIt();
    case 'ja': return I18nJa();
    case 'ko': return I18nKo();
    case 'lv': return I18nLv();
    case 'nl': return I18nNl();
    case 'pl': return I18nPl();
    case 'pt': return I18nPt();
    case 'ro': return I18nRo();
    case 'ru': return I18nRu();
    case 'sk': return I18nSk();
    case 'sw': return I18nSw();
    case 'tl': return I18nTl();
    case 'tr': return I18nTr();
    case 'ur': return I18nUr();
    case 'zh': return I18nZh();
  }

  throw FlutterError(
    'I18n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
