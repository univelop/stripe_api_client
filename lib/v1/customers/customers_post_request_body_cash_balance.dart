// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './customers_post_request_body_cash_balance_settings.dart';

/// auto generated
/// Balance information and default balance settings for this customer.
class CustomersPostRequestBodyCashBalance
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The settings property
  CustomersPostRequestBodyCashBalanceSettings? settings;

  /// Instantiates a new [CustomersPostRequestBodyCashBalance] and sets the default values.
  CustomersPostRequestBodyCashBalance() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CustomersPostRequestBodyCashBalance createFromDiscriminatorValue(
      ParseNode parseNode) {
    return CustomersPostRequestBodyCashBalance();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['settings'] = (node) => settings =
        node.getObjectValue<CustomersPostRequestBodyCashBalanceSettings>(
            CustomersPostRequestBodyCashBalanceSettings
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<CustomersPostRequestBodyCashBalanceSettings>(
        'settings', settings);
    writer.writeAdditionalData(additionalData);
  }
}
