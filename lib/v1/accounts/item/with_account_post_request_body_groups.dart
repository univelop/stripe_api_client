// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './with_account_post_request_body_groups_payments_pricing.dart';

/// auto generated
/// A hash of account group type to tokens. These are account groups this account should be added to.
class WithAccountPostRequestBodyGroups
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The payments_pricing property
  WithAccountPostRequestBodyGroupsPaymentsPricing? paymentsPricing;

  /// Instantiates a new [WithAccountPostRequestBodyGroups] and sets the default values.
  WithAccountPostRequestBodyGroups() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static WithAccountPostRequestBodyGroups createFromDiscriminatorValue(
      ParseNode parseNode) {
    return WithAccountPostRequestBodyGroups();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['payments_pricing'] = (node) => paymentsPricing =
        node.getObjectValue<WithAccountPostRequestBodyGroupsPaymentsPricing>(
            WithAccountPostRequestBodyGroupsPaymentsPricing
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<WithAccountPostRequestBodyGroupsPaymentsPricing>(
        'payments_pricing', paymentsPricing);
    writer.writeAdditionalData(additionalData);
  }
}
