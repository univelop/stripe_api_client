// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './cards_post_request_body_bank_account_member1_account_holder_type.dart';
import './cards_post_request_body_bank_account_member1_object.dart';

/// auto generated
class CardsPostRequestBodyBankAccountMember1
    implements AdditionalDataHolder, Parsable {
  ///  The account_holder_name property
  String? accountHolderName;

  ///  The account_holder_type property
  CardsPostRequestBodyBankAccountMember1AccountHolderType? accountHolderType;

  ///  The account_number property
  String? accountNumber;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The country property
  String? country;

  ///  The currency property
  String? currency;

  ///  The object property
  CardsPostRequestBodyBankAccountMember1Object? object;

  ///  The routing_number property
  String? routingNumber;

  /// Instantiates a new [CardsPostRequestBodyBankAccountMember1] and sets the default values.
  CardsPostRequestBodyBankAccountMember1() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CardsPostRequestBodyBankAccountMember1 createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CardsPostRequestBodyBankAccountMember1();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account_holder_name'] =
        (node) => accountHolderName = node.getStringValue();
    deserializerMap['account_holder_type'] = (node) => accountHolderType = node
        .getEnumValue<CardsPostRequestBodyBankAccountMember1AccountHolderType>(
            (stringValue) =>
                CardsPostRequestBodyBankAccountMember1AccountHolderType.values
                    .where((enumVal) => enumVal.value == stringValue)
                    .firstOrNull);
    deserializerMap['account_number'] =
        (node) => accountNumber = node.getStringValue();
    deserializerMap['country'] = (node) => country = node.getStringValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['object'] = (node) => object =
        node.getEnumValue<CardsPostRequestBodyBankAccountMember1Object>(
            (stringValue) => CardsPostRequestBodyBankAccountMember1Object.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['routing_number'] =
        (node) => routingNumber = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account_holder_name', accountHolderName);
    writer.writeEnumValue<
            CardsPostRequestBodyBankAccountMember1AccountHolderType>(
        'account_holder_type', accountHolderType, (e) => e?.value);
    writer.writeStringValue('account_number', accountNumber);
    writer.writeStringValue('country', country);
    writer.writeStringValue('currency', currency);
    writer.writeEnumValue<CardsPostRequestBodyBankAccountMember1Object>(
        'object', object, (e) => e?.value);
    writer.writeStringValue('routing_number', routingNumber);
    writer.writeAdditionalData(additionalData);
  }
}
