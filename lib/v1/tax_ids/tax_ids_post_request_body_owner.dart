// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tax_ids_post_request_body_owner_type.dart';

/// auto generated
/// The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
class TaxIdsPostRequestBodyOwner implements AdditionalDataHolder, Parsable {
  ///  The account property
  String? account;

  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The customer property
  String? customer;

  ///  The customer_account property
  String? customerAccount;

  ///  The type property
  TaxIdsPostRequestBodyOwnerType? type_;

  /// Instantiates a new [TaxIdsPostRequestBodyOwner] and sets the default values.
  TaxIdsPostRequestBodyOwner() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static TaxIdsPostRequestBodyOwner createFromDiscriminatorValue(
      ParseNode parseNode) {
    return TaxIdsPostRequestBodyOwner();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['account'] = (node) => account = node.getStringValue();
    deserializerMap['customer'] = (node) => customer = node.getStringValue();
    deserializerMap['customer_account'] =
        (node) => customerAccount = node.getStringValue();
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<TaxIdsPostRequestBodyOwnerType>((stringValue) =>
            TaxIdsPostRequestBodyOwnerType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('account', account);
    writer.writeStringValue('customer', customer);
    writer.writeStringValue('customer_account', customerAccount);
    writer.writeEnumValue<TaxIdsPostRequestBodyOwnerType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
