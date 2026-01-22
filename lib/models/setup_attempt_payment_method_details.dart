// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_attempt_payment_method_details_acss_debit.dart';
import './setup_attempt_payment_method_details_amazon_pay.dart';
import './setup_attempt_payment_method_details_au_becs_debit.dart';
import './setup_attempt_payment_method_details_bacs_debit.dart';
import './setup_attempt_payment_method_details_bancontact.dart';
import './setup_attempt_payment_method_details_boleto.dart';
import './setup_attempt_payment_method_details_card.dart';
import './setup_attempt_payment_method_details_card_present.dart';
import './setup_attempt_payment_method_details_cashapp.dart';
import './setup_attempt_payment_method_details_ideal.dart';
import './setup_attempt_payment_method_details_kakao_pay.dart';
import './setup_attempt_payment_method_details_klarna.dart';
import './setup_attempt_payment_method_details_kr_card.dart';
import './setup_attempt_payment_method_details_link.dart';
import './setup_attempt_payment_method_details_naver_pay.dart';
import './setup_attempt_payment_method_details_nz_bank_account.dart';
import './setup_attempt_payment_method_details_paypal.dart';
import './setup_attempt_payment_method_details_payto.dart';
import './setup_attempt_payment_method_details_revolut_pay.dart';
import './setup_attempt_payment_method_details_sepa_debit.dart';
import './setup_attempt_payment_method_details_sofort.dart';
import './setup_attempt_payment_method_details_us_bank_account.dart';

/// auto generated
class SetupAttemptPaymentMethodDetails
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SetupAttemptPaymentMethodDetailsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amazon_pay property
  SetupAttemptPaymentMethodDetailsAmazonPay? amazonPay;

  ///  The au_becs_debit property
  SetupAttemptPaymentMethodDetailsAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  SetupAttemptPaymentMethodDetailsBacsDebit? bacsDebit;

  ///  The bancontact property
  SetupAttemptPaymentMethodDetailsBancontact? bancontact;

  ///  The boleto property
  SetupAttemptPaymentMethodDetailsBoleto? boleto;

  ///  The card property
  SetupAttemptPaymentMethodDetailsCard? card;

  ///  The card_present property
  SetupAttemptPaymentMethodDetailsCardPresent? cardPresent;

  ///  The cashapp property
  SetupAttemptPaymentMethodDetailsCashapp? cashapp;

  ///  The ideal property
  SetupAttemptPaymentMethodDetailsIdeal? ideal;

  ///  The kakao_pay property
  SetupAttemptPaymentMethodDetailsKakaoPay? kakaoPay;

  ///  The klarna property
  SetupAttemptPaymentMethodDetailsKlarna? klarna;

  ///  The kr_card property
  SetupAttemptPaymentMethodDetailsKrCard? krCard;

  ///  The link property
  SetupAttemptPaymentMethodDetailsLink? link;

  ///  The naver_pay property
  SetupAttemptPaymentMethodDetailsNaverPay? naverPay;

  ///  The nz_bank_account property
  SetupAttemptPaymentMethodDetailsNzBankAccount? nzBankAccount;

  ///  The paypal property
  SetupAttemptPaymentMethodDetailsPaypal? paypal;

  ///  The payto property
  SetupAttemptPaymentMethodDetailsPayto? payto;

  ///  The revolut_pay property
  SetupAttemptPaymentMethodDetailsRevolutPay? revolutPay;

  ///  The sepa_debit property
  SetupAttemptPaymentMethodDetailsSepaDebit? sepaDebit;

  ///  The sofort property
  SetupAttemptPaymentMethodDetailsSofort? sofort;

  ///  The type of the payment method used in the SetupIntent (e.g., `card`). An additional hash is included on `payment_method_details` with a name matching this value. It contains confirmation-specific information for the payment method.
  String? type_;

  ///  The us_bank_account property
  SetupAttemptPaymentMethodDetailsUsBankAccount? usBankAccount;

  /// Instantiates a new [SetupAttemptPaymentMethodDetails] and sets the default values.
  SetupAttemptPaymentMethodDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupAttemptPaymentMethodDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupAttemptPaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsAcssDebit>(
        SetupAttemptPaymentMethodDetailsAcssDebit.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsAmazonPay>(
        SetupAttemptPaymentMethodDetailsAmazonPay.createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsAuBecsDebit>(
            SetupAttemptPaymentMethodDetailsAuBecsDebit
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsBacsDebit>(
        SetupAttemptPaymentMethodDetailsBacsDebit.createFromDiscriminatorValue);
    deserializerMap['bancontact'] = (node) => bancontact =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsBancontact>(
            SetupAttemptPaymentMethodDetailsBancontact
                .createFromDiscriminatorValue);
    deserializerMap['boleto'] = (node) => boleto = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsBoleto>(
        SetupAttemptPaymentMethodDetailsBoleto.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsCard>(
            SetupAttemptPaymentMethodDetailsCard.createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsCardPresent>(
            SetupAttemptPaymentMethodDetailsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsCashapp>(
        SetupAttemptPaymentMethodDetailsCashapp.createFromDiscriminatorValue);
    deserializerMap['ideal'] = (node) => ideal =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsIdeal>(
            SetupAttemptPaymentMethodDetailsIdeal.createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsKakaoPay>(
        SetupAttemptPaymentMethodDetailsKakaoPay.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsKlarna>(
        SetupAttemptPaymentMethodDetailsKlarna.createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsKrCard>(
        SetupAttemptPaymentMethodDetailsKrCard.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsLink>(
            SetupAttemptPaymentMethodDetailsLink.createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsNaverPay>(
        SetupAttemptPaymentMethodDetailsNaverPay.createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsNzBankAccount>(
            SetupAttemptPaymentMethodDetailsNzBankAccount
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsPaypal>(
        SetupAttemptPaymentMethodDetailsPaypal.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsPayto>(
            SetupAttemptPaymentMethodDetailsPayto.createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsRevolutPay>(
            SetupAttemptPaymentMethodDetailsRevolutPay
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsSepaDebit>(
        SetupAttemptPaymentMethodDetailsSepaDebit.createFromDiscriminatorValue);
    deserializerMap['sofort'] = (node) => sofort = node.getObjectValue<
            SetupAttemptPaymentMethodDetailsSofort>(
        SetupAttemptPaymentMethodDetailsSofort.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<SetupAttemptPaymentMethodDetailsUsBankAccount>(
            SetupAttemptPaymentMethodDetailsUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsAuBecsDebit>(
        'au_becs_debit', auBecsDebit);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsBancontact>(
        'bancontact', bancontact);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsBoleto>(
        'boleto', boleto);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsCard>('card', card);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsCashapp>(
        'cashapp', cashapp);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsIdeal>(
        'ideal', ideal);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsKakaoPay>(
        'kakao_pay', kakaoPay);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsKrCard>(
        'kr_card', krCard);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsLink>('link', link);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsNaverPay>(
        'naver_pay', naverPay);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsPayto>(
        'payto', payto);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsRevolutPay>(
        'revolut_pay', revolutPay);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsSofort>(
        'sofort', sofort);
    writer.writeStringValue('type', type_);
    writer.writeObjectValue<SetupAttemptPaymentMethodDetailsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
