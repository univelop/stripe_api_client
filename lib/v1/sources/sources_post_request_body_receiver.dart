// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './sources_post_request_body_receiver_refund_attributes_method.dart';

/// auto generated
/// Optional parameters for the receiver flow. Can be set only if the source is a receiver (`flow` is `receiver`).
class SourcesPostRequestBodyReceiver implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The refund_attributes_method property
  SourcesPostRequestBodyReceiverRefundAttributesMethod? refundAttributesMethod;

  /// Instantiates a new [SourcesPostRequestBodyReceiver] and sets the default values.
  SourcesPostRequestBodyReceiver() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourcesPostRequestBodyReceiver createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourcesPostRequestBodyReceiver();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['refund_attributes_method'] = (node) =>
        refundAttributesMethod = node
            .getEnumValue<SourcesPostRequestBodyReceiverRefundAttributesMethod>(
                (stringValue) =>
                    SourcesPostRequestBodyReceiverRefundAttributesMethod.values
                        .where((enumVal) => enumVal.value == stringValue)
                        .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<SourcesPostRequestBodyReceiverRefundAttributesMethod>(
        'refund_attributes_method', refundAttributesMethod, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
