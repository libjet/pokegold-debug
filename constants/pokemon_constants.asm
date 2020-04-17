
; pokemon
const_value set 1
	const BULBASAUR
	const IVYSAUR
	const VENUSAUR
	const CHARMANDER
	const CHARMELEON
	const CHARIZARD
	const SQUIRTLE
	const WARTORTLE
	const BLASTOISE
	const CATERPIE
	const METAPOD
	const BUTTERFREE
	const WEEDLE
	const KAKUNA
	const BEEDRILL
	const PIDGEY
	const PIDGEOTTO
	const PIDGEOT
	const RATTATA
	const RATICATE
	const SPEAROW
	const FEAROW
	const EKANS
	const ARBOK
	const PIKACHU
	const RAICHU
	const SANDSHREW
	const SANDSLASH
	const NIDORAN_F
	const NIDORINA
	const NIDOQUEEN
	const NIDORAN_M
	const NIDORINO
	const NIDOKING
	const CLEFAIRY
	const CLEFABLE
	const VULPIX
	const NINETALES
	const JIGGLYPUFF
	const WIGGLYTUFF
	const ZUBAT
	const GOLBAT
	const ODDISH
	const GLOOM
	const VILEPLUME
	const PARAS
	const PARASECT
	const VENONAT
	const VENOMOTH
	const DIGLETT
	const DUGTRIO
	const MEOWTH
	const PERSIAN
	const PSYDUCK
	const GOLDUCK
	const MANKEY
	const PRIMEAPE
	const GROWLITHE
	const ARCANINE
	const POLIWAG
	const POLIWHIRL
	const POLIWRATH
	const ABRA
	const KADABRA
	const ALAKAZAM
	const MACHOP
	const MACHOKE
	const MACHAMP
	const BELLSPROUT
	const WEEPINBELL
	const VICTREEBEL
	const TENTACOOL
	const TENTACRUEL
	const GEODUDE
	const GRAVELER
	const GOLEM
	const PONYTA
	const RAPIDASH
	const SLOWPOKE
	const SLOWBRO
	const MAGNEMITE
	const MAGNETON
	const FARFETCH_D
	const DODUO
	const DODRIO
	const SEEL
	const DEWGONG
	const GRIMER
	const MUK
	const SHELLDER
	const CLOYSTER
	const GASTLY
	const HAUNTER
	const GENGAR
	const ONIX
	const DROWZEE
	const HYPNO
	const KRABBY
	const KINGLER
	const VOLTORB
	const ELECTRODE
	const EXEGGCUTE
	const EXEGGUTOR
	const CUBONE
	const MAROWAK
	const HITMONLEE
	const HITMONCHAN
	const LICKITUNG
	const KOFFING
	const WEEZING
	const RHYHORN
	const RHYDON
	const CHANSEY
	const TANGELA
	const KANGASKHAN
	const HORSEA
	const SEADRA
	const GOLDEEN
	const SEAKING
	const STARYU
	const STARMIE
	const MR__MIME
	const SCYTHER
	const JYNX
	const ELECTABUZZ
	const MAGMAR
	const PINSIR
	const TAUROS
	const MAGIKARP
	const GYARADOS
	const LAPRAS
	const DITTO
	const EEVEE
	const VAPOREON
	const JOLTEON
	const FLAREON
	const PORYGON
	const OMANYTE
	const OMASTAR
	const KABUTO
	const KABUTOPS
	const AERODACTYL
	const SNORLAX
	const ARTICUNO
	const ZAPDOS
	const MOLTRES
	const DRATINI
	const DRAGONAIR
	const DRAGONITE
	const MEWTWO
	const MEW
	const CHIKORITA
	const BAYLEEF
	const MEGANIUM
	const CYNDAQUIL
	const QUILAVA
	const TYPHLOSION
	const TOTODILE
	const CROCONAW
	const FERALIGATR
	const SENTRET
	const FURRET
	const HOOTHOOT
	const NOCTOWL
	const LEDYBA
	const LEDIAN
	const SPINARAK
	const ARIADOS
	const CROBAT
	const CHINCHOU
	const LANTURN
	const PICHU
	const CLEFFA
	const IGGLYBUFF
	const TOGEPI
	const TOGETIC
	const NATU
	const XATU
	const MAREEP
	const FLAAFFY
	const AMPHAROS
	const BELLOSSOM
	const MARILL
	const AZUMARILL
	const SUDOWOODO
	const POLITOED
	const HOPPIP
	const SKIPLOOM
	const JUMPLUFF
	const AIPOM
	const SUNKERN
	const SUNFLORA
	const YANMA
	const WOOPER
	const QUAGSIRE
	const ESPEON
	const UMBREON
	const MURKROW
	const SLOWKING
	const MISDREAVUS
	const UNOWN
	const WOBBUFFET
	const GIRAFARIG
	const PINECO
	const FORRETRESS
	const DUNSPARCE
	const GLIGAR
	const STEELIX
	const SNUBBULL
	const GRANBULL
	const QWILFISH
	const SCIZOR
	const SHUCKLE
	const HERACROSS
	const SNEASEL
	const TEDDIURSA
	const URSARING
	const SLUGMA
	const MAGCARGO
	const SWINUB
	const PILOSWINE
	const CORSOLA
	const REMORAID
	const OCTILLERY
	const DELIBIRD
	const MANTINE
	const SKARMORY
	const HOUNDOUR
	const HOUNDOOM
	const KINGDRA
	const PHANPY
	const DONPHAN
	const PORYGON2
	const STANTLER
	const SMEARGLE
	const TYROGUE
	const HITMONTOP
	const SMOOCHUM
	const ELEKID
	const MAGBY
	const MILTANK
	const BLISSEY
	const RAIKOU
	const ENTEI
	const SUICUNE
	const LARVITAR
	const PUPITAR
	const TYRANITAR
	const LUGIA
	const HO_OH
	const CELEBI
NUM_POKEMON EQU const_value + -1
	const MON_FC
	const EGG
	const MON_FE

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
NUM_UNOWN EQU const_value + -1 ; 26

; pokemon structure in RAM
MON_SPECIES              EQUS "(wPartyMon1Species - wPartyMon1)"
MON_ITEM                 EQUS "(wPartyMon1Item - wPartyMon1)"
MON_MOVES                EQUS "(wPartyMon1Moves - wPartyMon1)"
MON_ID                   EQUS "(wPartyMon1ID - wPartyMon1)"
MON_EXP                  EQUS "(wPartyMon1Exp - wPartyMon1)"
MON_STAT_EXP             EQUS "(wPartyMon1StatExp - wPartyMon1)"
MON_HP_EXP               EQUS "(wPartyMon1HPExp - wPartyMon1)"
MON_ATK_EXP              EQUS "(wPartyMon1AtkExp - wPartyMon1)"
MON_DEF_EXP              EQUS "(wPartyMon1DefExp - wPartyMon1)"
MON_SPD_EXP              EQUS "(wPartyMon1SpdExp - wPartyMon1)"
MON_SPC_EXP              EQUS "(wPartyMon1SpcExp - wPartyMon1)"
MON_DVS                  EQUS "(wPartyMon1DVs - wPartyMon1)"
MON_PP                   EQUS "(wPartyMon1PP - wPartyMon1)"
MON_HAPPINESS            EQUS "(wPartyMon1Happiness - wPartyMon1)"
MON_PKRUS                EQUS "(wPartyMon1PokerusStatus - wPartyMon1)"
MON_CAUGHTDATA           EQUS "(wPartyMon1CaughtData - wPartyMon1)"
MON_CAUGHTLEVEL          EQUS "(wPartyMon1CaughtLevel - wPartyMon1)"
MON_CAUGHTTIME           EQUS "(wPartyMon1CaughtTime - wPartyMon1)"
MON_CAUGHTGENDER         EQUS "(wPartyMon1CaughtGender - wPartyMon1)"
MON_CAUGHTLOCATION       EQUS "(wPartyMon1CaughtLocation - wPartyMon1)"
MON_LEVEL                EQUS "(wPartyMon1Level - wPartyMon1)"
MON_STATUS               EQUS "(wPartyMon1Status - wPartyMon1)"
MON_HP                   EQUS "(wPartyMon1HP - wPartyMon1)"
MON_MAXHP                EQUS "(wPartyMon1MaxHP - wPartyMon1)"
MON_ATK                  EQUS "(wPartyMon1Attack - wPartyMon1)"
MON_DEF                  EQUS "(wPartyMon1Defense - wPartyMon1)"
MON_SPD                  EQUS "(wPartyMon1Speed - wPartyMon1)"
MON_SAT                  EQUS "(wPartyMon1SpclAtk - wPartyMon1)"
MON_SDF                  EQUS "(wPartyMon1SpclDef - wPartyMon1)"
BOXMON_STRUCT_LENGTH     EQUS "(wPartyMon1End - wPartyMon1)"
PARTYMON_STRUCT_LENGTH   EQUS "(wPartyMon1StatsEnd - wPartyMon1)"
REDMON_STRUCT_LENGTH EQU 44

const_value SET 1
	const MONMENU_CUT        ; 1
	const MONMENU_FLY        ; 2
	const MONMENU_SURF       ; 3
	const MONMENU_STRENGTH   ; 4
	const MONMENU_WATERFALL  ; 5
	const MONMENU_FLASH      ; 6
	const MONMENU_WHIRLPOOL  ; 7
	const MONMENU_DIG        ; 8
	const MONMENU_TELEPORT   ; 9
	const MONMENU_SOFTBOILED ; 10
	const MONMENU_HEADBUTT   ; 11
	const MONMENU_ROCKSMASH  ; 12
	const MONMENU_MILKDRINK  ; 13
	const MONMENU_SWEETSCENT ; 14

	const MONMENU_STATS      ; 15
	const MONMENU_SWITCH     ; 16
	const MONMENU_ITEM       ; 17
	const MONMENU_CANCEL     ; 18
	const MONMENU_MOVE       ; 19
	const MONMENU_MAIL       ; 20
	const MONMENU_ERROR      ; 21
