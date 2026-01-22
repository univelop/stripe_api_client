// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './confirm_post_request_body_payment_method_options_acss_debit.dart';
import './confirm_post_request_body_payment_method_options_amazon_pay.dart';
import './confirm_post_request_body_payment_method_options_bacs_debit.dart';
import './confirm_post_request_body_payment_method_options_card.dart';
import './confirm_post_request_body_payment_method_options_card_present.dart';
import './confirm_post_request_body_payment_method_options_klarna.dart';
import './confirm_post_request_body_payment_method_options_link.dart';
import './confirm_post_request_body_payment_method_options_paypal.dart';
import './confirm_post_request_body_payment_method_options_payto.dart';
import './confirm_post_request_body_payment_method_options_sepa_debit.dart';
import './confirm_post_request_body_payment_method_options_us_bank_account.dart';

/// auto generated
/// Payment method-specific configuration for this SetupIntent.
class ConfirmPostRequestBodyPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amazon_pay property
  ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The bacs_debit property
  ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit? bacsDebit;

  ///  The card property
  ConfirmPostRequestBodyPaymentMethodOptionsCard? card;

  ///  The card_present property
  ConfirmPostRequestBodyPaymentMethodOptionsCardPresent? cardPresent;

  ///  The klarna property
  ConfirmPostRequestBodyPaymentMethodOptionsKlarna? klarna;

  ///  The link property
  ConfirmPostRequestBodyPaymentMethodOptionsLink? link;

  ///  The paypal property
  ConfirmPostRequestBodyPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  ConfirmPostRequestBodyPaymentMethodOptionsPayto? payto;

  ///  The sepa_debit property
  ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit? sepaDebit;

  ///  The us_bank_account property
  ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount? usBankAccount;

  /// Instantiates a new [ConfirmPostRequestBodyPaymentMethodOptions] and sets the default values.
  ConfirmPostRequestBodyPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ConfirmPostRequestBodyPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ConfirmPostRequestBodyPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit>(
            ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay>(
            ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit>(
            ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCard>(
            ConfirmPostRequestBodyPaymentMethodOptionsCard
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCardPresent>(
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKlarna>(
            ConfirmPostRequestBodyPaymentMethodOptionsKlarna
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsLink>(
            ConfirmPostRequestBodyPaymentMethodOptionsLink
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPaypal>(
            ConfirmPostRequestBodyPaymentMethodOptionsPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPayto>(
            ConfirmPostRequestBodyPaymentMethodOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node
        .getObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit>(
            ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount>(
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAcssDebit>(
            'acss_debit', acssDebit);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsAmazonPay>(
            'amazon_pay', amazonPay);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsBacsDebit>(
            'bacs_debit', bacsDebit);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsCard>(
        'card', card);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsKlarna>(
        'klarna', klarna);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsLink>(
        'link', link);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPaypal>(
        'paypal', paypal);
    writer.writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsPayto>(
        'payto', payto);
    writer
        .writeObjectValue<ConfirmPostRequestBodyPaymentMethodOptionsSepaDebit>(
            'sepa_debit', sepaDebit);
    writer.writeObjectValue<
            ConfirmPostRequestBodyPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
