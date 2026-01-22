// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './received_debits_post_request_body_initiating_payment_method_details.dart';
import './received_debits_post_request_body_network.dart';

/// auto generated
class ReceivedDebitsPostRequestBody implements Parsable {
  ///  Amount (in cents) to be transferred.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The FinancialAccount to pull funds from.
  String? financialAccount;

  ///  Initiating payment method details for the object.
  ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails?
      initiatingPaymentMethodDetails;

  ///  Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
  ReceivedDebitsPostRequestBodyNetwork? network;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReceivedDebitsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReceivedDebitsPostRequestBody();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['amount'] = (node) => amount = node.getIntValue();
    deserializerMap['currency'] = (node) => currency = node.getStringValue();
    deserializerMap['description'] =
        (node) => description = node.getStringValue();
    deserializerMap['expand'] =
        (node) => expand = node.getCollectionOfPrimitiveValues<String>();
    deserializerMap['financial_account'] =
        (node) => financialAccount = node.getStringValue();
    deserializerMap['initiating_payment_method_details'] = (node) =>
        initiatingPaymentMethodDetails = node.getObjectValue<
                ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails>(
            ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails
                .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<ReceivedDebitsPostRequestBodyNetwork>((stringValue) =>
            ReceivedDebitsPostRequestBodyNetwork.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('amount', amount);
    writer.writeStringValue('currency', currency);
    writer.writeStringValue('description', description);
    writer.writeCollectionOfPrimitiveValues<String?>('expand', expand);
    writer.writeStringValue('financial_account', financialAccount);
    writer.writeObjectValue<
            ReceivedDebitsPostRequestBodyInitiatingPaymentMethodDetails>(
        'initiating_payment_method_details', initiatingPaymentMethodDetails);
    writer.writeEnumValue<ReceivedDebitsPostRequestBodyNetwork>(
        'network', network, (e) => e?.value);
  }
}
