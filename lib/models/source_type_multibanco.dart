// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class SourceTypeMultibanco implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The entity property
  String? entity;

  ///  The reference property
  String? reference;

  ///  The refund_account_holder_address_city property
  String? refundAccountHolderAddressCity;

  ///  The refund_account_holder_address_country property
  String? refundAccountHolderAddressCountry;

  ///  The refund_account_holder_address_line1 property
  String? refundAccountHolderAddressLine1;

  ///  The refund_account_holder_address_line2 property
  String? refundAccountHolderAddressLine2;

  ///  The refund_account_holder_address_postal_code property
  String? refundAccountHolderAddressPostalCode;

  ///  The refund_account_holder_address_state property
  String? refundAccountHolderAddressState;

  ///  The refund_account_holder_name property
  String? refundAccountHolderName;

  ///  The refund_iban property
  String? refundIban;

  /// Instantiates a new [SourceTypeMultibanco] and sets the default values.
  SourceTypeMultibanco() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static SourceTypeMultibanco createFromDiscriminatorValue(
      ParseNode parseNode) {
    return SourceTypeMultibanco();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['entity'] = (node) => entity = node.getStringValue();
    deserializerMap['reference'] = (node) => reference = node.getStringValue();
    deserializerMap['refund_account_holder_address_city'] =
        (node) => refundAccountHolderAddressCity = node.getStringValue();
    deserializerMap['refund_account_holder_address_country'] =
        (node) => refundAccountHolderAddressCountry = node.getStringValue();
    deserializerMap['refund_account_holder_address_line1'] =
        (node) => refundAccountHolderAddressLine1 = node.getStringValue();
    deserializerMap['refund_account_holder_address_line2'] =
        (node) => refundAccountHolderAddressLine2 = node.getStringValue();
    deserializerMap['refund_account_holder_address_postal_code'] =
        (node) => refundAccountHolderAddressPostalCode = node.getStringValue();
    deserializerMap['refund_account_holder_address_state'] =
        (node) => refundAccountHolderAddressState = node.getStringValue();
    deserializerMap['refund_account_holder_name'] =
        (node) => refundAccountHolderName = node.getStringValue();
    deserializerMap['refund_iban'] =
        (node) => refundIban = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('entity', entity);
    writer.writeStringValue('reference', reference);
    writer.writeStringValue(
        'refund_account_holder_address_city', refundAccountHolderAddressCity);
    writer.writeStringValue('refund_account_holder_address_country',
        refundAccountHolderAddressCountry);
    writer.writeStringValue(
        'refund_account_holder_address_line1', refundAccountHolderAddressLine1);
    writer.writeStringValue(
        'refund_account_holder_address_line2', refundAccountHolderAddressLine2);
    writer.writeStringValue('refund_account_holder_address_postal_code',
        refundAccountHolderAddressPostalCode);
    writer.writeStringValue(
        'refund_account_holder_address_state', refundAccountHolderAddressState);
    writer.writeStringValue(
        'refund_account_holder_name', refundAccountHolderName);
    writer.writeStringValue('refund_iban', refundIban);
    writer.writeAdditionalData(additionalData);
  }
}
