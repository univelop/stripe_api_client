// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './setup_intent_payment_method_options_acss_debit_wrapper.dart';
import './setup_intent_payment_method_options_amazon_pay_wrapper.dart';
import './setup_intent_payment_method_options_bacs_debit_wrapper.dart';
import './setup_intent_payment_method_options_card_present_wrapper.dart';
import './setup_intent_payment_method_options_card_wrapper.dart';
import './setup_intent_payment_method_options_klarna_wrapper.dart';
import './setup_intent_payment_method_options_link_wrapper.dart';
import './setup_intent_payment_method_options_paypal_wrapper.dart';
import './setup_intent_payment_method_options_payto_wrapper.dart';
import './setup_intent_payment_method_options_sepa_debit_wrapper.dart';
import './setup_intent_payment_method_options_us_bank_account_wrapper.dart';

/// auto generated
class SetupIntentPaymentMethodOptions
    implements AdditionalDataHolder, Parsable {
  ///  The acss_debit property
  SetupIntentPaymentMethodOptionsAcssDebitWrapper? acssDebit;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The amazon_pay property
  SetupIntentPaymentMethodOptionsAmazonPayWrapper? amazonPay;

  ///  The bacs_debit property
  SetupIntentPaymentMethodOptionsBacsDebitWrapper? bacsDebit;

  ///  The card property
  SetupIntentPaymentMethodOptionsCardWrapper? card;

  ///  The card_present property
  SetupIntentPaymentMethodOptionsCardPresentWrapper? cardPresent;

  ///  The klarna property
  SetupIntentPaymentMethodOptionsKlarnaWrapper? klarna;

  ///  The link property
  SetupIntentPaymentMethodOptionsLinkWrapper? link;

  ///  The paypal property
  SetupIntentPaymentMethodOptionsPaypalWrapper? paypal;

  ///  The payto property
  SetupIntentPaymentMethodOptionsPaytoWrapper? payto;

  ///  The sepa_debit property
  SetupIntentPaymentMethodOptionsSepaDebitWrapper? sepaDebit;

  ///  The us_bank_account property
  SetupIntentPaymentMethodOptionsUsBankAccountWrapper? usBankAccount;

  /// Instantiates a new [SetupIntentPaymentMethodOptions] and sets the default values.
  SetupIntentPaymentMethodOptions() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SetupIntentPaymentMethodOptions createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SetupIntentPaymentMethodOptions();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['acss_debit'] = (node) => acssDebit =
        node.getObjectValue<SetupIntentPaymentMethodOptionsAcssDebitWrapper>(
            SetupIntentPaymentMethodOptionsAcssDebitWrapper
                .createFromDiscriminatorValue);
    deserializerMap['amazon_pay'] = (node) => amazonPay =
        node.getObjectValue<SetupIntentPaymentMethodOptionsAmazonPayWrapper>(
            SetupIntentPaymentMethodOptionsAmazonPayWrapper
                .createFromDiscriminatorValue);
    deserializerMap['bacs_debit'] = (node) => bacsDebit =
        node.getObjectValue<SetupIntentPaymentMethodOptionsBacsDebitWrapper>(
            SetupIntentPaymentMethodOptionsBacsDebitWrapper
                .createFromDiscriminatorValue);
    deserializerMap['card'] = (node) => card =
        node.getObjectValue<SetupIntentPaymentMethodOptionsCardWrapper>(
            SetupIntentPaymentMethodOptionsCardWrapper
                .createFromDiscriminatorValue);
    deserializerMap['card_present'] = (node) => cardPresent =
        node.getObjectValue<SetupIntentPaymentMethodOptionsCardPresentWrapper>(
            SetupIntentPaymentMethodOptionsCardPresentWrapper
                .createFromDiscriminatorValue);
    deserializerMap['klarna'] = (node) => klarna =
        node.getObjectValue<SetupIntentPaymentMethodOptionsKlarnaWrapper>(
            SetupIntentPaymentMethodOptionsKlarnaWrapper
                .createFromDiscriminatorValue);
    deserializerMap['link'] = (node) => link =
        node.getObjectValue<SetupIntentPaymentMethodOptionsLinkWrapper>(
            SetupIntentPaymentMethodOptionsLinkWrapper
                .createFromDiscriminatorValue);
    deserializerMap['paypal'] = (node) => paypal =
        node.getObjectValue<SetupIntentPaymentMethodOptionsPaypalWrapper>(
            SetupIntentPaymentMethodOptionsPaypalWrapper
                .createFromDiscriminatorValue);
    deserializerMap['payto'] = (node) => payto =
        node.getObjectValue<SetupIntentPaymentMethodOptionsPaytoWrapper>(
            SetupIntentPaymentMethodOptionsPaytoWrapper
                .createFromDiscriminatorValue);
    deserializerMap['sepa_debit'] = (node) => sepaDebit =
        node.getObjectValue<SetupIntentPaymentMethodOptionsSepaDebitWrapper>(
            SetupIntentPaymentMethodOptionsSepaDebitWrapper
                .createFromDiscriminatorValue);
    deserializerMap['us_bank_account'] = (node) => usBankAccount = node
        .getObjectValue<SetupIntentPaymentMethodOptionsUsBankAccountWrapper>(
            SetupIntentPaymentMethodOptionsUsBankAccountWrapper
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsAcssDebitWrapper>(
        'acss_debit', acssDebit);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsAmazonPayWrapper>(
        'amazon_pay', amazonPay);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsBacsDebitWrapper>(
        'bacs_debit', bacsDebit);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsCardWrapper>(
        'card', card);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsCardPresentWrapper>(
        'card_present', cardPresent);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsKlarnaWrapper>(
        'klarna', klarna);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsLinkWrapper>(
        'link', link);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsPaypalWrapper>(
        'paypal', paypal);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsPaytoWrapper>(
        'payto', payto);
    writer.writeObjectValue<SetupIntentPaymentMethodOptionsSepaDebitWrapper>(
        'sepa_debit', sepaDebit);
    writer
        .writeObjectValue<SetupIntentPaymentMethodOptionsUsBankAccountWrapper>(
            'us_bank_account', usBankAccount);
    writer.writeAdditionalData(additionalData);
  }
}
