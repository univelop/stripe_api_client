// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './portal_flows_after_completion_hosted_confirmation.dart';
import './portal_flows_after_completion_redirect.dart';
import './portal_flows_flow_after_completion_type.dart';

/// auto generated
class PortalFlowsFlowAfterCompletion implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  Configuration when `after_completion.type=hosted_confirmation`.
  PortalFlowsAfterCompletionHostedConfirmation? hostedConfirmation;

  ///  Configuration when `after_completion.type=redirect`.
  PortalFlowsAfterCompletionRedirect? redirect;

  ///  The specified type of behavior after the flow is completed.
  PortalFlowsFlowAfterCompletionType? type_;

  /// Instantiates a new [PortalFlowsFlowAfterCompletion] and sets the default values.
  PortalFlowsFlowAfterCompletion() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static PortalFlowsFlowAfterCompletion createFromDiscriminatorValue(
      ParseNode parseNode) {
    return PortalFlowsFlowAfterCompletion();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['hosted_confirmation'] = (node) => hostedConfirmation =
        node.getObjectValue<PortalFlowsAfterCompletionHostedConfirmation>(
            PortalFlowsAfterCompletionHostedConfirmation
                .createFromDiscriminatorValue);
    deserializerMap['redirect'] = (node) => redirect =
        node.getObjectValue<PortalFlowsAfterCompletionRedirect>(
            PortalFlowsAfterCompletionRedirect.createFromDiscriminatorValue);
    deserializerMap['type'] = (node) => type_ =
        node.getEnumValue<PortalFlowsFlowAfterCompletionType>((stringValue) =>
            PortalFlowsFlowAfterCompletionType.values
                .where((enumVal) => enumVal.value == stringValue)
                .firstOrNull);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<PortalFlowsAfterCompletionHostedConfirmation>(
        'hosted_confirmation', hostedConfirmation);
    writer.writeObjectValue<PortalFlowsAfterCompletionRedirect>(
        'redirect', redirect);
    writer.writeEnumValue<PortalFlowsFlowAfterCompletionType>(
        'type', type_, (e) => e?.value);
    writer.writeAdditionalData(additionalData);
  }
}
