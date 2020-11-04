SimpleMultiply::
; Return a * c.
	and a
	ret z

	push bc
	ld b, a
	xor a
.loop
	add c
	dec b
	jr nz, .loop
	pop bc
	ret

SimpleDivide::
; Divide a by c. Return quotient b and remainder a.
	ld b, 0
.loop
	inc b
	sub c
	jr nc, .loop
	dec b
	add c
	ret

Multiply::
; Multiply hMultiplicand (3 bytes) by hMultiplier. Result in hProduct.
; All values are big endian.
	push hl
	push bc

	ld hl, $6ad6
	ld a, 1
	rst FarCall

	pop bc
	pop hl
	ret

Divide::
; Divide hDividend length b (max 4 bytes) by hDivisor. Result in hQuotient.
; All values are big endian.
	push hl
	push de
	push bc

	ldh a, [hROMBank]
	push af
	ld a, $01
	rst $10
	call $6b36
	pop af
	rst $10

	pop bc
	pop de
	pop hl
	ret

SubtractSigned::
; Return a - b, sign in carry.
	sub b
	ret nc
	cpl
	add 1
	scf
	ret
