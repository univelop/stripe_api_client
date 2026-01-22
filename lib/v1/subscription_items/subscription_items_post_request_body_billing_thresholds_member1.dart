// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SubscriptionItemsPostRequestBodyBillingThresholdsMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The usage_gte property
  int? usageGte;

  /// Instantiates a new [SubscriptionItemsPostRequestBodyBillingThresholdsMember1] and sets the default values.
  SubscriptionItemsPostRequestBodyBillingThresholdsMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionItemsPostRequestBodyBillingThresholdsMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionItemsPostRequestBodyBillingThresholdsMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['usage_gte'] = (node) => usageGte = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('usage_gte', usageGte);
    writer.writeAdditionalData(additionalData);
  }
}
