// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './card_mandate_payment_method_details.dart';
import './mandate_acss_debit.dart';
import './mandate_amazon_pay.dart';
import './mandate_au_becs_debit.dart';
import './mandate_bacs_debit.dart';
import './mandate_cashapp.dart';
import './mandate_kakao_pay.dart';
import './mandate_klarna.dart';
import './mandate_kr_card.dart';
import './mandate_link.dart';
import './mandate_naver_pay.dart';
import './mandate_nz_bank_account.dart';
import './mandate_paypal.dart';
import './mandate_payto.dart';
import './mandate_revolut_pay.dart';
import './mandate_sepa_debit.dart';
import './mandate_us_bank_account.dart';

/// auto generated
class MandatePaymentMethodDetails implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  MandateAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amazon_pay property
  MandateAmazonPay? amazonPay;

  ///  The au_becs_debit property
  MandateAuBecsDebit? auBecsDebit;

  ///  The bacs_debit property
  MandateBacsDebit? bacsDebit;

  ///  The card property
  CardMandatePaymentMethodDetails? card;

  ///  The cashapp property
  MandateCashapp? cashapp;

  ///  The kakao_pay property
  MandateKakaoPay? kakaoPay;

  ///  The klarna property
  MandateKlarna? klarna;

  ///  The kr_card property
  MandateKrCard? krCard;

  ///  The link property
  MandateLink? link;

  ///  The naver_pay property
  MandateNaverPay? naverPay;

  ///  The nz_bank_account property
  MandateNzBankAccount? nzBankAccount;

  ///  The paypal property
  MandatePaypal? paypal;

  ///  The payto property
  MandatePayto? payto;

  ///  The revolut_pay property
  MandateRevolutPay? revolutPay;

  ///  The sepa_debit property
  MandateSepaDebit? sepaDebit;

  ///  This mandate corresponds with a specific payment method type. The `payment_method_details` includes an additional hash with the same name and contains mandate information that's specific to that payment method.
  String? type_;

  ///  The us_bank_account property
  MandateUsBankAccount? usBankAccount;

  /// Instantiates a new [MandatePaymentMethodDetails] and sets the default values.
  MandatePaymentMethodDetails() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static MandatePaymentMethodDetails createFromDiscriminatorValue(
      ParseNode parseNode) {
    return MandatePaymentMethodDetails();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<MandateAcssDebit>(
            MandateAcssDebit.createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<MandateAmazonPay>(
            MandateAmazonPay.createFromDiscriminatorValue);
    deserializerMap['au_becs_debit'] = (node) => auBecsDebit =
        node.getObjectValue<MandateAuBecsDebit>(
            MandateAuBecsDebit.createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<MandateBacsDebit>(
            MandateBacsDebit.createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<CardMandatePaymentMethodDetails>(
            CardMandatePaymentMethodDetails.createFromDiscriminatorValue);
    deserializerMap['cashapp'] = (node) => cashapp =
        node.getObjectValue<MandateCashapp>(
            MandateCashapp.createFromDiscriminatorValue);
    deserializerMap['kakao_pay'] = (node) => kakaoPay =
        node.getObjectValue<MandateKakaoPay>(
            MandateKakaoPay.createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<MandateKlarna>(
            MandateKlarna.createFromDiscriminatorValue);
    deserializerMap['kr_card'] = (node) => krCard =
        node.getObjectValue<MandateKrCard>(
            MandateKrCard.createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link = node
        .getObjectValue<MandateLink>(MandateLink.createFromDiscriminatorValue);
    deserializerMap['naver_pay'] = (node) => naverPay =
        node.getObjectValue<MandateNaverPay>(
            MandateNaverPay.createFromDiscriminatorValue);
    deserializerMap['nz_bank_account'] = (node) => nzBankAccount =
        node.getObjectValue<MandateNzBankAccount>(
            MandateNzBankAccount.createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<MandatePaypal>(
            MandatePaypal.createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<MandatePayto>(
            MandatePayto.createFromDiscriminatorValue);
    deserializerMap['revolut_pay'] = (node) => revolutPay =
        node.getObjectValue<MandateRevolutPay>(
            MandateRevolutPay.createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<MandateSepaDebit>(
            MandateSepaDebit.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<MandateUsBankAccount>(
            MandateUsBankAccount.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<MandateAcssDebit>('acss_debit', acssDebit);
    writer.writeObjectValue<MandateAmazonPay>('amazon_pay', amazonPay);
    writer.writeObjectValue<MandateAuBecsDebit>('au_becs_debit', auBecsDebit);
    writer.writeObjectValue<MandateBacsDebit>('bacs_debit', bacsDebit);
    writer.writeObjectValue<CardMandatePaymentMethodDetails>('card', card);
    writer.writeObjectValue<MandateCashapp>('cashapp', cashapp);
    writer.writeObjectValue<MandateKakaoPay>('kakao_pay', kakaoPay);
    writer.writeObjectValue<MandateKlarna>('klarna', klarna);
    writer.writeObjectValue<MandateKrCard>('kr_card', krCard);
    writer.writeObjectValue<MandateLink>('link', link);
    writer.writeObjectValue<MandateNaverPay>('naver_pay', naverPay);
    writer.writeObjectValue<MandateNzBankAccount>(
        'nz_bank_account', nzBankAccount);
    writer.writeObjectValue<MandatePaypal>('paypal', paypal);
    writer.writeObjectValue<MandatePayto>('payto', payto);
    writer.writeObjectValue<MandateRevolutPay>('revolut_pay', revolutPay);
    writer.writeObjectValue<MandateSepaDebit>('sepa_debit', sepaDebit);
    writer.writeStringValue('type', type_);
    writer.writeObjectValue<MandateUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
