// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_customer_post_request_body_card_member1_metadata.dart';
import './with_customer_post_request_body_card_member1_object.dart';

/// auto generated
class WithCustomerPostRequestBodyCardMember1
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The address_city property
  String? addressCity;

  ///  The address_country property
  String? addressCountry;

  ///  The address_line1 property
  String? addressLine1;

  ///  The address_line2 property
  String? addressLine2;

  ///  The address_state property
  String? addressState;

  ///  The address_zip property
  String? addressZip;

  ///  The cvc property
  String? cvc;

  ///  The exp_month property
  int? expMonth;

  ///  The exp_year property
  int? expYear;

  ///  The metadata property
  WithCustomerPostRequestBodyCardMember1Metadata? metadata;

  ///  The name property
  String? name;

  ///  The number property
  String? number;

  ///  The object property
  WithCustomerPostRequestBodyCardMember1Object? object;

  /// Instantiates a new [WithCustomerPostRequestBodyCardMember1] and sets the default values.
  WithCustomerPostRequestBodyCardMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithCustomerPostRequestBodyCardMember1 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithCustomerPostRequestBodyCardMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['address_city'] =
        (node) => addressCity = node.getStringValue();
    deserializerMap['address_country'] =
        (node) => addressCountry = node.getStringValue();
    deserializerMap['address_line1'] =
        (node) => addressLine1 = node.getStringValue();
    deserializerMap['address_line2'] =
        (node) => addressLine2 = node.getStringValue();
    deserializerMap['address_state'] =
        (node) => addressState = node.getStringValue();
    deserializerMap['address_zip'] =
        (node) => addressZip = node.getStringValue();
    deserializerMap['cvc'] = (node) => cvc = node.getStringValue();
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['metadata'] = (node) => metadata =
        node.getObjectValue<WithCustomerPostRequestBodyCardMember1Metadata>(
            WithCustomerPostRequestBodyCardMember1Metadata
                .createFromDiscriminatorValue);
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['number'] = (node) => number = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<WithCustomerPostRequestBodyCardMember1Object>(
            (stringValue) => WithCustomerPostRequestBodyCardMember1Object.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('address_city', addressCity);
    writer.writeStringValue('address_country', addressCountry);
    writer.writeStringValue('address_line1', addressLine1);
    writer.writeStringValue('address_line2', addressLine2);
    writer.writeStringValue('address_state', addressState);
    writer.writeStringValue('address_zip', addressZip);
    writer.writeStringValue('cvc', cvc);
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeObjectValue<WithCustomerPostRequestBodyCardMember1Metadata>(
        'metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeStringValue('number', number);
    writer.writeEnumValue<WithCustomerPostRequestBodyCardMember1Object>(
        'object', object, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
