// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_account_holder_type.dart';
import './cards_post_request_body_owner.dart';

/// auto generated
class CardsPostRequestBody implements Parsable {
  ///  The name of the person or business that owns the bank account.
  String? accountHolderName;

  ///  The type of entity that holds the account. This can be either `individual` or `company`.
  CardsPostRequestBodyAccountHolderType? accountHolderType;

  ///  City/District/Suburb/Town/Village.
  String? addressCity;

  ///  Billing address country, if provided when creating card.
  String? addressCountry;

  ///  Address line 1 (Street address/PO Box/Company name).
  String? addressLine1;

  ///  Address line 2 (Apartment/Suite/Unit/Building).
  String? addressLine2;

  ///  State/County/Province/Region.
  String? addressState;

  ///  ZIP or postal code.
  String? addressZip;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  Two digit number representing the card’s expiration month.
  String? expMonth;

  ///  Four digit number representing the card’s expiration year.
  String? expYear;

  ///  Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
  String? metadata;

  ///  Cardholder name.
  String? name;

  ///  The owner property
  CardsPostRequestBodyOwner? owner;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_holder_type'] = (node) => accountHolderType =
        node.getEnumValue<CardsPostRequestBodyAccountHolderType>(
            (stringValue) => CardsPostRequestBodyAccountHolderType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
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
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['exp_month'] = (node) => expMonth = node.getStringValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getStringValue();
    deserializerMap['metadata'] = (node) => metadata = node.getStringValue();
    deserializerMap['name'] = (node) => name = node.getStringValue();
    deserializerMap['owner'] = (node) => owner =
        node.getObjectValue<CardsPostRequestBodyOwner>(
            CardsPostRequestBodyOwner.createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeEnumValue<CardsPostRequestBodyAccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeStringValue('address_city', addressCity);
    writer.writeStringValue('address_country', addressCountry);
    writer.writeStringValue('address_line1', addressLine1);
    writer.writeStringValue('address_line2', addressLine2);
    writer.writeStringValue('address_state', addressState);
    writer.writeStringValue('address_zip', addressZip);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('exp_month', expMonth);
    writer.writeStringValue('exp_year', expYear);
    writer.writeStringValue('metadata', metadata);
    writer.writeStringValue('name', name);
    writer.writeObjectValue<CardsPostRequestBodyOwner>('owner', owner);
  }
}
