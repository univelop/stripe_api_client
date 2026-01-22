// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intents_post_request_body_payment_method_options_acss_debit.dart';
import './setup_intents_post_request_body_payment_method_options_amazon_pay.dart';
import './setup_intents_post_request_body_payment_method_options_bacs_debit.dart';
import './setup_intents_post_request_body_payment_method_options_card.dart';
import './setup_intents_post_request_body_payment_method_options_card_present.dart';
import './setup_intents_post_request_body_payment_method_options_klarna.dart';
import './setup_intents_post_request_body_payment_method_options_link.dart';
import './setup_intents_post_request_body_payment_method_options_paypal.dart';
import './setup_intents_post_request_body_payment_method_options_payto.dart';
import './setup_intents_post_request_body_payment_method_options_sepa_debit.dart';
import './setup_intents_post_request_body_payment_method_options_us_bank_account.dart';

/// auto generated
/// Payment method-specific configuration for this SetupIntent.
class SetupIntentsPostRequestBodyPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebit? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amazon_pay property
  SetupIntentsPostRequestBodyPaymentMethodOptionsAmazonPay? amazonPay;

  ///  The bacs_debit property
  SetupIntentsPostRequestBodyPaymentMethodOptionsBacsDebit? bacsDebit;

  ///  The card property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCard? card;

  ///  The card_present property
  SetupIntentsPostRequestBodyPaymentMethodOptionsCardPresent? cardPresent;

  ///  The klarna property
  SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna? klarna;

  ///  The link property
  SetupIntentsPostRequestBodyPaymentMethodOptionsLink? link;

  ///  The paypal property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPaypal? paypal;

  ///  The payto property
  SetupIntentsPostRequestBodyPaymentMethodOptionsPayto? payto;

  ///  The sepa_debit property
  SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebit? sepaDebit;

  ///  The us_bank_account property
  SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount? usBankAccount;

  /// Instantiates a new [SetupIntentsPostRequestBodyPaymentMethodOptions] and sets the default values.
  SetupIntentsPostRequestBodyPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentsPostRequestBodyPaymentMethodOptions
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SetupIntentsPostRequestBodyPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebit>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebit
            .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAmazonPay>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsAmazonPay
            .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsBacsDebit>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsBacsDebit
            .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsCard>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsCard
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodOptionsCardPresent>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardPresent
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsLink>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsLink
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsPaypal>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaypal
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto = node
        .getObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsPayto>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsPayto
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit = node.getObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebit>(
        SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebit
            .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount =
        node.getObjectValue<
                SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount>(
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAcssDebit>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsAmazonPay>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsBacsDebit>(
        'bacs_debit', bacsDebit);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsCard>(
            'card', card);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsCardPresent>(
        'card_present', cardPresent);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsKlarna>(
        'klarna', klarna);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsLink>(
            'link', link);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsPaypal>(
        'paypal', paypal);
    writer
        .writeObjectValue<SetupIntentsPostRequestBodyPaymentMethodOptionsPayto>(
            'payto', payto);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsSepaDebit>(
        'sepa_debit', sepaDebit);
    writer.writeObjectValue<
            SetupIntentsPostRequestBodyPaymentMethodOptionsUsBankAccount>(
        'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
