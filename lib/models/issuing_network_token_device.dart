// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './issuing_network_token_device_type.dart';

/// auto generated
class IssuingNetworkTokenDevice implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  An obfuscated ID derived from the device ID.
  String? deviceFingerprint;

  ///  The IP address of the device at provisioning time.
  String? ipAddress;

  ///  The geographic latitude/longitude coordinates of the device at provisioning time. The format is [+-]decimal/[+-]decimal.
  String? location;

  ///  The name of the device used for tokenization.
  String? name;

  ///  The phone number of the device used for tokenization.
  String? phoneNumber;

  ///  The type of device used for tokenization.
  IssuingNetworkTokenDeviceType? type_;

  /// Instantiates a new [IssuingNetworkTokenDevice] and sets the default values.
  IssuingNetworkTokenDevice() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static IssuingNetworkTokenDevice createFromDiscriminatorValue(
      ParseNode parseNode) {
    return IssuingNetworkTokenDevice();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['device_fingerprint'] =
        (node) => deviceFingerprint = node.getStringValue();
    deserializerMap['ip_address'] = (node) => ipAddress = node.getStringValue();
    deserializerMap['location'] = (node) => location = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['phone_number'] =
        (node) => phoneNumber = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<IssuingNetworkTokenDeviceType>((stringValue) =>
            IssuingNetworkTokenDeviceType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('device_fingerprint', deviceFingerprint);
    writer.writeStringValue('ip_address', ipAddress);
    writer.writeStringValue('location', location);
    writer.writeStringValue('name', name);
    writer.writeStringValue('phone_number', phoneNumber);
    writer.writeEnumValue<IssuingNetworkTokenDeviceType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
