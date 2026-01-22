// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './outbound_payments_payment_method_details_financial_account_network.dart';

/// auto generated
class OutboundPaymentsPaymentMethodDetailsFinancialAccount
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Token of the FinancialAccount.
  String? id;

  ///  The rails used to send funds.
  OutboundPaymentsPaymentMethodDetailsFinancialAccountNetwork? network;

  /// Instantiates a new [OutboundPaymentsPaymentMethodDetailsFinancialAccount] and sets the default values.
  OutboundPaymentsPaymentMethodDetailsFinancialAccount() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static OutboundPaymentsPaymentMethodDetailsFinancialAccount
      createFromDiscriminatorValue(ParseNode parseNode) {
    return OutboundPaymentsPaymentMethodDetailsFinancialAccount();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['id'] = (node) => id = node.getStringValue();
    deserializerMap['network'] = (node) => network = node.getEnumValue<
            OutboundPaymentsPaymentMethodDetailsFinancialAccountNetwork>(
        (stringValue) =>
            OutboundPaymentsPaymentMethodDetailsFinancialAccountNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeStringValue('id', id);
    writer.writeEnumValue<
            OutboundPaymentsPaymentMethodDetailsFinancialAccountNetwork>(
        'network', network, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
