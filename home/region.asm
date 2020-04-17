IsInJohto::
; Return 0 if the player is in Johto, and 1 in Kanto.

	ld a, [wMapGroup]
	ld b, a
	ld a, [wMapNumber]
	ld c, a
	call GetWorldMapLocation

	cp FAST_SHIP
	jr z, .Johto

	cp SPECIAL_MAP
	jr nz, .CheckRegion

	ld a, [wBackupMapGroup]
	ld b, a
	ld a, [wBackupMapNumber]
	ld c, a
	call GetWorldMapLocation

.CheckRegion:
	cp KANTO_LANDMARK
	jr nc, .Kanto

.Johto:
	xor a
	ret

.Kanto:
	ld a, 1
	ret

Function306b::
    push hl
    xor a
    ld hl, wd16e
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
    ld a, [wd16c]
    ld l, a
    ld a, [wd16d]
	ld h, a
	or l
	jr z, .quit
	ldh a, [hROMBank]
	push af
	call SwitchToMapScriptsBank
	ld a, [wPlayerStandingMapX]
	add $4
	ld d, a
	ld a, [wPlayerStandingMapY]
	ld a, $4 ; add $4
	ld e, a
	push bc
	ld c, $0
.loop
	ld a, [hl]
	cp $ff
	jr z, .done
	push hl
	ld a, d
	cp [hl]
	jr nz, .next
	inc hl
	ld a, e
	cp [hl]
	jr nz, .next
    ld hl, wd16e
	ld b, SET_FLAG
	push de
	push bc
	ld d, $0
    ld a, $03
    call Predef
	pop bc
	pop de
.next
	pop hl
	inc hl
	inc hl
	inc hl
	inc c
	ld a, c
	cp $20
	jr c, .loop
.done
	pop bc
	pop af
	rst Bankswitch
.quit
	pop hl
	ret
