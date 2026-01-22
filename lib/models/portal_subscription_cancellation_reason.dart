// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_subscription_cancellation_reason_options.dart';

/// auto generated
class PortalSubscriptionCancellationReason
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Whether the feature is enabled.
  bool? enabled;

  ///  Which cancellation reasons will be given as options to the customer.
  Iterable<PortalSubscriptionCancellationReasonOptions>? options;

  /// Instantiates a new [PortalSubscriptionCancellationReason] and sets the default values.
  PortalSubscriptionCancellationReason() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalSubscriptionCancellationReason createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalSubscriptionCancellationReason();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['enabled'] = (node) => enabled = node.getBoolValue();
    deserializerMap['options'] = (node) => options = node
        .getCollectionOfEnumValues<PortalSubscriptionCancellationReasonOptions>(
            (stringValue) => PortalSubscriptionCancellationReasonOptions.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeBoolValue('enabled', value: enabled);
    writer.writeCollectionOfEnumValues<
            PortalSubscriptionCancellationReasonOptions>(
        'options', options, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
