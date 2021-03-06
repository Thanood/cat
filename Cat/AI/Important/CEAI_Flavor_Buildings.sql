--



--
-- Availability: Buildings
--

UPDATE Buildings SET AIAvailability = 8;

UPDATE Buildings SET AIAvailability = 4
WHERE (Water = 1
	OR River = 1
	OR FreshWater = 1
	OR Hill = 1
	OR Flat = 1
	OR Mountain = 1
	OR NearbyMountainRequired = 1
	OR MutuallyExclusiveGroup = 1
	OR NoOccupiedUnhappiness = 1
	OR NearbyTerrainRequired IS NOT NULL
);

UPDATE Buildings SET AIAvailability = 4
WHERE (Type IN (SELECT BuildingType FROM Building_ResourceQuantityRequirements)
	OR Type IN (SELECT BuildingType FROM Building_LocalResourceOrs)
	OR Type IN (SELECT BuildingType FROM Building_LocalResourceAnds)
	--OR Type IN (SELECT BuildingType FROM Building_ResourceYieldModifiers)
);

UPDATE Buildings SET AIAvailability = 2
WHERE Type IN (SELECT building.Type
FROM Buildings building, BuildingClasses class
WHERE (building.BuildingClass = class.Type AND (
	   class.MaxGlobalInstances = 1
	OR class.MaxPlayerInstances = 1
	OR class.MaxTeamInstances = 1
)));


--
-- Building Priorities
--

DELETE FROM Building_Flavors;

/*
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_INFRASTRUCTURE', 16
FROM Buildings;
*/

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_TILE_IMPROVEMENT', 16
FROM Buildings WHERE (
	   WorkerSpeedModifier <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_GROWTH', 16
FROM Buildings WHERE (
	   GoldenAge = 1
	OR GoldenAgeModifier <> 0
	OR FoodKept <> 0
	OR GlobalPopulationChange <> 0
	OR AllowsFoodTradeRoutes <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_PRODUCTION', 16
FROM Buildings WHERE (
	   GoldenAge = 1
	OR GoldenAgeModifier <> 0
	OR BuildingProductionModifier <> 0
	OR AllowsProductionTradeRoutes <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_GOLD', 16
FROM Buildings WHERE (
	   GoldenAge = 1
	OR GoldenAgeModifier <> 0
	OR GreatPersonExpendGold <> 0
	OR UnitUpgradeCostMod <> 0
	OR CityConnectionTradeRouteModifier <> 0
	OR PlotBuyCostModifier <> 0
	OR GlobalPlotBuyCostModifier <> 0
	OR Gold <> 0
	OR MinorFriendshipChange <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_SCIENCE', 16
FROM Buildings WHERE (
	   GoldenAge = 1
	OR GoldenAgeModifier <> 0
	OR TechShare <> 0
	OR FreeTechs <> 0
	OR MedianTechPercentChange <> 0
	OR GreatScientistBeakerModifier <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_CULTURE', 16
FROM Buildings WHERE (
	   GoldenAge = 1
	OR GoldenAgeModifier <> 0
	OR CultureRateModifier <> 0
	OR GlobalCultureRateModifier <> 0
	OR PolicyCostModifier <> 0
	OR FreePolicies <> 0
	OR XBuiltTriggersIdeologyChoice <> 0
	OR GreatWorkSlotType <> 0
	OR FreeGreatWork <> 0
	OR SpecialistExtraCulture <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_TOURISM', 16
FROM Buildings WHERE (
	   LandmarksTourismPercent <> 0
	OR GreatWorksTourismModifier <> 0
	OR TechEnhancedTourism <> 0
	OR GreatWorkSlotType <> 0
	OR FreeGreatWork <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_EXPANSION', 16
FROM Buildings WHERE (
	   MapCentering = 1
	OR UnhappinessModifier <> 0
	OR HappinessPerCity <> 0
	OR HappinessPerXPolicies <> 0
	OR CityCountUnhappinessMod <> 0
	OR PlotCultureCostModifier <> 0
	OR GlobalPlotCultureCostModifier <> 0
	OR PlotBuyCostModifier <> 0
	OR GlobalPlotBuyCostModifier <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_EXPANSION', 8
FROM Buildings WHERE (
	   MapCentering = 1
	OR Happiness <> 0
	OR UnmoddedHappiness <> 0
	OR NoOccupiedUnhappiness <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_HAPPINESS', 16
FROM Buildings WHERE (
	   ExtraLuxuries = 1
	OR Happiness <> 0
	OR UnmoddedHappiness <> 0
	OR UnhappinessModifier <> 0
	OR HappinessPerCity <> 0
	OR HappinessPerXPolicies <> 0
	OR CityCountUnhappinessMod <> 0
	OR NoOccupiedUnhappiness <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_RELIGION', 16
FROM Buildings WHERE (
	   FoundsReligion = 1
	OR IsReligious = 1
	OR HolyCity = 1
	OR ExtraMissionarySpreads <> 0
	OR ReligiousPressureModifier <> 0
);

/*
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_RELIGION', 8
FROM Buildings WHERE (
	   UnlockedByBelief = 1
);
*/










INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_GREAT_PEOPLE', 16
FROM Buildings WHERE (
	   GreatPeopleRateModifier <> 0
	OR GlobalGreatPeopleRateModifier <> 0
	OR GreatPersonExpendGold <> 0
	OR FreeGreatPeople <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_GREAT_PEOPLE', 8
FROM Buildings WHERE (
	   SpecialistType <> 0
	OR SpecialistExtraCulture <> 0
	OR GreatPeopleRateChange <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_DIPLOMACY', 16
FROM Buildings WHERE (
	   DiplomaticVoting = 1
	OR MinorFriendshipChange <> 0
	OR ExtraLeagueVotes <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_ESPIONAGE', 16
FROM Buildings WHERE (
	   AffectSpiesNow = 1
	OR NullifyInfluenceModifier = 1
	OR Espionage <> 0
	OR EspionageModifier <> 0
	OR GlobalEspionageModifier <> 0
	OR ExtraSpies <> 0
	OR SpyRankChange <> 0
	OR InstantSpyRankChange <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_WATER_CONNECTION', 16
FROM Buildings WHERE (
	   AllowsWaterRoutes = 1
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_MILITARY_TRAINING', 16
FROM Buildings WHERE (
	   Experience <> 0
	OR GlobalExperience <> 0
	OR FreePromotion <> 0
	OR TrainedFreePromotion <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_OFFENSE', 16
FROM Buildings WHERE (
	   GreatGeneralRateModifier <> 0
	OR UnitUpgradeCostMod <> 0
	OR Airlift <> 0
	OR MilitaryProductionModifier <> 0
	OR InstantMilitaryIncrease <> 0
	OR NoOccupiedUnhappiness <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_DEFENSE', 16
FROM Buildings WHERE (
	   BorderObstacle = 1
	OR PlayerBorderObstacle = 1
	OR UnitUpgradeCostMod <> 0
	OR Airlift <> 0
	OR InstantMilitaryIncrease <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_CITY_DEFENSE', 16
FROM Buildings WHERE (
	   AirModifier <> 0
	OR NukeModifier <> 0
	OR HealRateChange <> 0
	OR Defense <> 0
	OR ExtraCityHitPoints <> 0
	OR GlobalDefenseMod <> 0
	OR CityWall <> 0
	OR AllowsRangeStrike <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_SPACESHIP', 16
FROM Buildings WHERE (
	   SpaceProductionModifier <> 0
	OR GlobalSpaceProductionModifier <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_WONDER', 16
FROM Buildings WHERE (
	   WonderProductionModifier <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_I_TRADE_DESTINATION', 16
FROM Buildings WHERE (
	   TradeRouteTargetBonus <> 0
	OR NumTradeRouteBonus <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_I_TRADE_ORIGIN', 16
FROM Buildings WHERE (
	   AllowsFoodTradeRoutes <> 0
	OR AllowsProductionTradeRoutes <> 0
	OR TradeRouteRecipientBonus <> 0
	OR NumTradeRouteBonus <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_I_LAND_TRADE_ROUTE', 16
FROM Buildings WHERE (
	   TradeRouteLandDistanceModifier <> 0
	OR TradeRouteLandGoldBonus <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT Type, 'FLAVOR_I_SEA_TRADE_ROUTE', 16
FROM Buildings WHERE (
	   TradeRouteSeaDistanceModifier <> 0
	OR TradeRouteSeaGoldBonus <> 0
);

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor)
SELECT building.Type, 'FLAVOR_WONDER', 16
FROM Buildings building, BuildingClasses class
WHERE (building.BuildingClass = class.Type AND (
	   class.MaxGlobalInstances = 1
	OR class.MaxPlayerInstances = 1
	OR class.MaxTeamInstances = 1
));




-- This CEAI_Flavor_Buildings.sql data created by:
-- BuildingPriorities2 tab of CEP_LeadersAI spreadsheet (in mod folder).

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_AreaYieldModifiers              building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_BuildingClassYieldChanges       building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_GlobalYieldModifiers            building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_ResourceYieldModifiers          building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_RiverPlotYieldChanges           building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_SeaPlotYieldChanges             building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_LakePlotYieldChanges            building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_SeaResourceYieldChanges         building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_ResourceYieldChanges            building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_FeatureYieldChanges             building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_TerrainYieldChanges             building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_SpecialistYieldChanges          building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_YieldChangesPerPop              building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_YieldChangesPerReligion         building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_TechEnhancedYieldChanges        building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_YieldModifiers                  building, Yields yield WHERE building.YieldType = yield.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, yield.FlavorType, 16 FROM Building_YieldChanges                    building, Yields yield WHERE building.YieldType = yield.Type;

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, combat.FlavorType, 16 FROM Building_UnitCombatFreeExperiences       building, UnitCombatInfos combat WHERE building.UnitCombatType = combat.Type;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT building.BuildingType, combat.FlavorType, 16 FROM Building_UnitCombatProductionModifiers   building, UnitCombatInfos combat WHERE building.UnitCombatType = combat.Type;

INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_HAPPINESS'           , 16 FROM Building_BuildingClassHappiness;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_EXPANSION'           , 16 FROM Building_BuildingClassHappiness;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_MILITARY_TRAINING'   , 16 FROM Building_DomainFreeExperiences;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_MILITARY_TRAINING'   , 16 FROM Building_DomainFreeExperiencePerGreatWork;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_MILITARY_TRAINING'   , 8  FROM Building_DomainProductionModifiers;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_GREAT_PEOPLE'        , 16 FROM Building_FreeSpecialistCounts;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_GOLD'                , 16 FROM Building_HurryModifiers;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_CULTURE'             , 16 FROM Building_ResourceCultureChanges;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_RELIGION'            , 16 FROM Building_ResourceFaithChanges;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_MILITARY_TRAINING'   , 16 FROM Building_UnitCombatFreeExperiences;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_MILITARY_TRAINING'   , 8  FROM Building_UnitCombatProductionModifiers;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_TOURISM'             , 16 FROM Building_ThemingBonuses;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_NAVAL_GROWTH'        , 16 FROM Building_SeaPlotYieldChanges;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, 'FLAVOR_NAVAL_GROWTH'        , 16 FROM Building_SeaResourceYieldChanges;





--
-- Building Flavors: update flavor values
--

/*
UPDATE Building_Flavors SET Flavor = 16;

UPDATE Building_Flavors SET Flavor = Flavor / 2
WHERE FlavorType IN (
	'FLAVOR_GREAT_PEOPLE'
) AND BuildingType NOT IN (SELECT building.Type
FROM Buildings building, BuildingClasses class
WHERE (building.BuildingClass = class.Type AND (
	   class.MaxGlobalInstances = 1
	OR class.MaxPlayerInstances = 1
	OR class.MaxTeamInstances = 1
)));
*/

-- Unique Buildings
UPDATE Building_Flavors SET Flavor = Flavor * 2
WHERE BuildingType IN (SELECT building.Type FROM Buildings building, BuildingClasses class WHERE (
	building.BuildingClass = class.Type
	AND building.Type <> class.DefaultBuilding
));

-- Wonders
UPDATE Building_Flavors SET Flavor = Flavor * 4
WHERE FlavorType NOT IN (
	'FLAVOR_CULTURE'		,
	'FLAVOR_GREAT_PEOPLE'	,
	'FLAVOR_WONDER'
) AND BuildingType IN (SELECT building.Type
FROM Buildings building, BuildingClasses class
WHERE (building.BuildingClass = class.Type AND (
	   class.MaxGlobalInstances = 1
	OR class.MaxPlayerInstances = 1
	OR class.MaxTeamInstances = 1
)));

UPDATE Building_Flavors SET Flavor = 64
WHERE FlavorType = 'FLAVOR_CULTURE'
AND BuildingType IN (SELECT building.Type
FROM Buildings building, BuildingClasses class
WHERE (building.BuildingClass = class.Type
AND   (class.MaxGlobalInstances = 1
	OR class.MaxPlayerInstances = 1
	OR class.MaxTeamInstances = 1
)
AND   (building.GoldenAge = 1
	OR building.GoldenAgeModifier <> 0
	OR building.CultureRateModifier <> 0
	OR building.GlobalCultureRateModifier <> 0
	OR building.PolicyCostModifier <> 0
	OR building.FreePolicies <> 0
	OR building.XBuiltTriggersIdeologyChoice <> 0
	OR building.GreatWorkSlotType <> 0
	OR building.FreeGreatWork <> 0
	OR building.SpecialistExtraCulture <> 0
)));

UPDATE Building_Flavors SET Flavor = 64
WHERE FlavorType = 'FLAVOR_GREAT_PEOPLE'
AND BuildingType IN (SELECT building.Type
FROM Buildings building, BuildingClasses class
WHERE (building.BuildingClass = class.Type
AND   (class.MaxGlobalInstances = 1
	OR class.MaxPlayerInstances = 1
	OR class.MaxTeamInstances = 1
)
AND   (building.GlobalGreatPeopleRateModifier <> 0
	OR building.FreeGreatPeople <> 0
	OR building.SpecialistExtraCulture <> 0
)));


/*
INSERT OR IGNORE INTO Building_Flavors(BuildingType, FlavorType, Flavor)
SELECT building.Type, flavor.FlavorType, 2 * flavor.Flavor
FROM Buildings building, Buildings buildingDefault, BuildingClasses class, Building_Flavors flavor
WHERE ( buildingDefault.BuildingClass	= building.BuildingClass
	AND buildingDefault.Type			<> building.Type
	AND buildingDefault.BuildingClass	= class.Type
	AND buildingDefault.Type			= class.DefaultBuilding
	AND buildingDefault.Type			= flavor.BuildingType
);
*/



-- Join duplicated flavors
DROP TABLE IF EXISTS CEP_Collisions;
CREATE TABLE CEP_Collisions(BuildingType text, FlavorType text, Flavor integer);
INSERT INTO CEP_Collisions (BuildingType, FlavorType, Flavor) SELECT BuildingType, FlavorType, MAX(Flavor) FROM Building_Flavors GROUP BY BuildingType, FlavorType;
DELETE FROM Building_Flavors;
INSERT INTO Building_Flavors (BuildingType, FlavorType, Flavor) SELECT BuildingType, FlavorType, Flavor FROM CEP_Collisions;
DROP TABLE CEP_Collisions;