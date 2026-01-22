// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './credit_grants_post_request_body_applicability_config_scope.dart';

/// auto generated
/// Configuration specifying what this credit grant applies to. We currently only support `metered` prices that have a [Billing Meter](https://docs.stripe.com/api/billing/meter) attached to them.
class CreditGrantsPostRequestBodyApplicabilityConfig
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The scope property
  CreditGrantsPostRequestBodyApplicabilityConfigScope? scope;

  /// Instantiates a new [CreditGrantsPostRequestBodyApplicabilityConfig] and sets the default values.
  CreditGrantsPostRequestBodyApplicabilityConfig() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static CreditGrantsPostRequestBodyApplicabilityConfig
      createFromDiscriminatorValue(ParseNode parseNode) {
    return CreditGrantsPostRequestBodyApplicabilityConfig();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['scope'] = (node) => scope = node
        .getObjectValue<CreditGrantsPostRequestBodyApplicabilityConfigScope>(
            CreditGrantsPostRequestBodyApplicabilityConfigScope
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer
        .writeObjectValue<CreditGrantsPostRequestBodyApplicabilityConfigScope>(
            'scope', scope);
    writer.writeAdditionalData(additionalData);
  }
}
