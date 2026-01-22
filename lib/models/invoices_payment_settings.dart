// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './invoices_payment_method_options.dart';
import './invoices_payment_settings_payment_method_types.dart';

/// auto generated
class InvoicesPaymentSettings implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  ID of the mandate to be used for this invoice. It must correspond to the payment method used to pay the invoice, including the invoice's default_payment_method or default_source, if set.
  String? defaultMandate;

  ///  Payment-method-specific configuration to provide to the invoice’s PaymentIntent.
  InvoicesPaymentMethodOptions? paymentMethodOptions;

  ///  The list of payment method types (e.g. card) to provide to the invoice’s PaymentIntent. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice).
  Iterable<InvoicesPaymentSettingsPaymentMethodTypes>? paymentMethodTypes;

  /// Instantiates a new [InvoicesPaymentSettings] and sets the default values.
  InvoicesPaymentSettings() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static InvoicesPaymentSettings createFromDiscriminatorValue(
      ParseNode parseNode) {
    return InvoicesPaymentSettings();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['default_mandate'] =
        (node) => defaultMandate = node.getStringValue();
    deserializerMap['payment_method_options'] = (node) => paymentMethodOptions =
        node.getObjectValue<InvoicesPaymentMethodOptions>(
            InvoicesPaymentMethodOptions.createFromDiscriminatorValue);
    deserializerMap['payment_method_types'] = (node) => paymentMethodTypes =
        node.getCollectionOfEnumValues<
                InvoicesPaymentSettingsPaymentMethodTypes>(
            (stringValue) => InvoicesPaymentSettingsPaymentMethodTypes.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('default_mandate', defaultMandate);
    writer.writeObjectValue<InvoicesPaymentMethodOptions>(
        'payment_method_options', paymentMethodOptions);
    writer
        .writeCollectionOfEnumValues<InvoicesPaymentSettingsPaymentMethodTypes>(
            'payment_method_types', paymentMethodTypes, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
