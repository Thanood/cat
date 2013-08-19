-- MT_FixTables
-- Author: Thalassicus
-- DateCreated: 8/4/2013 3:01:24 AM
--------------------------------------------------------------

--[[

VFS lua files set their GameInfo table before the program reads database tables used on the "modding game setup" screen.
We must therefore hardcode these data values in a Lua table.

--]]

GameInfoCep					= {}
GameInfoCep.Worlds			= {}
GameInfoCep.GameSpeeds		= {}
GameInfoCep.HandicapInfos	= {}

-- This MT_FixTables.lua data automatically created by:
-- Handicaps tab of CEP_LeadersAI.xls

GameInfoCep.HandicapInfos[0] = {
ID                             = 0,
Type                           = "HANDICAP_SETTLER",
Description                    = "TXT_KEY_HANDICAP_SETTLER",
Help                           = "TXT_KEY_HANDICAP_SETTLER_HELP",
HappinessDefault               = 15,
NumCitiesUnhappinessMod        = 40,
PopulationUnhappinessMod       = 40,
AIGrowthPercent                = 160,
AIResearchPercent              = 0,
AIResearchPercentPerEra        = 0,
AITrainPercent                 = 175,
AIConstructPercent             = 160,
AIWorldConstructPercent        = 160,
AICreatePercent                = 160,
AIProductionPercentPerEra      = 0,
AIWorldTrainPercent            = 160,
AIWorldCreatePercent           = 160,
AIBuildingCostPercent          = 100,
AIUnitCostPercent              = 100,
AIUnitUpgradePercent           = 50,
AIUnitSupplyPercent            = 0,

AIBarbarianBonus               = 100,
AIFreeXPPercent                = 0,
AIFreeXP                       = 0,
AIFreeXPPerEra                 = 0,

AIWorkRateModifier             = 0,


AIStartingDefenseUnits         = 0,
AIStartingWorkerUnits          = 0,
AIStartingExploreUnits         = 0,
AIStartingUnitMultiplier       = 0,
AIGold                         = 0,

AICapitalYieldPeaceful         = 0,
AICapitalYieldMilitaristic     = 0,

AttitudeChange                 = 2,
AIDeclareWarProb               = 0,
AIUnhappinessPercent           = 100,
AIInflationPercent             = 100,
AIPerEraModifier               = 0,
AIAdvancedStartPercent         = 100,
RouteCostPercent               = 34,
UnitCostPercent                = 50,
BuildingCostPercent            = 50,
ResearchPercent                = 90,
PolicyPercent                  = 50,
ImprovementCostPercent         = 100,
StartingDefenseUnits           = 0,
StartingWorkerUnits            = 0,
StartingExploreUnits           = 0,
BarbCampGold                   = 50,
BarbSpawnMod                   = 0,
BarbarianBonus                 = 150,
EarliestBarbarianReleaseTurn   = 100,
BarbarianLandTargetRange       = 5,
BarbarianSeaTargetRange        = 10,
StartingLocPercent             = 50,
AdvancedStartPointsMod         = 150,
ExtraHappinessPerLuxury        = 1,
GoldFreeUnits                  = 0,
ProductionFreeUnits            = 10,
ProductionFreeUnitsPerCity     = 3,
StartingPolicyPoints           = 0,
ProductionFreeUnitsPopulationPercent     = 50,
CityProductionNumOptionsConsidered       = 10,
TechNumOptionsConsidered       = 10,
PolicyNumOptionsConsidered     = 10,
InflationPercent               = 100,
FreeCulturePerTurn             = 0,
NoTechTradeModifier            = 100,
TechTradeKnownModifier         = -100,
PortraitIndex                  = 0,
IconAtlas                      = "DIFFICULTY_ATLAS"}

GameInfoCep.HandicapInfos[1] = {
ID                             = 1,
Type                           = "HANDICAP_CHIEFTAIN",
Description                    = "TXT_KEY_HANDICAP_CHIEFTAIN",
Help                           = "TXT_KEY_HANDICAP_CHIEFTAIN_HELP",
HappinessDefault               = 12,
NumCitiesUnhappinessMod        = 60,
PopulationUnhappinessMod       = 60,
AIGrowthPercent                = 130,
AIResearchPercent              = 0,
AIResearchPercentPerEra        = 0,
AITrainPercent                 = 130,
AIConstructPercent             = 130,
AIWorldConstructPercent        = 130,
AICreatePercent                = 130,
AIProductionPercentPerEra      = 0,
AIWorldTrainPercent            = 130,
AIWorldCreatePercent           = 130,
AIBuildingCostPercent          = 100,
AIUnitCostPercent              = 100,
AIUnitUpgradePercent           = 50,
AIUnitSupplyPercent            = 0,

AIBarbarianBonus               = 100,
AIFreeXPPercent                = 0,
AIFreeXP                       = 0,
AIFreeXPPerEra                 = 0,

AIWorkRateModifier             = 0,


AIStartingDefenseUnits         = 0,
AIStartingWorkerUnits          = 0,
AIStartingExploreUnits         = 0,
AIStartingUnitMultiplier       = 0,
AIGold                         = 0,

AICapitalYieldPeaceful         = 0,
AICapitalYieldMilitaristic     = 0,

AttitudeChange                 = 1,
AIDeclareWarProb               = 75,
AIUnhappinessPercent           = 100,
AIInflationPercent             = 100,
AIPerEraModifier               = 0,
AIAdvancedStartPercent         = 100,
RouteCostPercent               = 50,
UnitCostPercent                = 67,
BuildingCostPercent            = 67,
ResearchPercent                = 95,
PolicyPercent                  = 67,
ImprovementCostPercent         = 100,
StartingDefenseUnits           = 0,
StartingWorkerUnits            = 0,
StartingExploreUnits           = 0,
BarbCampGold                   = 50,
BarbSpawnMod                   = 0,
BarbarianBonus                 = 50,
EarliestBarbarianReleaseTurn   = 100,
BarbarianLandTargetRange       = 5,
BarbarianSeaTargetRange        = 10,
StartingLocPercent             = 50,
AdvancedStartPointsMod         = 130,
ExtraHappinessPerLuxury        = 1,
GoldFreeUnits                  = 0,
ProductionFreeUnits            = 7,
ProductionFreeUnitsPerCity     = 3,
StartingPolicyPoints           = 0,
ProductionFreeUnitsPopulationPercent     = 50,
CityProductionNumOptionsConsidered       = 4,
TechNumOptionsConsidered       = 4,
PolicyNumOptionsConsidered     = 4,
InflationPercent               = 100,
FreeCulturePerTurn             = 0,
NoTechTradeModifier            = 90,
TechTradeKnownModifier         = -50,
PortraitIndex                  = 1,
IconAtlas                      = "DIFFICULTY_ATLAS"}

GameInfoCep.HandicapInfos[2] = {
ID                             = 2,
Type                           = "HANDICAP_WARLORD",
Description                    = "TXT_KEY_HANDICAP_WARLORD",
Help                           = "TXT_KEY_HANDICAP_WARLORD_HELP",
HappinessDefault               = 9,
NumCitiesUnhappinessMod        = 75,
PopulationUnhappinessMod       = 75,
AIGrowthPercent                = 100,
AIResearchPercent              = 0,
AIResearchPercentPerEra        = 0,
AITrainPercent                 = 100,
AIConstructPercent             = 50,
AIWorldConstructPercent        = 100,
AICreatePercent                = 100,
AIProductionPercentPerEra      = 0,
AIWorldTrainPercent            = 100,
AIWorldCreatePercent           = 100,
AIBuildingCostPercent          = 100,
AIUnitCostPercent              = 100,
AIUnitUpgradePercent           = 100,
AIUnitSupplyPercent            = 0,

AIBarbarianBonus               = 100,
AIFreeXPPercent                = 0,
AIFreeXP                       = 15,
AIFreeXPPerEra                 = 4,

AIWorkRateModifier             = 0,


AIStartingDefenseUnits         = 0,
AIStartingWorkerUnits          = 0,
AIStartingExploreUnits         = 0,
AIStartingUnitMultiplier       = 0,
AIGold                         = 0,

AICapitalYieldPeaceful         = 0,
AICapitalYieldMilitaristic     = 2,

AttitudeChange                 = -1,
AIDeclareWarProb               = 100,
AIUnhappinessPercent           = 100,
AIInflationPercent             = 100,
AIPerEraModifier               = 0,
AIAdvancedStartPercent         = 100,
RouteCostPercent               = 100,
UnitCostPercent                = 100,
BuildingCostPercent            = 100,
ResearchPercent                = 100,
PolicyPercent                  = 100,
ImprovementCostPercent         = 100,
StartingDefenseUnits           = 0,
StartingWorkerUnits            = 0,
StartingExploreUnits           = 0,
BarbCampGold                   = 50,
BarbSpawnMod                   = 0,
BarbarianBonus                 = 20,
EarliestBarbarianReleaseTurn   = 90,
BarbarianLandTargetRange       = 5,
BarbarianSeaTargetRange        = 10,
StartingLocPercent             = 50,
AdvancedStartPointsMod         = 100,
ExtraHappinessPerLuxury        = 0,
GoldFreeUnits                  = 0,
ProductionFreeUnits            = 100,
ProductionFreeUnitsPerCity     = 2,
StartingPolicyPoints           = 0,
ProductionFreeUnitsPopulationPercent     = 50,
CityProductionNumOptionsConsidered       = 2,
TechNumOptionsConsidered       = 2,
PolicyNumOptionsConsidered     = 2,
InflationPercent               = 100,
FreeCulturePerTurn             = 0,
NoTechTradeModifier            = 70,
TechTradeKnownModifier         = -25,
PortraitIndex                  = 2,
IconAtlas                      = "DIFFICULTY_ATLAS"}

GameInfoCep.HandicapInfos[3] = {
ID                             = 3,
Type                           = "HANDICAP_PRINCE",
Description                    = "TXT_KEY_HANDICAP_PRINCE",
Help                           = "TXT_KEY_HANDICAP_PRINCE_HELP",
HappinessDefault               = 9,
NumCitiesUnhappinessMod        = 100,
PopulationUnhappinessMod       = 100,
AIGrowthPercent                = 100,
AIResearchPercent              = 18,
AIResearchPercentPerEra        = 4,
AITrainPercent                 = 100,
AIConstructPercent             = 50,
AIWorldConstructPercent        = 85,
AICreatePercent                = 100,
AIProductionPercentPerEra      = 1,
AIWorldTrainPercent            = 100,
AIWorldCreatePercent           = 100,
AIBuildingCostPercent          = 100,
AIUnitCostPercent              = 83,
AIUnitUpgradePercent           = 60,
AIUnitSupplyPercent            = 5,
AIFreePromotion                = "PROMOTION_HANDICAP",
AIBarbarianBonus               = 100,
AIFreeXPPercent                = 0,
AIFreeXP                       = 30,
AIFreeXPPerEra                 = 8,

AIWorkRateModifier             = 20,


AIStartingDefenseUnits         = 0,
AIStartingWorkerUnits          = 0,
AIStartingExploreUnits         = 0,
AIStartingUnitMultiplier       = 0,
AIGold                         = 0,

AICapitalYieldPeaceful         = 2,
AICapitalYieldMilitaristic     = 4,

AttitudeChange                 = -1,
AIDeclareWarProb               = 100,
AIUnhappinessPercent           = 100,
AIInflationPercent             = 100,
AIPerEraModifier               = -2,
AIAdvancedStartPercent         = 120,
RouteCostPercent               = 100,
UnitCostPercent                = 100,
BuildingCostPercent            = 100,
ResearchPercent                = 100,
PolicyPercent                  = 100,
ImprovementCostPercent         = 100,
StartingDefenseUnits           = 0,
StartingWorkerUnits            = 0,
StartingExploreUnits           = 0,
BarbCampGold                   = 50,
BarbSpawnMod                   = 0,
BarbarianBonus                 = 15,
EarliestBarbarianReleaseTurn   = 80,
BarbarianLandTargetRange       = 5,
BarbarianSeaTargetRange        = 12,
StartingLocPercent             = 50,
AdvancedStartPointsMod         = 90,
ExtraHappinessPerLuxury        = 0,
GoldFreeUnits                  = 0,
ProductionFreeUnits            = 100,
ProductionFreeUnitsPerCity     = 2,
StartingPolicyPoints           = 0,
ProductionFreeUnitsPopulationPercent     = 50,
CityProductionNumOptionsConsidered       = 2,
TechNumOptionsConsidered       = 2,
PolicyNumOptionsConsidered     = 2,
InflationPercent               = 100,
FreeCulturePerTurn             = 0,
NoTechTradeModifier            = 50,
TechTradeKnownModifier         = 0,
PortraitIndex                  = 3,
IconAtlas                      = "DIFFICULTY_ATLAS"}

GameInfoCep.HandicapInfos[4] = {
ID                             = 4,
Type                           = "HANDICAP_KING",
Description                    = "TXT_KEY_HANDICAP_KING",
Help                           = "TXT_KEY_HANDICAP_KING_HELP",
HappinessDefault               = 9,
NumCitiesUnhappinessMod        = 100,
PopulationUnhappinessMod       = 100,
AIGrowthPercent                = 100,
AIResearchPercent              = 36,
AIResearchPercentPerEra        = 8,
AITrainPercent                 = 100,
AIConstructPercent             = 50,
AIWorldConstructPercent        = 75,
AICreatePercent                = 100,
AIProductionPercentPerEra      = 2,
AIWorldTrainPercent            = 100,
AIWorldCreatePercent           = 100,
AIBuildingCostPercent          = 100,
AIUnitCostPercent              = 71,
AIUnitUpgradePercent           = 50,
AIUnitSupplyPercent            = 10,
AIFreePromotion                = "PROMOTION_HANDICAP",
AIBarbarianBonus               = 100,
AIFreeXPPercent                = 0,
AIFreeXP                       = 35,
AIFreeXPPerEra                 = 12,

AIWorkRateModifier             = 50,


AIStartingDefenseUnits         = 0,
AIStartingWorkerUnits          = 1,
AIStartingExploreUnits         = 0,
AIStartingUnitMultiplier       = 0,
AIGold                         = 0,

AICapitalYieldPeaceful         = 2,
AICapitalYieldMilitaristic     = 5,

AttitudeChange                 = -1,
AIDeclareWarProb               = 100,
AIUnhappinessPercent           = 100,
AIInflationPercent             = 100,
AIPerEraModifier               = -3,
AIAdvancedStartPercent         = 140,
RouteCostPercent               = 100,
UnitCostPercent                = 100,
BuildingCostPercent            = 100,
ResearchPercent                = 100,
PolicyPercent                  = 100,
ImprovementCostPercent         = 100,
StartingDefenseUnits           = 0,
StartingWorkerUnits            = 0,
StartingExploreUnits           = 0,
BarbCampGold                   = 50,
BarbSpawnMod                   = 0,
BarbarianBonus                 = 15,
EarliestBarbarianReleaseTurn   = 70,
BarbarianLandTargetRange       = 6,
BarbarianSeaTargetRange        = 15,
StartingLocPercent             = 50,
AdvancedStartPointsMod         = 85,
ExtraHappinessPerLuxury        = 0,
GoldFreeUnits                  = 0,
ProductionFreeUnits            = 100,
ProductionFreeUnitsPerCity     = 2,
StartingPolicyPoints           = 0,
ProductionFreeUnitsPopulationPercent     = 50,
CityProductionNumOptionsConsidered       = 2,
TechNumOptionsConsidered       = 2,
PolicyNumOptionsConsidered     = 2,
InflationPercent               = 100,
FreeCulturePerTurn             = 0,
NoTechTradeModifier            = 40,
TechTradeKnownModifier         = 0,
PortraitIndex                  = 4,
IconAtlas                      = "DIFFICULTY_ATLAS"}

GameInfoCep.HandicapInfos[5] = {
ID                             = 5,
Type                           = "HANDICAP_EMPEROR",
Description                    = "TXT_KEY_HANDICAP_EMPEROR",
Help                           = "TXT_KEY_HANDICAP_EMPEROR_HELP",
HappinessDefault               = 9,
NumCitiesUnhappinessMod        = 100,
PopulationUnhappinessMod       = 100,
AIGrowthPercent                = 100,
AIResearchPercent              = 54,
AIResearchPercentPerEra        = 12,
AITrainPercent                 = 100,
AIConstructPercent             = 50,
AIWorldConstructPercent        = 75,
AICreatePercent                = 100,
AIProductionPercentPerEra      = 3,
AIWorldTrainPercent            = 100,
AIWorldCreatePercent           = 100,
AIBuildingCostPercent          = 100,
AIUnitCostPercent              = 63,
AIUnitUpgradePercent           = 50,
AIUnitSupplyPercent            = 15,
AIFreePromotion                = "PROMOTION_HANDICAP",
AIBarbarianBonus               = 100,
AIFreeXPPercent                = 25,
AIFreeXP                       = 40,
AIFreeXPPerEra                 = 16,

AIWorkRateModifier             = 75,


AIStartingDefenseUnits         = 0,
AIStartingWorkerUnits          = 1,
AIStartingExploreUnits         = 0,
AIStartingUnitMultiplier       = 0,
AIGold                         = 0,

AICapitalYieldPeaceful         = 3,
AICapitalYieldMilitaristic     = 6,

AttitudeChange                 = -1,
AIDeclareWarProb               = 100,
AIUnhappinessPercent           = 100,
AIInflationPercent             = 100,
AIPerEraModifier               = -4,
AIAdvancedStartPercent         = 160,
RouteCostPercent               = 100,
UnitCostPercent                = 100,
BuildingCostPercent            = 100,
ResearchPercent                = 100,
PolicyPercent                  = 100,
ImprovementCostPercent         = 100,
StartingDefenseUnits           = 0,
StartingWorkerUnits            = 0,
StartingExploreUnits           = 0,
BarbCampGold                   = 50,
BarbSpawnMod                   = 0,
BarbarianBonus                 = 15,
EarliestBarbarianReleaseTurn   = 60,
BarbarianLandTargetRange       = 7,
BarbarianSeaTargetRange        = 18,
StartingLocPercent             = 50,
AdvancedStartPointsMod         = 80,
ExtraHappinessPerLuxury        = 0,
GoldFreeUnits                  = 0,
ProductionFreeUnits            = 100,
ProductionFreeUnitsPerCity     = 2,
StartingPolicyPoints           = 0,
ProductionFreeUnitsPopulationPercent     = 50,
CityProductionNumOptionsConsidered       = 2,
TechNumOptionsConsidered       = 2,
PolicyNumOptionsConsidered     = 2,
InflationPercent               = 100,
FreeCulturePerTurn             = 0,
NoTechTradeModifier            = 30,
TechTradeKnownModifier         = 0,
PortraitIndex                  = 5,
IconAtlas                      = "DIFFICULTY_ATLAS"}

GameInfoCep.HandicapInfos[6] = {
ID                             = 6,
Type                           = "HANDICAP_IMMORTAL",
Description                    = "TXT_KEY_HANDICAP_IMMORTAL",
Help                           = "TXT_KEY_HANDICAP_IMMORTAL_HELP",
HappinessDefault               = 9,
NumCitiesUnhappinessMod        = 100,
PopulationUnhappinessMod       = 100,
AIGrowthPercent                = 100,
AIResearchPercent              = 72,
AIResearchPercentPerEra        = 16,
AITrainPercent                 = 100,
AIConstructPercent             = 50,
AIWorldConstructPercent        = 75,
AICreatePercent                = 100,
AIProductionPercentPerEra      = 4,
AIWorldTrainPercent            = 100,
AIWorldCreatePercent           = 100,
AIBuildingCostPercent          = 100,
AIUnitCostPercent              = 56,
AIUnitUpgradePercent           = 50,
AIUnitSupplyPercent            = 20,
AIFreePromotion                = "PROMOTION_HANDICAP",
AIBarbarianBonus               = 100,
AIFreeXPPercent                = 50,
AIFreeXP                       = 50,
AIFreeXPPerEra                 = 20,

AIWorkRateModifier             = 100,


AIStartingDefenseUnits         = 0,
AIStartingWorkerUnits          = 1,
AIStartingExploreUnits         = 0,
AIStartingUnitMultiplier       = 0,
AIGold                         = 0,

AICapitalYieldPeaceful         = 4,
AICapitalYieldMilitaristic     = 7,

AttitudeChange                 = -1,
AIDeclareWarProb               = 100,
AIUnhappinessPercent           = 100,
AIInflationPercent             = 100,
AIPerEraModifier               = -5,
AIAdvancedStartPercent         = 180,
RouteCostPercent               = 100,
UnitCostPercent                = 100,
BuildingCostPercent            = 100,
ResearchPercent                = 100,
PolicyPercent                  = 100,
ImprovementCostPercent         = 100,
StartingDefenseUnits           = 0,
StartingWorkerUnits            = 0,
StartingExploreUnits           = 0,
BarbCampGold                   = 50,
BarbSpawnMod                   = 0,
BarbarianBonus                 = 15,
EarliestBarbarianReleaseTurn   = 40,
BarbarianLandTargetRange       = 8,
BarbarianSeaTargetRange        = 20,
StartingLocPercent             = 50,
AdvancedStartPointsMod         = 75,
ExtraHappinessPerLuxury        = 0,
GoldFreeUnits                  = 0,
ProductionFreeUnits            = 100,
ProductionFreeUnitsPerCity     = 2,
StartingPolicyPoints           = 0,
ProductionFreeUnitsPopulationPercent     = 50,
CityProductionNumOptionsConsidered       = 2,
TechNumOptionsConsidered       = 2,
PolicyNumOptionsConsidered     = 2,
InflationPercent               = 100,
FreeCulturePerTurn             = 0,
NoTechTradeModifier            = 20,
TechTradeKnownModifier         = 0,
PortraitIndex                  = 6,
IconAtlas                      = "DIFFICULTY_ATLAS"}
