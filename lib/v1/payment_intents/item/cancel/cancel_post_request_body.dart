// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cancel_post_request_body_cancellation_reason.dart';

/// auto generated
class CancelPostRequestBody implements Parsable {
  ///  Reason for canceling this PaymentIntent. Possible values are: `duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`
  CancelPostRequestBodyCancellationReason? cancellationReason;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CancelPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CancelPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['cancellation_reason'] = (node) => cancellationReason =
        node.getEnumValue<CancelPostRequestBodyCancellationReason>(
            (stringValue) => CancelPostRequestBodyCancellationReason.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<CancelPostRequestBodyCancellationReason>(
        'cancellation_reason', cancellationReason, (e) => e?.value);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
  }
}
