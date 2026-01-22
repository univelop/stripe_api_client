// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ReportPaymentPostRequestBodyPaymentMethodDetailsCustom
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The display_name property
  String? displayName;

  ///  The type property
  String? type_;

  /// Instantiates a new [ReportPaymentPostRequestBodyPaymentMethodDetailsCustom] and sets the default values.
  ReportPaymentPostRequestBodyPaymentMethodDetailsCustom()
      : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReportPaymentPostRequestBodyPaymentMethodDetailsCustom
      createFromDiscriminatorValue(ParseNode parseNode) {
    return ReportPaymentPostRequestBodyPaymentMethodDetailsCustom();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['display_name'] =
        (node) => displayName = node.getStringValue();
    deserializerMap['type'] = (node) => type_ = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('display_name', displayName);
    writer.writeStringValue('type', type_);
    writer.writeAdditionalData(additionalData);
  }
}
