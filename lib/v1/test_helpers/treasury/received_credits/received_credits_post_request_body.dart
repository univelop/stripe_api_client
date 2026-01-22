// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './received_credits_post_request_body_initiating_payment_method_details.dart';
import './received_credits_post_request_body_network.dart';

/// auto generated
class ReceivedCreditsPostRequestBody implements Parsable {
  ///  Amount (in cents) to be transferred.
  int? amount;

  ///  Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
  String? currency;

  ///  An arbitrary string attached to the object. Often useful for displaying to users.
  String? description;

  ///  Specifies which fields in the response should be expanded.
  Iterable<String>? expand;

  ///  The FinancialAccount to send funds to.
  String? financialAccount;

  ///  Initiating payment method details for the object.
  ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails?
      initiatingPaymentMethodDetails;

  ///  Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://docs.stripe.com/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
  ReceivedCreditsPostRequestBodyNetwork? network;

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static ReceivedCreditsPostRequestBody createFromDiscriminatorValue(
      ParseNode parseNode) {
    return ReceivedCreditsPostRequestBody();
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
                ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails>(
            ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails
                .createFromDiscriminatorValue);
    deserializerMap['network'] = (node) => network =
        node.getEnumValue<ReceivedCreditsPostRequestBodyNetwork>(
            (stringValue) => ReceivedCreditsPostRequestBodyNetwork.values
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
            ReceivedCreditsPostRequestBodyInitiatingPaymentMethodDetails>(
        'initiating_payment_method_details', initiatingPaymentMethodDetails);
    writer.writeEnumValue<ReceivedCreditsPostRequestBodyNetwork>(
        'network', network, (e) => e?.value);
  }
}
