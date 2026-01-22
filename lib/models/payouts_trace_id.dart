// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class PayoutsTraceId implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Possible values are `pending`, `supported`, and `unsupported`. When `payout.status` is `pending` or `in_transit`, this will be `pending`. When the payout transitions to `paid`, `failed`, or `canceled`, this status will become `supported` or `unsupported` shortly after in most cases. In some cases, this may appear as `pending` for up to 10 days after `arrival_date` until transitioning to `supported` or `unsupported`.
  String? status;

  ///  The trace ID value if `trace_id.status` is `supported`, otherwise `nil`.
  String? value;

  /// Instantiates a new [PayoutsTraceId] and sets the default values.
  PayoutsTraceId() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PayoutsTraceId createFromDiscriminatorValue(ParseNode parseNode) {
    return PayoutsTraceId();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['status'] = (node) => status = node.getStringValue();
    deserializerMap['value'] = (node) => value = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('status', status);
    writer.writeStringValue('value', value);
    writer.writeAdditionalData(additionalData);
  }
}
