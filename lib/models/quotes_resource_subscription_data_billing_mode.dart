// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './quotes_resource_subscription_data_billing_mode_type.dart';
import './subscriptions_resource_billing_mode_flexible.dart';

/// auto generated
/// The billing mode of the quote.
class QuotesResourceSubscriptionDataBillingMode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The flexible property
  SubscriptionsResourceBillingModeFlexible? flexible;

  ///  Controls how prorations and invoices for subscriptions are calculated and orchestrated.
  QuotesResourceSubscriptionDataBillingModeType? type_;

  /// Instantiates a new [QuotesResourceSubscriptionDataBillingMode] and sets the default values.
  QuotesResourceSubscriptionDataBillingMode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static QuotesResourceSubscriptionDataBillingMode createFromDiscriminatorValue(
      ParseNode parseNode) {
    return QuotesResourceSubscriptionDataBillingMode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flexible'] = (node) => flexible = node.getObjectValue<
            SubscriptionsResourceBillingModeFlexible>(
        SubscriptionsResourceBillingModeFlexible.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<QuotesResourceSubscriptionDataBillingModeType>(
            (stringValue) => QuotesResourceSubscriptionDataBillingModeType
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionsResourceBillingModeFlexible>(
        'flexible', flexible);
    writer.writeEnumValue<QuotesResourceSubscriptionDataBillingModeType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
