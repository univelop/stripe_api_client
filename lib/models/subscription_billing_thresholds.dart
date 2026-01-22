// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SubscriptionBillingThresholds implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Monetary threshold that triggers the subscription to create an invoice
  int? amountGte;

  ///  Indicates if the `billing_cycle_anchor` should be reset when a threshold is reached. If true, `billing_cycle_anchor` will be updated to the date/time the threshold was last reached; otherwise, the value will remain unchanged. This value may not be `true` if the subscription contains items with plans that have `aggregate_usage=last_ever`.
  bool? resetBillingCycleAnchor;

  /// Instantiates a new [SubscriptionBillingThresholds] and sets the default values.
  SubscriptionBillingThresholds() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionBillingThresholds createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionBillingThresholds();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount_gte'] = (node) => amountGte = node.getIntValue();
    deserializerMap['reset_billing_cycle_anchor'] =
        (node) => resetBillingCycleAnchor = node.getBoolValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount_gte', amountGte);
    writer.writeBoolValue('reset_billing_cycle_anchor',
        value: resetBillingCycleAnchor);
    writer.writeAdditionalData(additionalData);
  }
}
