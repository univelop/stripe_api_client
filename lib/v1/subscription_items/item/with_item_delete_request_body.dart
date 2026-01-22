// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_item_delete_request_body_proration_behavior.dart';

/// auto generated
class WithItemDeleteRequestBody implements Parsable {
  ///  Delete all usage for the given subscription item. Allowed only when the current plan's `usage_type` is `metered`.
  bool? clearUsage;

  ///  Determines how to handle [prorations](https://docs.stripe.com/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
  WithItemDeleteRequestBodyProrationBehavior? prorationBehavior;

  ///  If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://api.stripe.com#retrieve_customer_invoice) endpoint.
  int? prorationDate;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithItemDeleteRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithItemDeleteRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['clear_usage'] = (node) => clearUsage = node.getBoolValue();
    deserializerMap['proration_behavior'] = (node) => prorationBehavior =
        node.getEnumValue<WithItemDeleteRequestBodyProrationBehavior>(
            (stringValue) => WithItemDeleteRequestBodyProrationBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['proration_date'] =
        (node) => prorationDate = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('clear_usage', value: clearUsage);
    writer.writeEnumValue<WithItemDeleteRequestBodyProrationBehavior>(
        'proration_behavior', prorationBehavior, (e) => e?.value);
    writer.writeIntValue('proration_date', prorationDate);
  }
}
