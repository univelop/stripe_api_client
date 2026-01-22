// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './platform_earning_fee_source_type.dart';

/// auto generated
class PlatformEarningFeeSource implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Charge ID that created this application fee.
  String? charge;

  ///  Payout ID that created this application fee.
  String? payout;

  ///  Type of object that created the application fee.
  PlatformEarningFeeSourceType? type_;

  /// Instantiates a new [PlatformEarningFeeSource] and sets the default values.
  PlatformEarningFeeSource() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PlatformEarningFeeSource createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PlatformEarningFeeSource();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['charge'] = (node) => charge = node.getStringValue();
    deserializerMap['payout'] = (node) => payout = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PlatformEarningFeeSourceType>((stringValue) =>
            PlatformEarningFeeSourceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('charge', charge);
    writer.writeStringValue('payout', payout);
    writer.writeEnumValue<PlatformEarningFeeSourceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
