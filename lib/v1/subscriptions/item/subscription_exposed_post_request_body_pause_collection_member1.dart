// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './subscription_exposed_post_request_body_pause_collection_member1_behavior.dart';

/// auto generated
class SubscriptionExposedPostRequestBodyPauseCollectionMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The behavior property
  SubscriptionExposedPostRequestBodyPauseCollectionMember1Behavior? behavior;

  ///  The resumes_at property
  int? resumesAt;

  /// Instantiates a new [SubscriptionExposedPostRequestBodyPauseCollectionMember1] and sets the default values.
  SubscriptionExposedPostRequestBodyPauseCollectionMember1()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SubscriptionExposedPostRequestBodyPauseCollectionMember1
      createFromDiscriminatorValue(ParseNode parseNode) {
    return SubscriptionExposedPostRequestBodyPauseCollectionMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['behavior'] = (node) => behavior = node.getEnumValue<
            SubscriptionExposedPostRequestBodyPauseCollectionMember1Behavior>(
        (stringValue) =>
            SubscriptionExposedPostRequestBodyPauseCollectionMember1Behavior
                .values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['resumes_at'] = (node) => resumesAt = node.getIntValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<
            SubscriptionExposedPostRequestBodyPauseCollectionMember1Behavior>(
        'behavior', behavior, (e) => e?.value);
    writer.writeIntValue('resumes_at', resumesAt);
    writer.writeAdditionalData(additionalData);
  }
}
