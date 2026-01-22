// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './payment_method_configurations_post_request_body_acss_debit.dart';
import './payment_method_configurations_post_request_body_affirm.dart';
import './payment_method_configurations_post_request_body_afterpay_clearpay.dart';
import './payment_method_configurations_post_request_body_alipay.dart';
import './payment_method_configurations_post_request_body_alma.dart';
import './payment_method_configurations_post_request_body_amazon_pay.dart';
import './payment_method_configurations_post_request_body_apple_pay.dart';
import './payment_method_configurations_post_request_body_apple_pay_later.dart';
import './payment_method_configurations_post_request_body_au_becs_debit.dart';
import './payment_method_configurations_post_request_body_bacs_debit.dart';
import './payment_method_configurations_post_request_body_bancontact.dart';
import './payment_method_configurations_post_request_body_billie.dart';
import './payment_method_configurations_post_request_body_blik.dart';
import './payment_method_configurations_post_request_body_boleto.dart';
import './payment_method_configurations_post_request_body_card.dart';
import './payment_method_configurations_post_request_body_cartes_bancaires.dart';
import './payment_method_configurations_post_request_body_cashapp.dart';
import './payment_method_configurations_post_request_body_crypto.dart';
import './payment_method_configurations_post_request_body_customer_balance.dart';
import './payment_method_configurations_post_request_body_eps.dart';
import './payment_method_configurations_post_request_body_fpx.dart';
import './payment_method_configurations_post_request_body_fr_meal_voucher_conecs.dart';
import './payment_method_configurations_post_request_body_giropay.dart';
import './payment_method_configurations_post_request_body_google_pay.dart';
import './payment_method_configurations_post_request_body_grabpay.dart';
import './payment_method_configurations_post_request_body_ideal.dart';
import './payment_method_configurations_post_request_body_jcb.dart';
import './payment_method_configurations_post_request_body_kakao_pay.dart';
import './payment_method_configurations_post_request_body_klarna.dart';
import './payment_method_configurations_post_request_body_konbini.dart';
import './payment_method_configurations_post_request_body_kr_card.dart';
import './payment_method_configurations_post_request_body_link.dart';
import './payment_method_configurations_post_request_body_mb_way.dart';
import './payment_method_configurations_post_request_body_mobilepay.dart';
import './payment_method_configurations_post_request_body_multibanco.dart';
import './payment_method_configurations_post_request_body_naver_pay.dart';
import './payment_method_configurations_post_request_body_nz_bank_account.dart';
import './payment_method_configurations_post_request_body_oxxo.dart';
import './payment_method_configurations_post_request_body_p24.dart';
import './payment_method_configurations_post_request_body_pay_by_bank.dart';
import './payment_method_configurations_post_request_body_payco.dart';
import './payment_method_configurations_post_request_body_paynow.dart';
import './payment_method_configurations_post_request_body_paypal.dart';
import './payment_method_configurations_post_request_body_payto.dart';
import './payment_method_configurations_post_request_body_pix.dart';
import './payment_method_configurations_post_request_body_promptpay.dart';
import './payment_method_configurations_post_request_body_revolut_pay.dart';
import './payment_method_configurations_post_request_body_samsung_pay.dart';
import './payment_method_configurations_post_request_body_satispay.dart';
import './payment_method_configurations_post_request_body_sepa_debit.dart';
import './payment_method_configurations_post_request_body_sofort.dart';
import './payment_method_configurations_post_request_body_swish.dart';
import './payment_method_configurations_post_request_body_twint.dart';
import './payment_method_configurations_post_request_body_us_bank_account.dart';
import './payment_method_configurations_post_request_body_wechat_pay.dart';
import './payment_method_configurations_post_request_body_zip.dart';

/// auto generated
class PaymentMethodConfigurationsPostRequestBody implements Parsable {
  ///  Canadian pre-authorized debit payments, check this [page](https://docs.stripe.com/payments/acss-debit) for more details like country availability.
  PaymentMethodConfigurationsPostRequestBodyAcssDebit? acssDebit;

  ///  [Affirm](https://www.affirm.com/) gives your customers a way to split purchases over a series of payments. Depending on the purchase, they can pay with four interest-free payments (Split Pay) or pay over a longer term (Installments), which might include interest. Check this [page](https://docs.stripe.com/payments/affirm) for more details like country availability.
  PaymentMethodConfigurationsPostRequestBodyAffirm? affirm;

  ///  Afterpay gives your customers a way to pay for purchases in installments, check this [page](https://docs.stripe.com/payments/afterpay-clearpay) for more details like country availability. Afterpay is particularly popular among businesses selling fashion, beauty, and sports products.
  PaymentMethodConfigurationsPostRequestBodyAfterpayClearpay? afterpayClearpay;

  ///  Alipay is a digital wallet in China that has more than a billion active users worldwide. Alipay users can pay on the web or on a mobile device using login credentials or their Alipay app. Alipay has a low dispute rate and reduces fraud by authenticating payments using the customer's login credentials. Check this [page](https://docs.stripe.com/payments/alipay) for more details.
  PaymentMethodConfigurationsPostRequestBodyAlipay? alipay;

  ///  Alma is a Buy Now, Pay Later payment method that offers customers the ability to pay in 2, 3, or 4 installments.
  PaymentMethodConfigurationsPostRequestBodyAlma? alma;

  ///  Amazon Pay is a wallet payment method that lets your customers check out the same way as on Amazon.
  PaymentMethodConfigurationsPostRequestBodyAmazonPay? amazonPay;

  ///  Stripe users can accept [Apple Pay](https://stripe.com/payments/apple-pay) in iOS applications in iOS 9 and later, and on the web in Safari starting with iOS 10 or macOS Sierra. There are no additional fees to process Apple Pay payments, and the [pricing](https://stripe.com/pricing) is the same as other card transactions. Check this [page](https://docs.stripe.com/apple-pay) for more details.
  PaymentMethodConfigurationsPostRequestBodyApplePay? applePay;

  ///  Apple Pay Later, a payment method for customers to buy now and pay later, gives your customers a way to split purchases into four installments across six weeks.
  PaymentMethodConfigurationsPostRequestBodyApplePayLater? applePayLater;

  ///  Stripe users in Australia can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with an Australian bank account. Check this [page](https://docs.stripe.com/payments/au-becs-debit) for more details.
  PaymentMethodConfigurationsPostRequestBodyAuBecsDebit? auBecsDebit;

  ///  Stripe users in the UK can accept Bacs Direct Debit payments from customers with a UK bank account, check this [page](https://docs.stripe.com/payments/payment-methods/bacs-debit) for more details.
  PaymentMethodConfigurationsPostRequestBodyBacsDebit? bacsDebit;

  ///  Bancontact is the most popular online payment method in Belgium, with over 15 million cards in circulation. [Customers](https://docs.stripe.com/api/customers) use a Bancontact card or mobile app linked to a Belgian bank account to make online payments that are secure, guaranteed, and confirmed immediately. Check this [page](https://docs.stripe.com/payments/bancontact) for more details.
  PaymentMethodConfigurationsPostRequestBodyBancontact? bancontact;

  ///  Billie is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method that offers businesses Pay by Invoice where they offer payment terms ranging from 7-120 days. Customers are redirected from your website or app, authorize the payment with Billie, then return to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
  PaymentMethodConfigurationsPostRequestBodyBillie? billie;

  ///  BLIK is a [single use](https://docs.stripe.com/payments/payment-methods#usage) payment method that requires customers to authenticate their payments. When customers want to pay online using BLIK, they request a six-digit code from their banking application and enter it into the payment collection form. Check this [page](https://docs.stripe.com/payments/blik) for more details.
  PaymentMethodConfigurationsPostRequestBodyBlik? blik;

  ///  Boleto is an official (regulated by the Central Bank of Brazil) payment method in Brazil. Check this [page](https://docs.stripe.com/payments/boleto) for more details.
  PaymentMethodConfigurationsPostRequestBodyBoleto? boleto;

  ///  Cards are a popular way for consumers and businesses to pay online or in person. Stripe supports global and local card networks.
  PaymentMethodConfigurationsPostRequestBodyCard? card;

  ///  Cartes Bancaires is France's local card network. More than 95% of these cards are co-branded with either Visa or Mastercard, meaning you can process these cards over either Cartes Bancaires or the Visa or Mastercard networks. Check this [page](https://docs.stripe.com/payments/cartes-bancaires) for more details.
  PaymentMethodConfigurationsPostRequestBodyCartesBancaires? cartesBancaires;

  ///  Cash App is a popular consumer app in the US that allows customers to bank, invest, send, and receive money using their digital wallet. Check this [page](https://docs.stripe.com/payments/cash-app-pay) for more details.
  PaymentMethodConfigurationsPostRequestBodyCashapp? cashapp;

  ///  [Stablecoin payments](https://docs.stripe.com/payments/stablecoin-payments) enable customers to pay in stablecoins like USDC from 100s of wallets including Phantom and Metamask.
  PaymentMethodConfigurationsPostRequestBodyCrypto? crypto;

  ///  Uses a customer’s [cash balance](https://docs.stripe.com/payments/customer-balance) for the payment. The cash balance can be funded via a bank transfer. Check this [page](https://docs.stripe.com/payments/bank-transfers) for more details.
  PaymentMethodConfigurationsPostRequestBodyCustomerBalance? customerBalance;

  ///  EPS is an Austria-based payment method that allows customers to complete transactions online using their bank credentials. EPS is supported by all Austrian banks and is accepted by over 80% of Austrian online retailers. Check this [page](https://docs.stripe.com/payments/eps) for more details.
  PaymentMethodConfigurationsPostRequestBodyEps? eps;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Financial Process Exchange (FPX) is a Malaysia-based payment method that allows customers to complete transactions online using their bank credentials. Bank Negara Malaysia (BNM), the Central Bank of Malaysia, and eleven other major Malaysian financial institutions are members of the PayNet Group, which owns and operates FPX. It is one of the most popular online payment methods in Malaysia, with nearly 90 million transactions in 2018 according to BNM. Check this [page](https://docs.stripe.com/payments/fpx) for more details.
  PaymentMethodConfigurationsPostRequestBodyFpx? fpx;

  ///  Meal vouchers in France, or “titres-restaurant”, is a local benefits program commonly offered by employers for their employees to purchase prepared food and beverages on working days. Check this [page](https://docs.stripe.com/payments/benefits/fr-meal-vouchers) for more details.
  PaymentMethodConfigurationsPostRequestBodyFrMealVoucherConecs?
      frMealVoucherConecs;

  ///  giropay is a German payment method based on online banking, introduced in 2006. It allows customers to complete transactions online using their online banking environment, with funds debited from their bank account. Depending on their bank, customers confirm payments on giropay using a second factor of authentication or a PIN. giropay accounts for 10% of online checkouts in Germany. Check this [page](https://docs.stripe.com/payments/giropay) for more details.
  PaymentMethodConfigurationsPostRequestBodyGiropay? giropay;

  ///  Google Pay allows customers to make payments in your app or website using any credit or debit card saved to their Google Account, including those from Google Play, YouTube, Chrome, or an Android device. Use the Google Pay API to request any credit or debit card stored in your customer's Google account. Check this [page](https://docs.stripe.com/google-pay) for more details.
  PaymentMethodConfigurationsPostRequestBodyGooglePay? googlePay;

  ///  GrabPay is a payment method developed by [Grab](https://www.grab.com/sg/consumer/finance/pay/). GrabPay is a digital wallet - customers maintain a balance in their wallets that they pay out with. Check this [page](https://docs.stripe.com/payments/grabpay) for more details.
  PaymentMethodConfigurationsPostRequestBodyGrabpay? grabpay;

  ///  iDEAL is a Netherlands-based payment method that allows customers to complete transactions online using their bank credentials. All major Dutch banks are members of Currence, the scheme that operates iDEAL, making it the most popular online payment method in the Netherlands with a share of online transactions close to 55%. Check this [page](https://docs.stripe.com/payments/ideal) for more details.
  PaymentMethodConfigurationsPostRequestBodyIdeal? ideal;

  ///  JCB is a credit card company based in Japan. JCB is currently available in Japan to businesses approved by JCB, and available to all businesses in Australia, Canada, Hong Kong, Japan, New Zealand, Singapore, Switzerland, United Kingdom, United States, and all countries in the European Economic Area except Iceland. Check this [page](https://support.stripe.com/questions/accepting-japan-credit-bureau-%28jcb%29-payments) for more details.
  PaymentMethodConfigurationsPostRequestBodyJcb? jcb;

  ///  Kakao Pay is a popular local wallet available in South Korea.
  PaymentMethodConfigurationsPostRequestBodyKakaoPay? kakaoPay;

  ///  Klarna gives customers a range of [payment options](https://docs.stripe.com/payments/klarna#payment-options) during checkout. Available payment options vary depending on the customer's billing address and the transaction amount. These payment options make it convenient for customers to purchase items in all price ranges. Check this [page](https://docs.stripe.com/payments/klarna) for more details.
  PaymentMethodConfigurationsPostRequestBodyKlarna? klarna;

  ///  Konbini allows customers in Japan to pay for bills and online purchases at convenience stores with cash. Check this [page](https://docs.stripe.com/payments/konbini) for more details.
  PaymentMethodConfigurationsPostRequestBodyKonbini? konbini;

  ///  Korean cards let users pay using locally issued cards from South Korea.
  PaymentMethodConfigurationsPostRequestBodyKrCard? krCard;

  ///  [Link](https://docs.stripe.com/payments/link) is a payment method network. With Link, users save their payment details once, then reuse that information to pay with one click for any business on the network.
  PaymentMethodConfigurationsPostRequestBodyLink? link;

  ///  MB WAY is the most popular wallet in Portugal. After entering their phone number in your checkout, customers approve the payment directly in their MB WAY app. Check this [page](https://docs.stripe.com/payments/mb-way) for more details.
  PaymentMethodConfigurationsPostRequestBodyMbWay? mbWay;

  ///  MobilePay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) card wallet payment method used in Denmark and Finland. It allows customers to [authenticate and approve](https://docs.stripe.com/payments/payment-methods#customer-actions) payments using the MobilePay app. Check this [page](https://docs.stripe.com/payments/mobilepay) for more details.
  PaymentMethodConfigurationsPostRequestBodyMobilepay? mobilepay;

  ///  Stripe users in Europe and the United States can accept Multibanco payments from customers in Portugal using [Sources](https://stripe.com/docs/sources)—a single integration path for creating payments using any supported method.
  PaymentMethodConfigurationsPostRequestBodyMultibanco? multibanco;

  ///  Configuration name.
  String? name;

  ///  Naver Pay is a popular local wallet available in South Korea.
  PaymentMethodConfigurationsPostRequestBodyNaverPay? naverPay;

  ///  Stripe users in New Zealand can accept Bulk Electronic Clearing System (BECS) direct debit payments from customers with a New Zeland bank account. Check this [page](https://docs.stripe.com/payments/nz-bank-account) for more details.
  PaymentMethodConfigurationsPostRequestBodyNzBankAccount? nzBankAccount;

  ///  OXXO is a Mexican chain of convenience stores with thousands of locations across Latin America and represents nearly 20% of online transactions in Mexico. OXXO allows customers to pay bills and online purchases in-store with cash. Check this [page](https://docs.stripe.com/payments/oxxo) for more details.
  PaymentMethodConfigurationsPostRequestBodyOxxo? oxxo;

  ///  Przelewy24 is a Poland-based payment method aggregator that allows customers to complete transactions online using bank transfers and other methods. Bank transfers account for 30% of online payments in Poland and Przelewy24 provides a way for customers to pay with over 165 banks. Check this [page](https://docs.stripe.com/payments/p24) for more details.
  PaymentMethodConfigurationsPostRequestBodyP24? p24;

  ///  Configuration's parent configuration. Specify to create a child configuration.
  String? parent;

  ///  Pay by bank is a redirect payment method backed by bank transfers. A customer is redirected to their bank to authorize a bank transfer for a given amount. This removes a lot of the error risks inherent in waiting for the customer to initiate a transfer themselves, and is less expensive than card payments.
  PaymentMethodConfigurationsPostRequestBodyPayByBank? payByBank;

  ///  PAYCO is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
  PaymentMethodConfigurationsPostRequestBodyPayco? payco;

  ///  PayNow is a Singapore-based payment method that allows customers to make a payment using their preferred app from participating banks and participating non-bank financial institutions. Check this [page](https://docs.stripe.com/payments/paynow) for more details.
  PaymentMethodConfigurationsPostRequestBodyPaynow? paynow;

  ///  PayPal, a digital wallet popular with customers in Europe, allows your customers worldwide to pay using their PayPal account. Check this [page](https://docs.stripe.com/payments/paypal) for more details.
  PaymentMethodConfigurationsPostRequestBodyPaypal? paypal;

  ///  PayTo is a [real-time](https://docs.stripe.com/payments/real-time) payment method that enables customers in Australia to pay by providing their bank account details. Customers must accept a mandate authorizing you to debit their account. Check this [page](https://docs.stripe.com/payments/payto) for more details.
  PaymentMethodConfigurationsPostRequestBodyPayto? payto;

  ///  Pix is a payment method popular in Brazil. When paying with Pix, customers authenticate and approve payments by scanning a QR code in their preferred banking app. Check this [page](https://docs.stripe.com/payments/pix) for more details.
  PaymentMethodConfigurationsPostRequestBodyPix? pix;

  ///  PromptPay is a Thailand-based payment method that allows customers to make a payment using their preferred app from participating banks. Check this [page](https://docs.stripe.com/payments/promptpay) for more details.
  PaymentMethodConfigurationsPostRequestBodyPromptpay? promptpay;

  ///  Revolut Pay, developed by Revolut, a global finance app, is a digital wallet payment method. Revolut Pay uses the customer’s stored balance or cards to fund the payment, and offers the option for non-Revolut customers to save their details after their first purchase.
  PaymentMethodConfigurationsPostRequestBodyRevolutPay? revolutPay;

  ///  Samsung Pay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage local wallet available in South Korea.
  PaymentMethodConfigurationsPostRequestBodySamsungPay? samsungPay;

  ///  Satispay is a [single-use](https://docs.stripe.com/payments/payment-methods#usage) payment method where customers are required to [authenticate](/payments/payment-methods#customer-actions) their payment. Customers pay by being redirected from your website or app, authorizing the payment with Satispay, then returning to your website or app. You get [immediate notification](/payments/payment-methods#payment-notification) of whether the payment succeeded or failed.
  PaymentMethodConfigurationsPostRequestBodySatispay? satispay;

  ///  The [Single Euro Payments Area (SEPA)](https://en.wikipedia.org/wiki/Single_Euro_Payments_Area) is an initiative of the European Union to simplify payments within and across member countries. SEPA established and enforced banking standards to allow for the direct debiting of every EUR-denominated bank account within the SEPA region, check this [page](https://docs.stripe.com/payments/sepa-debit) for more details.
  PaymentMethodConfigurationsPostRequestBodySepaDebit? sepaDebit;

  ///  Stripe users in Europe and the United States can use the [Payment Intents API](https://stripe.com/docs/payments/payment-intents)—a single integration path for creating payments using any supported method—to accept [Sofort](https://www.sofort.com/) payments from customers. Check this [page](https://docs.stripe.com/payments/sofort) for more details.
  PaymentMethodConfigurationsPostRequestBodySofort? sofort;

  ///  Swish is a [real-time](https://docs.stripe.com/payments/real-time) payment method popular in Sweden. It allows customers to [authenticate and approve](https://docs.stripe.com/payments/payment-methods#customer-actions) payments using the Swish mobile app and the Swedish BankID mobile app. Check this [page](https://docs.stripe.com/payments/swish) for more details.
  PaymentMethodConfigurationsPostRequestBodySwish? swish;

  ///  Twint is a payment method popular in Switzerland. It allows customers to pay using their mobile phone. Check this [page](https://docs.stripe.com/payments/twint) for more details.
  PaymentMethodConfigurationsPostRequestBodyTwint? twint;

  ///  Stripe users in the United States can accept ACH direct debit payments from customers with a US bank account using the Automated Clearing House (ACH) payments system operated by Nacha. Check this [page](https://docs.stripe.com/payments/ach-direct-debit) for more details.
  PaymentMethodConfigurationsPostRequestBodyUsBankAccount? usBankAccount;

  ///  WeChat, owned by Tencent, is China's leading mobile app with over 1 billion monthly active users. Chinese consumers can use WeChat Pay to pay for goods and services inside of businesses' apps and websites. WeChat Pay users buy most frequently in gaming, e-commerce, travel, online education, and food/nutrition. Check this [page](https://docs.stripe.com/payments/wechat-pay) for more details.
  PaymentMethodConfigurationsPostRequestBodyWechatPay? wechatPay;

  ///  Zip gives your customers a way to split purchases over a series of payments. Check this [page](https://docs.stripe.com/payments/zip) for more details like country availability.
  PaymentMethodConfigurationsPostRequestBodyZip? zip;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PaymentMethodConfigurationsPostRequestBody
      createFromDiscriminatorValue(ParseNode parseNode) {
    return PaymentMethodConfigurationsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyAcssDebit>(
            PaymentMethodConfigurationsPostRequestBodyAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['affirm'] = (node) => affirm =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyAffirm>(
            PaymentMethodConfigurationsPostRequestBodyAffirm
                .createFromDiscriminatorValue);
    deserializerMap['afterpay_clearpay'] = (node) => afterpayClearpay =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyAfterpayClearpay>(
            PaymentMethodConfigurationsPostRequestBodyAfterpayClearpay
                .createFromDiscriminatorValue);
    deserializerMap['alipay'] = (node) => alipay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyAlipay>(
            PaymentMethodConfigurationsPostRequestBodyAlipay
                .createFromDiscriminatorValue);
    deserializerMap['alma'] = (node) => alma =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyAlma>(
            PaymentMethodConfigurationsPostRequestBodyAlma
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyAmazonPay>(
            PaymentMethodConfigurationsPostRequestBodyAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['apple_pay'] = (node) => applePay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyApplePay>(
            PaymentMethodConfigurationsPostRequestBodyApplePay
                .createFromDiscriminatorValue);
    deserializerMap['apple_pay_later'] = (node) => applePayLater =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyApplePayLater>(
            PaymentMethodConfigurationsPostRequestBodyApplePayLater
                .createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyAuBecsDebit>(
            PaymentMethodConfigurationsPostRequestBodyAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyBacsDebit>(
            PaymentMethodConfigurationsPostRequestBodyBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyBancontact>(
            PaymentMethodConfigurationsPostRequestBodyBancontact
                .createFromDiscriminatorValue);
    deserializerMap['billie'] = (node) => billie =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyBillie>(
            PaymentMethodConfigurationsPostRequestBodyBillie
                .createFromDiscriminatorValue);
    deserializerMap['blik'] = (node) => blik =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyBlik>(
            PaymentMethodConfigurationsPostRequestBodyBlik
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyBoleto>(
            PaymentMethodConfigurationsPostRequestBodyBoleto
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyCard>(
            PaymentMethodConfigurationsPostRequestBodyCard
                .createFromDiscriminatorValue);
    deserializerMap['cartes_bancaires'] = (node) => cartesBancaires =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyCartesBancaires>(
            PaymentMethodConfigurationsPostRequestBodyCartesBancaires
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyCashapp>(
            PaymentMethodConfigurationsPostRequestBodyCashapp
                .createFromDiscriminatorValue);
    deserializerMap['crypto'] = (node) => crypto =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyCrypto>(
            PaymentMethodConfigurationsPostRequestBodyCrypto
                .createFromDiscriminatorValue);
    deserializerMap['customer_balance'] = (node) => customerBalance =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyCustomerBalance>(
            PaymentMethodConfigurationsPostRequestBodyCustomerBalance
                .createFromDiscriminatorValue);
    deserializerMap['eps'] = (node) => eps =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyEps>(
            PaymentMethodConfigurationsPostRequestBodyEps
                .createFromDiscriminatorValue);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['fpx'] = (node) => fpx =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyFpx>(
            PaymentMethodConfigurationsPostRequestBodyFpx
                .createFromDiscriminatorValue);
    deserializerMap['fr_meal_voucher_conecs'] = (node) => frMealVoucherConecs =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyFrMealVoucherConecs>(
            PaymentMethodConfigurationsPostRequestBodyFrMealVoucherConecs
                .createFromDiscriminatorValue);
    deserializerMap['giropay'] = (node) => giropay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyGiropay>(
            PaymentMethodConfigurationsPostRequestBodyGiropay
                .createFromDiscriminatorValue);
    deserializerMap['google_pay'] = (node) => googlePay = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyGooglePay>(
            PaymentMethodConfigurationsPostRequestBodyGooglePay
                .createFromDiscriminatorValue);
    deserializerMap['grabpay'] = (node) => grabpay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyGrabpay>(
            PaymentMethodConfigurationsPostRequestBodyGrabpay
                .createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyIdeal>(
            PaymentMethodConfigurationsPostRequestBodyIdeal
                .createFromDiscriminatorValue);
    deserializerMap['jcb'] = (node) => jcb =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyJcb>(
            PaymentMethodConfigurationsPostRequestBodyJcb
                .createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyKakaoPay>(
            PaymentMethodConfigurationsPostRequestBodyKakaoPay
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyKlarna>(
            PaymentMethodConfigurationsPostRequestBodyKlarna
                .createFromDiscriminatorValue);
    deserializerMap['konbini'] = (node) => konbini =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyKonbini>(
            PaymentMethodConfigurationsPostRequestBodyKonbini
                .createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyKrCard>(
            PaymentMethodConfigurationsPostRequestBodyKrCard
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyLink>(
            PaymentMethodConfigurationsPostRequestBodyLink
                .createFromDiscriminatorValue);
    deserializerMap['mb_way'] = (node) => mbWay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyMbWay>(
            PaymentMethodConfigurationsPostRequestBodyMbWay
                .createFromDiscriminatorValue);
    deserializerMap['mobilepay'] = (node) => mobilepay = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyMobilepay>(
            PaymentMethodConfigurationsPostRequestBodyMobilepay
                .createFromDiscriminatorValue);
    deserializerMap['multibanco'] = (node) => multibanco = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyMultibanco>(
            PaymentMethodConfigurationsPostRequestBodyMultibanco
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyNaverPay>(
            PaymentMethodConfigurationsPostRequestBodyNaverPay
                .createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyNzBankAccount>(
            PaymentMethodConfigurationsPostRequestBodyNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['oxxo'] = (node) => oxxo =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyOxxo>(
            PaymentMethodConfigurationsPostRequestBodyOxxo
                .createFromDiscriminatorValue);
    deserializerMap['p24'] = (node) => p24 =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyP24>(
            PaymentMethodConfigurationsPostRequestBodyP24
                .createFromDiscriminatorValue);
    deserializerMap['parent'] = (node) => parent = node.getStringValue();
    deserializerMap['pay_by_bank'] = (node) => payByBank = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyPayByBank>(
            PaymentMethodConfigurationsPostRequestBodyPayByBank
                .createFromDiscriminatorValue);
    deserializerMap['payco'] = (node) => payco =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyPayco>(
            PaymentMethodConfigurationsPostRequestBodyPayco
                .createFromDiscriminatorValue);
    deserializerMap['paynow'] = (node) => paynow =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyPaynow>(
            PaymentMethodConfigurationsPostRequestBodyPaynow
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyPaypal>(
            PaymentMethodConfigurationsPostRequestBodyPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyPayto>(
            PaymentMethodConfigurationsPostRequestBodyPayto
                .createFromDiscriminatorValue);
    deserializerMap['pix'] = (node) => pix =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyPix>(
            PaymentMethodConfigurationsPostRequestBodyPix
                .createFromDiscriminatorValue);
    deserializerMap['promptpay'] = (node) => promptpay = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyPromptpay>(
            PaymentMethodConfigurationsPostRequestBodyPromptpay
                .createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyRevolutPay>(
            PaymentMethodConfigurationsPostRequestBodyRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['samsung_pay'] = (node) => samsungPay = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodySamsungPay>(
            PaymentMethodConfigurationsPostRequestBodySamsungPay
                .createFromDiscriminatorValue);
    deserializerMap['satispay'] = (node) => satispay =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodySatispay>(
            PaymentMethodConfigurationsPostRequestBodySatispay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodySepaDebit>(
            PaymentMethodConfigurationsPostRequestBodySepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodySofort>(
            PaymentMethodConfigurationsPostRequestBodySofort
                .createFromDiscriminatorValue);
    deserializerMap['swish'] = (node) => swish =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodySwish>(
            PaymentMethodConfigurationsPostRequestBodySwish
                .createFromDiscriminatorValue);
    deserializerMap['twint'] = (node) => twint =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyTwint>(
            PaymentMethodConfigurationsPostRequestBodyTwint
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                PaymentMethodConfigurationsPostRequestBodyUsBankAccount>(
            PaymentMethodConfigurationsPostRequestBodyUsBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['wechat_pay'] = (node) => wechatPay = node
        .getObjectValue<PaymentMethodConfigurationsPostRequestBodyWechatPay>(
            PaymentMethodConfigurationsPostRequestBodyWechatPay
                .createFromDiscriminatorValue);
    deserializerMap['zip'] = (node) => zip =
        node.getObjectValue<PaymentMethodConfigurationsPostRequestBodyZip>(
            PaymentMethodConfigurationsPostRequestBodyZip
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyAcssDebit>(
            'acss_debit', acssDebit);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyAffirm>(
        'affirm', affirm);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyAfterpayClearpay>(
        'afterpay_clearpay', afterpayClearpay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyAlipay>(
        'alipay', alipay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyAlma>(
        'alma', alma);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyAmazonPay>(
            'amazon_pay', amazonPay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyApplePay>(
        'apple_pay', applePay);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyApplePayLater>(
        'apple_pay_later', applePayLater);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyBacsDebit>(
            'bacs_debit', bacsDebit);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyBancontact>(
            'bancontact', bancontact);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyBillie>(
        'billie', billie);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyBlik>(
        'blik', blik);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyCard>(
        'card', card);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyCartesBancaires>(
        'cartes_bancaires', cartesBancaires);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyCrypto>(
        'crypto', crypto);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyCustomerBalance>(
        'customer_balance', customerBalance);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyEps>(
        'eps', eps);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyFpx>(
        'fpx', fpx);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyFrMealVoucherConecs>(
        'fr_meal_voucher_conecs', frMealVoucherConecs);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyGiropay>(
        'giropay', giropay);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyGooglePay>(
            'google_pay', googlePay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyGrabpay>(
        'grabpay', grabpay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyIdeal>(
        'ideal', ideal);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyJcb>(
        'jcb', jcb);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyKonbini>(
        'konbini', konbini);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyLink>(
        'link', link);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyMbWay>(
        'mb_way', mbWay);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyMobilepay>(
            'mobilepay', mobilepay);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyMultibanco>(
            'multibanco', multibanco);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyOxxo>(
        'oxxo', oxxo);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyP24>(
        'p24', p24);
    writer.writeStringValue('parent', parent);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyPayByBank>(
            'pay_by_bank', payByBank);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyPayco>(
        'payco', payco);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyPaynow>(
        'paynow', paynow);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyPayto>(
        'payto', payto);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyPix>(
        'pix', pix);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyPromptpay>(
            'promptpay', promptpay);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyRevolutPay>(
            'revolut_pay', revolutPay);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodySamsungPay>(
            'samsung_pay', samsungPay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodySatispay>(
        'satispay', satispay);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodySepaDebit>(
            'sepa_debit', sepaDebit);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodySofort>(
        'sofort', sofort);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodySwish>(
        'swish', swish);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyTwint>(
        'twint', twint);
    writer.writeObjectValue<
            PaymentMethodConfigurationsPostRequestBodyUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer
        .writeObjectValue<PaymentMethodConfigurationsPostRequestBodyWechatPay>(
            'wechat_pay', wechatPay);
    writer.writeObjectValue<PaymentMethodConfigurationsPostRequestBodyZip>(
        'zip', zip);
  }
}
