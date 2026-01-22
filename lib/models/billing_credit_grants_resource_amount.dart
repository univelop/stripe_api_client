// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './billing_credit_grants_resource_amount_type.dart';
import './billing_credit_grants_resource_monetary_amount.dart';

/// auto generated
class BillingCreditGrantsResourceAmount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The monetary amount.
  BillingCreditGrantsResourceMonetaryAmount? monetary;

  ///  The type of this amount. We currently only support `monetary` billing credits.
  BillingCreditGrantsResourceAmountType? type_;

  /// Instantiates a new [BillingCreditGrantsResourceAmount] and sets the default values.
  BillingCreditGrantsResourceAmount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static BillingCreditGrantsResourceAmount createFromDiscriminatorValue(
      ParseNode parseNode) {
    return BillingCreditGrantsResourceAmount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['monetary'] = (node) => monetary = node.getObjectValue<
            BillingCreditGrantsResourceMonetaryAmount>(
        BillingCreditGrantsResourceMonetaryAmount.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<BillingCreditGrantsResourceAmountType>(
            (stringValue) => BillingCreditGrantsResourceAmountType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<BillingCreditGrantsResourceMonetaryAmount>(
        'monetary', monetary);
    writer.writeEnumValue<BillingCreditGrantsResourceAmountType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
