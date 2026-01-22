// ignore_for_file: type=lint
/// auto generated
///  Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
enum PlanTiersMode {
  graduated('graduated'),
  volume('volume');

  const PlanTiersMode(this.value);
  final String value;
}
