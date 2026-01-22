// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_id_verification_status.dart';

/// auto generated
class TaxIdVerification implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Verification status, one of `pending`, `verified`, `unverified`, or `unavailable`.
  TaxIdVerificationStatus? status;

  ///  Verified address.
  String? verifiedAddress;

  ///  Verified name.
  String? verifiedName;

  /// Instantiates a new [TaxIdVerification] and sets the default values.
  TaxIdVerification() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxIdVerification createFromDiscriminatorValue(ParseNode parseNode) {
    return TaxIdVerification();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['status'] = (node) => status =
        node.getEnumValue<TaxIdVerificationStatus>((stringValue) =>
            TaxIdVerificationStatus.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['verified_address'] =
        (node) => verifiedAddress = node.getStringValue();
    deserializerMap['verified_name'] =
        (node) => verifiedName = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeEnumValue<TaxIdVerificationStatus>(
        'status', status, (e) => e?.value);
    writer.writeStringValue('verified_address', verifiedAddress);
    writer.writeStringValue('verified_name', verifiedName);
    writer.writeAdditionalData(additionalData);
  }
}
