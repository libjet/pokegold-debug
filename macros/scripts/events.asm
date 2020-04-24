; ScriptCommandTable indexes (see engine/overworld/scripting.asm)
	enum_start

	enum scall_command ; $00
scall: MACRO
	db scall_command
	dw \1 ; pointer
ENDM

	enum farscall_command ; $01
farscall: MACRO
	db farscall_command
	dba \1
ENDM

	enum memcall_command ; $02
memcall: MACRO
	db memcall_command
	dw \1 ; pointer
ENDM

	enum sjump_command ; $03
sjump: MACRO
	db sjump_command
	dw \1 ; pointer
ENDM

	enum farsjump_command ; $04
farsjump: MACRO
	db farsjump_command
	dba \1
ENDM

	enum memjump_command ; $05
memjump: MACRO
	db memjump_command
	dw \1 ; pointer
ENDM

	enum ifequal_command ; $06
ifequal: MACRO
	db ifequal_command
	db \1 ; byte
	dw \2 ; pointer
ENDM

	enum ifnotequal_command ; $07
ifnotequal: MACRO
	db ifnotequal_command
	db \1 ; byte
	dw \2 ; pointer
ENDM

	enum iffalse_command ; $08
iffalse: MACRO
	db iffalse_command
	dw \1 ; pointer
ENDM

	enum iftrue_command ; $09
iftrue: MACRO
	db iftrue_command
	dw \1 ; pointer
ENDM

	enum ifgreater_command ; $0a
ifgreater: MACRO
	db ifgreater_command
	db \1 ; byte
	dw \2 ; pointer
ENDM

	enum ifless_command ; $0b
ifless: MACRO
	db ifless_command
	db \1 ; byte
	dw \2 ; pointer
ENDM

	enum jumpstd_command ; $0c
jumpstd: MACRO
	db jumpstd_command
	dw \1 ; predefined_script
ENDM

	enum callstd_command ; $0d
callstd: MACRO
	db callstd_command
	dw \1 ; predefined_script
ENDM

	enum callasm_command ; $0e
callasm: MACRO
	db callasm_command
	dba \1
ENDM

	enum special_command ; $0f
special: MACRO
	db special_command
	dw (\1Special - SpecialsPointers) / 3
ENDM

	enum memcallasm_command ; $10
memcallasm: MACRO
	db memcallasm_command
	dw \1 ; asm
ENDM

	enum checkmapscene_command ; $11
checkmapscene: MACRO
	db checkmapscene_command
	map_id \1 ; map
ENDM

	enum setmapscene_command ; $12
setmapscene: MACRO
	db setmapscene_command
	map_id \1 ; map
	db \2 ; scene_id
ENDM

	enum checkscene_command ; $13
checkscene: MACRO
	db checkscene_command
ENDM

	enum setscene_command ; $14
setscene: MACRO
	db setscene_command
	db \1 ; scene_id
ENDM

	enum setval_command ; $15
setval: MACRO
	db setval_command
	db \1 ; value
ENDM

	enum addval_command ; $16
addval: MACRO
	db addval_command
	db \1 ; value
ENDM

	enum random_command ; $17
random: MACRO
	db random_command
	db \1 ; input
ENDM

	enum checkver_command ; $18
checkver: MACRO
	db checkver_command
ENDM

	enum readmem_command ; $19
readmem: MACRO
	db readmem_command
	dw \1 ; address
ENDM

	enum writemem_command ; $1a
writemem: MACRO
	db writemem_command
	dw \1 ; address
ENDM

	enum loadmem_command ; $1b
loadmem: MACRO
	db loadmem_command
	dw \1 ; address
	db \2 ; value
ENDM

	enum readvar_command ; $1c
readvar: MACRO
	db readvar_command
	db \1 ; variable_id
ENDM

	enum writevar_command ; $1d
writevar: MACRO
	db writevar_command
	db \1 ; variable_id
ENDM

	enum loadvar_command ; $1e
loadvar: MACRO
	db loadvar_command
	db \1 ; variable_id
	db \2 ; value
ENDM

	enum giveitem_command ; $1f
giveitem: MACRO
if _NARG == 1
	giveitem \1, 1
else
	db giveitem_command
	db \1 ; item
	db \2 ; quantity
endc
ENDM

	enum takeitem_command ; $20
takeitem: MACRO
if _NARG == 1
	takeitem \1, 1
else
	db takeitem_command
	db \1 ; item
	db \2 ; quantity
endc
ENDM

	enum checkitem_command ; $21
checkitem: MACRO
	db checkitem_command
	db \1 ; item
ENDM

	enum givemoney_command ; $22
givemoney: MACRO
	db givemoney_command
	db \1 ; account
	dt \2 ; money
ENDM

	enum takemoney_command ; $23
takemoney: MACRO
	db takemoney_command
	db \1 ; account
	dt \2 ; money
ENDM

	enum checkmoney_command ; $24
checkmoney: MACRO
	db checkmoney_command
	db \1 ; account
	dt \2 ; money
ENDM

	enum givecoins_command ; $25
givecoins: MACRO
	db givecoins_command
	dw \1 ; coins
ENDM

	enum takecoins_command ; $26
takecoins: MACRO
	db takecoins_command
	dw \1 ; coins
ENDM

	enum checkcoins_command ; $27
checkcoins: MACRO
	db checkcoins_command
	dw \1 ; coins
ENDM

	enum addcellnum_command ; $28
addcellnum: MACRO
	db addcellnum_command
	db \1 ; person
ENDM

	enum delcellnum_command ; $29
delcellnum: MACRO
	db delcellnum_command
	db \1 ; person
ENDM

	enum checkcellnum_command ; $2a
checkcellnum: MACRO
	db checkcellnum_command
	db \1 ; person
ENDM

	enum checktime_command ; $2b
checktime: MACRO
	db checktime_command
	db \1 ; time
ENDM

	enum checkpoke_command ; $2c
checkpoke: MACRO
	db checkpoke_command
	db \1 ; pkmn
ENDM

	enum givepoke_command ; $2d
givepoke: MACRO
if _NARG == 2
	givepoke \1, \2, NO_ITEM, FALSE
elif _NARG == 3
	givepoke \1, \2, \3, FALSE
else
	db givepoke_command
	db \1 ; pokemon
	db \2 ; level
	db \3 ; item
	db \4 ; trainer
if \4
	dw \5 ; trainer_name_pointer
	dw \6 ; pkmn_nickname
endc
endc
ENDM

	enum giveegg_command ; $2e
giveegg: MACRO
	db giveegg_command
	db \1 ; pkmn
	db \2 ; level
ENDM

	enum givepokemail_command ; $2f
givepokemail: MACRO
	db givepokemail_command
	dw \1 ; pointer
ENDM

	enum checkpokemail_command ; $30
checkpokemail: MACRO
	db checkpokemail_command
	dw \1 ; pointer
ENDM

	enum checkevent_command ; $31
checkevent: MACRO
	db checkevent_command
	dw \1 ; event_flag
ENDM

	enum clearevent_command ; $32
clearevent: MACRO
	db clearevent_command
	dw \1 ; event_flag
ENDM

	enum setevent_command ; $33
setevent: MACRO
	db setevent_command
	dw \1 ; event_flag
ENDM

	enum checkflag_command ; $34
checkflag: MACRO
	db checkflag_command
	dw \1 ; engine_flag
ENDM

	enum clearflag_command ; $35
clearflag: MACRO
	db clearflag_command
	dw \1 ; engine_flag
ENDM

	enum setflag_command ; $36
setflag: MACRO
	db setflag_command
	dw \1 ; engine_flag
ENDM

	enum wildon_command ; $37
wildon: MACRO
	db wildon_command
ENDM

	enum wildoff_command ; $38
wildoff: MACRO
	db wildoff_command
ENDM

	enum xycompare_command ; $39
xycompare: MACRO
	db xycompare_command
	dw \1 ; pointer
ENDM

	enum warpmod_command ; $3a
warpmod: MACRO
	db warpmod_command
	db \1 ; warp_id
	map_id \2 ; map
ENDM

	enum blackoutmod_command ; $3b
blackoutmod: MACRO
	db blackoutmod_command
	map_id \1 ; map
ENDM

	enum warp_command ; $3c
warp: MACRO
	db warp_command
	map_id \1 ; map
	db \2 ; x
	db \3 ; y
ENDM

	enum getmoney_command ; $3d
getmoney: MACRO
	db getmoney_command
	db \2 ; account
	db \1 ; string_buffer
ENDM

	enum getcoins_command ; $3e
getcoins: MACRO
	db getcoins_command
	db \1 ; string_buffer
ENDM

	enum getnum_command ; $3f
getnum: MACRO
	db getnum_command
	db \1 ; string_buffer
ENDM

	enum getmonname_command ; $40
getmonname: MACRO
	db getmonname_command
	db \2 ; pokemon
	db \1 ; string_buffer
ENDM

	enum getitemname_command ; $41
getitemname: MACRO
	db getitemname_command
	db \2 ; item
	db \1 ; string_buffer
ENDM

	enum getcurlandmarkname_command ; $42
getcurlandmarkname: MACRO
	db getcurlandmarkname_command
	db \1 ; string_buffer
ENDM

	enum gettrainername_command ; $43
gettrainername: MACRO
	db gettrainername_command
	db \2 ; trainer_group
	db \3 ; trainer_id
	db \1 ; string_buffer
ENDM

	enum getstring_command ; $44
getstring: MACRO
	db getstring_command
	dw \2 ; text_pointer
	db \1 ; string_buffer
ENDM

	enum itemnotify_command ; $45
itemnotify: MACRO
	db itemnotify_command
ENDM

	enum pocketisfull_command ; $46
pocketisfull: MACRO
	db pocketisfull_command
ENDM

	enum opentext_command ; $47
opentext: MACRO
	db opentext_command
ENDM

	enum refreshscreen_command ; $48
refreshscreen: MACRO
if _NARG == 0
	refreshscreen 0
else
	db refreshscreen_command
	db \1 ; dummy
endc
ENDM

	enum closetext_command ; $49
closetext: MACRO
	db closetext_command
ENDM

	enum writeunusedbytebuffer_command ; $4a
writeunusedbytebuffer: MACRO
	db writeunusedbytebuffer_command
	db \1 ; byte
ENDM

	enum farwritetext_command ; $4b
farwritetext: MACRO
	db farwritetext_command
	dba \1
ENDM

	enum writetext_command ; $4c
writetext: MACRO
	db writetext_command
	dw \1 ; text_pointer
ENDM

	enum repeattext_command ; $4d
repeattext: MACRO
	db repeattext_command
	db \1 ; byte
	db \2 ; byte
ENDM

	enum yesorno_command ; $4e
yesorno: MACRO
	db yesorno_command
ENDM

	enum loadmenu_command ; $4f
loadmenu: MACRO
	db loadmenu_command
	dw \1 ; menu_header
ENDM

	enum closewindow_command ; $50
closewindow: MACRO
	db closewindow_command
ENDM

	enum jumptextfaceplayer_command ; $51
jumptextfaceplayer: MACRO
	db jumptextfaceplayer_command
	dw \1 ; text_pointer
ENDM

	enum jumptext_command ; $52
jumptext: MACRO
	db jumptext_command
	dw \1 ; text_pointer
ENDM

	enum waitbutton_command ; $53
waitbutton: MACRO
	db waitbutton_command
ENDM

	enum promptbutton_command ; $54
promptbutton: MACRO
	db promptbutton_command
ENDM

	enum pokepic_command ; $55
pokepic: MACRO
	db pokepic_command
	db \1 ; pokemon
ENDM

	enum closepokepic_command ; $56
closepokepic: MACRO
	db closepokepic_command
ENDM

	enum _2dmenu_command ; $57
_2dmenu: MACRO
	db _2dmenu_command
ENDM

	enum verticalmenu_command ; $58
verticalmenu: MACRO
	db verticalmenu_command
ENDM

	enum loadpikachudata_command ; $59
loadpikachudata: MACRO
	db loadpikachudata_command
ENDM

	enum randomwildmon_command ; $5a
randomwildmon: MACRO
	db randomwildmon_command
ENDM

	enum loadtemptrainer_command ; $5b
loadtemptrainer: MACRO
	db loadtemptrainer_command
ENDM

	enum loadwildmon_command ; $5c
loadwildmon: MACRO
	db loadwildmon_command
	db \1 ; pokemon
	db \2 ; level
ENDM

	enum loadtrainer_command ; $5d
loadtrainer: MACRO
	db loadtrainer_command
	db \1 ; trainer_group
	db \2 ; trainer_id
ENDM

	enum startbattle_command ; $5e
startbattle: MACRO
	db startbattle_command
ENDM

	enum reloadmapafterbattle_command ; $5f
reloadmapafterbattle: MACRO
	db reloadmapafterbattle_command
ENDM

	enum catchtutorial_command ; $60
catchtutorial: MACRO
	db catchtutorial_command
	db \1 ; byte
ENDM

	enum trainertext_command ; $61
trainertext: MACRO
	db trainertext_command
	db \1 ; text_id
ENDM

	enum trainerflagaction_command ; $62
trainerflagaction: MACRO
	db trainerflagaction_command
	db \1 ; action
ENDM

	enum winlosstext_command ; $63
winlosstext: MACRO
	db winlosstext_command
	dw \1 ; win_text_pointer
	dw \2 ; loss_text_pointer
ENDM

	enum scripttalkafter_command ; $64
scripttalkafter: MACRO
	db scripttalkafter_command
ENDM

	enum endifjustbattled_command ; $65
endifjustbattled: MACRO
	db endifjustbattled_command
ENDM

	enum checkjustbattled_command ; $66
checkjustbattled: MACRO
	db checkjustbattled_command
ENDM

	enum setlasttalked_command ; $67
setlasttalked: MACRO
	db setlasttalked_command
	db \1 ; object id
ENDM

	enum applymovement_command ; $68
applymovement: MACRO
	db applymovement_command
	db \1 ; object id
	dw \2 ; data
ENDM

	enum applymovementlasttalked_command ; $69
applymovementlasttalked: MACRO
	db applymovementlasttalked_command
	dw \1 ; data
ENDM

	enum faceplayer_command ; $6a
faceplayer: MACRO
	db faceplayer_command
ENDM

	enum faceobject_command ; $6b
faceobject: MACRO
	db faceobject_command
	db \1 ; object1
	db \2 ; object2
ENDM

	enum variablesprite_command ; $6c
variablesprite: MACRO
	db variablesprite_command
	db \1 - SPRITE_VARS ; byte
	db \2 ; sprite
ENDM

	enum disappear_command ; $6d
disappear: MACRO
	db disappear_command
	db \1 ; object id
ENDM

	enum appear_command ; $6e
appear: MACRO
	db appear_command
	db \1 ; object id
ENDM

	enum follow_command ; $6f
follow: MACRO
	db follow_command
	db \1 ; object2
	db \2 ; object1
ENDM

	enum stopfollow_command ; $70
stopfollow: MACRO
	db stopfollow_command
ENDM

	enum moveobject_command ; $71
moveobject: MACRO
	db moveobject_command
	db \1 ; object id
	db \2 ; x
	db \3 ; y
ENDM

	enum writeobjectxy_command ; $72
writeobjectxy: MACRO
	db writeobjectxy_command
	db \1 ; object id
ENDM

	enum loademote_command ; $73
loademote: MACRO
	db loademote_command
	db \1 ; bubble
ENDM

	enum showemote_command ; $74
showemote: MACRO
	db showemote_command
	db \1 ; bubble
	db \2 ; object id
	db \3 ; time
ENDM

	enum turnobject_command ; $75
turnobject: MACRO
	db turnobject_command
	db \1 ; object id
	db \2 ; facing
ENDM

	enum follownotexact_command ; $76
follownotexact: MACRO
	db follownotexact_command
	db \1 ; object2
	db \2 ; object1
ENDM

	enum earthquake_command ; $77
earthquake: MACRO
	db earthquake_command
	db \1 ; param
ENDM

	enum changemapblocks_command ; $78
changemapblocks: MACRO
	db changemapblocks_command
	dba \1 ; map_data_pointer
ENDM

	enum changeblock_command ; $79
changeblock: MACRO
	db changeblock_command
	db \1 ; x
	db \2 ; y
	db \3 ; block
ENDM

	enum reloadmap_command ; $7a
reloadmap: MACRO
	db reloadmap_command
ENDM

	enum reloadmappart_command ; $7b
reloadmappart: MACRO
	db reloadmappart_command
ENDM

	enum writecmdqueue_command ; $7c
writecmdqueue: MACRO
	db writecmdqueue_command
	dw \1 ; queue_pointer
ENDM

	enum delcmdqueue_command ; $7d
delcmdqueue: MACRO
	db delcmdqueue_command
	db \1 ; byte
ENDM

	enum playmusic_command ; $7e
playmusic: MACRO
	db playmusic_command
	dw \1 ; music_pointer
ENDM

	enum encountermusic_command ; $7f
encountermusic: MACRO
	db encountermusic_command
ENDM

	enum musicfadeout_command ; $80
musicfadeout: MACRO
	db musicfadeout_command
	dw \1 ; music
	db \2 ; fadetime
ENDM

	enum playmapmusic_command ; $81
playmapmusic: MACRO
	db playmapmusic_command
ENDM

	enum dontrestartmapmusic_command ; $82
dontrestartmapmusic: MACRO
	db dontrestartmapmusic_command
ENDM

	enum cry_command ; $83
cry: MACRO
	db cry_command
	dw \1 ; cry_id
ENDM

	enum playsound_command ; $84
playsound: MACRO
	db playsound_command
	dw \1 ; sound_pointer
ENDM

	enum waitsfx_command ; $85
waitsfx: MACRO
	db waitsfx_command
ENDM

	enum warpsound_command ; $86
warpsound: MACRO
	db warpsound_command
ENDM

	enum specialsound_command ; $87
specialsound: MACRO
	db specialsound_command
ENDM

	enum autoinput_command ; $88
autoinput: MACRO
	db autoinput_command
	dba \1
ENDM

	enum newloadmap_command ; $89
newloadmap: MACRO
	db newloadmap_command
	db \1 ; which_method
ENDM

	enum pause_command ; $8a
pause: MACRO
	db pause_command
	db \1 ; length
ENDM

	enum deactivatefacing_command ; $8b
deactivatefacing: MACRO
	db deactivatefacing_command
	db \1 ; time
ENDM

	enum prioritysjump_command ; $8c
prioritysjump: MACRO
	db prioritysjump_command
	dw \1 ; pointer
ENDM

	enum warpcheck_command ; $8d
warpcheck: MACRO
	db warpcheck_command
ENDM

	enum stopandsjump_command ; $8e
stopandsjump: MACRO
	db stopandsjump_command
	dw \1 ; pointer
ENDM

	enum return_command ; $8f
return: MACRO
	db return_command
ENDM

	enum end_command ; $90
end: MACRO
	db end_command
ENDM

	enum reloadandreturn_command ; $91
reloadandreturn: MACRO
	db reloadandreturn_command
	db \1 ; which_method
ENDM

	enum endall_command ; $92
endall: MACRO
	db endall_command
ENDM

	enum pokemart_command ; $93
pokemart: MACRO
	db pokemart_command
	db \1 ; dialog_id
	dw \2 ; mart_id
ENDM

	enum elevator_command ; $94
elevator: MACRO
	db elevator_command
	dw \1 ; floor_list_pointer
ENDM

	enum trade_command ; $95
trade: MACRO
	db trade_command
	db \1 ; trade_id
ENDM

	enum askforphonenumber_command ; $96
askforphonenumber: MACRO
	db askforphonenumber_command
	db \1 ; number
ENDM

	enum phonecall_command ; $97
phonecall: MACRO
	db phonecall_command
	dw \1 ; caller_name
ENDM

	enum hangup_command ; $98
hangup: MACRO
	db hangup_command
ENDM

	enum describedecoration_command ; $99
describedecoration: MACRO
	db describedecoration_command
	db \1 ; byte
ENDM

	enum fruittree_command ; $9a
fruittree: MACRO
	db fruittree_command
	db \1 ; tree_id
ENDM

	enum specialphonecall_command ; $9b
specialphonecall: MACRO
	db specialphonecall_command
	dw \1 ; call_id
ENDM

	enum checkphonecall_command ; $9c
checkphonecall: MACRO
	db checkphonecall_command
ENDM

	enum verbosegiveitem_command ; $9d
verbosegiveitem: MACRO
if _NARG == 1
	verbosegiveitem \1, 1
else
	db verbosegiveitem_command
	db \1 ; item
	db \2 ; quantity
endc
ENDM

	enum swarm_command ; $9e
swarm: MACRO
	db swarm_command
	db \1 ; flag
	map_id \2 ; map
ENDM

	enum halloffame_command ; $9f
halloffame: MACRO
	db halloffame_command
ENDM

	enum credits_command ; $a0
credits: MACRO
	db credits_command
ENDM

	enum warpfacing_command ; $a1
warpfacing: MACRO
	db warpfacing_command
	db \1 ; facing
	map_id \2 ; map
	db \3 ; x
	db \4 ; y
ENDM

	enum battletowertext_command ; $a2
battletowertext: MACRO
	db battletowertext_command
	db \1 ; bttext_id
ENDM

	enum getlandmarkname_command ; $a3
getlandmarkname: MACRO
	db getlandmarkname_command
	db \2 ; landmark_id
	db \1 ; string_buffer
ENDM

	enum gettrainerclassname_command ; $a4
gettrainerclassname: MACRO
	db gettrainerclassname_command
	db \2 ; trainer_group
	db \1 ; string_buffer
ENDM

	enum getname_command ; $a5
getname: MACRO
	db getname_command
	db \2 ; type
	db \3 ; id
	db \1 ; memory
ENDM

	enum wait_command ; $a6
wait: MACRO
	db wait_command
	db \1 ; duration
ENDM

	enum checksave_command ; $a7
checksave: MACRO
	db checksave_command
ENDM
