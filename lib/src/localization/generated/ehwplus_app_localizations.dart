import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'ehwplus_app_localizations_af.dart';
import 'ehwplus_app_localizations_ar.dart';
import 'ehwplus_app_localizations_bg.dart';
import 'ehwplus_app_localizations_bs.dart';
import 'ehwplus_app_localizations_cs.dart';
import 'ehwplus_app_localizations_da.dart';
import 'ehwplus_app_localizations_de.dart';
import 'ehwplus_app_localizations_el.dart';
import 'ehwplus_app_localizations_en.dart';
import 'ehwplus_app_localizations_es.dart';
import 'ehwplus_app_localizations_et.dart';
import 'ehwplus_app_localizations_fa.dart';
import 'ehwplus_app_localizations_fi.dart';
import 'ehwplus_app_localizations_fr.dart';
import 'ehwplus_app_localizations_hi.dart';
import 'ehwplus_app_localizations_hr.dart';
import 'ehwplus_app_localizations_it.dart';
import 'ehwplus_app_localizations_ja.dart';
import 'ehwplus_app_localizations_ko.dart';
import 'ehwplus_app_localizations_lt.dart';
import 'ehwplus_app_localizations_ml.dart';
import 'ehwplus_app_localizations_my.dart';
import 'ehwplus_app_localizations_nl.dart';
import 'ehwplus_app_localizations_no.dart';
import 'ehwplus_app_localizations_pl.dart';
import 'ehwplus_app_localizations_pt.dart';
import 'ehwplus_app_localizations_ru.dart';
import 'ehwplus_app_localizations_sl.dart';
import 'ehwplus_app_localizations_sr.dart';
import 'ehwplus_app_localizations_sv.dart';
import 'ehwplus_app_localizations_sw.dart';
import 'ehwplus_app_localizations_th.dart';
import 'ehwplus_app_localizations_tr.dart';
import 'ehwplus_app_localizations_uk.dart';
import 'ehwplus_app_localizations_vi.dart';
import 'ehwplus_app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of EhwplusAppLocalizations
/// returned by `EhwplusAppLocalizations.of(context)`.
///
/// Applications need to include `EhwplusAppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/ehwplus_app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: EhwplusAppLocalizations.localizationsDelegates,
///   supportedLocales: EhwplusAppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the EhwplusAppLocalizations.supportedLocales
/// property.
abstract class EhwplusAppLocalizations {
  EhwplusAppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static EhwplusAppLocalizations? of(BuildContext context) {
    return Localizations.of<EhwplusAppLocalizations>(
      context,
      EhwplusAppLocalizations,
    );
  }

  static const LocalizationsDelegate<EhwplusAppLocalizations> delegate =
      _EhwplusAppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('ar'),
    Locale('bg'),
    Locale('bs'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('hi'),
    Locale('hr'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('lt'),
    Locale('ml'),
    Locale('my'),
    Locale('nl'),
    Locale('no'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('sl'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// No description provided for @accountAbout.
  ///
  /// In en, this message translates to:
  /// **'What can the EHW+ user account do?'**
  String get accountAbout;

  /// No description provided for @accountBenefit1.
  ///
  /// In en, this message translates to:
  /// **'More reliable purchase recognition'**
  String get accountBenefit1;

  /// No description provided for @accountBenefit2.
  ///
  /// In en, this message translates to:
  /// **'Access to all purchased expansions on multiple devices'**
  String get accountBenefit2;

  /// No description provided for @accountButtonSetup.
  ///
  /// In en, this message translates to:
  /// **'Set up EHW+ user account'**
  String get accountButtonSetup;

  /// No description provided for @accountFaqA1.
  ///
  /// In en, this message translates to:
  /// **'The EHW+ user account offers an alternative method for restoring purchases when restoring through the App Store is not possible, increasing reliability. Additionally, it allows purchases to be restored on a device where the purchase did not originally take place. In the future, it will also be possible to save settings and more.'**
  String get accountFaqA1;

  /// No description provided for @accountFaqA2.
  ///
  /// In en, this message translates to:
  /// **'Yes, purchases can still be restored on an Android device via the Play Store or on an iPhone via the App Store. The EHW+ user account provides an alternative method for restoring purchases when restoring through the App Store is not possible, increasing reliability. Additionally, it allows purchases to be restored on a device where the purchase did not originally take place.'**
  String get accountFaqA2;

  /// No description provided for @accountFaqQ1.
  ///
  /// In en, this message translates to:
  /// **'What is the EHW+ user account?'**
  String get accountFaqQ1;

  /// No description provided for @accountFaqQ2.
  ///
  /// In en, this message translates to:
  /// **'Will I still have access to my purchases without an EHW+ user account?'**
  String get accountFaqQ2;

  /// No description provided for @accountFaqTitle.
  ///
  /// In en, this message translates to:
  /// **'Frequently Asked Questions:'**
  String get accountFaqTitle;

  /// No description provided for @accountThankYouForPurchase.
  ///
  /// In en, this message translates to:
  /// **'Thank you! Would you like to secure the purchase in your EHW+ user account now?'**
  String get accountThankYouForPurchase;

  /// No description provided for @accountUpdateInfo.
  ///
  /// In en, this message translates to:
  /// **'New: The EHW+ user account'**
  String get accountUpdateInfo;

  /// No description provided for @activitiesDescription.
  ///
  /// In en, this message translates to:
  /// **'Link meter readings to activities, e.g., washing with cold water meters and electricity meters.'**
  String get activitiesDescription;

  /// No description provided for @activitiesTitle.
  ///
  /// In en, this message translates to:
  /// **'My activities'**
  String get activitiesTitle;

  /// No description provided for @activityBath.
  ///
  /// In en, this message translates to:
  /// **'Bath'**
  String get activityBath;

  /// No description provided for @activityDishWasher.
  ///
  /// In en, this message translates to:
  /// **'Dish washer'**
  String get activityDishWasher;

  /// No description provided for @activityIron.
  ///
  /// In en, this message translates to:
  /// **'Ironing'**
  String get activityIron;

  /// No description provided for @activityNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Activity name'**
  String get activityNameLabel;

  /// No description provided for @activityOverview.
  ///
  /// In en, this message translates to:
  /// **'Activity overview'**
  String get activityOverview;

  /// No description provided for @activitySettings.
  ///
  /// In en, this message translates to:
  /// **'Activity settings'**
  String get activitySettings;

  /// No description provided for @activityShower.
  ///
  /// In en, this message translates to:
  /// **'Shower'**
  String get activityShower;

  /// No description provided for @activityTitle.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activityTitle;

  /// No description provided for @activityWash.
  ///
  /// In en, this message translates to:
  /// **'Washing'**
  String get activityWash;

  /// No description provided for @activityWashDuration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get activityWashDuration;

  /// No description provided for @activityWashDuration2hrs.
  ///
  /// In en, this message translates to:
  /// **'2h'**
  String get activityWashDuration2hrs;

  /// No description provided for @activityWashRotations.
  ///
  /// In en, this message translates to:
  /// **'Rotations'**
  String get activityWashRotations;

  /// No description provided for @activityWashShort.
  ///
  /// In en, this message translates to:
  /// **'Short program'**
  String get activityWashShort;

  /// No description provided for @activityWashTemperature.
  ///
  /// In en, this message translates to:
  /// **'Temperature'**
  String get activityWashTemperature;

  /// No description provided for @activityWithEnergyConsumption.
  ///
  /// In en, this message translates to:
  /// **'Power consumption is only measured for activity'**
  String get activityWithEnergyConsumption;

  /// No description provided for @addActivity.
  ///
  /// In en, this message translates to:
  /// **'Add activity'**
  String get addActivity;

  /// No description provided for @addDetail.
  ///
  /// In en, this message translates to:
  /// **'Add detail'**
  String get addDetail;

  /// No description provided for @addNewValue.
  ///
  /// In en, this message translates to:
  /// **'Enter new value'**
  String get addNewValue;

  /// No description provided for @advancePayment.
  ///
  /// In en, this message translates to:
  /// **'Advance payment'**
  String get advancePayment;

  /// No description provided for @appBarExpandedMode.
  ///
  /// In en, this message translates to:
  /// **'App bar with background image'**
  String get appBarExpandedMode;

  /// No description provided for @appDescriptionLong.
  ///
  /// In en, this message translates to:
  /// **'<p>Welcome to <b>EHW+</b>, your meter reading app  for <b>E</b>lectricity, <b>H</b>eating and <b>W</b>ater. With us, you can easily track<b> </b>how much you use and what it<b> </b>costs</b> for free.</p>'**
  String get appDescriptionLong;

  /// Marketing claim
  ///
  /// In en, this message translates to:
  /// **'Good for the wallet, good for the climate'**
  String get appDescriptionShort;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'EHW+ | Consumption & meter readings'**
  String get appName;

  /// No description provided for @appNameShort.
  ///
  /// In en, this message translates to:
  /// **'EHW+'**
  String get appNameShort;

  /// No description provided for @areYouSure.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get areYouSure;

  /// No description provided for @basePrice.
  ///
  /// In en, this message translates to:
  /// **'Base price'**
  String get basePrice;

  /// No description provided for @bonus.
  ///
  /// In en, this message translates to:
  /// **'Bonus'**
  String get bonus;

  /// No description provided for @bonusInfoText.
  ///
  /// In en, this message translates to:
  /// **'Tariffs with bonus often allow for particularly high savings when changing providers. However, this usually results exclusively from the one-time bonus. That means: The total costs are so low only in the first year of supply. High work and/or basic prices provide in the second year for a clearly higher calculation. Therefore, with bonus tariffs you should plan from the outset to change again after one year. Bonus tariffs with a term of two years, where this cancellation is not possible at all, should be questioned particularly critically.'**
  String get bonusInfoText;

  /// No description provided for @bonusInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Information about bonus tariffs'**
  String get bonusInfoTitle;

  /// No description provided for @cancellationPeriod.
  ///
  /// In en, this message translates to:
  /// **'Cancellation period'**
  String get cancellationPeriod;

  /// No description provided for @changeCounterOrder.
  ///
  /// In en, this message translates to:
  /// **'If necessary, you can change the order'**
  String get changeCounterOrder;

  /// No description provided for @chartDottedLinesNonSeasonal.
  ///
  /// In en, this message translates to:
  /// **'The dashed curves represent the previous period. For the selection \"Last 14 days\", for example, the 28 last days appear, with the older 14 of them being shown dashed.'**
  String get chartDottedLinesNonSeasonal;

  /// No description provided for @chartDottedLinesSeasonal.
  ///
  /// In en, this message translates to:
  /// **'The dashed curves represent the previous period. For the selection \"Last 14 days\", for example, the 28 last days appear, with the older 14 of them being shown dashed.'**
  String get chartDottedLinesSeasonal;

  /// No description provided for @chartHorizontalLineElectricityGas.
  ///
  /// In en, this message translates to:
  /// **'The green line stands for a very good consumption, the yellow line for a good consumption, the red line for the German average consumption.'**
  String get chartHorizontalLineElectricityGas;

  /// No description provided for @chartHorizontalLineWater.
  ///
  /// In en, this message translates to:
  /// **'On average, each person in Germany uses 127 liters of drinking water in the household every day. The blue line represents cold water (60%), the red line hot water (40%), extrapolated to the number of days in the period and the number of people.'**
  String get chartHorizontalLineWater;

  /// No description provided for @chartHorizontalLines.
  ///
  /// In en, this message translates to:
  /// **'The dashed lines are intended to provide feedback on your own consumption.'**
  String get chartHorizontalLines;

  /// No description provided for @chooseActivity.
  ///
  /// In en, this message translates to:
  /// **'Choose activity'**
  String get chooseActivity;

  /// No description provided for @chooseActivityIcon.
  ///
  /// In en, this message translates to:
  /// **'Choose an icon'**
  String get chooseActivityIcon;

  /// No description provided for @coldWater.
  ///
  /// In en, this message translates to:
  /// **'Cold water'**
  String get coldWater;

  /// No description provided for @cometConsentScreenAcceptButton.
  ///
  /// In en, this message translates to:
  /// **'I want to give feedback'**
  String get cometConsentScreenAcceptButton;

  /// No description provided for @cometConsentScreenDataCanBeUsedForTraining.
  ///
  /// In en, this message translates to:
  /// **'Data may be used to optimize future predictions'**
  String get cometConsentScreenDataCanBeUsedForTraining;

  /// No description provided for @cometConsentScreenDeclineButton.
  ///
  /// In en, this message translates to:
  /// **'I don\\\'t want to give feedback'**
  String get cometConsentScreenDeclineButton;

  /// No description provided for @cometConsentScreenFeedbackDescription.
  ///
  /// In en, this message translates to:
  /// **'The use of the forecast is free, but the research team needs feedback on how well the service works.'**
  String get cometConsentScreenFeedbackDescription;

  /// No description provided for @cometConsentScreenFeedbackMethod.
  ///
  /// In en, this message translates to:
  /// **'Feedback is provided automatically when you use the prediction service and agree to optimisation.'**
  String get cometConsentScreenFeedbackMethod;

  /// No description provided for @cometConsentScreenFeedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Goethe University needs your feedback:'**
  String get cometConsentScreenFeedbackTitle;

  /// No description provided for @cometConsentScreenHeader.
  ///
  /// In en, this message translates to:
  /// **'New: Better consumption forecasts'**
  String get cometConsentScreenHeader;

  /// No description provided for @cometConsentScreenHowItWorksTitle.
  ///
  /// In en, this message translates to:
  /// **'How does it work?'**
  String get cometConsentScreenHowItWorksTitle;

  /// No description provided for @cometConsentScreenOfflineDescription.
  ///
  /// In en, this message translates to:
  /// **'A simplified local forecast will be calculated on your device.'**
  String get cometConsentScreenOfflineDescription;

  /// No description provided for @cometConsentScreenOfflineDescriptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Without Internet connection:'**
  String get cometConsentScreenOfflineDescriptionTitle;

  /// No description provided for @cometConsentScreenOnlineDescription.
  ///
  /// In en, this message translates to:
  /// **'Your consumption data will be sent to Goethe University Frankfurt, where an individual forecast will be created and displayed in the app.'**
  String get cometConsentScreenOnlineDescription;

  /// No description provided for @cometConsentScreenOnlineDescriptionTitle.
  ///
  /// In en, this message translates to:
  /// **'With Internet connection:'**
  String get cometConsentScreenOnlineDescriptionTitle;

  /// No description provided for @cometConsentScreenToggleLabel.
  ///
  /// In en, this message translates to:
  /// **'Use forecast service'**
  String get cometConsentScreenToggleLabel;

  /// No description provided for @cometSettingsIsPredictionsApiEnabled.
  ///
  /// In en, this message translates to:
  /// **'Use the COMET Forecast API from the Goethe Institute'**
  String get cometSettingsIsPredictionsApiEnabled;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get comment;

  /// No description provided for @commonAnd.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get commonAnd;

  /// No description provided for @commonBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get commonBack;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @commonChange.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get commonChange;

  /// No description provided for @commonChangeSaved.
  ///
  /// In en, this message translates to:
  /// **'Change saved'**
  String get commonChangeSaved;

  /// No description provided for @commonClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get commonClose;

  /// No description provided for @commonCollapse.
  ///
  /// In en, this message translates to:
  /// **'Collapse'**
  String get commonCollapse;

  /// No description provided for @commonContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get commonContinue;

  /// No description provided for @commonCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get commonCopiedToClipboard;

  /// No description provided for @commonDay.
  ///
  /// In en, this message translates to:
  /// **'day'**
  String get commonDay;

  /// No description provided for @commonDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get commonDelete;

  /// No description provided for @commonLearnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn more'**
  String get commonLearnMore;

  /// No description provided for @commonLoadingData.
  ///
  /// In en, this message translates to:
  /// **'Loading data'**
  String get commonLoadingData;

  /// No description provided for @commonLoggingIn.
  ///
  /// In en, this message translates to:
  /// **'Signing you in...'**
  String get commonLoggingIn;

  /// No description provided for @commonLoggingOut.
  ///
  /// In en, this message translates to:
  /// **'Signing you out...'**
  String get commonLoggingOut;

  /// No description provided for @commonLogin.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get commonLogin;

  /// No description provided for @commonLogout.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get commonLogout;

  /// No description provided for @commonMaximum.
  ///
  /// In en, this message translates to:
  /// **'Highest daily value'**
  String get commonMaximum;

  /// No description provided for @commonMinimum.
  ///
  /// In en, this message translates to:
  /// **'Lowest daily value'**
  String get commonMinimum;

  /// No description provided for @commonMonth.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get commonMonth;

  /// No description provided for @commonMore.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get commonMore;

  /// No description provided for @commonNo.
  ///
  /// In en, this message translates to:
  /// **'no'**
  String get commonNo;

  /// No description provided for @commonNotAuthenticated.
  ///
  /// In en, this message translates to:
  /// **'You are not authenticated.'**
  String get commonNotAuthenticated;

  /// No description provided for @commonOk.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get commonOk;

  /// No description provided for @commonOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get commonOpen;

  /// No description provided for @commonSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get commonSave;

  /// No description provided for @commonSend.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get commonSend;

  /// No description provided for @commonShare.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get commonShare;

  /// No description provided for @commonUpdateNow.
  ///
  /// In en, this message translates to:
  /// **'Update now'**
  String get commonUpdateNow;

  /// No description provided for @commonUserLogin.
  ///
  /// In en, this message translates to:
  /// **'User login'**
  String get commonUserLogin;

  /// No description provided for @commonUserLoginDescriptionLoggedInNotSubmittedPurchases.
  ///
  /// In en, this message translates to:
  /// **'You are using the EHW+ account. {notSubmitted} out of {total} purchased products could not be saved on the EHW+ server. We hope to fix the issue soon.'**
  String commonUserLoginDescriptionLoggedInNotSubmittedPurchases(
    int notSubmitted,
    int total,
  );

  /// No description provided for @commonUserLoginDescriptionLoggedInRestoredPurchases.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {One purchase has been synchronized via the EHW+ account.} other {{count} purchases have been synchronized via the EHW+ account.}}'**
  String commonUserLoginDescriptionLoggedInRestoredPurchases(int count);

  /// No description provided for @commonUserLoginDescriptionLoggedInSavedPurchases.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0 {You are using the EHW+ account. If you purchase products in the future, they will be synchronized across all your devices.} one {You are using the EHW+ account. {count} purchased product has been saved on the EHW+ server.} other {You are using the EHW+ account. {count} purchased products have been saved on the EHW+ server.}}'**
  String commonUserLoginDescriptionLoggedInSavedPurchases(int count);

  /// No description provided for @commonUserLoginDescriptionNotLoggedIn.
  ///
  /// In en, this message translates to:
  /// **'Are you using the app on multiple devices? Logging into your EHW+ account allows you to synchronize your settings and purchased products across all your devices.'**
  String get commonUserLoginDescriptionNotLoggedIn;

  /// No description provided for @commonYear.
  ///
  /// In en, this message translates to:
  /// **'year'**
  String get commonYear;

  /// No description provided for @commonYes.
  ///
  /// In en, this message translates to:
  /// **'yes'**
  String get commonYes;

  /// No description provided for @completeButton.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get completeButton;

  /// No description provided for @confirmDeleteAtCloud.
  ///
  /// In en, this message translates to:
  /// **'Should \"{objectTitle}\" also be deleted from Google Drive?'**
  String confirmDeleteAtCloud(String objectTitle);

  /// No description provided for @consent11AnalyticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Analysis data'**
  String get consent11AnalyticsTitle;

  /// No description provided for @consent12Analytics.
  ///
  /// In en, this message translates to:
  /// **'In order to evaluate the success of the app or individual functions, the app transmits anonymised usage statistics. The data is not transmitted to third parties. The data is used for the further development of the app.'**
  String get consent12Analytics;

  /// No description provided for @consent13StromGedacht.
  ///
  /// In en, this message translates to:
  /// **'StromGedacht, a service provided by TransnetBW, provides information on grid stability and recommendations on when electricity should be used preferentially. As the energy transition is becoming more and more challenging for the transmission grid, households in South-West Germany are being involved. To receive information for your location, your postal code, if entered here in the app, is transmitted to the TransnetBW StromGedacht API. No other data is transmitted or linked.'**
  String get consent13StromGedacht;

  /// No description provided for @consent13StromGedachtTitle.
  ///
  /// In en, this message translates to:
  /// **'Grid stability notices from StromGedacht'**
  String get consent13StromGedachtTitle;

  /// No description provided for @consent1Hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get consent1Hello;

  /// No description provided for @consent2ThankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you for using EHW+!'**
  String get consent2ThankYou;

  /// No description provided for @consent3Video.
  ///
  /// In en, this message translates to:
  /// **'Would you like to watch a short introduction video?'**
  String get consent3Video;

  /// No description provided for @consent4BeforeYouCanContinue.
  ///
  /// In en, this message translates to:
  /// **'Before you can continue'**
  String get consent4BeforeYouCanContinue;

  /// No description provided for @consent5ErrorReportingTitle.
  ///
  /// In en, this message translates to:
  /// **'Error reports'**
  String get consent5ErrorReportingTitle;

  /// No description provided for @consent6ContractPricesPerUnitTitle.
  ///
  /// In en, this message translates to:
  /// **'Electricity / water / gas prices'**
  String get consent6ContractPricesPerUnitTitle;

  /// No description provided for @consent7ContractPricesPerUnit.
  ///
  /// In en, this message translates to:
  /// **'In order to be able to estimate how much you are currently paying compared to other EHW+ users, the prices are transferred to the EHW+ server in Germany together with the country and state. Only if you agree to the transfer, you have access to the price statistics. To ensure anonymity, statistics can only be shown after a minimum number of transmitted prices.'**
  String get consent7ContractPricesPerUnit;

  /// No description provided for @consentTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy Settings'**
  String get consentTitle;

  /// No description provided for @consumption.
  ///
  /// In en, this message translates to:
  /// **'Consumption'**
  String get consumption;

  /// No description provided for @consumptionCacheDebugViewTitle.
  ///
  /// In en, this message translates to:
  /// **'Verbrauchscache'**
  String get consumptionCacheDebugViewTitle;

  /// No description provided for @consumptionCacheDebugViewEntries.
  ///
  /// In en, this message translates to:
  /// **'Einträge'**
  String get consumptionCacheDebugViewEntries;

  /// No description provided for @consumptionCacheDebugViewClearCache.
  ///
  /// In en, this message translates to:
  /// **'Cache leeren'**
  String get consumptionCacheDebugViewClearCache;

  /// No description provided for @consumptionCacheDebugViewClearCacheConfirmation.
  ///
  /// In en, this message translates to:
  /// **'Möchtest du wirklich den gesamten Verbrauchscache für dieses Objekt löschen? Alle gespeicherten Verbrauchsdaten werden entfernt.'**
  String get consumptionCacheDebugViewClearCacheConfirmation;

  /// No description provided for @consumptionCacheDebugViewClear.
  ///
  /// In en, this message translates to:
  /// **'Löschen'**
  String get consumptionCacheDebugViewClear;

  /// No description provided for @consumptionCacheDebugViewCacheCleared.
  ///
  /// In en, this message translates to:
  /// **'Cache erfolgreich geleert'**
  String get consumptionCacheDebugViewCacheCleared;

  /// No description provided for @consumptionCacheDebugViewError.
  ///
  /// In en, this message translates to:
  /// **'Fehler'**
  String get consumptionCacheDebugViewError;

  /// No description provided for @consumptionCacheManagementClearCacheAndSynchronizeButton.
  ///
  /// In en, this message translates to:
  /// **'Clear & sync'**
  String get consumptionCacheManagementClearCacheAndSynchronizeButton;

  /// No description provided for @consumptionCacheManagementClearCacheButton.
  ///
  /// In en, this message translates to:
  /// **'Clear cache'**
  String get consumptionCacheManagementClearCacheButton;

  /// No description provided for @consumptionCacheManagementClearedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Cache cleared successfully'**
  String get consumptionCacheManagementClearedSuccessfully;

  /// No description provided for @consumptionCacheManagementConfirmClearCacheAndSyncMessage.
  ///
  /// In en, this message translates to:
  /// **'All cached data will be deleted and re-downloaded from the server. This may take some time.'**
  String get consumptionCacheManagementConfirmClearCacheAndSyncMessage;

  /// No description provided for @consumptionCacheManagementConfirmClearCacheAndSyncTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear cache & synchronize?'**
  String get consumptionCacheManagementConfirmClearCacheAndSyncTitle;

  /// No description provided for @consumptionCacheManagementConfirmClearCacheMessage.
  ///
  /// In en, this message translates to:
  /// **'All cached consumption data will be permanently deleted. You can synchronize it later.'**
  String get consumptionCacheManagementConfirmClearCacheMessage;

  /// No description provided for @consumptionCacheManagementConfirmClearCacheTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear cache?'**
  String get consumptionCacheManagementConfirmClearCacheTitle;

  /// No description provided for @consumptionCacheToggleButtonDescription.
  ///
  /// In en, this message translates to:
  /// **'Cache computed consumptions and re-use whenever necessary'**
  String get consumptionCacheToggleButtonDescription;

  /// No description provided for @consumptionCacheToggleButtonTitle.
  ///
  /// In en, this message translates to:
  /// **'Verbrauchscache verwenden'**
  String get consumptionCacheToggleButtonTitle;

  /// No description provided for @consumptionHeatmap.
  ///
  /// In en, this message translates to:
  /// **'Consumption Heatmap'**
  String get consumptionHeatmap;

  /// No description provided for @consumptionHeatmapYield.
  ///
  /// In en, this message translates to:
  /// **'Yield Heatmap'**
  String get consumptionHeatmapYield;

  /// No description provided for @consumptionHeatpump.
  ///
  /// In en, this message translates to:
  /// **'In addition, the power consumption of the heat pump amounts to {formattedValue} kWh.'**
  String consumptionHeatpump(String formattedValue);

  /// No description provided for @consumptionIsNotExclusive.
  ///
  /// In en, this message translates to:
  /// **'If the consumption is not exclusive to this activity, it will be shown as a warning.'**
  String get consumptionIsNotExclusive;

  /// No description provided for @consumptionIsNotExclusiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Is consumption exclusive?'**
  String get consumptionIsNotExclusiveTitle;

  /// No description provided for @consumptionPersonLabel.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {person} other {people}}'**
  String consumptionPersonLabel(num count);

  /// No description provided for @consumptionWaterColdEqual.
  ///
  /// In en, this message translates to:
  /// **'Cold water: about the same as an average household.'**
  String get consumptionWaterColdEqual;

  /// No description provided for @consumptionWaterColdLess.
  ///
  /// In en, this message translates to:
  /// **'Cold water: {percentage} less than an average household.'**
  String consumptionWaterColdLess(Object percentage);

  /// No description provided for @consumptionWaterColdMore.
  ///
  /// In en, this message translates to:
  /// **'Cold water: {percentage} more than an average household.'**
  String consumptionWaterColdMore(Object percentage);

  /// No description provided for @consumptionWaterDailyMonthlyPerPerson.
  ///
  /// In en, this message translates to:
  /// **'Per person, this equals about {dailyLiters} liters per day (≈ {monthlyCubicMeters} {unitName} per month).'**
  String consumptionWaterDailyMonthlyPerPerson(
    Object dailyLiters,
    Object monthlyCubicMeters,
    Object unitName,
  );

  /// No description provided for @consumptionWaterDailyMonthlySingle.
  ///
  /// In en, this message translates to:
  /// **'You consume about {dailyLiters} liters per day (≈ {monthlyCubicMeters} {unitName} per month).'**
  String consumptionWaterDailyMonthlySingle(
    Object dailyLiters,
    Object monthlyCubicMeters,
    Object unitName,
  );

  /// No description provided for @consumptionWaterOverallEqual.
  ///
  /// In en, this message translates to:
  /// **'Your water consumption {ofRange} is equal to that of an average household with {householdSize} {personLabel}.'**
  String consumptionWaterOverallEqual(
    Object householdSize,
    Object ofRange,
    Object personLabel,
  );

  /// No description provided for @consumptionWaterOverallLess.
  ///
  /// In en, this message translates to:
  /// **'Your water consumption {ofRange} is {percentage} lower than that of an average household with {householdSize} {personLabel}.'**
  String consumptionWaterOverallLess(
    Object householdSize,
    Object ofRange,
    Object percentage,
    Object personLabel,
  );

  /// No description provided for @consumptionWaterOverallMore.
  ///
  /// In en, this message translates to:
  /// **'Your water consumption {ofRange} is {percentage} higher than that of an average household with {householdSize} {personLabel}.'**
  String consumptionWaterOverallMore(
    Object householdSize,
    Object ofRange,
    Object percentage,
    Object personLabel,
  );

  /// No description provided for @consumptionWaterRangeUnknown.
  ///
  /// In en, this message translates to:
  /// **'Your water consumption {ofRange} ...'**
  String consumptionWaterRangeUnknown(Object ofRange);

  /// No description provided for @consumptionWaterWarmEqual.
  ///
  /// In en, this message translates to:
  /// **'Hot water: about the same as an average household.'**
  String get consumptionWaterWarmEqual;

  /// No description provided for @consumptionWaterWarmLess.
  ///
  /// In en, this message translates to:
  /// **'Hot water: {percentage} less than an average household.'**
  String consumptionWaterWarmLess(Object percentage);

  /// No description provided for @consumptionWaterWarmMore.
  ///
  /// In en, this message translates to:
  /// **'Hot water: {percentage} more than an average household.'**
  String consumptionWaterWarmMore(Object percentage);

  /// No description provided for @consumptionYearly.
  ///
  /// In en, this message translates to:
  /// **'Your electricity consumption {ofRange} amounts to {consumption} kWh per year.'**
  String consumptionYearly(Object consumption, Object ofRange);

  /// No description provided for @consumptionYearlyDetailedAboutSame.
  ///
  /// In en, this message translates to:
  /// **'about the same as'**
  String get consumptionYearlyDetailedAboutSame;

  /// No description provided for @consumptionYearlyDetailedAverageHousehold.
  ///
  /// In en, this message translates to:
  /// **' an average household with {householdSize} {personLabel}'**
  String consumptionYearlyDetailedAverageHousehold(
    Object householdSize,
    Object personLabel,
  );

  /// No description provided for @consumptionYearlyDetailedComparisonEqual.
  ///
  /// In en, this message translates to:
  /// **'You consume{verbSuffix} about as much as an average household with {householdSize} {personLabel}.'**
  String consumptionYearlyDetailedComparisonEqual(
    Object householdSize,
    Object personLabel,
    Object verbSuffix,
  );

  /// No description provided for @consumptionYearlyDetailedComparisonLess.
  ///
  /// In en, this message translates to:
  /// **'You consume{verbSuffix} {percentage} less than an average household with {householdSize} {personLabel}.'**
  String consumptionYearlyDetailedComparisonLess(
    Object householdSize,
    Object percentage,
    Object personLabel,
    Object verbSuffix,
  );

  /// No description provided for @consumptionYearlyDetailedComparisonMore.
  ///
  /// In en, this message translates to:
  /// **'You consume{verbSuffix} {percentage} more than an average household with {householdSize} {personLabel}.'**
  String consumptionYearlyDetailedComparisonMore(
    Object householdSize,
    Object percentage,
    Object personLabel,
    Object verbSuffix,
  );

  /// No description provided for @consumptionYearlyDetailedElectricity.
  ///
  /// In en, this message translates to:
  /// **'Your electricity consumption {ofRange} ({totalConsumption} kWh ≈ {yearlyConsumption} kWh/year ≈ {monthlyConsumption} kWh/month) is {consumptionLevel}.'**
  String consumptionYearlyDetailedElectricity(
    Object consumptionLevel,
    Object monthlyConsumption,
    Object ofRange,
    Object totalConsumption,
    Object yearlyConsumption,
  );

  /// No description provided for @consumptionYearlyDetailedGas.
  ///
  /// In en, this message translates to:
  /// **'Your gas consumption {ofRange} ({totalConsumption} kWh ≈ {yearlyConsumption} kWh/year ≈ {monthlyConsumption} kWh/month) is {consumptionLevel}.'**
  String consumptionYearlyDetailedGas(
    Object consumptionLevel,
    Object monthlyConsumption,
    Object ofRange,
    Object totalConsumption,
    Object yearlyConsumption,
  );

  /// No description provided for @consumptionYearlyDetailedLessThan.
  ///
  /// In en, this message translates to:
  /// **'{percentage} less than'**
  String consumptionYearlyDetailedLessThan(Object percentage);

  /// No description provided for @consumptionYearlyDetailedLevel0.
  ///
  /// In en, this message translates to:
  /// **'super low'**
  String get consumptionYearlyDetailedLevel0;

  /// No description provided for @consumptionYearlyDetailedLevel1.
  ///
  /// In en, this message translates to:
  /// **'low'**
  String get consumptionYearlyDetailedLevel1;

  /// No description provided for @consumptionYearlyDetailedLevel1Suffix.
  ///
  /// In en, this message translates to:
  /// **'You would reach optimal consumption with about {nextToOptimal} less.'**
  String consumptionYearlyDetailedLevel1Suffix(String nextToOptimal);

  /// No description provided for @consumptionYearlyDetailedLevel2.
  ///
  /// In en, this message translates to:
  /// **'within the normal range'**
  String get consumptionYearlyDetailedLevel2;

  /// No description provided for @consumptionYearlyDetailedLevel2Suffix.
  ///
  /// In en, this message translates to:
  /// **'Approximately {nextToOptimal} is missing for good consumption.'**
  String consumptionYearlyDetailedLevel2Suffix(Object nextToOptimal);

  /// No description provided for @consumptionYearlyDetailedLevel3.
  ///
  /// In en, this message translates to:
  /// **'relatively high'**
  String get consumptionYearlyDetailedLevel3;

  /// No description provided for @consumptionYearlyDetailedLevel4.
  ///
  /// In en, this message translates to:
  /// **'within the normal range'**
  String get consumptionYearlyDetailedLevel4;

  /// No description provided for @consumptionYearlyDetailedMoreThan.
  ///
  /// In en, this message translates to:
  /// **'{percentage} more than'**
  String consumptionYearlyDetailedMoreThan(Object percentage);

  /// No description provided for @consumptionYearlyDetailedOptimalEnding.
  ///
  /// In en, this message translates to:
  /// **'That\'s great!'**
  String get consumptionYearlyDetailedOptimalEnding;

  /// No description provided for @consumptionYield.
  ///
  /// In en, this message translates to:
  /// **'Yield'**
  String get consumptionYield;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'EHW+ Services GmbH\nGeorg-Herbert-Straße 8\n68519 Viernheim\n\nContact\n\nPhone: 06204/7383382\nMail: info@ehwplus.com'**
  String get contact;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Represented by:'**
  String get contactTitle;

  /// No description provided for @continueAcceptPart1.
  ///
  /// In en, this message translates to:
  /// **'By using the EHW+ app, you agree to the '**
  String get continueAcceptPart1;

  /// No description provided for @continueAcceptPart2.
  ///
  /// In en, this message translates to:
  /// **'. For more information on the collection and use of anonymised and personal data, please refer to the '**
  String get continueAcceptPart2;

  /// No description provided for @contract.
  ///
  /// In en, this message translates to:
  /// **'Contract'**
  String get contract;

  /// No description provided for @contractCopyDialogOptionNo.
  ///
  /// In en, this message translates to:
  /// **'No, cancel.'**
  String get contractCopyDialogOptionNo;

  /// No description provided for @contractCopyDialogOptionYes.
  ///
  /// In en, this message translates to:
  /// **'Yes, the unit price or another value has changed.'**
  String get contractCopyDialogOptionYes;

  /// No description provided for @contractCopyDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Do you want to make a copy of this contract?'**
  String get contractCopyDialogTitle;

  /// No description provided for @contractCopyDialogWhen.
  ///
  /// In en, this message translates to:
  /// **'From when does the new price apply?'**
  String get contractCopyDialogWhen;

  /// No description provided for @contractCosts.
  ///
  /// In en, this message translates to:
  /// **'Unit price'**
  String get contractCosts;

  /// No description provided for @contractCostsFeedIn.
  ///
  /// In en, this message translates to:
  /// **'Remuneration price/base price'**
  String get contractCostsFeedIn;

  /// No description provided for @contractDetails.
  ///
  /// In en, this message translates to:
  /// **'Contract duration and details'**
  String get contractDetails;

  /// No description provided for @contractName.
  ///
  /// In en, this message translates to:
  /// **'Provider/contract name'**
  String get contractName;

  /// No description provided for @contractNumber.
  ///
  /// In en, this message translates to:
  /// **'Contract number'**
  String get contractNumber;

  /// No description provided for @contractPeriod.
  ///
  /// In en, this message translates to:
  /// **'Contract period'**
  String get contractPeriod;

  /// No description provided for @contractReminder.
  ///
  /// In en, this message translates to:
  /// **'Contract reminder'**
  String get contractReminder;

  /// No description provided for @contractStart.
  ///
  /// In en, this message translates to:
  /// **'Contract start date'**
  String get contractStart;

  /// No description provided for @contractType.
  ///
  /// In en, this message translates to:
  /// **'Contract type'**
  String get contractType;

  /// No description provided for @contractTypeElectricityProvider.
  ///
  /// In en, this message translates to:
  /// **'Electricity provider'**
  String get contractTypeElectricityProvider;

  /// No description provided for @contractTypeGasProvider.
  ///
  /// In en, this message translates to:
  /// **'Gas provider'**
  String get contractTypeGasProvider;

  /// No description provided for @contractTypeHeatingFees.
  ///
  /// In en, this message translates to:
  /// **'Heating fees'**
  String get contractTypeHeatingFees;

  /// No description provided for @contractTypeNetwork.
  ///
  /// In en, this message translates to:
  /// **'Internet & phone'**
  String get contractTypeNetwork;

  /// No description provided for @contractTypeOilProvider.
  ///
  /// In en, this message translates to:
  /// **'Oil provider'**
  String get contractTypeOilProvider;

  /// No description provided for @contractTypeStove.
  ///
  /// In en, this message translates to:
  /// **'Stove'**
  String get contractTypeStove;

  /// No description provided for @contractTypeWaterFees.
  ///
  /// In en, this message translates to:
  /// **'Water fees'**
  String get contractTypeWaterFees;

  /// No description provided for @contracts.
  ///
  /// In en, this message translates to:
  /// **'Contracts'**
  String get contracts;

  /// No description provided for @corresponds.
  ///
  /// In en, this message translates to:
  /// **'corresponds'**
  String get corresponds;

  /// No description provided for @costSummary.
  ///
  /// In en, this message translates to:
  /// **'Cost summary'**
  String get costSummary;

  /// No description provided for @costSummaryYield.
  ///
  /// In en, this message translates to:
  /// **'Remuneration price/-base price'**
  String get costSummaryYield;

  /// No description provided for @costs.
  ///
  /// In en, this message translates to:
  /// **'Costs'**
  String get costs;

  /// No description provided for @costsUndefinedColdWater.
  ///
  /// In en, this message translates to:
  /// **'Cold water fees'**
  String get costsUndefinedColdWater;

  /// No description provided for @costsUndefinedElectricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity fees'**
  String get costsUndefinedElectricity;

  /// No description provided for @costsUndefinedFor.
  ///
  /// In en, this message translates to:
  /// **'Costs undefined'**
  String get costsUndefinedFor;

  /// No description provided for @costsUndefinedForType.
  ///
  /// In en, this message translates to:
  /// **'{type} for undefined'**
  String costsUndefinedForType(Object type);

  /// No description provided for @costsUndefinedGas.
  ///
  /// In en, this message translates to:
  /// **'Gas fees'**
  String get costsUndefinedGas;

  /// No description provided for @costsUndefinedHeater.
  ///
  /// In en, this message translates to:
  /// **'Heater fees'**
  String get costsUndefinedHeater;

  /// No description provided for @costsUndefinedNetworkCounter.
  ///
  /// In en, this message translates to:
  /// **'Internet fees'**
  String get costsUndefinedNetworkCounter;

  /// No description provided for @costsUndefinedOilHeating.
  ///
  /// In en, this message translates to:
  /// **'Oil fees'**
  String get costsUndefinedOilHeating;

  /// No description provided for @costsUndefinedWarmWater.
  ///
  /// In en, this message translates to:
  /// **'Warm water fees'**
  String get costsUndefinedWarmWater;

  /// No description provided for @counter.
  ///
  /// In en, this message translates to:
  /// **'Counter'**
  String get counter;

  /// No description provided for @counterBackgroundImage.
  ///
  /// In en, this message translates to:
  /// **'Background image for counter'**
  String get counterBackgroundImage;

  /// No description provided for @counterBackgroundImageOfObject.
  ///
  /// In en, this message translates to:
  /// **'Background image for object'**
  String get counterBackgroundImageOfObject;

  /// No description provided for @counterColdWater.
  ///
  /// In en, this message translates to:
  /// **'Cold water meter'**
  String get counterColdWater;

  /// No description provided for @counterConsiderForTotalConsumptions.
  ///
  /// In en, this message translates to:
  /// **'Consider for total consumptions'**
  String get counterConsiderForTotalConsumptions;

  /// No description provided for @counterConsiderForTotalElectricity.
  ///
  /// In en, this message translates to:
  /// **'Consider for total electricity consumption'**
  String get counterConsiderForTotalElectricity;

  /// No description provided for @counterConsiderForTotalWater.
  ///
  /// In en, this message translates to:
  /// **'Consider for total water consumption'**
  String get counterConsiderForTotalWater;

  /// No description provided for @counterContractCurrentlyUsed.
  ///
  /// In en, this message translates to:
  /// **'Currently used contract'**
  String get counterContractCurrentlyUsed;

  /// No description provided for @counterDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete counter?'**
  String get counterDeleteConfirm;

  /// No description provided for @counterDirection.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get counterDirection;

  /// No description provided for @counterDirectionAscending.
  ///
  /// In en, this message translates to:
  /// **'ascending'**
  String get counterDirectionAscending;

  /// No description provided for @counterDirectionDescending.
  ///
  /// In en, this message translates to:
  /// **'descending'**
  String get counterDirectionDescending;

  /// No description provided for @counterDirectionExplanation.
  ///
  /// In en, this message translates to:
  /// **'Does the value decrease with use (level indicator, etc.) or does the value increase with use (burner hours, oil meter, etc.) or is each reading value independent (consumption/yield)?'**
  String get counterDirectionExplanation;

  /// No description provided for @counterDirectionNone.
  ///
  /// In en, this message translates to:
  /// **'{consumptionElectricity}/{consumptionSolar}'**
  String counterDirectionNone(
    String consumptionElectricity,
    String consumptionSolar,
  );

  /// No description provided for @counterDistrictHeating.
  ///
  /// In en, this message translates to:
  /// **'District Heating'**
  String get counterDistrictHeating;

  /// No description provided for @counterEdit.
  ///
  /// In en, this message translates to:
  /// **'Edit counter'**
  String get counterEdit;

  /// No description provided for @counterElectricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity meter'**
  String get counterElectricity;

  /// No description provided for @counterElectricityBack.
  ///
  /// In en, this message translates to:
  /// **'Electricity feed-in meter (PV)'**
  String get counterElectricityBack;

  /// No description provided for @counterElectricityGenerated.
  ///
  /// In en, this message translates to:
  /// **'Electricity generation meter'**
  String get counterElectricityGenerated;

  /// No description provided for @counterExclude.
  ///
  /// In en, this message translates to:
  /// **'Exclude'**
  String get counterExclude;

  /// No description provided for @counterExcludedContracts.
  ///
  /// In en, this message translates to:
  /// **'Excluded contracts'**
  String get counterExcludedContracts;

  /// No description provided for @counterExplainSeasonal.
  ///
  /// In en, this message translates to:
  /// **'For forecasts, a distinction is made between seasonal and non-seasonal counters. Depending on this, the forecast is calculated differently.\n\nAlways classified as seasonal are heating, gas, oil. Non-seasonal meters are electricity and water.\n\nFor non-seasonal meters, the consumption of the last 90 days is decisive.\n\nFor seasonal meters, previous years are averaged (if available), with all months of previous years counting the same. (Exception: there is no data yet for the month of the previous year, then the previous average is used).'**
  String get counterExplainSeasonal;

  /// No description provided for @counterFactor.
  ///
  /// In en, this message translates to:
  /// **'Factor'**
  String get counterFactor;

  /// No description provided for @counterFactorDescription.
  ///
  /// In en, this message translates to:
  /// **'Is consumption only allocated to you on a pro rata basis? Enter the proportion as a value between 0.1 (10%) and 1.0 (100%).'**
  String get counterFactorDescription;

  /// No description provided for @counterFractionDigits.
  ///
  /// In en, this message translates to:
  /// **'Fraction digits'**
  String get counterFractionDigits;

  /// No description provided for @counterGas.
  ///
  /// In en, this message translates to:
  /// **'Gas meter'**
  String get counterGas;

  /// No description provided for @counterGasCalorificValue.
  ///
  /// In en, this message translates to:
  /// **'Calorific value'**
  String get counterGasCalorificValue;

  /// No description provided for @counterGasCalorificValueHelpText.
  ///
  /// In en, this message translates to:
  /// **'Heating value: Dimensionless factor for converting the measured gas volume into energy. Natural gas: usually between 9.0 and 12.5 kWh/m³, LPG: between 23.0 and 33.0 kWh/m³'**
  String get counterGasCalorificValueHelpText;

  /// No description provided for @counterGasCalorificValueLabel.
  ///
  /// In en, this message translates to:
  /// **'Calorific value*'**
  String get counterGasCalorificValueLabel;

  /// No description provided for @counterGasConversionFactor.
  ///
  /// In en, this message translates to:
  /// **'Conversion factor'**
  String get counterGasConversionFactor;

  /// No description provided for @counterGasConversionFactorHelpText.
  ///
  /// In en, this message translates to:
  /// **'Ca 1.0. The condition number is used to convert the operating volume into a standard volume. The operating condition is the condition of the gas at the meter and is dependent on the pressure (altitude) and temperature present.'**
  String get counterGasConversionFactorHelpText;

  /// No description provided for @counterGasConversionFactorLabel.
  ///
  /// In en, this message translates to:
  /// **'Conversion factor*'**
  String get counterGasConversionFactorLabel;

  /// No description provided for @counterHeater.
  ///
  /// In en, this message translates to:
  /// **'Radiator meter'**
  String get counterHeater;

  /// No description provided for @counterInclude.
  ///
  /// In en, this message translates to:
  /// **'Include'**
  String get counterInclude;

  /// No description provided for @counterIsOutdated.
  ///
  /// In en, this message translates to:
  /// **'Counter is outdated'**
  String get counterIsOutdated;

  /// No description provided for @counterLinkMoreRecent.
  ///
  /// In en, this message translates to:
  /// **'Link more recent counter'**
  String get counterLinkMoreRecent;

  /// No description provided for @counterMessageRoomOptional.
  ///
  /// In en, this message translates to:
  /// **'A room assignment helps with grouping but is optional.'**
  String get counterMessageRoomOptional;

  /// No description provided for @counterMeterId.
  ///
  /// In en, this message translates to:
  /// **'Meter ID'**
  String get counterMeterId;

  /// No description provided for @counterName.
  ///
  /// In en, this message translates to:
  /// **'Counter name'**
  String get counterName;

  /// No description provided for @counterNew.
  ///
  /// In en, this message translates to:
  /// **'New counter'**
  String get counterNew;

  /// No description provided for @counterNoContractSelected.
  ///
  /// In en, this message translates to:
  /// **'No contract selected'**
  String get counterNoContractSelected;

  /// No description provided for @counterNoRoomConnection.
  ///
  /// In en, this message translates to:
  /// **'No room connection'**
  String get counterNoRoomConnection;

  /// No description provided for @counterNum.
  ///
  /// In en, this message translates to:
  /// **'{count} counters'**
  String counterNum(int count);

  /// No description provided for @counterOilHeating.
  ///
  /// In en, this message translates to:
  /// **'Oil heating'**
  String get counterOilHeating;

  /// No description provided for @counterOtherContracts.
  ///
  /// In en, this message translates to:
  /// **'Other contracts'**
  String get counterOtherContracts;

  /// No description provided for @counterOutdatedAndNextReminder.
  ///
  /// In en, this message translates to:
  /// **'Counter reading outdated since {date}, next reading reminder {date2}.'**
  String counterOutdatedAndNextReminder(String date, String date2);

  /// No description provided for @counterProportionateConsumption.
  ///
  /// In en, this message translates to:
  /// **'Proportionate consumption'**
  String get counterProportionateConsumption;

  /// No description provided for @counterPvFeedInCounter.
  ///
  /// In en, this message translates to:
  /// **'Renewable energies (solar power and heat with PV/solar systems)'**
  String get counterPvFeedInCounter;

  /// No description provided for @counterPvFeedInCounterExplanation.
  ///
  /// In en, this message translates to:
  /// **'\nUse an electricity feed-in meter to record the electricity generated and fed in\nwith a photovoltaic system. The resulting revenue is offset against the cost of\nthe electricity drawn.'**
  String get counterPvFeedInCounterExplanation;

  /// No description provided for @counterReadings.
  ///
  /// In en, this message translates to:
  /// **'Readings'**
  String get counterReadings;

  /// No description provided for @counterReallyDeleteLink.
  ///
  /// In en, this message translates to:
  /// **'Delete link?'**
  String get counterReallyDeleteLink;

  /// No description provided for @counterReplacedBy.
  ///
  /// In en, this message translates to:
  /// **'Replaced by'**
  String get counterReplacedBy;

  /// No description provided for @counterRoom.
  ///
  /// In en, this message translates to:
  /// **'Room'**
  String get counterRoom;

  /// No description provided for @counterSelected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get counterSelected;

  /// No description provided for @counterShowHeatmap.
  ///
  /// In en, this message translates to:
  /// **'Show heatmap'**
  String get counterShowHeatmap;

  /// No description provided for @counterShowPreliminaryCurve.
  ///
  /// In en, this message translates to:
  /// **'Show preliminary curve'**
  String get counterShowPreliminaryCurve;

  /// No description provided for @counterShowReadingsChart.
  ///
  /// In en, this message translates to:
  /// **'Show readings chart'**
  String get counterShowReadingsChart;

  /// No description provided for @counterTankCapacity.
  ///
  /// In en, this message translates to:
  /// **'Tank capacity'**
  String get counterTankCapacity;

  /// No description provided for @counterTankFillHeight.
  ///
  /// In en, this message translates to:
  /// **'Fill height'**
  String get counterTankFillHeight;

  /// No description provided for @counterTransducerFactor.
  ///
  /// In en, this message translates to:
  /// **'Transformer ratio'**
  String get counterTransducerFactor;

  /// No description provided for @counterTransducerFactorExplained.
  ///
  /// In en, this message translates to:
  /// **'If a voltage transformer is used to step down the voltage before it reaches the meter, a new conversion factor must be applied to obtain the correct readings. Example: the meter displays 100,000 kWh with a conversion factor of 20. The correct reading is: 100,000 kWh x 20 = 2,000,000 kWh.'**
  String get counterTransducerFactorExplained;

  /// No description provided for @counterTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Counter type'**
  String get counterTypeLabel;

  /// No description provided for @counterWarmWater.
  ///
  /// In en, this message translates to:
  /// **'Warm water meter'**
  String get counterWarmWater;

  /// No description provided for @counterWarmWaterPlusColdWater.
  ///
  /// In en, this message translates to:
  /// **'Excluding fresh water and waste water costs'**
  String get counterWarmWaterPlusColdWater;

  /// No description provided for @counterWater.
  ///
  /// In en, this message translates to:
  /// **'Water meters'**
  String get counterWater;

  /// No description provided for @counterWaterExtraction.
  ///
  /// In en, this message translates to:
  /// **'Water extraction meter (garden)'**
  String get counterWaterExtraction;

  /// No description provided for @counterWaterExtractionExplanation.
  ///
  /// In en, this message translates to:
  /// **'With a deduction meter the waste water costs can be reduced. With this in-app purchase you can specify different costs for fresh water and waste water and the meter reading from the deduction meter will be taken into account in the water costs.'**
  String get counterWaterExtractionExplanation;

  /// No description provided for @counterWaterExtractionMinimumLevel.
  ///
  /// In en, this message translates to:
  /// **'Minimum level'**
  String get counterWaterExtractionMinimumLevel;

  /// No description provided for @counters.
  ///
  /// In en, this message translates to:
  /// **'Meters'**
  String get counters;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account/login'**
  String get createAccount;

  /// No description provided for @csvImportWithFactor.
  ///
  /// In en, this message translates to:
  /// **'Should the meter readings be multiplied by a factor not equal to 1.0? For example, to convert values from Wh to kWh, they would have to be multiplied by 0.001.'**
  String get csvImportWithFactor;

  /// No description provided for @currency.
  ///
  /// In en, this message translates to:
  /// **'Currency'**
  String get currency;

  /// No description provided for @deleteObjectError.
  ///
  /// In en, this message translates to:
  /// **'Cannot delete this object (Code {errorCode}).'**
  String deleteObjectError(int errorCode);

  /// No description provided for @detailWithMultiSelect.
  ///
  /// In en, this message translates to:
  /// **'Allow multi selection'**
  String get detailWithMultiSelect;

  /// No description provided for @detailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get detailsTitle;

  /// No description provided for @difference.
  ///
  /// In en, this message translates to:
  /// **'Difference'**
  String get difference;

  /// No description provided for @driveSignInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get driveSignInWithGoogle;

  /// No description provided for @driveSyncNow.
  ///
  /// In en, this message translates to:
  /// **'Sync now'**
  String get driveSyncNow;

  /// No description provided for @driveSyncStatusComparing.
  ///
  /// In en, this message translates to:
  /// **'Comparing with file on server'**
  String get driveSyncStatusComparing;

  /// No description provided for @driveSyncStatusFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to synchronize'**
  String get driveSyncStatusFailed;

  /// No description provided for @driveSyncStatusLocalHasLatestNoCloud.
  ///
  /// In en, this message translates to:
  /// **'The file saved on this device from {localDate} is not saved inside the cloud'**
  String driveSyncStatusLocalHasLatestNoCloud(String localDate);

  /// No description provided for @driveSyncStatusLocalHasLatestWithCloud.
  ///
  /// In en, this message translates to:
  /// **'The file saved on this device from {localDate} is more up-to-date than the file in the cloud from {cloudDate}'**
  String driveSyncStatusLocalHasLatestWithCloud(
    String cloudDate,
    String localDate,
  );

  /// No description provided for @driveSyncStatusNotSynced.
  ///
  /// In en, this message translates to:
  /// **'Not synchronized'**
  String get driveSyncStatusNotSynced;

  /// No description provided for @driveSyncStatusRemoteHasLatestNoLocal.
  ///
  /// In en, this message translates to:
  /// **'The file in the cloud from {cloudDate} is not saved on this device'**
  String driveSyncStatusRemoteHasLatestNoLocal(String cloudDate);

  /// No description provided for @driveSyncStatusRemoteHasLatestWithLocal.
  ///
  /// In en, this message translates to:
  /// **'The file in the cloud from {cloudDate} is more up-to-date than the local file from {localDate}'**
  String driveSyncStatusRemoteHasLatestWithLocal(
    String cloudDate,
    String localDate,
  );

  /// No description provided for @driveSyncStatusSyncing.
  ///
  /// In en, this message translates to:
  /// **'Sync in progress'**
  String get driveSyncStatusSyncing;

  /// No description provided for @driveSyncStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Synchronization status'**
  String get driveSyncStatusTitle;

  /// No description provided for @driveSyncStatusUpToDate.
  ///
  /// In en, this message translates to:
  /// **'Up to date from {localDate}'**
  String driveSyncStatusUpToDate(String localDate);

  /// No description provided for @driveSyncWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Google Drive Sync'**
  String get driveSyncWithGoogle;

  /// No description provided for @editDetailTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit detail'**
  String get editDetailTitle;

  /// No description provided for @electricity.
  ///
  /// In en, this message translates to:
  /// **'Electricity'**
  String get electricity;

  /// No description provided for @electricityBack.
  ///
  /// In en, this message translates to:
  /// **'Electricity fed in'**
  String get electricityBack;

  /// No description provided for @electricityConsumption.
  ///
  /// In en, this message translates to:
  /// **'Power consumption'**
  String get electricityConsumption;

  /// No description provided for @electricityGenerated.
  ///
  /// In en, this message translates to:
  /// **'Generated electricity'**
  String get electricityGenerated;

  /// No description provided for @enterComment.
  ///
  /// In en, this message translates to:
  /// **'Enter a note'**
  String get enterComment;

  /// No description provided for @enterExistingReadingAgain.
  ///
  /// In en, this message translates to:
  /// **'Re-enter old reading'**
  String get enterExistingReadingAgain;

  /// No description provided for @enterObjectName.
  ///
  /// In en, this message translates to:
  /// **'Name the new object'**
  String get enterObjectName;

  /// No description provided for @errorInvalidRange.
  ///
  /// In en, this message translates to:
  /// **'No valid range'**
  String get errorInvalidRange;

  /// No description provided for @errorNoInternet.
  ///
  /// In en, this message translates to:
  /// **'No network'**
  String get errorNoInternet;

  /// No description provided for @euDisputeResolution.
  ///
  /// In en, this message translates to:
  /// **'\n\nEU Dispute Resolution\n\nThe European Commission provides a platform for online dispute resolution (OS): https://ec.europa.eu/consumers/odr/.\nYou can find our e-mail address in the imprint above.\n\nConsumer dispute resolution/universal dispute resolution body\n\nWe are not willing or obliged to participate in dispute resolution proceedings before a consumer arbitration board.'**
  String get euDisputeResolution;

  /// No description provided for @existingPhoto.
  ///
  /// In en, this message translates to:
  /// **'Attach existing photo'**
  String get existingPhoto;

  /// No description provided for @existingPhotoOfMeterReading.
  ///
  /// In en, this message translates to:
  /// **'Would you like to attach an existing photo of the meter reading?'**
  String get existingPhotoOfMeterReading;

  /// No description provided for @explanationManageMoreThanOneObject.
  ///
  /// In en, this message translates to:
  /// **'You have more than one property you want to manage? Then name the current object and then create another object.'**
  String get explanationManageMoreThanOneObject;

  /// No description provided for @export.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get export;

  /// No description provided for @exportExplanation.
  ///
  /// In en, this message translates to:
  /// **'Which existing object do you want to export, for example to transfer it to a new device?'**
  String get exportExplanation;

  /// No description provided for @exportObjectDescription.
  ///
  /// In en, this message translates to:
  /// **'{countersText}, {meterReadings} , {timeLastUpdated} {lastUpdated}'**
  String exportObjectDescription(
    String countersText,
    String lastUpdated,
    String meterReadings,
    String timeLastUpdated,
  );

  /// No description provided for @exportOptionConsumptionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A consumption value for each day since the first reading.'**
  String get exportOptionConsumptionsSubtitle;

  /// No description provided for @exportOptionConsumptionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Daily consumption'**
  String get exportOptionConsumptionsTitle;

  /// No description provided for @exportOptionExcel.
  ///
  /// In en, this message translates to:
  /// **'Excel file'**
  String get exportOptionExcel;

  /// No description provided for @exportOptionFileDescription.
  ///
  /// In en, this message translates to:
  /// **'The object is shared as an {fileType} file'**
  String exportOptionFileDescription(String fileType);

  /// No description provided for @exportOptionPdf.
  ///
  /// In en, this message translates to:
  /// **'PDF file'**
  String get exportOptionPdf;

  /// No description provided for @exportOptionReadingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Typically meter readings or consumption with irregular intervals.'**
  String get exportOptionReadingsSubtitle;

  /// No description provided for @exportOptionReadingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Reading values'**
  String get exportOptionReadingsTitle;

  /// No description provided for @exportTabHowToExport.
  ///
  /// In en, this message translates to:
  /// **'How would you like to export the data?'**
  String get exportTabHowToExport;

  /// No description provided for @exportTabHowToExportOptionSaveToDownloads.
  ///
  /// In en, this message translates to:
  /// **'Save to folder {folder}'**
  String exportTabHowToExportOptionSaveToDownloads(Object folder);

  /// No description provided for @exportTabHowToExportOptionShare.
  ///
  /// In en, this message translates to:
  /// **'Share with other apps'**
  String get exportTabHowToExportOptionShare;

  /// No description provided for @exportTabSnackBarSaveResultMessageError.
  ///
  /// In en, this message translates to:
  /// **'Error occurred while saving the data'**
  String get exportTabSnackBarSaveResultMessageError;

  /// No description provided for @exportTabSnackBarSaveResultMessageSuccess.
  ///
  /// In en, this message translates to:
  /// **'Data has been successfully saved as {fileName} in folder {folder}'**
  String exportTabSnackBarSaveResultMessageSuccess(
    Object fileName,
    Object folder,
  );

  /// No description provided for @exportWhere.
  ///
  /// In en, this message translates to:
  /// **'In which format should the object be exported?'**
  String get exportWhere;

  /// No description provided for @exportWhichValuesShouldBeExported.
  ///
  /// In en, this message translates to:
  /// **'Which values should be exported?'**
  String get exportWhichValuesShouldBeExported;

  /// No description provided for @faqAboutDeveloperBody1.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your interest in EHW+. EHW+ was released by me, Timo Bähr, in December 2020. I am a full-time app developer and work on EHW+ in my free time to contribute to environmental protection. Since May 2022, a second developer has been overseeing my work, Thomas Hesse builds backends for EHW+. Since April 2023, Janine Sinner has been handling the numerous customer feedbacks. Since July 2024, Artem Yuzhakov has joined as an app developer.'**
  String get faqAboutDeveloperBody1;

  /// No description provided for @faqAboutDeveloperBody2.
  ///
  /// In en, this message translates to:
  /// **'Over 26% of all CO2 emissions in Germany are caused by private households. If everyone can reduce their consumption even a little, a lot will have been achieved. Thank you very much for your contribution!'**
  String get faqAboutDeveloperBody2;

  /// No description provided for @faqAboutDeveloperBody3.
  ///
  /// In en, this message translates to:
  /// **'We welcome suggestions on how to improve the app.'**
  String get faqAboutDeveloperBody3;

  /// No description provided for @faqAboutDeveloperBody4.
  ///
  /// In en, this message translates to:
  /// **'However, I ask for your understanding that I cannot implement all suggestions and that new functions take time.'**
  String get faqAboutDeveloperBody4;

  /// No description provided for @faqAboutDeveloperTitle.
  ///
  /// In en, this message translates to:
  /// **'Who is behind EHW+?'**
  String get faqAboutDeveloperTitle;

  /// No description provided for @faqTitle.
  ///
  /// In en, this message translates to:
  /// **'FAQ'**
  String get faqTitle;

  /// No description provided for @featureVoting.
  ///
  /// In en, this message translates to:
  /// **'Feature voting'**
  String get featureVoting;

  /// No description provided for @featureVotingOnlyOnGerman.
  ///
  /// In en, this message translates to:
  /// **'The feature survey is not translated into other languages.'**
  String get featureVotingOnlyOnGerman;

  /// No description provided for @featureVotingUnderConstruction.
  ///
  /// In en, this message translates to:
  /// **'The feature survey is currently being revised. In the future, an EHW+ user account will be required, and the survey will no longer use third-party servers. We appreciate your patience.'**
  String get featureVotingUnderConstruction;

  /// No description provided for @fedIn.
  ///
  /// In en, this message translates to:
  /// **'Fed in'**
  String get fedIn;

  /// No description provided for @firstReadingConsumption.
  ///
  /// In en, this message translates to:
  /// **'Enter the first consumption now.'**
  String get firstReadingConsumption;

  /// No description provided for @firstReadingCounter.
  ///
  /// In en, this message translates to:
  /// **'Enter the first counter reading.'**
  String get firstReadingCounter;

  /// No description provided for @firstReadingYield.
  ///
  /// In en, this message translates to:
  /// **'Enter the first yield now.'**
  String get firstReadingYield;

  /// No description provided for @forX.
  ///
  /// In en, this message translates to:
  /// **'for'**
  String get forX;

  /// No description provided for @gas.
  ///
  /// In en, this message translates to:
  /// **'Gas'**
  String get gas;

  /// No description provided for @generated.
  ///
  /// In en, this message translates to:
  /// **'Generated'**
  String get generated;

  /// No description provided for @googleAnalyticsAgreement.
  ///
  /// In en, this message translates to:
  /// **'I agree to the transmission of anonymised data about the use of the app to EHW+ Services GmbH.'**
  String get googleAnalyticsAgreement;

  /// No description provided for @googleApiAgreement.
  ///
  /// In en, this message translates to:
  /// **'{appNameShort}’s use and transfer to any other app of information received from Google APIs will adhere to the Google API Services User Data Policy, including the Limited Use requirements.'**
  String googleApiAgreement(String appNameShort);

  /// No description provided for @gross.
  ///
  /// In en, this message translates to:
  /// **'gross'**
  String get gross;

  /// No description provided for @grossNetPrices.
  ///
  /// In en, this message translates to:
  /// **'Gross or net price'**
  String get grossNetPrices;

  /// No description provided for @heatPump.
  ///
  /// In en, this message translates to:
  /// **'Heat pump'**
  String get heatPump;

  /// No description provided for @heater.
  ///
  /// In en, this message translates to:
  /// **'Radiator'**
  String get heater;

  /// No description provided for @heatmapLegendDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Info: Shaded boxes contain an estimated value. To read the actual consumption/output, please fill in the missing meter readings if possible.'**
  String get heatmapLegendDisclaimer;

  /// No description provided for @heatmapLegendTitle.
  ///
  /// In en, this message translates to:
  /// **'More about the heatmap'**
  String get heatmapLegendTitle;

  /// No description provided for @houseName.
  ///
  /// In en, this message translates to:
  /// **'House name'**
  String get houseName;

  /// No description provided for @houseNameDescription.
  ///
  /// In en, this message translates to:
  /// **'House name, e.g. street name'**
  String get houseNameDescription;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @importConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm import'**
  String get importConfirm;

  /// No description provided for @importCounterAsCsv.
  ///
  /// In en, this message translates to:
  /// **'Do you want to import a single meter? Supported per meter is a CSV file with two columns, one for the time and one for the meter reading.\n\nExample data:\n2020-04-01T22:59:00,6790.855\n\"2020-04-01T23:59\";6795.421\n2020-04-01 22:22,6803.435\n20120401 13:27:00,6807.467\n2012-04-01,13:27:00,6807.467\n\"2020-04-01 23:02:00\",6812,036'**
  String get importCounterAsCsv;

  /// No description provided for @importErrorCsvIgnoredColumns.
  ///
  /// In en, this message translates to:
  /// **'{columns, plural, one {Only the first two columns were used. The third column was ignored.} other {Only the first two columns were used, {columns} columns were ignored.}}'**
  String importErrorCsvIgnoredColumns(int columns);

  /// No description provided for @importErrorCsvIgnoredLines.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {One line was ignored: {lines}} other {{count} lines were ignored: {lines}}}'**
  String importErrorCsvIgnoredLines(int count, String lines);

  /// No description provided for @importExplanation.
  ///
  /// In en, this message translates to:
  /// **'You already made counter readings and want to insert them?'**
  String get importExplanation;

  /// No description provided for @importExport.
  ///
  /// In en, this message translates to:
  /// **'Backup/Restore'**
  String get importExport;

  /// No description provided for @importNewOrExistingCounter.
  ///
  /// In en, this message translates to:
  /// **'Add to new or existing counter?'**
  String get importNewOrExistingCounter;

  /// No description provided for @importNotPossible.
  ///
  /// In en, this message translates to:
  /// **'Import not possible'**
  String get importNotPossible;

  /// No description provided for @importPickFile.
  ///
  /// In en, this message translates to:
  /// **'Select file'**
  String get importPickFile;

  /// No description provided for @importSelectJson.
  ///
  /// In en, this message translates to:
  /// **'JSON file (created with {appName})'**
  String importSelectJson(String appName);

  /// No description provided for @importSelectSingleCounter.
  ///
  /// In en, this message translates to:
  /// **'Single counter (CSV file)'**
  String get importSelectSingleCounter;

  /// No description provided for @importSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Import successful'**
  String get importSuccessful;

  /// No description provided for @importTabErrorMessageFileWithExtensionNotSelected.
  ///
  /// In en, this message translates to:
  /// **'A {extension} file is required to proceed with import.'**
  String importTabErrorMessageFileWithExtensionNotSelected(Object extension);

  /// No description provided for @importTheObject.
  ///
  /// In en, this message translates to:
  /// **'Import object'**
  String get importTheObject;

  /// No description provided for @importWhichCounterForCsv.
  ///
  /// In en, this message translates to:
  /// **'Which counter should be used?'**
  String get importWhichCounterForCsv;

  /// No description provided for @imprintTitle.
  ///
  /// In en, this message translates to:
  /// **'Imprint'**
  String get imprintTitle;

  /// No description provided for @initialReading.
  ///
  /// In en, this message translates to:
  /// **'Initial reading'**
  String get initialReading;

  /// No description provided for @involvedCounters.
  ///
  /// In en, this message translates to:
  /// **'Counters involved'**
  String get involvedCounters;

  /// No description provided for @isLastEntryAtFilteredList.
  ///
  /// In en, this message translates to:
  /// **'Oldest value in filtered list'**
  String get isLastEntryAtFilteredList;

  /// No description provided for @isOutdatedCounter.
  ///
  /// In en, this message translates to:
  /// **'Counter is no longer used'**
  String get isOutdatedCounter;

  /// No description provided for @last12Months.
  ///
  /// In en, this message translates to:
  /// **'Last 12 months'**
  String get last12Months;

  /// No description provided for @last12Weeks.
  ///
  /// In en, this message translates to:
  /// **'Last 12 weeks'**
  String get last12Weeks;

  /// No description provided for @last2Weeks.
  ///
  /// In en, this message translates to:
  /// **'Last 14 days'**
  String get last2Weeks;

  /// No description provided for @lastReading.
  ///
  /// In en, this message translates to:
  /// **'last reading'**
  String get lastReading;

  /// No description provided for @lastYear.
  ///
  /// In en, this message translates to:
  /// **'Last year'**
  String get lastYear;

  /// No description provided for @lineChartAppearanceSettings.
  ///
  /// In en, this message translates to:
  /// **'Line charts appearance'**
  String get lineChartAppearanceSettings;

  /// No description provided for @lineChartAppearanceSettingsShowSpots.
  ///
  /// In en, this message translates to:
  /// **'Show (circular) spots on the lines of charts'**
  String get lineChartAppearanceSettingsShowSpots;

  /// No description provided for @localWriteSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Should the objects and photos be saved in the local \"{folder}\" folder with each change?'**
  String localWriteSubtitle(Object folder);

  /// No description provided for @localWriteTitle.
  ///
  /// In en, this message translates to:
  /// **'Save in the local download folder'**
  String get localWriteTitle;

  /// No description provided for @manageMoreThanOneObjectStep1.
  ///
  /// In en, this message translates to:
  /// **'Manage more than one object - Step 1'**
  String get manageMoreThanOneObjectStep1;

  /// No description provided for @manageMoreThanOneObjectStep2.
  ///
  /// In en, this message translates to:
  /// **'Manage more than one object - Step 2'**
  String get manageMoreThanOneObjectStep2;

  /// No description provided for @marketLocationId.
  ///
  /// In en, this message translates to:
  /// **'Market location ID'**
  String get marketLocationId;

  /// No description provided for @marketLocationIdDescription.
  ///
  /// In en, this message translates to:
  /// **'The market location ID always consists of 11 digits. You can usually find this on your last electricity or gas bill.'**
  String get marketLocationIdDescription;

  /// No description provided for @messageNoConsumptions.
  ///
  /// In en, this message translates to:
  /// **'Statistics for all meters of a type appear here if enough readings have been taken. For example, two cold water meters, two hot water meters and one water extraction meter are shown in one water statistic.'**
  String get messageNoConsumptions;

  /// No description provided for @messageNoContracts.
  ///
  /// In en, this message translates to:
  /// **'No contracts yet.'**
  String get messageNoContracts;

  /// No description provided for @messageNoCounterReadings.
  ///
  /// In en, this message translates to:
  /// **'You have not yet entered a counter reading.'**
  String get messageNoCounterReadings;

  /// No description provided for @messageNoCounters.
  ///
  /// In en, this message translates to:
  /// **'You have not yet created a counter.'**
  String get messageNoCounters;

  /// No description provided for @messageNoRooms.
  ///
  /// In en, this message translates to:
  /// **'No rooms yet. Rooms help group meters.'**
  String get messageNoRooms;

  /// No description provided for @messageNotEnoughData.
  ///
  /// In en, this message translates to:
  /// **'Not enough data to display the chart'**
  String get messageNotEnoughData;

  /// No description provided for @meterCardLastUpdatedLabel.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get meterCardLastUpdatedLabel;

  /// No description provided for @meterId.
  ///
  /// In en, this message translates to:
  /// **'Counter id'**
  String get meterId;

  /// No description provided for @meterReadingSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Transmitted to provider'**
  String get meterReadingSubmitted;

  /// No description provided for @meterReadingsFilterAll.
  ///
  /// In en, this message translates to:
  /// **'Show all'**
  String get meterReadingsFilterAll;

  /// No description provided for @meterReadingsFilterComments.
  ///
  /// In en, this message translates to:
  /// **'Show only entries with comments'**
  String get meterReadingsFilterComments;

  /// No description provided for @meterReadingsFilterSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Show only \"{state}\"'**
  String meterReadingsFilterSubmitted(String state);

  /// No description provided for @myObjects.
  ///
  /// In en, this message translates to:
  /// **'My objects'**
  String get myObjects;

  /// No description provided for @net.
  ///
  /// In en, this message translates to:
  /// **'net'**
  String get net;

  /// No description provided for @networkCounter.
  ///
  /// In en, this message translates to:
  /// **'Internet & phone'**
  String get networkCounter;

  /// No description provided for @newCounter.
  ///
  /// In en, this message translates to:
  /// **'Create a new counter'**
  String get newCounter;

  /// No description provided for @newPhoto.
  ///
  /// In en, this message translates to:
  /// **'Take a new photo'**
  String get newPhoto;

  /// No description provided for @newPhotoOfMeterReading.
  ///
  /// In en, this message translates to:
  /// **'Would you like to take a photo of the meter reading?'**
  String get newPhotoOfMeterReading;

  /// No description provided for @newReading.
  ///
  /// In en, this message translates to:
  /// **'Enter the current reading'**
  String get newReading;

  /// No description provided for @newReadingShort.
  ///
  /// In en, this message translates to:
  /// **'New reading'**
  String get newReadingShort;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @notificationsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No notifications'**
  String get notificationsEmpty;

  /// No description provided for @notificationsSmartMeterAlertFallback.
  ///
  /// In en, this message translates to:
  /// **'You have a new smart meter alert.'**
  String get notificationsSmartMeterAlertFallback;

  /// No description provided for @numCounters.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0 {{count} counter} one {{count} counter} other {{count} counters}}'**
  String numCounters(int count);

  /// No description provided for @numMeterReadings.
  ///
  /// In en, this message translates to:
  /// **'{readings, plural, one {# reading} other {# readings}}'**
  String numMeterReadings(int readings);

  /// No description provided for @numberOfDetails.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {1 detail} other {{count} details}}'**
  String numberOfDetails(int count);

  /// No description provided for @ofRangeFrom.
  ///
  /// In en, this message translates to:
  /// **'from {range}'**
  String ofRangeFrom(String range);

  /// No description provided for @ofRangeLastDays.
  ///
  /// In en, this message translates to:
  /// **'of the last {days} days'**
  String ofRangeLastDays(int days);

  /// No description provided for @ofRangeLastMonths.
  ///
  /// In en, this message translates to:
  /// **'for the last {months} months'**
  String ofRangeLastMonths(int months);

  /// No description provided for @oil.
  ///
  /// In en, this message translates to:
  /// **'Oil'**
  String get oil;

  /// No description provided for @outdated.
  ///
  /// In en, this message translates to:
  /// **'Outdated'**
  String get outdated;

  /// No description provided for @outdatedContracts.
  ///
  /// In en, this message translates to:
  /// **'Outdated contracts'**
  String get outdatedContracts;

  /// No description provided for @outdatedCounters.
  ///
  /// In en, this message translates to:
  /// **'Counters no longer in use'**
  String get outdatedCounters;

  /// No description provided for @paidAdvancePayments.
  ///
  /// In en, this message translates to:
  /// **'Advance payments'**
  String get paidAdvancePayments;

  /// No description provided for @parsingObjectError.
  ///
  /// In en, this message translates to:
  /// **'The object cannot be parsed. Please contact the developer. When uninstalling the app, the data may be lost.'**
  String get parsingObjectError;

  /// No description provided for @per.
  ///
  /// In en, this message translates to:
  /// **'per'**
  String get per;

  /// No description provided for @perUnit.
  ///
  /// In en, this message translates to:
  /// **'per {unit}'**
  String perUnit(String unit);

  /// No description provided for @period.
  ///
  /// In en, this message translates to:
  /// **'Period'**
  String get period;

  /// No description provided for @periodBimonthly.
  ///
  /// In en, this message translates to:
  /// **'bi-monthly'**
  String get periodBimonthly;

  /// No description provided for @periodBiweekly.
  ///
  /// In en, this message translates to:
  /// **'bi-weekly'**
  String get periodBiweekly;

  /// No description provided for @periodCustom.
  ///
  /// In en, this message translates to:
  /// **'User defined'**
  String get periodCustom;

  /// No description provided for @periodDaily.
  ///
  /// In en, this message translates to:
  /// **'daily'**
  String get periodDaily;

  /// No description provided for @periodHalfYearly.
  ///
  /// In en, this message translates to:
  /// **'half-yearly'**
  String get periodHalfYearly;

  /// No description provided for @periodHourly.
  ///
  /// In en, this message translates to:
  /// **'hourly'**
  String get periodHourly;

  /// No description provided for @periodMonthly.
  ///
  /// In en, this message translates to:
  /// **'monthly'**
  String get periodMonthly;

  /// No description provided for @periodQuarterly.
  ///
  /// In en, this message translates to:
  /// **'quarterly'**
  String get periodQuarterly;

  /// No description provided for @periodWeekly.
  ///
  /// In en, this message translates to:
  /// **'weekly'**
  String get periodWeekly;

  /// No description provided for @periodYearly.
  ///
  /// In en, this message translates to:
  /// **'yearly'**
  String get periodYearly;

  /// No description provided for @previouslyDeletedCounters.
  ///
  /// In en, this message translates to:
  /// **'Recently deleted meters'**
  String get previouslyDeletedCounters;

  /// No description provided for @priceComparisonDiff.
  ///
  /// In en, this message translates to:
  /// **'You pay {diffWithCurrency} {comparison, select, more {more than} less {less than} other {more than}} the average in {countryName}.'**
  String priceComparisonDiff(
    String comparison,
    String countryName,
    String diffWithCurrency,
  );

  /// No description provided for @priceComparisonEqual.
  ///
  /// In en, this message translates to:
  /// **'You pay about as much as the average in {countryName}.'**
  String priceComparisonEqual(String countryName);

  /// No description provided for @priceComparisonNotEnoughData.
  ///
  /// In en, this message translates to:
  /// **'Not yet enough comparative data for the site {countryName} ({countryCode}).'**
  String priceComparisonNotEnoughData(String countryCode, String countryName);

  /// No description provided for @pricePerUnit.
  ///
  /// In en, this message translates to:
  /// **'Price per unit'**
  String get pricePerUnit;

  /// No description provided for @pricePerUnitFeedIn.
  ///
  /// In en, this message translates to:
  /// **'Remuneration price'**
  String get pricePerUnitFeedIn;

  /// No description provided for @pricePerUnitFreshWater.
  ///
  /// In en, this message translates to:
  /// **'Costs for fresh water'**
  String get pricePerUnitFreshWater;

  /// No description provided for @pricePerUnitWasteWater.
  ///
  /// In en, this message translates to:
  /// **'Waste water price'**
  String get pricePerUnitWasteWater;

  /// No description provided for @pricePerUnitWaterCold.
  ///
  /// In en, this message translates to:
  /// **'Cost of cold water'**
  String get pricePerUnitWaterCold;

  /// No description provided for @pricePerUnitWaterWarm.
  ///
  /// In en, this message translates to:
  /// **'Hot water heating costs'**
  String get pricePerUnitWaterWarm;

  /// No description provided for @priceSubmissionAgreement.
  ///
  /// In en, this message translates to:
  /// **'I agree with the transmission of electricity/gas/water prices per unit to an EHW+ server'**
  String get priceSubmissionAgreement;

  /// No description provided for @privacyBlock1Text.
  ///
  /// In en, this message translates to:
  /// **'The developer/provider of the application (hereinafter referred to as “app”) is, in accordance with Section 5 of the German Telemedia Act (TMG):\n\n{contact}'**
  String privacyBlock1Text(String contact);

  /// No description provided for @privacyBlock1Text2.
  ///
  /// In en, this message translates to:
  /// **'Use of the app requires that you agree to the following terms of use. Please read them carefully.'**
  String get privacyBlock1Text2;

  /// No description provided for @privacyBlock1Title.
  ///
  /// In en, this message translates to:
  /// **'Developer'**
  String get privacyBlock1Title;

  /// No description provided for @privacyBlock2Text.
  ///
  /// In en, this message translates to:
  /// **'The protection of your data is very important to us. This privacy policy explains what personal data EHW+ collects and how it is used. Fundamental changes to the privacy policy are rare, but it may be revised from time to time due to new features, technologies, or legal requirements. So please check this page from time to time to stay up to date. If we make any significant changes, we will notify you and, if necessary, obtain your consent.'**
  String get privacyBlock2Text;

  /// No description provided for @privacyBlock2Title.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get privacyBlock2Title;

  /// No description provided for @privacyBlock3Title.
  ///
  /// In en, this message translates to:
  /// **'What data does {appNameShort} collect?'**
  String privacyBlock3Title(String appNameShort);

  /// No description provided for @privacyBlock3aText.
  ///
  /// In en, this message translates to:
  /// **'We created {appNameShort} so that you can quickly and easily enter your meter readings and then use statistics to find out more about your consumption, its costs and potential savings. This means that you can enter, calculate or save any data, which we generally refer to as ‘content’, in {appNameShort}. This data is only stored on your mobile phone.\n\nSync with Google Drive.\nIf you enable synchronisation with Google Drive, the content will also be automatically backed up in a folder called ‘{appNameShort}’ on your Google Drive, which only you can access. By logging in with Google, your email address will be visible to the developer.'**
  String privacyBlock3aText(String appNameShort);

  /// No description provided for @privacyBlock3bText.
  ///
  /// In en, this message translates to:
  /// **'{googleApiAgreement}\n\nLocation data.\nIn order to understand user behaviour and for future features, the app transmits anonymised usage data. The data is not shared with third parties. Information may be collected about origin (country and city), language, operating system, device type, resolution, click behaviour, and duration of use. n\nDevice data.\nWe collect data about the number and type of devices you use to connect to the service, as well as information about the operating system on those devices (e.g. Android, iOS, Windows or macOS).\n\nBy using the app, you consent to the collection of anonymised data as described above.'**
  String privacyBlock3bText(String googleApiAgreement);

  /// No description provided for @privacyBlock4DataUsage.
  ///
  /// In en, this message translates to:
  /// **'\nCollected anonymised data is used to evaluate user behaviour. Beyond this, there is no further use of data.\n\n{syncDriveDataUsage}'**
  String privacyBlock4DataUsage(String syncDriveDataUsage);

  /// No description provided for @privacyBlock4DataUsageTitle.
  ///
  /// In en, this message translates to:
  /// **'How does {appNameShort} use my data?'**
  String privacyBlock4DataUsageTitle(Object appNameShort);

  /// No description provided for @privacyBlock5.
  ///
  /// In en, this message translates to:
  /// **'The duration of the storage of personal data is determined by the respective statutory retention period (e.g. commercial and tax law retention periods). After expiry of the period, the corresponding data is routinely deleted, provided that it is no longer required for the fulfilment or initiation of a contract and/or we no longer have a legitimate interest in its continued storage.'**
  String get privacyBlock5;

  /// No description provided for @privacyBlock5Title.
  ///
  /// In en, this message translates to:
  /// **'Duration of storage of personal data'**
  String get privacyBlock5Title;

  /// No description provided for @privacyBlock6.
  ///
  /// In en, this message translates to:
  /// **'When you contact us (e.g. via contact form or email), personal data is collected. The data collected in the case of a contact form can be seen on the respective contact form. This data is stored and used exclusively for the purpose of responding to your enquiry or for establishing contact and the associated technical administration. The legal basis for the processing of the data is our legitimate interest in responding to your request in accordance with Art. 6 para. 1 lit. f GDPR. If your contact is aimed at concluding a contract, the additional legal basis for processing is Art. 6 para. 1 lit. b GDPR. Your data will be deleted after your enquiry has been processed, which is the case if it can be inferred from the circumstances that the matter in question has been finally clarified and provided that there are no legal obligations to retain data.'**
  String get privacyBlock6;

  /// No description provided for @privacyBlock6Title.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get privacyBlock6Title;

  /// No description provided for @privacyBlock7.
  ///
  /// In en, this message translates to:
  /// **'The applicable data protection law grants you comprehensive rights as a data subject (rights of information and intervention) vis-à-vis the controller with regard to the processing of your personal data, which we will inform you about below:\n\n- Right to information pursuant to Art. 15 GDPR: In particular, you have the right to obtain information about your personal data processed by us, the purposes of processing, the categories of personal data processed, the recipients or categories of recipients to whom your data has been or will be disclosed, the planned storage period or the criteria for determining the storage period, the existence of a right to rectification, erasure, restriction of processing, objection to processing, complaint to a supervisory authority, the origin of your data if it was not collected by us from you, the existence of automated decision-making, including profiling, and, where applicable, meaningful information about the logic involved and the significance and envisaged consequences of such processing for you, as well as your right to be informed of the guarantees that exist in accordance with Art. 46 GDPR when your data is transferred to third countries;\n\n- Right to rectification pursuant to Art. 16 GDPR: You have the right to have inaccurate data concerning you rectified without delay and/or to have incomplete data stored by us completed.\n\n- Right to erasure pursuant to Art. 17 GDPR: You have the right to request the erasure of your personal data if the conditions of Art. 17(1) GDPR are met. However, this right does not apply in particular if the processing is necessary for exercising the right of freedom of expression and information, for compliance with a legal obligation, for reasons of public interest or for the establishment, exercise or defence of legal claims.\n\n- Right to restriction of processing pursuant to Art. 18 GDPR: You have the right to request the restriction of the processing of your personal data for as long as the accuracy of your data is being verified if you have objected to the erasure of your data on the grounds of inadmissible data processing and instead request the restriction of the processing of your data if you need your data for the assertion, exercise or defence of legal claims after we no longer need this data to fulfil the purpose for which it was collected, or if you have lodged an objection on grounds relating to your particular situation, as long as it is not yet clear whether our legitimate reasons prevail;\n\n- Right to be informed pursuant to Art. 19 GDPR: If you have exercised your right to rectification, erasure or restriction of processing vis-à-vis the controller, the controller is obliged to notify all recipients to whom your personal data has been disclosed of this rectification or erasure of the data or restriction of processing, unless this proves impossible or involves disproportionate effort. You have the right to be informed about these recipients.\n\n- Right to data portability pursuant to Art. 20 GDPR: You have the right to receive your personal data that you have provided to us in a structured, commonly used and machine-readable format or to request its transfer to another controller, where technically feasible.\n\n- Right to withdraw consent granted in accordance with Art. 7(3) GDPR: You have the right to withdraw your consent to the processing of data at any time with effect for the future. In the event of withdrawal, we will delete the data concerned without delay, unless further processing can be based on a legal basis for processing without consent. The withdrawal of consent does not affect the lawfulness of processing based on consent before its withdrawal.\n\n- Right to lodge a complaint pursuant to Art. 77 GDPR: If you believe that the processing of your personal data violates the GDPR, you have the right to lodge a complaint with a supervisory authority, in particular in the Member State of your residence, your place of work or the place of the alleged infringement, without prejudice to any other administrative or judicial remedy.'**
  String get privacyBlock7;

  /// No description provided for @privacyBlock7Title.
  ///
  /// In en, this message translates to:
  /// **'Rights of the person concerned'**
  String get privacyBlock7Title;

  /// No description provided for @privacyBlock8.
  ///
  /// In en, this message translates to:
  /// **'IF WE PROCESS YOUR PERSONAL DATA ON THE BASIS OF OUR OVERRIDING LEGITIMATE INTEREST AS PART OF A BALANCING OF INTERESTS, YOU HAVE THE RIGHT TO OBJECT TO THIS PROCESSING AT ANY TIME FOR REASONS ARISING FROM YOUR PARTICULAR SITUATION, WITH EFFECT FOR THE FUTURE. IF YOU EXERCISE YOUR RIGHT TO OBJECT, WE WILL STOP PROCESSING THE DATA CONCERNED. HOWEVER, FURTHER PROCESSING REMAINS RESERVED IF WE CAN PROVE COMPELLING LEGITIMATE GROUNDS FOR THE PROCESSING WHICH OVERRIDE YOUR INTERESTS, fundamental rights and freedoms, or if the processing serves to assert, exercise or defend legal claims.\n\nIF WE PROCESS YOUR PERSONAL DATA FOR DIRECT MARKETING PURPOSES, YOU HAVE THE RIGHT TO OBJECT AT ANY TIME TO THE PROCESSING OF PERSONAL DATA CONCERNING YOU FOR THE PURPOSE OF SUCH ADVERTISING. YOU CAN EXERCISE YOUR RIGHT TO OBJECT AS DESCRIBED ABOVE.\n\nIF YOU EXERCISE YOUR RIGHT TO OBJECT, WE WILL STOP PROCESSING THE DATA CONCERNING YOU FOR DIRECT MARKETING PURPOSES.'**
  String get privacyBlock8;

  /// No description provided for @privacyBlock8Title.
  ///
  /// In en, this message translates to:
  /// **'Right of objection'**
  String get privacyBlock8Title;

  /// No description provided for @privacyContractPriceSubmission.
  ///
  /// In en, this message translates to:
  /// **'When you, as a user, maintain your contract data, the price per unit for electricity, water and gas contracts is transmitted to an EHW+ server in Germany together with the country and federal state. This data is used to calculate price statistics. For app users, the statistics are visible in the form of a price comparison in the contract view.\n\nBy using the app, you consent to the aforementioned collection of anonymised data.'**
  String get privacyContractPriceSubmission;

  /// No description provided for @privacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get privacyTitle;

  /// No description provided for @purchasesBuyNow.
  ///
  /// In en, this message translates to:
  /// **'Buy now'**
  String get purchasesBuyNow;

  /// No description provided for @purchasesDisabledOnIOS.
  ///
  /// In en, this message translates to:
  /// **'In-app purchases disabled'**
  String get purchasesDisabledOnIOS;

  /// No description provided for @purchasesDisabledOnIOSDescription.
  ///
  /// In en, this message translates to:
  /// **'Please check if in-app purchases are disabled on your iPhone (Settings > Screen Time > Restrictions > App Installations & Purchases > Allow In-App Purchases)'**
  String get purchasesDisabledOnIOSDescription;

  /// No description provided for @purchasesDisabledOnIOSDescriptionTestflight.
  ///
  /// In en, this message translates to:
  /// **'The app was installed via Testflight. Please note that purchases only work in the app if you install the app via the App Store.'**
  String get purchasesDisabledOnIOSDescriptionTestflight;

  /// No description provided for @purchasesEarlyBirdSubscription.
  ///
  /// In en, this message translates to:
  /// **'Note: If this first-time customer subscription is canceled, it cannot be subscribed to again afterwards.'**
  String get purchasesEarlyBirdSubscription;

  /// No description provided for @purchasesExtensionMultipleObjectsDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter the meter readings for as many apartments/houses/objects as you like (instead of just for one object)'**
  String get purchasesExtensionMultipleObjectsDescription;

  /// No description provided for @purchasesExtensionMultipleObjectsTitlePart.
  ///
  /// In en, this message translates to:
  /// **'Managing multiple objects'**
  String get purchasesExtensionMultipleObjectsTitlePart;

  /// No description provided for @purchasesExtensionStatisticsDescription.
  ///
  /// In en, this message translates to:
  /// **'Access to yearly/monthly/weekly consumption of electricity/gas/water/... + period adjustments + detailed cost overview + Excel export'**
  String get purchasesExtensionStatisticsDescription;

  /// No description provided for @purchasesExtensionStatisticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Advanced statistics'**
  String get purchasesExtensionStatisticsTitle;

  /// No description provided for @purchasesExtensionsInWork.
  ///
  /// In en, this message translates to:
  /// **'Further extensions are planned. Take part in the feature survey to have your say.'**
  String get purchasesExtensionsInWork;

  /// No description provided for @purchasesExtensionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Buy once, use permanently (no subscription)'**
  String get purchasesExtensionsSubtitle;

  /// No description provided for @purchasesExtensionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Single extensions'**
  String get purchasesExtensionsTitle;

  /// No description provided for @purchasesIOSRestorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get purchasesIOSRestorePurchases;

  /// No description provided for @purchasesIOSRestorePurchasesDescription.
  ///
  /// In en, this message translates to:
  /// **'If you have already purchased something in the AppStore in the past, you can restore the purchases.'**
  String get purchasesIOSRestorePurchasesDescription;

  /// No description provided for @purchasesPurchased.
  ///
  /// In en, this message translates to:
  /// **'Purchased'**
  String get purchasesPurchased;

  /// No description provided for @purchasesPurchasedIncludedInPremium.
  ///
  /// In en, this message translates to:
  /// **'Included in Premium'**
  String get purchasesPurchasedIncludedInPremium;

  /// No description provided for @purchasesPurchasedSubscribed.
  ///
  /// In en, this message translates to:
  /// **'Subscribed'**
  String get purchasesPurchasedSubscribed;

  /// No description provided for @purchasesRedeemCode.
  ///
  /// In en, this message translates to:
  /// **'Redeem code'**
  String get purchasesRedeemCode;

  /// No description provided for @purchasesStatisticsWithPremium.
  ///
  /// In en, this message translates to:
  /// **'With Premium, you get access to a monthly comparison{count, plural, =0{.}=1{.}other{ and also see historical data for {years}.}}'**
  String purchasesStatisticsWithPremium(int count, String years);

  /// No description provided for @purchasesSubscribeNow.
  ///
  /// In en, this message translates to:
  /// **'Subscribe now'**
  String get purchasesSubscribeNow;

  /// No description provided for @purchasesSubscribePremium.
  ///
  /// In en, this message translates to:
  /// **'Subscribe Premium'**
  String get purchasesSubscribePremium;

  /// No description provided for @purchasesSubscribePremiumMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly cancelable subscription for only {price} per month'**
  String purchasesSubscribePremiumMonthly(String price);

  /// No description provided for @purchasesSubscribePremiumMonthlyWithNewPrice.
  ///
  /// In en, this message translates to:
  /// **'Monthly cancelable subscription at the loyalty price of {price} per month instead of {priceNew}'**
  String purchasesSubscribePremiumMonthlyWithNewPrice(
    String price,
    String priceNew,
  );

  /// No description provided for @purchasesSubscribePremiumTextLong.
  ///
  /// In en, this message translates to:
  /// **'Access to all paid features during the subscription period + outdoor temperatures'**
  String get purchasesSubscribePremiumTextLong;

  /// No description provided for @purchasesSubscribePremiumYearly.
  ///
  /// In en, this message translates to:
  /// **'Annually cancelable subscription for only {price} per year'**
  String purchasesSubscribePremiumYearly(String price);

  /// No description provided for @purchasesSubscribePremiumYearlyWithNewPrice.
  ///
  /// In en, this message translates to:
  /// **'Yearly cancelable subscription at the loyalty price of {price} per year instead of {priceNew}'**
  String purchasesSubscribePremiumYearlyWithNewPrice(
    String price,
    String priceNew,
  );

  /// No description provided for @purchasesUpgrade.
  ///
  /// In en, this message translates to:
  /// **'Upgrade'**
  String get purchasesUpgrade;

  /// No description provided for @purchasesWebLegalNote.
  ///
  /// In en, this message translates to:
  /// **'For legal reasons, a purchase is only possible for an iPhone or Android phone with PlayStore services.'**
  String get purchasesWebLegalNote;

  /// No description provided for @purchasesWhyBuyText.
  ///
  /// In en, this message translates to:
  /// **'With a purchase you participate in the costs I incur by publishing the app and support the further development.'**
  String get purchasesWhyBuyText;

  /// No description provided for @purchasesWhyBuyTitle.
  ///
  /// In en, this message translates to:
  /// **'Why should I buy something?'**
  String get purchasesWhyBuyTitle;

  /// No description provided for @purchasesYourPurchases.
  ///
  /// In en, this message translates to:
  /// **'You have access to the following premium packages:'**
  String get purchasesYourPurchases;

  /// No description provided for @reading.
  ///
  /// In en, this message translates to:
  /// **'Counter reading'**
  String get reading;

  /// No description provided for @readingDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete reading?'**
  String get readingDeleteConfirm;

  /// No description provided for @readingNew.
  ///
  /// In en, this message translates to:
  /// **'New reading'**
  String get readingNew;

  /// No description provided for @readingPrefill.
  ///
  /// In en, this message translates to:
  /// **'Auto-fill meter reading'**
  String get readingPrefill;

  /// No description provided for @readingPrefillDescription.
  ///
  /// In en, this message translates to:
  /// **'Pre-fill meter readings based on previous entries'**
  String get readingPrefillDescription;

  /// No description provided for @readingPrefillDisableForAllCounters.
  ///
  /// In en, this message translates to:
  /// **'Disable auto-fill for all counters'**
  String get readingPrefillDisableForAllCounters;

  /// No description provided for @readingPrefillDisabled.
  ///
  /// In en, this message translates to:
  /// **'Auto-fill disabled'**
  String get readingPrefillDisabled;

  /// No description provided for @readingPrefillDisabledToast.
  ///
  /// In en, this message translates to:
  /// **'Auto-fill disabled'**
  String get readingPrefillDisabledToast;

  /// No description provided for @readingPrefillEnableForAllCounters.
  ///
  /// In en, this message translates to:
  /// **'Enable auto-fill for all counters'**
  String get readingPrefillEnableForAllCounters;

  /// No description provided for @readingReminder.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Reading reminder} other {Reading reminders}}'**
  String readingReminder(int count);

  /// No description provided for @readingReminderDisabled.
  ///
  /// In en, this message translates to:
  /// **'Reading reminder not active'**
  String get readingReminderDisabled;

  /// No description provided for @readingReminderMultiBody.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Read readings from {count} meter now} other {Read readings from {count} meters now}}'**
  String readingReminderMultiBody(int count);

  /// No description provided for @readingReminderSingleBody.
  ///
  /// In en, this message translates to:
  /// **'Read {counterName} value now'**
  String readingReminderSingleBody(String counterName);

  /// No description provided for @readingReminders.
  ///
  /// In en, this message translates to:
  /// **'Reading reminders'**
  String get readingReminders;

  /// No description provided for @readingRemindersChannel.
  ///
  /// In en, this message translates to:
  /// **'Reading reminders'**
  String get readingRemindersChannel;

  /// No description provided for @readingSubmitted.
  ///
  /// In en, this message translates to:
  /// **'Meter reading submitted'**
  String get readingSubmitted;

  /// No description provided for @readingTime.
  ///
  /// In en, this message translates to:
  /// **'Reading time'**
  String get readingTime;

  /// No description provided for @readingUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update reading'**
  String get readingUpdate;

  /// No description provided for @readingWithFactor.
  ///
  /// In en, this message translates to:
  /// **'Counter reading with factor'**
  String get readingWithFactor;

  /// No description provided for @reallyDeleteActivity.
  ///
  /// In en, this message translates to:
  /// **'Really delete this activity?'**
  String get reallyDeleteActivity;

  /// No description provided for @reallyDeleteContract.
  ///
  /// In en, this message translates to:
  /// **'Really delete this contract?'**
  String get reallyDeleteContract;

  /// No description provided for @reallyDeleteCounter.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the counter?'**
  String get reallyDeleteCounter;

  /// No description provided for @reallyDeleteCounterLink.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the link between the counters?'**
  String get reallyDeleteCounterLink;

  /// No description provided for @reallyDeleteDetail.
  ///
  /// In en, this message translates to:
  /// **'Really delete this detail?'**
  String get reallyDeleteDetail;

  /// No description provided for @reallyDeleteObject.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the object?'**
  String get reallyDeleteObject;

  /// No description provided for @reallyDeletePhoto.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the meter reading photo?'**
  String get reallyDeletePhoto;

  /// No description provided for @reallyDeleteValue.
  ///
  /// In en, this message translates to:
  /// **'Do you really want to delete this value?'**
  String get reallyDeleteValue;

  /// No description provided for @refund.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get refund;

  /// No description provided for @reminderTime.
  ///
  /// In en, this message translates to:
  /// **'Reminder time'**
  String get reminderTime;

  /// No description provided for @reminderWeekdayExplanation.
  ///
  /// In en, this message translates to:
  /// **'There is a reminder to take a reading no more than once a day.'**
  String get reminderWeekdayExplanation;

  /// No description provided for @reminderWeekdayExplanationSeasonal.
  ///
  /// In en, this message translates to:
  /// **'For meters with seasonal consumption, reminders are only sent in months with consumption (works only if values of the last year are given).'**
  String get reminderWeekdayExplanationSeasonal;

  /// No description provided for @requestAccess.
  ///
  /// In en, this message translates to:
  /// **'Request access'**
  String get requestAccess;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @resetActivities.
  ///
  /// In en, this message translates to:
  /// **'Reset all activities'**
  String get resetActivities;

  /// No description provided for @residualConsumptionEstimated.
  ///
  /// In en, this message translates to:
  /// **'Residual consumption estimated'**
  String get residualConsumptionEstimated;

  /// No description provided for @residualGenerationEstimated.
  ///
  /// In en, this message translates to:
  /// **'Residual generation estimated'**
  String get residualGenerationEstimated;

  /// No description provided for @restoreDeletedCounter.
  ///
  /// In en, this message translates to:
  /// **'Would you like to restore this deleted meter?'**
  String get restoreDeletedCounter;

  /// No description provided for @room.
  ///
  /// In en, this message translates to:
  /// **'Room'**
  String get room;

  /// No description provided for @roomBathroom.
  ///
  /// In en, this message translates to:
  /// **'Bathroom'**
  String get roomBathroom;

  /// No description provided for @roomBedroom.
  ///
  /// In en, this message translates to:
  /// **'Bedroom'**
  String get roomBedroom;

  /// No description provided for @roomChildrenRoom.
  ///
  /// In en, this message translates to:
  /// **'Children\'s room'**
  String get roomChildrenRoom;

  /// No description provided for @roomDeleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Delete room?'**
  String get roomDeleteConfirm;

  /// No description provided for @roomDiningRoom.
  ///
  /// In en, this message translates to:
  /// **'Dining room'**
  String get roomDiningRoom;

  /// No description provided for @roomGarden.
  ///
  /// In en, this message translates to:
  /// **'Garden'**
  String get roomGarden;

  /// No description provided for @roomKitchen.
  ///
  /// In en, this message translates to:
  /// **'Kitchen'**
  String get roomKitchen;

  /// No description provided for @roomLivingRoom.
  ///
  /// In en, this message translates to:
  /// **'Living Room'**
  String get roomLivingRoom;

  /// No description provided for @roomName.
  ///
  /// In en, this message translates to:
  /// **'Room name'**
  String get roomName;

  /// No description provided for @roomNameHint.
  ///
  /// In en, this message translates to:
  /// **'Optionally assign a room name'**
  String get roomNameHint;

  /// No description provided for @roomNamePart.
  ///
  /// In en, this message translates to:
  /// **'in the {roomName} '**
  String roomNamePart(String roomName);

  /// No description provided for @roomNew.
  ///
  /// In en, this message translates to:
  /// **'New room'**
  String get roomNew;

  /// No description provided for @roomOffice.
  ///
  /// In en, this message translates to:
  /// **'Office'**
  String get roomOffice;

  /// No description provided for @roomOther.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get roomOther;

  /// No description provided for @roomStoreRoom.
  ///
  /// In en, this message translates to:
  /// **'Store room'**
  String get roomStoreRoom;

  /// No description provided for @roomType.
  ///
  /// In en, this message translates to:
  /// **'Room type'**
  String get roomType;

  /// No description provided for @roomWc.
  ///
  /// In en, this message translates to:
  /// **'WC'**
  String get roomWc;

  /// No description provided for @rooms.
  ///
  /// In en, this message translates to:
  /// **'Rooms'**
  String get rooms;

  /// No description provided for @scanQrCode.
  ///
  /// In en, this message translates to:
  /// **'Scan activation qr code'**
  String get scanQrCode;

  /// No description provided for @seasonalCounter.
  ///
  /// In en, this message translates to:
  /// **'Seasonal counter'**
  String get seasonalCounter;

  /// No description provided for @seasonalElectricityCounter.
  ///
  /// In en, this message translates to:
  /// **'Seasonal electricity counter'**
  String get seasonalElectricityCounter;

  /// No description provided for @selectedActivity.
  ///
  /// In en, this message translates to:
  /// **'Selected activity \"\${activityName}\"'**
  String selectedActivity(Object activityName);

  /// No description provided for @selectedAtAppStart.
  ///
  /// In en, this message translates to:
  /// **'The topmost object is selected at app start'**
  String get selectedAtAppStart;

  /// No description provided for @settingColor.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get settingColor;

  /// No description provided for @settingCounterTypeColor.
  ///
  /// In en, this message translates to:
  /// **'Color for this counter type'**
  String get settingCounterTypeColor;

  /// No description provided for @settingCounterTypeColorAdvanced.
  ///
  /// In en, this message translates to:
  /// **'Color picker for experts'**
  String get settingCounterTypeColorAdvanced;

  /// No description provided for @settingCounterTypeColorDescription.
  ///
  /// In en, this message translates to:
  /// **'If you do not like the default colour for this counter type, you can assign a different colour.'**
  String get settingCounterTypeColorDescription;

  /// No description provided for @settingEAuto.
  ///
  /// In en, this message translates to:
  /// **'Electric car'**
  String get settingEAuto;

  /// No description provided for @settingHouseholdSize.
  ///
  /// In en, this message translates to:
  /// **'Household size'**
  String get settingHouseholdSize;

  /// No description provided for @settingHouseholdSizeDescription.
  ///
  /// In en, this message translates to:
  /// **'Number of people in your household.'**
  String get settingHouseholdSizeDescription;

  /// No description provided for @settingLanguageMode.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingLanguageMode;

  /// No description provided for @settingLivingArea.
  ///
  /// In en, this message translates to:
  /// **'Living area'**
  String get settingLivingArea;

  /// No description provided for @settingObjectLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get settingObjectLocation;

  /// No description provided for @settingObjectLocationExplanation.
  ///
  /// In en, this message translates to:
  /// **'Entering the location helps tailor insights and services to your area.'**
  String get settingObjectLocationExplanation;

  /// No description provided for @settingObjectLocationTitle.
  ///
  /// In en, this message translates to:
  /// **'Where is your object located?'**
  String get settingObjectLocationTitle;

  /// No description provided for @settingObjectType.
  ///
  /// In en, this message translates to:
  /// **'Object type'**
  String get settingObjectType;

  /// No description provided for @settingObjectTypeFlat.
  ///
  /// In en, this message translates to:
  /// **'Apartment'**
  String get settingObjectTypeFlat;

  /// No description provided for @settingObjectTypeHouse.
  ///
  /// In en, this message translates to:
  /// **'House'**
  String get settingObjectTypeHouse;

  /// No description provided for @settingShowCounterReadingsChart.
  ///
  /// In en, this message translates to:
  /// **'Show readings chart'**
  String get settingShowCounterReadingsChart;

  /// No description provided for @settingShowHeatmap.
  ///
  /// In en, this message translates to:
  /// **'Show heatmap'**
  String get settingShowHeatmap;

  /// No description provided for @settingShowPreliminaryCurve.
  ///
  /// In en, this message translates to:
  /// **'Show preliminary curve'**
  String get settingShowPreliminaryCurve;

  /// No description provided for @settingUiColorPalette.
  ///
  /// In en, this message translates to:
  /// **'Color palette'**
  String get settingUiColorPalette;

  /// No description provided for @settingUiMode.
  ///
  /// In en, this message translates to:
  /// **'User interface'**
  String get settingUiMode;

  /// No description provided for @settingUiModeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingUiModeDark;

  /// No description provided for @settingUiModeDarkOrLight.
  ///
  /// In en, this message translates to:
  /// **'Dark/light user interface'**
  String get settingUiModeDarkOrLight;

  /// No description provided for @settingUiModeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingUiModeLight;

  /// No description provided for @settingUiModeOsDefault.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingUiModeOsDefault;

  /// No description provided for @settingWaterHeater.
  ///
  /// In en, this message translates to:
  /// **'Water heater'**
  String get settingWaterHeater;

  /// No description provided for @settingYearlyReset.
  ///
  /// In en, this message translates to:
  /// **'Yearly reset'**
  String get settingYearlyReset;

  /// No description provided for @settingYearlyResetOn.
  ///
  /// In en, this message translates to:
  /// **'on'**
  String get settingYearlyResetOn;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @settingsExternalServices.
  ///
  /// In en, this message translates to:
  /// **'External services'**
  String get settingsExternalServices;

  /// No description provided for @settingsShowStromGedacht.
  ///
  /// In en, this message translates to:
  /// **'Should tips from StromGedacht about the power grid be displayed?'**
  String get settingsShowStromGedacht;

  /// No description provided for @settingsShowTabNewsDetailed.
  ///
  /// In en, this message translates to:
  /// **'Should the News/Tips tab be visible?'**
  String get settingsShowTabNewsDetailed;

  /// No description provided for @showAllYears.
  ///
  /// In en, this message translates to:
  /// **'Show all years'**
  String get showAllYears;

  /// No description provided for @signInWithApple.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Apple'**
  String get signInWithApple;

  /// No description provided for @signInWithGithub.
  ///
  /// In en, this message translates to:
  /// **'Sign in with GitHub'**
  String get signInWithGithub;

  /// No description provided for @signInWithGoogle.
  ///
  /// In en, this message translates to:
  /// **'Sign in with Google'**
  String get signInWithGoogle;

  /// No description provided for @signInWithSocialAccount.
  ///
  /// In en, this message translates to:
  /// **'Which social account do you want to use to create or sign in to your EHW+ account?'**
  String get signInWithSocialAccount;

  /// No description provided for @sinceInitialReading.
  ///
  /// In en, this message translates to:
  /// **'Since initial reading'**
  String get sinceInitialReading;

  /// No description provided for @smartMeterCountersTitle.
  ///
  /// In en, this message translates to:
  /// **'Radio water meters'**
  String get smartMeterCountersTitle;

  /// No description provided for @smartMeterErrorNoData.
  ///
  /// In en, this message translates to:
  /// **'Unfortunately, there is no data that the app could display.'**
  String get smartMeterErrorNoData;

  /// No description provided for @smartMeterMisconfiguredWidgetCardButton.
  ///
  /// In en, this message translates to:
  /// **'Set up smart meter'**
  String get smartMeterMisconfiguredWidgetCardButton;

  /// No description provided for @smartMeterMisconfiguredWidgetCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Please set up your smart meter correctly.'**
  String get smartMeterMisconfiguredWidgetCardTitle;

  /// No description provided for @smartMeterObtainDataAutomatically.
  ///
  /// In en, this message translates to:
  /// **'Obtain data automatically'**
  String get smartMeterObtainDataAutomatically;

  /// No description provided for @smartMeterProviderTibber.
  ///
  /// In en, this message translates to:
  /// **'Tibber'**
  String get smartMeterProviderTibber;

  /// No description provided for @smartMeterProviderUndefined.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get smartMeterProviderUndefined;

  /// No description provided for @smartMeterProviderWwgl.
  ///
  /// In en, this message translates to:
  /// **'Wasserwerk Gerauer Land'**
  String get smartMeterProviderWwgl;

  /// No description provided for @smartMeterServiceProvider.
  ///
  /// In en, this message translates to:
  /// **'Service Provider'**
  String get smartMeterServiceProvider;

  /// No description provided for @smartMeterSettingsScreenSyncButton.
  ///
  /// In en, this message translates to:
  /// **'Synchronize consumption data'**
  String get smartMeterSettingsScreenSyncButton;

  /// No description provided for @smartMeterSettingsScreenSyncingDialogError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get smartMeterSettingsScreenSyncingDialogError;

  /// No description provided for @smartMeterSettingsScreenSyncingDialogErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Following error occurred during synchronisation: {errorMessage}'**
  String smartMeterSettingsScreenSyncingDialogErrorMessage(Object errorMessage);

  /// No description provided for @smartMeterSettingsScreenSyncingDialogErrorOkButton.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get smartMeterSettingsScreenSyncingDialogErrorOkButton;

  /// No description provided for @smartMeterSettingsScreenSyncingDialogHeader.
  ///
  /// In en, this message translates to:
  /// **'Syncing in progress'**
  String get smartMeterSettingsScreenSyncingDialogHeader;

  /// No description provided for @smartMeterSettingsScreenSyncingDialogProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress: {progressInPercent}%'**
  String smartMeterSettingsScreenSyncingDialogProgress(
    Object progressInPercent,
  );

  /// No description provided for @smartMeterTabConsumptions.
  ///
  /// In en, this message translates to:
  /// **'Consumptions'**
  String get smartMeterTabConsumptions;

  /// No description provided for @smartMeterTabProductions.
  ///
  /// In en, this message translates to:
  /// **'Productions'**
  String get smartMeterTabProductions;

  /// No description provided for @smartmeterInfocodeBannerText.
  ///
  /// In en, this message translates to:
  /// **'Smartmeter {smartmeterId} received infocode: {infocode}'**
  String smartmeterInfocodeBannerText(String infocode, String smartmeterId);

  /// No description provided for @smartmeterInfocodeBannerTextInfocodeFrost.
  ///
  /// In en, this message translates to:
  /// **'The temperature of your water meter {smartmeterId} has dropped below 3°C. There is a risk of frost! Insulate the meter and the pipes or heat the area to prevent damage.'**
  String smartmeterInfocodeBannerTextInfocodeFrost(Object smartmeterId);

  /// No description provided for @smartmeterInfocodeBannerTextInfocodeLeckage.
  ///
  /// In en, this message translates to:
  /// **'Your water meter {smartmeterId} has detected a continuous water flow. This could indicate a leak. Please check your household installation for leaks. Toilets and dripping taps are common causes.'**
  String smartmeterInfocodeBannerTextInfocodeLeckage(Object smartmeterId);

  /// No description provided for @smartmeterInfocodeBannerTextInfocodeRohrbruch.
  ///
  /// In en, this message translates to:
  /// **'Your water meter {smartmeterId} has detected unusually high water consumption, which may indicate a pipe burst. Please check your household installation for major leaks or breaks. The alarm may also appear if you have used a large amount of water, e.g. for filling a pool.'**
  String smartmeterInfocodeBannerTextInfocodeRohrbruch(Object smartmeterId);

  /// No description provided for @smartmeterInfocodeBannerTextInfocodeRohrbruchPoolVorhanden.
  ///
  /// In en, this message translates to:
  /// **'Your water meter {smartmeterId} has detected unusually high water consumption, which may indicate either a pipe burst or swimming pool filling. Please check your household installation for major leaks or breaks.'**
  String smartmeterInfocodeBannerTextInfocodeRohrbruchPoolVorhanden(
    Object smartmeterId,
  );

  /// No description provided for @soFar.
  ///
  /// In en, this message translates to:
  /// **'so far'**
  String get soFar;

  /// No description provided for @social.
  ///
  /// In en, this message translates to:
  /// **'Social Media'**
  String get social;

  /// No description provided for @socialEmail.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get socialEmail;

  /// No description provided for @socialFacebook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get socialFacebook;

  /// No description provided for @socialInstagram.
  ///
  /// In en, this message translates to:
  /// **'Instagram'**
  String get socialInstagram;

  /// No description provided for @socialLinkedIn.
  ///
  /// In en, this message translates to:
  /// **'LinkedIn'**
  String get socialLinkedIn;

  /// No description provided for @socialTwitter.
  ///
  /// In en, this message translates to:
  /// **'X'**
  String get socialTwitter;

  /// No description provided for @socialYouTube.
  ///
  /// In en, this message translates to:
  /// **'YouTube'**
  String get socialYouTube;

  /// No description provided for @solarThermalCollector.
  ///
  /// In en, this message translates to:
  /// **'Solar Thermal Collector'**
  String get solarThermalCollector;

  /// No description provided for @sortActivities.
  ///
  /// In en, this message translates to:
  /// **'Modify the order of activities'**
  String get sortActivities;

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source: '**
  String get source;

  /// No description provided for @stove.
  ///
  /// In en, this message translates to:
  /// **'Stove'**
  String get stove;

  /// No description provided for @stromGedachtAgreement.
  ///
  /// In en, this message translates to:
  /// **'I agree that my postal code (if provided) will be transmitted to TransnetBW to retrieve StromGedacht notices.'**
  String get stromGedachtAgreement;

  /// No description provided for @subscribeToSmartMeterInfocodeEvents.
  ///
  /// In en, this message translates to:
  /// **'I would like to be notified of unexpected consumption'**
  String get subscribeToSmartMeterInfocodeEvents;

  /// No description provided for @supplementaryPayment.
  ///
  /// In en, this message translates to:
  /// **'Supplementary payment'**
  String get supplementaryPayment;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support/Feedback'**
  String get support;

  /// No description provided for @supportBug.
  ///
  /// In en, this message translates to:
  /// **'Bug'**
  String get supportBug;

  /// No description provided for @supportGivePraise.
  ///
  /// In en, this message translates to:
  /// **'Give praise'**
  String get supportGivePraise;

  /// No description provided for @supportGivePraiseLong.
  ///
  /// In en, this message translates to:
  /// **'Do you like the app? Thank you! Spread the word!'**
  String get supportGivePraiseLong;

  /// No description provided for @supportGivePraiseRating.
  ///
  /// In en, this message translates to:
  /// **'Rate the app in {store}.'**
  String supportGivePraiseRating(String store);

  /// No description provided for @supportGivePraiseRecommendation.
  ///
  /// In en, this message translates to:
  /// **'Recommend the app to friends and family. Thank you for any recommendation!'**
  String get supportGivePraiseRecommendation;

  /// No description provided for @supportMakeSuggestion.
  ///
  /// In en, this message translates to:
  /// **'Suggest something'**
  String get supportMakeSuggestion;

  /// No description provided for @supportMakeSuggestionLong.
  ///
  /// In en, this message translates to:
  /// **'The app lives from user suggestions. Do you have a suggestion?'**
  String get supportMakeSuggestionLong;

  /// No description provided for @supportQuestion.
  ///
  /// In en, this message translates to:
  /// **'Ask a question'**
  String get supportQuestion;

  /// No description provided for @supportQuestionBox.
  ///
  /// In en, this message translates to:
  /// **'How can I help you?'**
  String get supportQuestionBox;

  /// No description provided for @supportQuestionLong.
  ///
  /// In en, this message translates to:
  /// **'How does it work? Is it possible at all? Here are the answers.'**
  String get supportQuestionLong;

  /// No description provided for @supportQuestionNotFound.
  ///
  /// In en, this message translates to:
  /// **'Your question was not answered? I would be happy to help.'**
  String get supportQuestionNotFound;

  /// No description provided for @supportRecommend.
  ///
  /// In en, this message translates to:
  /// **'I use the meter reading app EHW+ to keep track of my energy consumption and the associated costs. Maybe that would be something for you, too?\n\nMore info at https://www.ehwplus.com'**
  String get supportRecommend;

  /// No description provided for @supportReportBug.
  ///
  /// In en, this message translates to:
  /// **'Report a bug via mail'**
  String get supportReportBug;

  /// No description provided for @supportReportBugAffectedPages.
  ///
  /// In en, this message translates to:
  /// **'On which pages does the error occur? (if applicable)'**
  String get supportReportBugAffectedPages;

  /// No description provided for @supportReportBugLong.
  ///
  /// In en, this message translates to:
  /// **'Great app! But sure, things can go wrong. If you report bugs, you make the app better.'**
  String get supportReportBugLong;

  /// No description provided for @supportReportBugScreenshotsPlease.
  ///
  /// In en, this message translates to:
  /// **'Please attach a screenshot in the mail, preferably with marking of the error.'**
  String get supportReportBugScreenshotsPlease;

  /// No description provided for @supportReportBugTextIs.
  ///
  /// In en, this message translates to:
  /// **'Please briefly describe the current incorrect behavior, i.e. the error itself.'**
  String get supportReportBugTextIs;

  /// No description provided for @supportReportBugTextShould.
  ///
  /// In en, this message translates to:
  /// **'Please briefly describe the desired behavior, i.e. how it should actually be.'**
  String get supportReportBugTextShould;

  /// No description provided for @swimmingPool.
  ///
  /// In en, this message translates to:
  /// **'Swimming pool'**
  String get swimmingPool;

  /// No description provided for @sync.
  ///
  /// In en, this message translates to:
  /// **'Sync'**
  String get sync;

  /// No description provided for @syncAutomaticTitle.
  ///
  /// In en, this message translates to:
  /// **'Local data may be overwritten'**
  String get syncAutomaticTitle;

  /// No description provided for @syncDriveDataUsage.
  ///
  /// In en, this message translates to:
  /// **'If you grant EHW+ access to Google Drive, the app will have read and write access to files created by the app itself. Unfortunately, files created by others through this app are not visible to the app, which means data sharing between multiple accounts via Google Drive is not possible.'**
  String get syncDriveDataUsage;

  /// No description provided for @syncDriveLoggedIn.
  ///
  /// In en, this message translates to:
  /// **'Your data is automatically synchronized across multiple devices. The following Google account is used:'**
  String get syncDriveLoggedIn;

  /// No description provided for @syncDriveLoggedInNoAuto.
  ///
  /// In en, this message translates to:
  /// **'Your data is automatically uploaded to Google Drive after a change. Newer data from the cloud only overwrites local data when you click on the object. The following Google account is used:'**
  String get syncDriveLoggedInNoAuto;

  /// No description provided for @syncObjectIsLocked.
  ///
  /// In en, this message translates to:
  /// **'Object data is being updated and cannot be edited during this time.'**
  String get syncObjectIsLocked;

  /// No description provided for @syncShareWithOthersNotInWeb.
  ///
  /// In en, this message translates to:
  /// **'Granting access is currently only possible via app.'**
  String get syncShareWithOthersNotInWeb;

  /// No description provided for @syncShareWithOthersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'If you want to enter meter readings together with other Google users, EHW+ must be granted full access to Google Drive.'**
  String get syncShareWithOthersSubtitle;

  /// No description provided for @syncShareWithOthersTitle.
  ///
  /// In en, this message translates to:
  /// **'Share with others?'**
  String get syncShareWithOthersTitle;

  /// No description provided for @syncStatusFailedLong.
  ///
  /// In en, this message translates to:
  /// **'Failed to synchronize, editing is at your own risk'**
  String get syncStatusFailedLong;

  /// No description provided for @syncStatusFailedLongNoAutoSync.
  ///
  /// In en, this message translates to:
  /// **'Failed to synchronize, editing is at your own risk'**
  String get syncStatusFailedLongNoAutoSync;

  /// No description provided for @syncStatusSyncRemoteHasLatest.
  ///
  /// In en, this message translates to:
  /// **'The file in the cloud is more up-to-date than the local file'**
  String get syncStatusSyncRemoteHasLatest;

  /// No description provided for @syncWithGoogleDriveDescription.
  ///
  /// In en, this message translates to:
  /// **'Because it would be a shame if the meter readings were lost, synchronise your objects with Google Drive now!'**
  String get syncWithGoogleDriveDescription;

  /// No description provided for @tabCounters.
  ///
  /// In en, this message translates to:
  /// **'Meters'**
  String get tabCounters;

  /// No description provided for @tabNews.
  ///
  /// In en, this message translates to:
  /// **'Tips/News'**
  String get tabNews;

  /// No description provided for @tabObject.
  ///
  /// In en, this message translates to:
  /// **'Object'**
  String get tabObject;

  /// No description provided for @tabStatistics.
  ///
  /// In en, this message translates to:
  /// **'Statistics'**
  String get tabStatistics;

  /// No description provided for @taxRate.
  ///
  /// In en, this message translates to:
  /// **'Tax rate'**
  String get taxRate;

  /// No description provided for @teaserPurchaseRenewableEnergies.
  ///
  /// In en, this message translates to:
  /// **'Renewable energy counters require Premium.'**
  String get teaserPurchaseRenewableEnergies;

  /// No description provided for @teaserPurchaseVirtualCounter.
  ///
  /// In en, this message translates to:
  /// **'Add virtual counters with Premium.'**
  String get teaserPurchaseVirtualCounter;

  /// No description provided for @teaserPurchaseWaterExtractionCounter.
  ///
  /// In en, this message translates to:
  /// **'Unlock water extraction counters with Premium.'**
  String get teaserPurchaseWaterExtractionCounter;

  /// No description provided for @termsOfUsageBlock1.
  ///
  /// In en, this message translates to:
  /// **'Right of objection'**
  String termsOfUsageBlock1(String contact);

  /// No description provided for @termsOfUsageBlock1Title.
  ///
  /// In en, this message translates to:
  /// **'General terms of use for the use of the app'**
  String get termsOfUsageBlock1Title;

  /// No description provided for @termsOfUsageBlock2.
  ///
  /// In en, this message translates to:
  /// **'The app and its functions may not be used in an abusive manner. Please use the app only within the legally permissible scope and in accordance with our terms of use. In the event of a breach of applicable German law or our terms of use, the provider reserves the right to exclude you from using the app.'**
  String get termsOfUsageBlock2;

  /// No description provided for @termsOfUsageBlock2Title.
  ///
  /// In en, this message translates to:
  /// **'General information on use'**
  String get termsOfUsageBlock2Title;

  /// No description provided for @termsOfUsageBlock2a.
  ///
  /// In en, this message translates to:
  /// **'Anonymised usage data\nWe use our own analytics to continuously improve the app. Only anonymised data is transmitted. The data is not passed on to third parties. For more information, go to Settings > Privacy > {privacyBlock3Title}'**
  String termsOfUsageBlock2a(String privacyBlock3Title);

  /// No description provided for @termsOfUsageBlock2b.
  ///
  /// In en, this message translates to:
  /// **'Error reports\\nSentry (self-hosted) is used to continuously improve the app. Error reports are neither processed nor shared with third parties. For more information, go to Settings > Privacy > {privacyBlock3Title}'**
  String termsOfUsageBlock2b(String privacyBlock3Title);

  /// No description provided for @termsOfUsageBlock2c.
  ///
  /// In en, this message translates to:
  /// **'Personal information\nIf you use Google Drive Sync, EHW+ still has no access to the data you have entered. For more information, go to Settings > Privacy > {privacyBlock3Title}.'**
  String termsOfUsageBlock2c(String privacyBlock3Title);

  /// No description provided for @termsOfUsageBlock3.
  ///
  /// In en, this message translates to:
  /// **'The provider does not guarantee the availability, reliability, functionality or suitability of the app for your purposes. Liability is excluded unless mandatory under the Product Liability Act, due to intent, gross negligence, injury to life, limb or health, the assumption of a guarantee of quality, fraudulent concealment of a defect or the breach of essential contractual obligations. Essential contractual obligations are those obligations whose fulfilment is essential for the proper execution of a contract and on whose compliance the contracting parties may regularly rely. Compensation for damages due to breach of essential contractual obligations is limited to the foreseeable damage typical for this type of contract, unless there is intent or gross negligence.'**
  String get termsOfUsageBlock3;

  /// No description provided for @termsOfUsageBlock3Title.
  ///
  /// In en, this message translates to:
  /// **'Liability'**
  String get termsOfUsageBlock3Title;

  /// No description provided for @termsOfUsageBlock4.
  ///
  /// In en, this message translates to:
  /// **'The provider does not guarantee the accuracy of the calculation results. Users are required to update the prices stored in the application (base prices, consumption prices, etc.) carefully and on their own responsibility in order to ensure that the invoices generated correspond to the actual amounts due.'**
  String get termsOfUsageBlock4;

  /// No description provided for @termsOfUsageBlock4Title.
  ///
  /// In en, this message translates to:
  /// **'Responsibilities of the user'**
  String get termsOfUsageBlock4Title;

  /// No description provided for @termsOfUsageTitle.
  ///
  /// In en, this message translates to:
  /// **'General terms of use for the use of the app'**
  String get termsOfUsageTitle;

  /// No description provided for @termsOfUsageTitleShort.
  ///
  /// In en, this message translates to:
  /// **'Terms of use'**
  String get termsOfUsageTitleShort;

  /// No description provided for @tibberAccessToken.
  ///
  /// In en, this message translates to:
  /// **'Access Token'**
  String get tibberAccessToken;

  /// No description provided for @tibberActionSaveAuthorizationSettings.
  ///
  /// In en, this message translates to:
  /// **'Save authorization settings'**
  String get tibberActionSaveAuthorizationSettings;

  /// No description provided for @tibberBasicAuth.
  ///
  /// In en, this message translates to:
  /// **'Basic Auth'**
  String get tibberBasicAuth;

  /// No description provided for @tibberBasicAuthEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter password'**
  String get tibberBasicAuthEnterPassword;

  /// No description provided for @tibberBasicAuthEnterUsername.
  ///
  /// In en, this message translates to:
  /// **'Please enter username'**
  String get tibberBasicAuthEnterUsername;

  /// No description provided for @tibberBasicAuthPassword.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get tibberBasicAuthPassword;

  /// No description provided for @tibberBasicAuthUsername.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get tibberBasicAuthUsername;

  /// No description provided for @tibberConsentScreenBenefit1Description.
  ///
  /// In en, this message translates to:
  /// **'Track your consumption in real time and uncover hidden energy guzzlers.'**
  String get tibberConsentScreenBenefit1Description;

  /// No description provided for @tibberConsentScreenBenefit1Title.
  ///
  /// In en, this message translates to:
  /// **'View Your Electricity Consumption'**
  String get tibberConsentScreenBenefit1Title;

  /// No description provided for @tibberConsentScreenConfigureLaterButton.
  ///
  /// In en, this message translates to:
  /// **'Set up Later'**
  String get tibberConsentScreenConfigureLaterButton;

  /// No description provided for @tibberConsentScreenConfigureNowButton.
  ///
  /// In en, this message translates to:
  /// **'Set up Tibber Pulse now'**
  String get tibberConsentScreenConfigureNowButton;

  /// No description provided for @tibberConsentScreenDescription.
  ///
  /// In en, this message translates to:
  /// **'Are you a Tibber customer or planning to become one? We now support the Pulse for improved energy monitoring. Please note that historical data from the Pulse is unfortunately only available to customers with an active Tibber contract.'**
  String get tibberConsentScreenDescription;

  /// No description provided for @tibberConsentScreenGoetheStudyBenefit1Description.
  ///
  /// In en, this message translates to:
  /// **'Your hourly consumption from March 1st will be anonymized and provided for the Goethe study.'**
  String get tibberConsentScreenGoetheStudyBenefit1Description;

  /// No description provided for @tibberConsentScreenGoetheStudyBenefit1Title.
  ///
  /// In en, this message translates to:
  /// **'Would you like to participate in the Goethe Study?'**
  String get tibberConsentScreenGoetheStudyBenefit1Title;

  /// No description provided for @tibberConsentScreenGoetheStudyParticipationConsentToggle.
  ///
  /// In en, this message translates to:
  /// **'Yes, I want to participate in the Goethe Study'**
  String get tibberConsentScreenGoetheStudyParticipationConsentToggle;

  /// No description provided for @tibberConsentScreenGoetheStudySectionHeader.
  ///
  /// In en, this message translates to:
  /// **'Participation in the research Project'**
  String get tibberConsentScreenGoetheStudySectionHeader;

  /// No description provided for @tibberConsentScreenHeader.
  ///
  /// In en, this message translates to:
  /// **'New Feature: Consumption Data from Tibber Pulse'**
  String get tibberConsentScreenHeader;

  /// No description provided for @tibberConsentScreenStoreLink.
  ///
  /// In en, this message translates to:
  /// **'Visit Tibber Store'**
  String get tibberConsentScreenStoreLink;

  /// No description provided for @tibberConsumptionEntryTotalCost.
  ///
  /// In en, this message translates to:
  /// **'Total cost: {totalCost}'**
  String tibberConsumptionEntryTotalCost(Object totalCost);

  /// No description provided for @tibberConsumptionEntryTotalProfit.
  ///
  /// In en, this message translates to:
  /// **'Total profit: {totalProfit}'**
  String tibberConsumptionEntryTotalProfit(Object totalProfit);

  /// No description provided for @tibberConsumptionEntryViewTimeSpan24Hours.
  ///
  /// In en, this message translates to:
  /// **'24 hours from {startTime} on {date}'**
  String tibberConsumptionEntryViewTimeSpan24Hours(
    Object date,
    Object startTime,
  );

  /// No description provided for @tibberConsumptionEntryViewTimeSpanDefault.
  ///
  /// In en, this message translates to:
  /// **'From: {startTime} to {endDate}'**
  String tibberConsumptionEntryViewTimeSpanDefault(
    Object endDate,
    Object startTime,
  );

  /// No description provided for @tibberConsumptionEntryViewTimeSpanMonth.
  ///
  /// In en, this message translates to:
  /// **'The month of {month}'**
  String tibberConsumptionEntryViewTimeSpanMonth(Object month);

  /// No description provided for @tibberConsumptionEntryViewTimeSpanMonthStartingAt.
  ///
  /// In en, this message translates to:
  /// **'One month starting {month}'**
  String tibberConsumptionEntryViewTimeSpanMonthStartingAt(Object month);

  /// No description provided for @tibberConsumptionEntryViewTimeSpanOneHour.
  ///
  /// In en, this message translates to:
  /// **'One hour from {startTime} on {date}'**
  String tibberConsumptionEntryViewTimeSpanOneHour(
    Object date,
    Object startTime,
  );

  /// No description provided for @tibberConsumptionEntryViewTimeSpanYear.
  ///
  /// In en, this message translates to:
  /// **'The year {year}'**
  String tibberConsumptionEntryViewTimeSpanYear(Object year);

  /// No description provided for @tibberConsumptionEntryViewTimeSpanYearStartingAt.
  ///
  /// In en, this message translates to:
  /// **'One year starting from {year}'**
  String tibberConsumptionEntryViewTimeSpanYearStartingAt(Object year);

  /// No description provided for @tibberEnterAccessToken.
  ///
  /// In en, this message translates to:
  /// **'Please enter access token'**
  String get tibberEnterAccessToken;

  /// No description provided for @tibberErrorAccessTokenInvalid.
  ///
  /// In en, this message translates to:
  /// **'Looks like the access token is invalid'**
  String get tibberErrorAccessTokenInvalid;

  /// No description provided for @tibberErrorConnectivityShowCacheInstead.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve recent consumption data. Showing cached values instead.'**
  String get tibberErrorConnectivityShowCacheInstead;

  /// No description provided for @tibberErrorNoHomes.
  ///
  /// In en, this message translates to:
  /// **'There are no homes associated with this account'**
  String get tibberErrorNoHomes;

  /// No description provided for @tibberErrorNoSubscription.
  ///
  /// In en, this message translates to:
  /// **'To gain full access to historical data via the API, you need an active Tibber electricity contract for the selected home.'**
  String get tibberErrorNoSubscription;

  /// No description provided for @tibberErrorRateLimit.
  ///
  /// In en, this message translates to:
  /// **'Tibber API rate limit exceeded. Please wait at least 5 minutes before retrying.'**
  String get tibberErrorRateLimit;

  /// No description provided for @tibberErrorSmartMeterMisconfigured.
  ///
  /// In en, this message translates to:
  /// **'Your smart meter appears to be misconfigured.'**
  String get tibberErrorSmartMeterMisconfigured;

  /// No description provided for @tibberErrorUndefined.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred: {error}'**
  String tibberErrorUndefined(Object error);

  /// No description provided for @tibberHomeSelectorHomeId.
  ///
  /// In en, this message translates to:
  /// **'Home ID: {homeId}'**
  String tibberHomeSelectorHomeId(Object homeId);

  /// No description provided for @tibberHomeSelectorLabel.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get tibberHomeSelectorLabel;

  /// No description provided for @tibberLiveAndHistoricalMeasurementsWidgetNotSupported.
  ///
  /// In en, this message translates to:
  /// **'This home does not support live measurements or historical consumption data. Please select another home.'**
  String get tibberLiveAndHistoricalMeasurementsWidgetNotSupported;

  /// No description provided for @tibberLiveMeasurementCounterCardViewFooter.
  ///
  /// In en, this message translates to:
  /// **'Live Measurement'**
  String get tibberLiveMeasurementCounterCardViewFooter;

  /// No description provided for @tibberLiveMeasurementWidgetAccumulatedConsumption.
  ///
  /// In en, this message translates to:
  /// **'Total Consumption (since midnight)'**
  String get tibberLiveMeasurementWidgetAccumulatedConsumption;

  /// No description provided for @tibberLiveMeasurementWidgetAccumulatedConsumptionLastHour.
  ///
  /// In en, this message translates to:
  /// **'Consumption (last hour)'**
  String get tibberLiveMeasurementWidgetAccumulatedConsumptionLastHour;

  /// No description provided for @tibberLiveMeasurementWidgetAccumulatedCost.
  ///
  /// In en, this message translates to:
  /// **'Accumulated Cost'**
  String get tibberLiveMeasurementWidgetAccumulatedCost;

  /// No description provided for @tibberLiveMeasurementWidgetAccumulatedProduction.
  ///
  /// In en, this message translates to:
  /// **'Total Production (since midnight)'**
  String get tibberLiveMeasurementWidgetAccumulatedProduction;

  /// No description provided for @tibberLiveMeasurementWidgetAccumulatedProductionLastHour.
  ///
  /// In en, this message translates to:
  /// **'Production (last hour)'**
  String get tibberLiveMeasurementWidgetAccumulatedProductionLastHour;

  /// No description provided for @tibberLiveMeasurementWidgetAccumulatedReward.
  ///
  /// In en, this message translates to:
  /// **'Accumulated Reward'**
  String get tibberLiveMeasurementWidgetAccumulatedReward;

  /// No description provided for @tibberLiveMeasurementWidgetAveragePower.
  ///
  /// In en, this message translates to:
  /// **'Average Power'**
  String get tibberLiveMeasurementWidgetAveragePower;

  /// No description provided for @tibberLiveMeasurementWidgetCurrentL1.
  ///
  /// In en, this message translates to:
  /// **'Current (L1)'**
  String get tibberLiveMeasurementWidgetCurrentL1;

  /// No description provided for @tibberLiveMeasurementWidgetCurrentL2.
  ///
  /// In en, this message translates to:
  /// **'Current (L2)'**
  String get tibberLiveMeasurementWidgetCurrentL2;

  /// No description provided for @tibberLiveMeasurementWidgetCurrentL3.
  ///
  /// In en, this message translates to:
  /// **'Current (L3)'**
  String get tibberLiveMeasurementWidgetCurrentL3;

  /// No description provided for @tibberLiveMeasurementWidgetLastMeterConsumption.
  ///
  /// In en, this message translates to:
  /// **'Meter Reading (Consumption)'**
  String get tibberLiveMeasurementWidgetLastMeterConsumption;

  /// No description provided for @tibberLiveMeasurementWidgetLastMeterProduction.
  ///
  /// In en, this message translates to:
  /// **'Meter Reading (Production)'**
  String get tibberLiveMeasurementWidgetLastMeterProduction;

  /// No description provided for @tibberLiveMeasurementWidgetMaxPower.
  ///
  /// In en, this message translates to:
  /// **'Max Power'**
  String get tibberLiveMeasurementWidgetMaxPower;

  /// No description provided for @tibberLiveMeasurementWidgetMinPower.
  ///
  /// In en, this message translates to:
  /// **'Min Power'**
  String get tibberLiveMeasurementWidgetMinPower;

  /// No description provided for @tibberLiveMeasurementWidgetPower.
  ///
  /// In en, this message translates to:
  /// **'Power'**
  String get tibberLiveMeasurementWidgetPower;

  /// No description provided for @tibberLiveMeasurementWidgetPowerFactor.
  ///
  /// In en, this message translates to:
  /// **'Power Factor'**
  String get tibberLiveMeasurementWidgetPowerFactor;

  /// No description provided for @tibberLiveMeasurementWidgetPowerProduction.
  ///
  /// In en, this message translates to:
  /// **'Power Production'**
  String get tibberLiveMeasurementWidgetPowerProduction;

  /// No description provided for @tibberLiveMeasurementWidgetTimestamp.
  ///
  /// In en, this message translates to:
  /// **'Timestamp'**
  String get tibberLiveMeasurementWidgetTimestamp;

  /// No description provided for @tibberLiveMeasurementWidgetTitle.
  ///
  /// In en, this message translates to:
  /// **'Current consumption/production at {time}'**
  String tibberLiveMeasurementWidgetTitle(Object time);

  /// No description provided for @tibberLiveMeasurementWidgetUnitA.
  ///
  /// In en, this message translates to:
  /// **'A'**
  String get tibberLiveMeasurementWidgetUnitA;

  /// No description provided for @tibberLiveMeasurementWidgetUnitV.
  ///
  /// In en, this message translates to:
  /// **'V'**
  String get tibberLiveMeasurementWidgetUnitV;

  /// No description provided for @tibberLiveMeasurementWidgetUnitW.
  ///
  /// In en, this message translates to:
  /// **'W'**
  String get tibberLiveMeasurementWidgetUnitW;

  /// No description provided for @tibberLiveMeasurementWidgetVoltagePhase1.
  ///
  /// In en, this message translates to:
  /// **'Voltage (Phase 1)'**
  String get tibberLiveMeasurementWidgetVoltagePhase1;

  /// No description provided for @tibberLiveMeasurementWidgetVoltagePhase2.
  ///
  /// In en, this message translates to:
  /// **'Voltage (Phase 2)'**
  String get tibberLiveMeasurementWidgetVoltagePhase2;

  /// No description provided for @tibberLiveMeasurementWidgetVoltagePhase3.
  ///
  /// In en, this message translates to:
  /// **'Voltage (Phase 3)'**
  String get tibberLiveMeasurementWidgetVoltagePhase3;

  /// No description provided for @tibberLiveMeasurementsWidgetConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting to Tibber Pulse...'**
  String get tibberLiveMeasurementsWidgetConnecting;

  /// No description provided for @tibberLiveMeasurementsWidgetError.
  ///
  /// In en, this message translates to:
  /// **'An error occurred while connecting to Tibber Pulse. Please check your access token and internet connection.'**
  String get tibberLiveMeasurementsWidgetError;

  /// No description provided for @tibberLiveMeasurementsWidgetNotSupported.
  ///
  /// In en, this message translates to:
  /// **'Live measurements are not supported for this home.'**
  String get tibberLiveMeasurementsWidgetNotSupported;

  /// No description provided for @tibberMessageAccessTokenUpdated.
  ///
  /// In en, this message translates to:
  /// **'Successfully updated the access token'**
  String get tibberMessageAccessTokenUpdated;

  /// No description provided for @tibberStatusWidgetTibberSubscriptionStatus.
  ///
  /// In en, this message translates to:
  /// **'Tibber Subscription Status'**
  String get tibberStatusWidgetTibberSubscriptionStatus;

  /// No description provided for @tibberStatusWidgetTitle.
  ///
  /// In en, this message translates to:
  /// **'Cache Management'**
  String get tibberStatusWidgetTitle;

  /// No description provided for @tibberSubscriptionStatusActive.
  ///
  /// In en, this message translates to:
  /// **'active'**
  String get tibberSubscriptionStatusActive;

  /// No description provided for @tibberSubscriptionStatusInactive.
  ///
  /// In en, this message translates to:
  /// **'inactive'**
  String get tibberSubscriptionStatusInactive;

  /// No description provided for @tibberSubscriptionStatusLoading.
  ///
  /// In en, this message translates to:
  /// **'loading...'**
  String get tibberSubscriptionStatusLoading;

  /// No description provided for @tibberWhereIsMyAccessToken.
  ///
  /// In en, this message translates to:
  /// **'Where can I find my \"access token\"?'**
  String get tibberWhereIsMyAccessToken;

  /// No description provided for @timeBefore.
  ///
  /// In en, this message translates to:
  /// **'Before'**
  String get timeBefore;

  /// No description provided for @timeDayAgo.
  ///
  /// In en, this message translates to:
  /// **'one day ago'**
  String get timeDayAgo;

  /// No description provided for @timeDays.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get timeDays;

  /// No description provided for @timeDaysAgo.
  ///
  /// In en, this message translates to:
  /// **'{days} days ago'**
  String timeDaysAgo(int days);

  /// No description provided for @timeDaysWithin.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get timeDaysWithin;

  /// No description provided for @timeForFirstYear.
  ///
  /// In en, this message translates to:
  /// **'for the first year'**
  String get timeForFirstYear;

  /// No description provided for @timeFriday.
  ///
  /// In en, this message translates to:
  /// **'Friday'**
  String get timeFriday;

  /// No description provided for @timeFromDate.
  ///
  /// In en, this message translates to:
  /// **'From {date}'**
  String timeFromDate(String date);

  /// No description provided for @timeFromUndefined.
  ///
  /// In en, this message translates to:
  /// **'Undefined'**
  String get timeFromUndefined;

  /// No description provided for @timeHours.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get timeHours;

  /// No description provided for @timeHoursAgo.
  ///
  /// In en, this message translates to:
  /// **'{hours} hours ago'**
  String timeHoursAgo(int hours);

  /// No description provided for @timeInFuture.
  ///
  /// In en, this message translates to:
  /// **'In the future'**
  String get timeInFuture;

  /// No description provided for @timeJustNow.
  ///
  /// In en, this message translates to:
  /// **'just now'**
  String get timeJustNow;

  /// No description provided for @timeLastUpdated.
  ///
  /// In en, this message translates to:
  /// **'last updated'**
  String get timeLastUpdated;

  /// No description provided for @timeMinutes.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get timeMinutes;

  /// No description provided for @timeMinutesAgo.
  ///
  /// In en, this message translates to:
  /// **'{minutes} minutes ago'**
  String timeMinutesAgo(int minutes);

  /// No description provided for @timeMonday.
  ///
  /// In en, this message translates to:
  /// **'Monday'**
  String get timeMonday;

  /// No description provided for @timeMonth.
  ///
  /// In en, this message translates to:
  /// **'month'**
  String get timeMonth;

  /// No description provided for @timeMonths.
  ///
  /// In en, this message translates to:
  /// **'months'**
  String get timeMonths;

  /// No description provided for @timeMonthsAgo.
  ///
  /// In en, this message translates to:
  /// **'{months} months ago'**
  String timeMonthsAgo(int months);

  /// No description provided for @timeMonthsWithin.
  ///
  /// In en, this message translates to:
  /// **'months'**
  String get timeMonthsWithin;

  /// No description provided for @timePeriodYearStart.
  ///
  /// In en, this message translates to:
  /// **'yearly'**
  String get timePeriodYearStart;

  /// No description provided for @timeReminderAtEnd.
  ///
  /// In en, this message translates to:
  /// **'At end'**
  String get timeReminderAtEnd;

  /// No description provided for @timeReminderAtStart.
  ///
  /// In en, this message translates to:
  /// **'At start'**
  String get timeReminderAtStart;

  /// No description provided for @timeRightNow.
  ///
  /// In en, this message translates to:
  /// **'Right now'**
  String get timeRightNow;

  /// No description provided for @timeSaturday.
  ///
  /// In en, this message translates to:
  /// **'Saturday'**
  String get timeSaturday;

  /// No description provided for @timeSeconds.
  ///
  /// In en, this message translates to:
  /// **'sec'**
  String get timeSeconds;

  /// No description provided for @timeSunday.
  ///
  /// In en, this message translates to:
  /// **'Sunday'**
  String get timeSunday;

  /// No description provided for @timeThursday.
  ///
  /// In en, this message translates to:
  /// **'Thursday'**
  String get timeThursday;

  /// No description provided for @timeToday.
  ///
  /// In en, this message translates to:
  /// **'today'**
  String get timeToday;

  /// No description provided for @timeTuesday.
  ///
  /// In en, this message translates to:
  /// **'Tuesday'**
  String get timeTuesday;

  /// No description provided for @timeUntilDate.
  ///
  /// In en, this message translates to:
  /// **'Until {date}'**
  String timeUntilDate(String date);

  /// No description provided for @timeUntilUnlimited.
  ///
  /// In en, this message translates to:
  /// **'Unlimited'**
  String get timeUntilUnlimited;

  /// No description provided for @timeWednesday.
  ///
  /// In en, this message translates to:
  /// **'Wednesday'**
  String get timeWednesday;

  /// No description provided for @timeWeek.
  ///
  /// In en, this message translates to:
  /// **'week'**
  String get timeWeek;

  /// No description provided for @timeWeeks.
  ///
  /// In en, this message translates to:
  /// **'weeks'**
  String get timeWeeks;

  /// No description provided for @timeWithin.
  ///
  /// In en, this message translates to:
  /// **'Within {duration}'**
  String timeWithin(String duration);

  /// No description provided for @timeYesterday.
  ///
  /// In en, this message translates to:
  /// **'yesterday'**
  String get timeYesterday;

  /// No description provided for @unitCm.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get unitCm;

  /// No description provided for @unitCmLong.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get unitCmLong;

  /// No description provided for @unitCmShort.
  ///
  /// In en, this message translates to:
  /// **'cm'**
  String get unitCmShort;

  /// No description provided for @unitCubicMetersLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Cubic meter (m³)} other {Cubic meters (m³)}}'**
  String unitCubicMetersLong(num count);

  /// No description provided for @unitCubicMetersShort.
  ///
  /// In en, this message translates to:
  /// **'m³'**
  String get unitCubicMetersShort;

  /// No description provided for @unitGJLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Gigajoule (GJ)} other {Gigajoules (GJ)}}'**
  String unitGJLong(num count);

  /// No description provided for @unitGJShort.
  ///
  /// In en, this message translates to:
  /// **'GJ'**
  String get unitGJShort;

  /// No description provided for @unitGigaByteLong.
  ///
  /// In en, this message translates to:
  /// **'GB'**
  String get unitGigaByteLong;

  /// No description provided for @unitGigaByteShort.
  ///
  /// In en, this message translates to:
  /// **'GB'**
  String get unitGigaByteShort;

  /// No description provided for @unitHoursLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Hour} other {Hours (h)}}'**
  String unitHoursLong(num count);

  /// No description provided for @unitHoursShort.
  ///
  /// In en, this message translates to:
  /// **'h'**
  String get unitHoursShort;

  /// No description provided for @unitKWhLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Kilowatt hour (kWh)} other {Kilowatt hours (kWh)}}'**
  String unitKWhLong(num count);

  /// No description provided for @unitKWhShort.
  ///
  /// In en, this message translates to:
  /// **'kWh'**
  String get unitKWhShort;

  /// No description provided for @unitKgLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Kilogram (kg)} other {Kilograms (kg)}}'**
  String unitKgLong(num count);

  /// No description provided for @unitKgShort.
  ///
  /// In en, this message translates to:
  /// **'kg'**
  String get unitKgShort;

  /// No description provided for @unitLiters.
  ///
  /// In en, this message translates to:
  /// **'liters'**
  String get unitLiters;

  /// No description provided for @unitLitersLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Liter (ℓ)} other {Liter (ℓ)}}'**
  String unitLitersLong(num count);

  /// No description provided for @unitLitersShort.
  ///
  /// In en, this message translates to:
  /// **'ℓ'**
  String get unitLitersShort;

  /// No description provided for @unitMWhLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Megawatt hour (MWh)} other {Megawatt hours (MWh)}}'**
  String unitMWhLong(num count);

  /// No description provided for @unitMWhShort.
  ///
  /// In en, this message translates to:
  /// **'MWh'**
  String get unitMWhShort;

  /// No description provided for @unitMegaByteLong.
  ///
  /// In en, this message translates to:
  /// **'MB'**
  String get unitMegaByteLong;

  /// No description provided for @unitMegaByteShort.
  ///
  /// In en, this message translates to:
  /// **'MB'**
  String get unitMegaByteShort;

  /// No description provided for @unitNone.
  ///
  /// In en, this message translates to:
  /// **'none'**
  String get unitNone;

  /// No description provided for @unitNoneFormatted.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {unit} other {units}}'**
  String unitNoneFormatted(num count);

  /// No description provided for @unitPercentLong.
  ///
  /// In en, this message translates to:
  /// **'Percent (%)'**
  String get unitPercentLong;

  /// No description provided for @unitPercentShort.
  ///
  /// In en, this message translates to:
  /// **'%'**
  String get unitPercentShort;

  /// No description provided for @unitSquareMeters.
  ///
  /// In en, this message translates to:
  /// **'sqm'**
  String get unitSquareMeters;

  /// No description provided for @unitSquareMetersLong.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one {Square meter (m²)} other {Square meters (m²)}}'**
  String unitSquareMetersLong(num count);

  /// No description provided for @unitSquareMetersShort.
  ///
  /// In en, this message translates to:
  /// **'m²'**
  String get unitSquareMetersShort;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'The app version {oldVersion} is not up to date. You can update to version {newVersion}.'**
  String updateAvailable(String newVersion, String oldVersion);

  /// No description provided for @updateObjectName.
  ///
  /// In en, this message translates to:
  /// **'Change object names'**
  String get updateObjectName;

  /// No description provided for @upgradeDescription.
  ///
  /// In en, this message translates to:
  /// **'The app can do more. Better cost overview, more statistics, Excel export, more counters, ...'**
  String get upgradeDescription;

  /// No description provided for @useDismissibleSettings.
  ///
  /// In en, this message translates to:
  /// **'Delete by swipe gesture'**
  String get useDismissibleSettings;

  /// No description provided for @useDismissibleSettingsDetailed.
  ///
  /// In en, this message translates to:
  /// **'Counters, contracts, etc. can be deleted by a side-swipe movement'**
  String get useDismissibleSettingsDetailed;

  /// No description provided for @usedForPaymentsRepayments.
  ///
  /// In en, this message translates to:
  /// **'Advance payment, base price, and bonus'**
  String get usedForPaymentsRepayments;

  /// No description provided for @valueLess.
  ///
  /// In en, this message translates to:
  /// **'{value} less'**
  String valueLess(String value);

  /// No description provided for @valueMore.
  ///
  /// In en, this message translates to:
  /// **'{value} more'**
  String valueMore(String value);

  /// No description provided for @versionIsUpToDate.
  ///
  /// In en, this message translates to:
  /// **'The latest app version released to all users is {version}.'**
  String versionIsUpToDate(String version);

  /// No description provided for @virtualCounter.
  ///
  /// In en, this message translates to:
  /// **'Virtual meter'**
  String get virtualCounter;

  /// No description provided for @virtualCounterMasterCounter.
  ///
  /// In en, this message translates to:
  /// **'Master meter'**
  String get virtualCounterMasterCounter;

  /// No description provided for @virtualCounterMasterCounterAttach.
  ///
  /// In en, this message translates to:
  /// **'Select main meter'**
  String get virtualCounterMasterCounterAttach;

  /// No description provided for @virtualCounterMasterCounterDescription.
  ///
  /// In en, this message translates to:
  /// **'Info: The main meter forms the basis for the calculation of the virtual meter, e.g., the main electricity meter or the main water meter.'**
  String get virtualCounterMasterCounterDescription;

  /// No description provided for @virtualCounterMetersToBeAdded.
  ///
  /// In en, this message translates to:
  /// **'Meters to be added'**
  String get virtualCounterMetersToBeAdded;

  /// No description provided for @virtualCounterMetersToBeAddedDescription.
  ///
  /// In en, this message translates to:
  /// **'Which meter readings should be added to the main meter, e.g., power generation meters.'**
  String get virtualCounterMetersToBeAddedDescription;

  /// No description provided for @virtualCounterMetersToBeSubtracted.
  ///
  /// In en, this message translates to:
  /// **'Meters to be subtracted'**
  String get virtualCounterMetersToBeSubtracted;

  /// No description provided for @virtualCounterMetersToBeSubtractedDescription.
  ///
  /// In en, this message translates to:
  /// **'Which meter readings should be subtracted from the main meter, e.g., \"heat pump meters\", \"electricity feed-in meters\".'**
  String get virtualCounterMetersToBeSubtractedDescription;

  /// No description provided for @virtualCounterNotConfigured.
  ///
  /// In en, this message translates to:
  /// **'Please check the settings of your virtual meter. Nothing can be calculated.'**
  String get virtualCounterNotConfigured;

  /// No description provided for @warmWater.
  ///
  /// In en, this message translates to:
  /// **'Warm water'**
  String get warmWater;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @warningCounterReplacementDetected.
  ///
  /// In en, this message translates to:
  /// **'The new value is lower than the previous meter reading. Has the meter been replaced?'**
  String get warningCounterReplacementDetected;

  /// No description provided for @warningNextReminderText.
  ///
  /// In en, this message translates to:
  /// **' The next reminder is {date}.'**
  String warningNextReminderText(String date);

  /// No description provided for @warningOutdatedSinceText.
  ///
  /// In en, this message translates to:
  /// **'since {date}'**
  String warningOutdatedSinceText(String date);

  /// No description provided for @warningReadingBiggerThanOldValue.
  ///
  /// In en, this message translates to:
  /// **'The new value is higher than the previous meter reading.{isOilCounter, select, true { Have you refilled the tank?} other {}}'**
  String warningReadingBiggerThanOldValue(String isOilCounter);

  /// No description provided for @warningReadingBiggerThanOldValueOilVolume.
  ///
  /// In en, this message translates to:
  /// **'The new value is higher than the previous meter reading. Have you refilled the tank?'**
  String get warningReadingBiggerThanOldValueOilVolume;

  /// No description provided for @warningReadingOutdatedForYearlyResetCounter.
  ///
  /// In en, this message translates to:
  /// **'The final meter reading for the year {lastYear} for the {deviceTypeName} {roomNamePart}is missing. This is necessary for a correct calculation of the total annual consumption.'**
  String warningReadingOutdatedForYearlyResetCounter(
    String deviceTypeName,
    String lastYear,
    String roomNamePart,
  );

  /// No description provided for @warningReadingOutdatedFrequency.
  ///
  /// In en, this message translates to:
  /// **'The latest meter reading for the {deviceTypeName} {roomNamePart}is outdated {outdatedSinceText}.{whenNotifyDateText}'**
  String warningReadingOutdatedFrequency(
    String deviceTypeName,
    String outdatedSinceText,
    String roomNamePart,
    String whenNotifyDateText,
  );

  /// No description provided for @warningReadingSeemsTooBig.
  ///
  /// In en, this message translates to:
  /// **'The new value is quite high. Was the reading taken correctly?'**
  String get warningReadingSeemsTooBig;

  /// No description provided for @warningReadingSeemsTooSmall.
  ///
  /// In en, this message translates to:
  /// **'The new value is quite low. Was it read correctly?'**
  String get warningReadingSeemsTooSmall;

  /// No description provided for @warningReadingSmallerThanOldValue2.
  ///
  /// In en, this message translates to:
  /// **'The new value is lower than the previous meter reading. Was the reading taken correctly?'**
  String get warningReadingSmallerThanOldValue2;

  /// No description provided for @warningYearlyReset.
  ///
  /// In en, this message translates to:
  /// **'Zero reading at the beginning of the year'**
  String get warningYearlyReset;

  /// No description provided for @wasteWaterPriceEnabled.
  ///
  /// In en, this message translates to:
  /// **'Fresh water and waste water costs are shown separately (relevant for deduction meters)'**
  String get wasteWaterPriceEnabled;

  /// No description provided for @waterConsumption.
  ///
  /// In en, this message translates to:
  /// **'Water consumption'**
  String get waterConsumption;

  /// No description provided for @waterExtractionMinimumLevelLower.
  ///
  /// In en, this message translates to:
  /// **'No deduction is applied because consumption is below the minimum threshold.'**
  String get waterExtractionMinimumLevelLower;

  /// No description provided for @waterMeterEventsInformation.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1 {Your wireless water meter {waterSupplier} detects unexpected consumption. If desired, you will receive a notification in such a case.} other {Your wireless water meters {waterSupplier} detect unexpected consumption. If desired, you will receive a notification in such cases.}}'**
  String waterMeterEventsInformation(num count, String waterSupplier);

  /// No description provided for @watersupplierAccessRequestQ1.
  ///
  /// In en, this message translates to:
  /// **'Are you the owner of a property in the catchment area of the waterworks and would like to have access to radio meter readings?'**
  String get watersupplierAccessRequestQ1;

  /// No description provided for @watersupplierAccessRequestQ2.
  ///
  /// In en, this message translates to:
  /// **'Have you already requested access? Next, you need to create an EHW+ user account.'**
  String get watersupplierAccessRequestQ2;

  /// No description provided for @watersupplierAccessRequestQ3.
  ///
  /// In en, this message translates to:
  /// **'Have you already requested access and received your QR code?'**
  String get watersupplierAccessRequestQ3;

  /// No description provided for @watersupplierAccessRequestQ4.
  ///
  /// In en, this message translates to:
  /// **'Would you like to receive meter alerts so you can react in case of a pipe burst or a running toilet flush, for example?'**
  String get watersupplierAccessRequestQ4;

  /// No description provided for @watersupplierCompleteMeterIdServerErrorTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Sorry, unfortunately that didn\'t work. It was due to our server. Better try again at a later date!'**
  String get watersupplierCompleteMeterIdServerErrorTryAgain;

  /// No description provided for @watersupplierCompleteMeterIdTryAgain.
  ///
  /// In en, this message translates to:
  /// **'You shall not pass! Please enter the last three digits of you meter id again!'**
  String get watersupplierCompleteMeterIdTryAgain;

  /// No description provided for @watersupplierMeterIdValidationStep.
  ///
  /// In en, this message translates to:
  /// **'We are checking your meter id.'**
  String get watersupplierMeterIdValidationStep;

  /// No description provided for @watersupplierNoAccess.
  ///
  /// In en, this message translates to:
  /// **'You no longer have authorization to retrieve data.'**
  String get watersupplierNoAccess;

  /// No description provided for @watersupplierNoAccessDetailedMessage.
  ///
  /// In en, this message translates to:
  /// **'If you believe that you should still have access, please scan your activation code again. If the access code is no longer valid, please submit a new access request.'**
  String get watersupplierNoAccessDetailedMessage;

  /// No description provided for @watersupplierOpenReminderSettings.
  ///
  /// In en, this message translates to:
  /// **'Open settings'**
  String get watersupplierOpenReminderSettings;

  /// No description provided for @watersupplierRadioMeterDefaultName.
  ///
  /// In en, this message translates to:
  /// **'Radio cold water meter'**
  String get watersupplierRadioMeterDefaultName;

  /// No description provided for @watersupplierScanQrCodeApprovalInProgress.
  ///
  /// In en, this message translates to:
  /// **'We are now authorizing your account so that you can access the radio meter readings in the future.'**
  String get watersupplierScanQrCodeApprovalInProgress;

  /// No description provided for @watersupplierScanQrCodeCommand.
  ///
  /// In en, this message translates to:
  /// **'Scan the left QR code (activation code)!'**
  String get watersupplierScanQrCodeCommand;

  /// No description provided for @watersupplierScanQrCodeOffboardingSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Access to your radio water meter has been canceled.'**
  String get watersupplierScanQrCodeOffboardingSuccessful;

  /// No description provided for @watersupplierScanQrCodeScanSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Wow, activation code looks so nice! Please enter the last three digits of your meter id!'**
  String get watersupplierScanQrCodeScanSuccessful;

  /// No description provided for @watersupplierScanQrCodeScanSuccessfulNoteAboutMeterIds.
  ///
  /// In en, this message translates to:
  /// **'Note: Your original meter id can have more than 8 characters.'**
  String get watersupplierScanQrCodeScanSuccessfulNoteAboutMeterIds;

  /// No description provided for @watersupplierScanQrCodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Radio Meter Activation'**
  String get watersupplierScanQrCodeTitle;

  /// No description provided for @watersupplierScanQrCodeTitleColdWaterMeterAdded.
  ///
  /// In en, this message translates to:
  /// **'Yeah! Your radio water meter of type \"Cold Water\" has been successfully added. You can find it among the other meters.'**
  String get watersupplierScanQrCodeTitleColdWaterMeterAdded;

  /// No description provided for @watersupplierScanQrCodeValidation.
  ///
  /// In en, this message translates to:
  /// **'QR code detected, let\'s validate it.'**
  String get watersupplierScanQrCodeValidation;

  /// No description provided for @watersupplierScanQrCodeValidationFailed.
  ///
  /// In en, this message translates to:
  /// **'Sorry, the code is invalid. Do you want to try again?'**
  String get watersupplierScanQrCodeValidationFailed;

  /// No description provided for @watersupplierScanQrCodeValidationFailedOnboardingScanned.
  ///
  /// In en, this message translates to:
  /// **'You scanned the activation code instead of the revocation code. Please try again!'**
  String get watersupplierScanQrCodeValidationFailedOnboardingScanned;

  /// No description provided for @watersupplierScanQrCodeValidationFailedRevokeScanned.
  ///
  /// In en, this message translates to:
  /// **'You scanned the revocation code instead of the activation code. Please try again!'**
  String get watersupplierScanQrCodeValidationFailedRevokeScanned;

  /// No description provided for @watersupplierScanRevokeQrCodeCommand.
  ///
  /// In en, this message translates to:
  /// **'Scan the right QR code (revoke code)!'**
  String get watersupplierScanRevokeQrCodeCommand;

  /// No description provided for @watersupplierUnlinkRadioMeterButtonDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete radio meter'**
  String get watersupplierUnlinkRadioMeterButtonDelete;

  /// No description provided for @watersupplierUnlinkRadioMeterButtonRevoke.
  ///
  /// In en, this message translates to:
  /// **'Scan revocation code'**
  String get watersupplierUnlinkRadioMeterButtonRevoke;

  /// No description provided for @watersupplierUnlinkRadioMeterDescription1.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete the radio meter without invalidating the activation code?'**
  String get watersupplierUnlinkRadioMeterDescription1;

  /// No description provided for @watersupplierUnlinkRadioMeterDescription2.
  ///
  /// In en, this message translates to:
  /// **'Do you no longer want access to your radio meter data? Please note: once the revocation code is scanned, the activation code becomes invalid. Any user account that used the activation code will lose access.'**
  String get watersupplierUnlinkRadioMeterDescription2;

  /// No description provided for @watersupplierUnlinkRadioMeterTitle.
  ///
  /// In en, this message translates to:
  /// **'Terminate Radio Meter Access'**
  String get watersupplierUnlinkRadioMeterTitle;

  /// No description provided for @watersupplierYourSupplier.
  ///
  /// In en, this message translates to:
  /// **'Your water supplier'**
  String get watersupplierYourSupplier;

  /// No description provided for @yearlyConsumption.
  ///
  /// In en, this message translates to:
  /// **'Annual consumption so far'**
  String get yearlyConsumption;

  /// No description provided for @yearlyCosts.
  ///
  /// In en, this message translates to:
  /// **'Annual consumption costs so far'**
  String get yearlyCosts;

  /// No description provided for @youtubeConsent1.
  ///
  /// In en, this message translates to:
  /// **'We need your consent to display the embedded Youtube content. You can display this (and thus also all other Youtube content in the app) with one click and also deactivate it again.'**
  String get youtubeConsent1;

  /// No description provided for @youtubeConsent2.
  ///
  /// In en, this message translates to:
  /// **'Always show Youtube content'**
  String get youtubeConsent2;

  /// No description provided for @youtubeConsent3.
  ///
  /// In en, this message translates to:
  /// **'I agree to external content being displayed to me. This may result in personal data being transmitted to third-party platforms. More on this in our '**
  String get youtubeConsent3;

  /// No description provided for @zipCode.
  ///
  /// In en, this message translates to:
  /// **'zip code'**
  String get zipCode;

  /// Error message if the entered zip code length is invalid
  ///
  /// In en, this message translates to:
  /// **'Please enter a {digits}-digit postal code'**
  String zipCodeValidationLength(int digits);

  /// No description provided for @zipCodeValidationOnlyNumbers.
  ///
  /// In en, this message translates to:
  /// **'A valid zip code consists only of numbers'**
  String get zipCodeValidationOnlyNumbers;

  /// No description provided for @wallbox.
  ///
  /// In en, this message translates to:
  /// **'Wallbox'**
  String get wallbox;
}

class _EhwplusAppLocalizationsDelegate
    extends LocalizationsDelegate<EhwplusAppLocalizations> {
  const _EhwplusAppLocalizationsDelegate();

  @override
  Future<EhwplusAppLocalizations> load(Locale locale) {
    return SynchronousFuture<EhwplusAppLocalizations>(
      lookupEhwplusAppLocalizations(locale),
    );
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'ar',
    'bg',
    'bs',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'fa',
    'fi',
    'fr',
    'hi',
    'hr',
    'it',
    'ja',
    'ko',
    'lt',
    'ml',
    'my',
    'nl',
    'no',
    'pl',
    'pt',
    'ru',
    'sl',
    'sr',
    'sv',
    'sw',
    'th',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_EhwplusAppLocalizationsDelegate old) => false;
}

EhwplusAppLocalizations lookupEhwplusAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return EhwplusAppLocalizationsAf();
    case 'ar':
      return EhwplusAppLocalizationsAr();
    case 'bg':
      return EhwplusAppLocalizationsBg();
    case 'bs':
      return EhwplusAppLocalizationsBs();
    case 'cs':
      return EhwplusAppLocalizationsCs();
    case 'da':
      return EhwplusAppLocalizationsDa();
    case 'de':
      return EhwplusAppLocalizationsDe();
    case 'el':
      return EhwplusAppLocalizationsEl();
    case 'en':
      return EhwplusAppLocalizationsEn();
    case 'es':
      return EhwplusAppLocalizationsEs();
    case 'et':
      return EhwplusAppLocalizationsEt();
    case 'fa':
      return EhwplusAppLocalizationsFa();
    case 'fi':
      return EhwplusAppLocalizationsFi();
    case 'fr':
      return EhwplusAppLocalizationsFr();
    case 'hi':
      return EhwplusAppLocalizationsHi();
    case 'hr':
      return EhwplusAppLocalizationsHr();
    case 'it':
      return EhwplusAppLocalizationsIt();
    case 'ja':
      return EhwplusAppLocalizationsJa();
    case 'ko':
      return EhwplusAppLocalizationsKo();
    case 'lt':
      return EhwplusAppLocalizationsLt();
    case 'ml':
      return EhwplusAppLocalizationsMl();
    case 'my':
      return EhwplusAppLocalizationsMy();
    case 'nl':
      return EhwplusAppLocalizationsNl();
    case 'no':
      return EhwplusAppLocalizationsNo();
    case 'pl':
      return EhwplusAppLocalizationsPl();
    case 'pt':
      return EhwplusAppLocalizationsPt();
    case 'ru':
      return EhwplusAppLocalizationsRu();
    case 'sl':
      return EhwplusAppLocalizationsSl();
    case 'sr':
      return EhwplusAppLocalizationsSr();
    case 'sv':
      return EhwplusAppLocalizationsSv();
    case 'sw':
      return EhwplusAppLocalizationsSw();
    case 'th':
      return EhwplusAppLocalizationsTh();
    case 'tr':
      return EhwplusAppLocalizationsTr();
    case 'uk':
      return EhwplusAppLocalizationsUk();
    case 'vi':
      return EhwplusAppLocalizationsVi();
    case 'zh':
      return EhwplusAppLocalizationsZh();
  }

  throw FlutterError(
    'EhwplusAppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
