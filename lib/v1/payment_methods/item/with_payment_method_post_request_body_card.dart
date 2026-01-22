// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_payment_method_post_request_body_card_networks.dart';

/// auto generated
/// If this is a `card` PaymentMethod, this hash contains the user's card details.
class WithPaymentMethodPostRequestBodyCard
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The exp_month property
  int? expMonth;

  ///  The exp_year property
  int? expYear;

  ///  The networks property
  WithPaymentMethodPostRequestBodyCardNetworks? networks;

  /// Instantiates a new [WithPaymentMethodPostRequestBodyCard] and sets the default values.
  WithPaymentMethodPostRequestBodyCard() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithPaymentMethodPostRequestBodyCard createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithPaymentMethodPostRequestBodyCard();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['exp_month'] = (node) => expMonth = node.getIntValue();
    deserializerMap['exp_year'] = (node) => expYear = node.getIntValue();
    deserializerMap['networks'] = (node) => networks =
        node.getObjectValue<WithPaymentMethodPostRequestBodyCardNetworks>(
            WithPaymentMethodPostRequestBodyCardNetworks
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeIntValue('exp_month', expMonth);
    writer.writeIntValue('exp_year', expYear);
    writer.writeObjectValue<WithPaymentMethodPostRequestBodyCardNetworks>(
        'networks', networks);
    writer.writeAdditionalData(additionalData);
  }
}
