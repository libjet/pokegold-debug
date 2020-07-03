UpdateBGMapBuffer::
; Copy [hBGMapTileCount] 16x8 tiles from wBGMapBuffer
; to bg map addresses in wBGMapBufferPtrs.

; [hBGMapTileCount] must be even since this is done in pairs.

; Return carry on success.

	ldh a, [hBGMapUpdate]
	and a
	ret z

	ld [hSPBuffer], sp

	ld hl, wBGMapBufferPtrs
	ld sp, hl

; We can now pop the addresses of affected spots on the BG Map

	ld hl, wBGMapPalBuffer
	ld de, wBGMapBuffer

.next
; Copy a pair of 16x8 blocks (one 16x16 block)


rept 2
; Get our BG Map address
	pop bc

; Palettes
	ld a, 1
	ldh [rVBK], a

	ld a, [hli]
	ld [bc], a
	inc c
	ld a, [hli]
	ld [bc], a
	dec c

; Tiles
	ld a, 0
	ldh [rVBK], a

	ld a, [de]
	inc de
	ld [bc], a
	inc c
	ld a, [de]
	inc de
	ld [bc], a
endr

; We've done 2 16x8 blocks
	ldh a, [hFFDE]
	dec a
	dec a
	ldh [hFFDE], a

	jr nz, .next

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl

	xor a
	ldh [hBGMapUpdate], a
	scf
	ret

WaitTop::
; Wait until the top third of the BG Map is being updated.

	ldh a, [hBGMapMode]
	and a
	ret z

	ldh a, [hBGMapThird]
	and a
	jr z, .done

	call DelayFrame
	jr WaitTop

.done
	xor a
	ldh [hBGMapMode], a
	ret

UpdateBGMap::
; Update the BG Map, in thirds, from wTilemap and wAttrmap.

	ldh a, [hBGMapMode]
	and a
	ret z

; BG Map 0
	dec a ; 1
    jr z, .Tiles

.Attr:
    ld a, 1
    ldh [rVBK], a

    ld hl, $cccd
	call .update

    ld a, 0
    ldh [rVBK], a
    ret

.Tiles:
	hlcoord 0, 0

.update
	ld [hSPBuffer], sp

; Which third?
	ldh a, [hBGMapThird]
	and a ; 0
	jr z, .top
	dec a ; 1
	jr z, .middle
	; 2

THIRD_HEIGHT EQU SCREEN_HEIGHT / 3

.bottom
	ld de, 2 * THIRD_HEIGHT * SCREEN_WIDTH
	add hl, de
	ld sp, hl

	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a

	ld de, 2 * THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: top third
	xor a
	jr .start

.middle
	ld de, THIRD_HEIGHT * SCREEN_WIDTH
	add hl, de
	ld sp, hl

	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a

	ld de, THIRD_HEIGHT * BG_MAP_WIDTH
	add hl, de

; Next time: bottom third
	ld a, 2
	jr .start

.top
	ld sp, hl

	ldh a, [hBGMapAddress + 1]
	ld h, a
	ldh a, [hBGMapAddress]
	ld l, a

; Next time: middle third
	ld a, 1

.start
; Which third to update next time
	ldh [hBGMapThird], a

; Rows of tiles in a third
	ld a, SCREEN_HEIGHT / 3

; Discrepancy between wTilemap and BGMap
	ld bc, BG_MAP_WIDTH - (SCREEN_WIDTH - 1)

.row
; Copy a row of 20 tiles
rept SCREEN_WIDTH / 2 - 1
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], d

	add hl, bc
	dec a
	jr nz, .row

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

Serve1bppRequest::
; Only call during the first fifth of VBlank

	ld a, [wRequested1bpp]
	and a
	ret z

; Copy [wRequested1bpp] 1bpp tiles from [wRequested1bppSource] to [wRequested1bppDest]

	ld [hSPBuffer], sp

; Source
	ld hl, wRequested1bppSource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, wRequested1bppDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [wRequested1bpp]
	ld b, a

	xor a
	ld [wRequested1bpp], a

.next

rept 3
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], e
	inc l
	ld [hl], d
	inc l
	ld [hl], d

	inc hl
	dec b
	jr nz, .next

	ld a, l
	ld [wRequested1bppDest], a
	ld a, h
	ld [wRequested1bppDest + 1], a

	ld [wRequested1bppSource], sp

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

Serve2bppRequest::
; Only call during the first fifth of VBlank

	ld a, [wRequested2bpp]
	and a
	ret z

; Copy [wRequested2bpp] 2bpp tiles from [wRequested2bppSource] to [wRequested2bppDest]

	ld [hSPBuffer], sp

; Source
	ld hl, wRequested2bppSource
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld sp, hl

; Destination
	ld hl, wRequested2bppDest
	ld a, [hli]
	ld h, [hl]
	ld l, a

; # tiles to copy
	ld a, [wRequested2bpp]
	ld b, a

	xor a
	ld [wRequested2bpp], a

.next

rept 7
	pop de
	ld [hl], e
	inc l
	ld [hl], d
	inc l
endr
	pop de
	ld [hl], e
	inc l
	ld [hl], d

	inc hl
	dec b
	jr nz, .next

	ld a, l
	ld [wRequested2bppDest], a
	ld a, h
	ld [wRequested2bppDest + 1], a

	ld [wRequested2bppSource], sp

	ldh a, [hSPBuffer]
	ld l, a
	ldh a, [hSPBuffer + 1]
	ld h, a
	ld sp, hl
	ret

AnimateTileset::
; Only call during the first fifth of VBlank

	ldh a, [hMapAnims]
	and a
	ret z

	ldh a, [hROMBank]
	push af
	ld a, $3f
	rst Bankswitch

    call $5f06

	pop af
	rst Bankswitch
	ret

;Debug only functions
	ret

	ld hl, rLCDC
	set 1, [hl]
	ret

Function15ef::
    ld a, [$d558]
    bit 0, a
    ret z

    bit 7, a
    ret nz

    bit 2, a
    res 2, a
    ret z

    ld [$d558], a
    ld [$ffdb], sp
    ld hl, $cebc
    ld sp, hl
    ld hl, $9c20
    ld a, 1
    jp $14e6

Function160f::
	nop
	ldh a, [hVBlankCounter + 1]
	and a
	ret z

	dec a
	jr z, .one
	dec a
	jr z, .two

	ld a, 2
	ldh [hVBlankCounter + 1], a
	ld hl, hBGMapAddress
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, SCREEN_WIDTH
	add hl, de
	ld b, $12
	ld a, $60
.loop1
rept 12
	ld [hli], a
endr
	add hl, de
	dec b
	jr nz, .loop1
	ret

.two
	ld a, 1
	ld de, $240
	jr .go

.one
	xor a
	ld de, $320

.go
	ldh [hVBlankCounter + 1], a
	ld hl, hBGMapAddress
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, de
	ld b, $e
	ld a, $60
.loop2
rept 16
	ld [hli], a
endr
	dec b
	jr nz, .loop2
	ret
