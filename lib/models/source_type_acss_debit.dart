// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeAcssDebit implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The bank_address_city property
  String? bankAddressCity;

  ///  The bank_address_line_1 property
  String? bankAddressLine1;

  ///  The bank_address_line_2 property
  String? bankAddressLine2;

  ///  The bank_address_postal_code property
  String? bankAddressPostalCode;

  ///  The bank_name property
  String? bankName;

  ///  The category property
  String? category;

  ///  The country property
  String? country;

  ///  The fingerprint property
  String? fingerprint;

  ///  The last4 property
  String? last4;

  ///  The routing_number property
  String? routingNumber;

  /// Instantiates a new [SourceTypeAcssDebit] and sets the default values.
  SourceTypeAcssDebit() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeAcssDebit createFromDiscriminatorValue(ParseNode parseNode) {
    return SourceTypeAcssDebit();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['bank_address_city'] =
        (node) => bankAddressCity = node.getStringValue();
    deserializerMap['bank_address_line_1'] =
        (node) => bankAddressLine1 = node.getStringValue();
    deserializerMap['bank_address_line_2'] =
        (node) => bankAddressLine2 = node.getStringValue();
    deserializerMap['bank_address_postal_code'] =
        (node) => bankAddressPostalCode = node.getStringValue();
    deserializerMap['bank_name'] = (node) => bankName = node.getStringValue();
    deserializerMap['category'] = (node) => category = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['fingerprint'] =
        (node) => fingerprint = node.getStringValue();
    deserializerMap['last4'] = (node) => last4 = node.getStringValue();
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('bank_address_city', bankAddressCity);
    writer.writeStringValue('bank_address_line_1', bankAddressLine1);
    writer.writeStringValue('bank_address_line_2', bankAddressLine2);
    writer.writeStringValue('bank_address_postal_code', bankAddressPostalCode);
    writer.writeStringValue('bank_name', bankName);
    writer.writeStringValue('category', category);
    writer.writeStringValue('country', country);
    writer.writeStringValue('fingerprint', fingerprint);
    writer.writeStringValue('last4', last4);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
