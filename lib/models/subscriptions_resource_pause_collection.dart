// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscriptions_resource_pause_collection_behavior.dart';

/// auto generated
/// The Pause Collection settings determine how we will pause collection for this subscription and for how long the subscriptionshould be paused.
class SubscriptionsResourcePauseCollection
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payment collection behavior for this subscription while paused. One of `keep_as_draft`, `mark_uncollectible`, or `void`.
  SubscriptionsResourcePauseCollectionBehavior? behavior;

  ///  The time after which the subscription will resume collecting payments.
  int? resumesAt;

  /// Instantiates a new [SubscriptionsResourcePauseCollection] and sets the default values.
  SubscriptionsResourcePauseCollection() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionsResourcePauseCollection createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SubscriptionsResourcePauseCollection();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['behavior'] = (node) => behavior =
        node.getEnumValue<SubscriptionsResourcePauseCollectionBehavior>(
            (stringValue) => SubscriptionsResourcePauseCollectionBehavior.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['resumes_at'] = (node) => resumesAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<SubscriptionsResourcePauseCollectionBehavior>(
        'behavior', behavior, (e) => e?.value);
    writer.writeIntValue('resumes_at', resumesAt);
    writer.writeAdditionalData(additionalData);
  }
}
