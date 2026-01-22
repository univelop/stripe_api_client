// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeSepaDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_code property
  String? bankCode;

  ///  The branch_code property
  String? branchCode;

  ///  The country property
  String? country;

  ///  The fingerprint property
  String? fingerprint;

  ///  The last4 property
  String? last4;

  ///  The mandate_reference property
  String? mandateReference;

  ///  The mandate_url property
  String? mandateUrl;

  /// Instantiates a new [SourceTypeSepaDebit] and sets the default values.
  SourceTypeSepaDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeSepaDebit createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceTypeSepaDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_code'] = (node) => bankCode = node.getStringValue();
    deserializerMap['branch_code'] =
        (node) => branchCode = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['mandate_reference'] =
        (node) => mandateReference = node.getStringValue();
    deserializerMap['mandate_url'] =
        (node) => mandateUrl = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_code', bankCode);
    writer.writeStringValue('branch_code', branchCode);
    writer.writeStringValue('country', country);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('mandate_reference', mandateReference);
    writer.writeStringValue('mandate_url', mandateUrl);
    writer.writeAdditionalData(additionalData);
  }
}
