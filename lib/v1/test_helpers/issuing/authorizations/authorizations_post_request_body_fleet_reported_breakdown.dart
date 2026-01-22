// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './authorizations_post_request_body_fleet_reported_breakdown_fuel.dart';
import './authorizations_post_request_body_fleet_reported_breakdown_non_fuel.dart';
import './authorizations_post_request_body_fleet_reported_breakdown_tax.dart';

/// auto generated
class AuthorizationsPostRequestBodyFleetReportedBreakdown
    implements AdditionalDataHolder, Parsable {
  ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
  @override
  Map<String, Object?> additionalData;

  ///  The fuel property
  AuthorizationsPostRequestBodyFleetReportedBreakdownFuel? fuel;

  ///  The non_fuel property
  AuthorizationsPostRequestBodyFleetReportedBreakdownNonFuel? nonFuel;

  ///  The tax property
  AuthorizationsPostRequestBodyFleetReportedBreakdownTax? tax;

  /// Instantiates a new [AuthorizationsPostRequestBodyFleetReportedBreakdown] and sets the default values.
  AuthorizationsPostRequestBodyFleetReportedBreakdown() : additionalData = {};

  /// Creates a new instance of the appropriate class based on discriminator value
  ///  [parseNode] The parse node to use to read the discriminator value and create the object
  static AuthorizationsPostRequestBodyFleetReportedBreakdown
      createFromDiscriminatorValue(ParseNode parseNode) {
    return AuthorizationsPostRequestBodyFleetReportedBreakdown();
  }

  /// The deserialization information for the current model
  @override
  Map<String, void Function(ParseNode)> getFieldDeserializers() {
    var deserializerMap = <String, void Function(ParseNode)>{};
    deserializerMap['fuel'] = (node) => fuel = node.getObjectValue<
            AuthorizationsPostRequestBodyFleetReportedBreakdownFuel>(
        AuthorizationsPostRequestBodyFleetReportedBreakdownFuel
            .createFromDiscriminatorValue);
    deserializerMap['non_fuel'] = (node) => nonFuel = node.getObjectValue<
            AuthorizationsPostRequestBodyFleetReportedBreakdownNonFuel>(
        AuthorizationsPostRequestBodyFleetReportedBreakdownNonFuel
            .createFromDiscriminatorValue);
    deserializerMap['tax'] = (node) => tax = node
        .getObjectValue<AuthorizationsPostRequestBodyFleetReportedBreakdownTax>(
            AuthorizationsPostRequestBodyFleetReportedBreakdownTax
                .createFromDiscriminatorValue);
    return deserializerMap;
  }

  /// Serializes information the current object
  ///  [writer] Serialization writer to use to serialize this model
  @override
  void serialize(SerializationWriter writer) {
    writer.writeObjectValue<
        AuthorizationsPostRequestBodyFleetReportedBreakdownFuel>('fuel', fuel);
    writer.writeObjectValue<
            AuthorizationsPostRequestBodyFleetReportedBreakdownNonFuel>(
        'non_fuel', nonFuel);
    writer.writeObjectValue<
        AuthorizationsPostRequestBodyFleetReportedBreakdownTax>('tax', tax);
    writer.writeAdditionalData(additionalData);
  }
}
