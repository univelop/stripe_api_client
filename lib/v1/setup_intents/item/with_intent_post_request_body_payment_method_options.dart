// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_intent_post_request_body_payment_method_options_acss_debit.dart';
import './with_intent_post_request_body_payment_method_options_amazon_pay.dart';
import './with_intent_post_request_body_payment_method_options_bacs_debit.dart';
import './with_intent_post_request_body_payment_method_options_card.dart';
import './with_intent_post_request_body_payment_method_options_card_present.dart';
import './with_intent_post_request_body_payment_method_options_klarna.dart';
import './with_intent_post_request_body_payment_method_options_link.dart';
import './with_intent_post_request_body_payment_method_options_paypal.dart';
import './with_intent_post_request_body_payment_method_options_payto.dart';
import './with_intent_post_request_body_payment_method_options_sepa_debit.dart';
import './with_intent_post_request_body_payment_method_options_us_bank_account.dart';

/// auto generated
/// Payment method-specific configuration for this SetupIntent.
class WithIntentPostRequestBodyPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amazon_pay property
  WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The bacs_debit property
  WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit? bacsDebit;

  ///  The card property
  WithIntentPostRequestBodyPaymentMethodOptionsCard? card;

  ///  The card_present property
  WithIntentPostRequestBodyPaymentMethodOptionsCardPresent? cardPresent;

  ///  The klarna property
  WithIntentPostRequestBodyPaymentMethodOptionsKlarna? klarna;

  ///  The link property
  WithIntentPostRequestBodyPaymentMethodOptionsLink? link;

  ///  The paypal property
  WithIntentPostRequestBodyPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  WithIntentPostRequestBodyPaymentMethodOptionsPayto? payto;

  ///  The sepa_debit property
  WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit? sepaDebit;

  ///  The us_bank_account property
  WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount? usBankAccount;

  /// Instantiates a new [WithIntentPostRequestBodyPaymentMethodOptions] and sets the default values.
  WithIntentPostRequestBodyPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithIntentPostRequestBodyPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return WithIntentPostRequestBodyPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit>(
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay>(
            WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit>(
            WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCard>(
            WithIntentPostRequestBodyPaymentMethodOptionsCard
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsCardPresent>(
            WithIntentPostRequestBodyPaymentMethodOptionsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKlarna>(
            WithIntentPostRequestBodyPaymentMethodOptionsKlarna
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsLink>(
            WithIntentPostRequestBodyPaymentMethodOptionsLink
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPaypal>(
            WithIntentPostRequestBodyPaymentMethodOptionsPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPayto>(
            WithIntentPostRequestBodyPaymentMethodOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit>(
            WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount>(
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsBacsDebit>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsCardPresent>(
        'card_present', cardPresent);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsKlarna>(
            'klarna', klarna);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsLink>(
        'link', link);
    writer
        .writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPaypal>(
            'paypal', paypal);
    writer.writeObjectValue<WithIntentPostRequestBodyPaymentMethodOptionsPayto>(
        'payto', payto);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<
            WithIntentPostRequestBodyPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
