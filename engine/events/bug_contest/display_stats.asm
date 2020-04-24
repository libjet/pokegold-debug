DisplayCaughtContestMonStats:
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call LoadFontsBattleExtra

	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]

	hlcoord 0, 4
    ld b, 5
    ld c, 8
    call Textbox

	hlcoord 10, 4
    ld b, 5
    ld c, 8
    call Textbox

	hlcoord 1, 3
    ld de, .Stock
    call PlaceString

	hlcoord 11, 3
    ld de, .This
    call PlaceString

	hlcoord 1, 8
    ld de, .Health
    call PlaceString

	hlcoord 11, 8
    ld de, .Health
    call PlaceString

    ld a, [wContestMonSpecies]
    ld [wNamedObjectIndexBuffer], a
    call GetPokemonName
    ld de, wStringBuffer1
	hlcoord 1, 6
    call PlaceString

    ld h, b
    ld l, c
    ld a, [wContestMonLevel]
    ld [wTempMonLevel], a
    call PrintLevel

    ld de, wcaf6
	hlcoord 11, 6
    call PlaceString

    ld h, b
    ld l, c
    ld a, [wEnemyMonLevel]
    ld [wTempMonLevel], a
    call PrintLevel

	hlcoord 6, 8
    ld de, wContestMonMaxHP
    ld bc, $0203
    call PrintNum

	hlcoord 16, 8
    ld de, wEnemyMonMaxHP
    call PrintNum

    ld hl, ContestAskSwitchText
    call PrintText

    pop af
    ld [wOptions], a

	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetPalettes
	ret

.Health:
	db "たいりょく<NEXT>@"

.Stock:
	db "てもちの#@"

.This:
	db "こんどの#@"

ContestAskSwitchText:
    text "#を いれかえる?"
	done

DisplayAlreadyCaughtText:
    call GetPokemonName
    ld hl, .ContestAlreadyCaughtText
    jp PrintText

.ContestAlreadyCaughtText:
    text "すでに "
	line "@"
	text_ram wStringBuffer1
	text "を つかまえています"
	prompt

unk_033_40e4:
	ret
