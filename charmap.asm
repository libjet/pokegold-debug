; Control characters (see home/text.asm)

	charmap "<NULL>",	$00

	charmap "イ゛",		$01
	charmap "ヴ",		$02
	charmap "エ゛",		$03
	charmap "オ゛",		$04

	charmap "<PLAY_G>",	$14 ; "<PLAYER>くん" or "<PLAYER>ちゃん"; same as "<PLAYER>" in English
	charmap "<15>",		$15 ; nothing
	charmap "<16>",		$16 ; nothing
	
	charmap "ネ゛",		$17
	charmap "ノ゛",		$18

	charmap "<NI>",		$1d ; "に　"
	charmap "<TTE>",	$1e ; "って"
	charmap "<WO>",		$1f ; "を　"

	charmap "ィ゛",		$20
	charmap "あ゛",		$21

	charmap "<TA!>",		$22 ; "た！"
	charmap "<KOUGEKI>",	$23 ; "こうげき"
	charmap "<WA>",      	$24 ; "は　"
	charmap "<NO>",      	$25 ; "の　"

	charmap "<ROUTE>",		$35 ; "ばん　どうろ"
	charmap "<WATASHI>",	$36 ; "わたし"
	charmap "<KOKO_WA>",	$37 ; "ここは"
	charmap "<RED>",		$38 ; wRedsName
	charmap "<GREEN>",		$39 ; wGreensName

	charmap "<ENEMY>",	$3f

	charmap "<MOM>",	$49 ; wMomsName
	charmap "<GA>",		$4a ; "が　"
	charmap "<_CONT>",	$4b ; implements "<CONT>"
	charmap "<SCROLL>",	$4c

	charmap "も゜",		 $4d

	charmap "<NEXT>",	 $4e
	charmap "<LINE>",	 $4f
	charmap "@",		 $50 ; string terminator
	charmap "<PARA>",	 $51
	charmap "<PLAYER>",	 $52 ; wPlayerName
	charmap "<RIVAL>",	 $53 ; wRivalName
	charmap "#",		 $54 ; "POKé"
	charmap "<CONT>",	 $55
	charmap "<……>",		 $56 ; "……"
	charmap "<DONE>",	 $57
	charmap "<PROMPT>",	 $58
	charmap "<TARGET>",	 $59
	charmap "<USER>",	 $5a
	charmap "<PC>",		 $5b ; "PC"
	charmap "<TM>",		 $5c ; "TM"
	charmap "<TRAINER>", $5d ; "TRAINER"
	charmap "<ROCKET>",	 $5e ; "ROCKET"
	charmap "<DEXEND>",	 $5f

; Actual characters (from gfx/font/font_extra.png)

	charmap "<BOLD_A>",  $60
	charmap "<BOLD_B>",  $61
	charmap "<BOLD_C>",  $62
	charmap "<BOLD_D>",  $63
	charmap "<BOLD_E>",  $64
	charmap "<BOLD_F>",  $65
	charmap "<BOLD_G>",  $66
	charmap "<BOLD_H>",  $67
	charmap "<BOLD_I>",  $68
	charmap "<BOLD_V>",  $69
	charmap "<BOLD_S>",  $6a
	charmap "<BOLD_L>",  $6b
	charmap "<BOLD_M>",  $6c

	charmap "：",	$6d

	charmap "ぃ",	$6e
	charmap "ぅ",	$6f

	charmap "「",	$70
	charmap "」",	$71
	charmap "『",	$72
	charmap "』",	$73
	charmap "・",	$74
	charmap "…",	$75 ; ellipsis

	charmap "ぁ",	$76
	charmap "ぇ",	$77
	charmap "ぉ",	$78

	charmap "┌",	$79
	charmap "─",	$7a
	charmap "┐",	$7b
	charmap "│",	$7c
	charmap "└",	$7d
	charmap "┘",	$7e

	charmap " ",	$7f

; Actual characters (from gfx/font/font_battle_extra.png)

	charmap "<LV>",      $6e
	charmap "<DO>",      $70 ; hiragana small do
	charmap "◀",         $71
	charmap "『",         $72 ; Japanese opening quote
	charmap "<ID>",      $73
	charmap "№",         $74

; Actual characters (from other graphics files)

	; needed for _LoadFontsExtra1 (see engine/load_font.asm)
	charmap "■",		$60 ; gfx/font/black.2bpp
	charmap "▲",		$61 ; gfx/font/up_arrow.png
	charmap "☎",		$62 ; gfx/font/phone_icon.2bpp

	; needed for MagikarpHouseSign (see engine/events/magikarp.asm)
	charmap "′",		$6e ; gfx/font/feet_inches.png
	charmap "″",		$6f ; gfx/font/feet_inches.png

	; needed for StatsScreen_PlaceShinyIcon and PrintPartyMonPage1
	charmap "⁂",		$3f ; gfx/stats/stats_tiles.png, tile 14

	; PP
	charmap "P",		$3e

; Actual characters (from gfx/font/font.png)

	charmap "?",         $e6
	charmap "!",         $e7

	charmap "▷",         $ec
	charmap "▶",         $ed
	charmap "▼",         $ee
	charmap "♂",         $ef
	charmap "×",         $f1
	charmap ".",         $f2
	charmap "/",         $f3
	charmap "♀",         $f5

; Japanese kana

	charmap "ガ",	$05
	charmap "ギ",	$06
	charmap "グ",	$07
	charmap "ゲ",	$08
	charmap "ゴ",	$09
	charmap "ザ",	$0a
	charmap "ジ",	$0b
	charmap "ズ",	$0c
	charmap "ゼ",	$0d
	charmap "ゾ",	$0e
	charmap "ダ",	$0f
	charmap "ヂ",	$10
	charmap "ヅ",	$11
	charmap "デ",	$12
	charmap "ド",	$13

	charmap "バ",	$19
	charmap "ビ",	$1a
	charmap "ブ",	$1b
	charmap "ボ",	$1c

	charmap "が",	$26
	charmap "ぎ",	$27
	charmap "ぐ",	$28
	charmap "げ",	$29
	charmap "ご",	$2a
	charmap "ざ",	$2b
	charmap "じ",	$2c
	charmap "ず",	$2d
	charmap "ぜ",	$2e
	charmap "ぞ",	$2f
	charmap "だ",	$30
	charmap "ぢ",	$31
	charmap "づ",	$32
	charmap "で",	$33
	charmap "ど",	$34

	charmap "ば",	$3a
	charmap "び",	$3b
	charmap "ぶ",	$3c
	charmap "べ",	$3d
	charmap "ぼ",	$3e

	charmap "パ",	$40
	charmap "ピ",	$41
	charmap "プ",	$42
	charmap "ポ",	$43
	charmap "ぱ",	$44
	charmap "ぴ",	$45
	charmap "ぷ",	$46
	charmap "ぺ",	$47
	charmap "ぽ",	$48

	charmap "ア",	$80
	charmap "イ",	$81
	charmap "ウ",	$82
	charmap "エ",	$83
	charmap "オ",	$84
	charmap "カ",	$85
	charmap "キ",	$86
	charmap "ク",	$87
	charmap "ケ",	$88
	charmap "コ",	$89
	charmap "サ",	$8a
	charmap "シ",	$8b
	charmap "ス",	$8c
	charmap "セ",	$8d
	charmap "ソ",	$8e
	charmap "タ",	$8f
	charmap "チ",	$90
	charmap "ツ",	$91
	charmap "テ",	$92
	charmap "ト",	$93
	charmap "ナ",	$94
	charmap "ニ",	$95
	charmap "ヌ",	$96
	charmap "ネ",	$97
	charmap "ノ",	$98
	charmap "ハ",	$99
	charmap "ヒ",	$9a
	charmap "フ",	$9b
	charmap "ホ",	$9c
	charmap "マ",	$9d
	charmap "ミ",	$9e
	charmap "ム",	$9f
	charmap "メ",	$a0
	charmap "モ",	$a1
	charmap "ヤ",	$a2
	charmap "ユ",	$a3
	charmap "ヨ",	$a4
	charmap "ラ",	$a5
	charmap "ル",	$a6
	charmap "レ",	$a7
	charmap "ロ",	$a8
	charmap "ワ",	$a9
	charmap "ヲ",	$aa
	charmap "ン",	$ab
	charmap "ッ",	$ac
	charmap "ャ",	$ad
	charmap "ュ",	$ae
	charmap "ョ",	$af
	charmap "ィ",	$b0

	charmap "あ",	$b1
	charmap "い",	$b2
	charmap "う",	$b3
	charmap "え",	$b4
	charmap "お",	$b5
	charmap "か",	$b6
	charmap "き",	$b7
	charmap "く",	$b8
	charmap "け",	$b9
	charmap "こ",	$ba
	charmap "さ",	$bb
	charmap "し",	$bc
	charmap "す",	$bd
	charmap "せ",	$be
	charmap "そ",	$bf
	charmap "た",	$c0
	charmap "ち",	$c1
	charmap "つ",	$c2
	charmap "て",	$c3
	charmap "と",	$c4
	charmap "な",	$c5
	charmap "に",	$c6
	charmap "ぬ",	$c7
	charmap "ね",	$c8
	charmap "の",	$c9
	charmap "は",	$ca
	charmap "ひ",	$cb
	charmap "ふ",	$cc
	charmap "へ",	$cd
	charmap "ほ",	$ce
	charmap "ま",	$cf
	charmap "み",	$d0
	charmap "む",	$d1
	charmap "め",	$d2
	charmap "も",	$d3
	charmap "や",	$d4
	charmap "ゆ",	$d5
	charmap "よ",	$d6
	charmap "ら",	$d7
	charmap "リ",	$d8
	charmap "り",	$d8
	charmap "る",	$d9
	charmap "れ",	$da
	charmap "ろ",	$db
	charmap "わ",	$dc
	charmap "を",	$dd
	charmap "ん",	$de
	charmap "っ",	$df
	charmap "ゃ",	$e0
	charmap "ゅ",	$e1
	charmap "ょ",	$e2

	charmap "ー",	$e3
	charmap "ﾟ",		$e4
	charmap "ﾞ",		$e5

	charmap "？",	$e6
	charmap "！",	$e7
	charmap "。",	$e8

	charmap "ァ",	$e9
	charmap "ゥ",	$ea
	charmap "ェ",	$eb

	charmap "円",	$f0

	charmap "．",	$f2
	charmap "／",	$f3

	charmap "ォ",	$f4

	charmap "0",         $f6
	charmap "1",         $f7
	charmap "2",         $f8
	charmap "3",         $f9
	charmap "4",         $fa
	charmap "5",         $fb
	charmap "6",         $fc
	charmap "7",         $fd
	charmap "8",         $fe
	charmap "9",         $ff
