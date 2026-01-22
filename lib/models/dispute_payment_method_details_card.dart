// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './dispute_payment_method_details_card_case_type.dart';

/// auto generated
class DisputePaymentMethodDetailsCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Card brand. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa` or `unknown`.
  String? brand;

  ///  The type of dispute opened. Different case types may have varying fees and financial impact.
  DisputePaymentMethodDetailsCardCaseType? caseType;

  ///  The card network's specific dispute reason code, which maps to one of Stripe's primary dispute categories to simplify response guidance. The [Network code map](https://stripe.com/docs/disputes/categories#network-code-map) lists all available dispute reason codes by network.
  String? networkReasonCode;

  /// Instantiates a new [DisputePaymentMethodDetailsCard] and sets the default values.
  DisputePaymentMethodDetailsCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static DisputePaymentMethodDetailsCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return DisputePaymentMethodDetailsCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['brand'] = (node) => brand = node.getStringValue();
    deserializerMap['case_type'] = (node) => caseType =
        node.getEnumValue<DisputePaymentMethodDetailsCardCaseType>(
            (stringValue) => DisputePaymentMethodDetailsCardCaseType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    deserializerMap['network_reason_code'] =
        (node) => networkReasonCode = node.getStringValue();
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('brand', brand);
    writer.writeEnumValue<DisputePaymentMethodDetailsCardCaseType>(
        'case_type', caseType, (e) => e?.value);
    writer.writeStringValue('network_reason_code', networkReasonCode);
    writer.writeAdditionalData(additionalData);
  }
}
