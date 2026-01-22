// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_resource_billing_mode_flexible.dart';
import './subscriptions_resource_billing_mode_type.dart';

/// auto generated
/// The billing mode of the subscription.
class SubscriptionsResourceBillingMode
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Configure behavior for flexible billing mode
  SubscriptionsResourceBillingModeFlexible? flexible;

  ///  Controls how prorations and invoices for subscriptions are calculated and orchestrated.
  SubscriptionsResourceBillingModeType? type_;

  ///  Details on when the current billing_mode was adopted.
  int? updatedAt;

  /// Instantiates a new [SubscriptionsResourceBillingMode] and sets the default values.
  SubscriptionsResourceBillingMode() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsResourceBillingMode createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsResourceBillingMode();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['flexible'] = (node) => flexible = node.getObjectValue<
            SubscriptionsResourceBillingModeFlexible>(
        SubscriptionsResourceBillingModeFlexible.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<SubscriptionsResourceBillingModeType>((stringValue) =>
            SubscriptionsResourceBillingModeType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['updated_at'] = (node) => updatedAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<SubscriptionsResourceBillingModeFlexible>(
        'flexible', flexible);
    writer.writeEnumValue<SubscriptionsResourceBillingModeType>(
        'type', type_, (e) => e?.value);
    writer.writeIntValue('updated_at', updatedAt);
    writer.writeAdditionalData(additionalData);
  }
}
