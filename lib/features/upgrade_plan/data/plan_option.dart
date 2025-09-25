class PlanOption {
  final String id;
  final String title;
  final String priceLabel;
  final String cadenceLabel;
  final String note;
  final bool isRecommended;

  const PlanOption({
    required this.id,
    required this.title,
    required this.priceLabel,
    required this.cadenceLabel,
    required this.note,
    this.isRecommended = false,
  });
}

enum BillingCycle { monthly, annually }
