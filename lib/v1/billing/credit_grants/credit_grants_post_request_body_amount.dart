// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_grants_post_request_body_amount_monetary.dart';
import './credit_grants_post_request_body_amount_type.dart';

/// auto generated
/// Amount of this credit grant.
class CreditGrantsPostRequestBodyAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The monetary property
  CreditGrantsPostRequestBodyAmountMonetary? monetary;

  ///  The type property
  CreditGrantsPostRequestBodyAmountType? type_;

  /// Instantiates a new [CreditGrantsPostRequestBodyAmount] and sets the default values.
  CreditGrantsPostRequestBodyAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditGrantsPostRequestBodyAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CreditGrantsPostRequestBodyAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['monetary'] = (node) => monetary = node.getObjectValue<
            CreditGrantsPostRequestBodyAmountMonetary>(
        CreditGrantsPostRequestBodyAmountMonetary.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<CreditGrantsPostRequestBodyAmountType>(
            (stringValue) => CreditGrantsPostRequestBodyAmountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CreditGrantsPostRequestBodyAmountMonetary>(
        'monetary', monetary);
    writer.writeEnumValue<CreditGrantsPostRequestBodyAmountType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
