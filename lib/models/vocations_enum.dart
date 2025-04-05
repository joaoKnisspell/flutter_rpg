enum VocationsEnum {
  algoWizard(
    title: "Terminal Raider",
    description: "Adept in terminal commands to trigger traps.",
    weapon: "Terminal",
    ability: "Shellshock",
    image: "terminal_raider.jpg",
  ),
  codeJunkie(
    title: "Code Junkie",
    description: "Uses code to infiltrate enemy defenses.",
    weapon: "React 99",
    ability: "Higher Order Overdrive",
    image: "code_junkie.jpg",
  ),
  terminalRaider(
    title: "UX Ninja",
    description: "Uses quick & stealthy visual attacks.",
    weapon: "Infused Stylus",
    ability: "Triple Swipe",
    image: "ux_ninja.jpg",
  ),
  uxNinja(
    title: "Algo Wizard",
    description: "Carries a staff to unleash algorithm magic.",
    weapon: "Crystal Staff",
    ability: "Algorythmic Daze",
    image: "algo_wizard.jpg",
  );

  final String image;
  final String title;
  final String description;
  final String ability;
  final String weapon;

  const VocationsEnum({
    required this.image,
    required this.title,
    required this.description,
    required this.ability,
    required this.weapon,
  });
}
