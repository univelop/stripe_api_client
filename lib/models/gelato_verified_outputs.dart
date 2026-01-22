// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './address.dart';
import './gelato_data_verified_outputs_date.dart';
import './gelato_verified_outputs_id_number_type.dart';
import './gelato_verified_outputs_sex.dart';

/// auto generated
class GelatoVerifiedOutputs implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The user's verified address.
  Address? address;

  ///  The user’s verified date of birth.
  GelatoDataVerifiedOutputsDate? dob;

  ///  The user's verified email address
  String? email;

  ///  The user's verified first name.
  String? firstName;

  ///  The user's verified id number.
  String? idNumber;

  ///  The user's verified id number type.
  GelatoVerifiedOutputsIdNumberType? idNumberType;

  ///  The user's verified last name.
  String? lastName;

  ///  The user's verified phone number
  String? phone;

  ///  The user's verified sex.
  GelatoVerifiedOutputsSex? sex;

  ///  The user's verified place of birth as it appears in the document.
  String? unparsedPlaceOfBirth;

  ///  The user's verified sex as it appears in the document.
  String? unparsedSex;

  /// Instantiates a new [GelatoVerifiedOutputs] and sets the default values.
  GelatoVerifiedOutputs() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static GelatoVerifiedOutputs createFromDiscriminatorValue(
      ParseNode parseNode) {
    return GelatoVerifiedOutputs();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address'] = (node) => address =
        node.getObjectValue<Address>(Address.createFromDiscriminatorValue);
    deserializerMap['dob'] = (node) => dob =
        node.getObjectValue<GelatoDataVerifiedOutputsDate>(
            GelatoDataVerifiedOutputsDate.createFromDiscriminatorValue);
    deserializerMap['email'] = (node) => email = node.getStringValue();
    deserializerMap['first_name'] = (node) => firstName = node.getStringValue();
    deserializerMap['id_number'] = (node) => idNumber = node.getStringValue();
    deserializerMap['id_number_type'] = (node) => idNumberType =
        node.getEnumValue<GelatoVerifiedOutputsIdNumberType>((stringValue) =>
            GelatoVerifiedOutputsIdNumberType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['last_name'] = (node) => lastName = node.getStringValue();
    deserializerMap['phone'] = (node) => phone = node.getStringValue();
    deserializerMap['sex'] = (node) => sex =
        node.getEnumValue<GelatoVerifiedOutputsSex>((stringValue) =>
            GelatoVerifiedOutputsSex.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['unparsed_place_of_birth'] =
        (node) => unparsedPlaceOfBirth = node.getStringValue();
    deserializerMap['unparsed_sex'] =
        (node) => unparsedSex = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<Address>('address', address);
    writer.writeObjectValue<GelatoDataVerifiedOutputsDate>('dob', dob);
    writer.writeStringValue('email', email);
    writer.writeStringValue('first_name', firstName);
    writer.writeStringValue('id_number', idNumber);
    writer.writeEnumValue<GelatoVerifiedOutputsIdNumberType>(
        'id_number_type', idNumberType, (e) => e?.value);
    writer.writeStringValue('last_name', lastName);
    writer.writeStringValue('phone', phone);
    writer.writeEnumValue<GelatoVerifiedOutputsSex>(
        'sex', sex, (e) => e?.value);
    writer.writeStringValue('unparsed_place_of_birth', unparsedPlaceOfBirth);
    writer.writeStringValue('unparsed_sex', unparsedSex);
    writer.writeAdditionalData(additionalData);
  }
}
