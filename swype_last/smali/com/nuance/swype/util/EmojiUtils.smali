.class public final Lcom/nuance/swype/util/EmojiUtils;
.super Ljava/lang/Object;
.source "EmojiUtils.java"


# static fields
.field private static final character_emoji:[C

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string/jumbo v0, "EmojiUtils"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/util/EmojiUtils;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 31
    const/16 v0, 0xb0

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/nuance/swype/util/EmojiUtils;->character_emoji:[C

    return-void

    nop

    :array_14
    .array-data 2
        0x23s
        0x2as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0xa9s
        0xaes
        0x203cs
        0x2049s
        0x2122s
        0x2139s
        0x2194s
        0x2195s
        0x2196s
        0x2197s
        0x2198s
        0x2199s
        0x21a9s
        0x21aas
        0x231as
        0x231bs
        0x2328s
        0x23cfs
        0x23e9s
        0x23eas
        0x23ebs
        0x23ecs
        0x23eds
        0x23ees
        0x23efs
        0x23f0s
        0x23f1s
        0x23f2s
        0x23f3s
        0x23f8s
        0x23f9s
        0x23fas
        0x24c2s
        0x25aas
        0x25abs
        0x25b6s
        0x25c0s
        0x25fbs
        0x25fcs
        0x25fds
        0x25fes
        0x2600s
        0x2601s
        0x2602s
        0x2603s
        0x2604s
        0x260es
        0x2611s
        0x2614s
        0x2615s
        0x2618s
        0x261ds
        0x2620s
        0x2622s
        0x2623s
        0x2626s
        0x262as
        0x262es
        0x262fs
        0x2638s
        0x2639s
        0x263as
        0x2648s
        0x2649s
        0x264as
        0x264bs
        0x264cs
        0x264ds
        0x264es
        0x264fs
        0x2650s
        0x2651s
        0x2652s
        0x2653s
        0x2660s
        0x2663s
        0x2665s
        0x2666s
        0x2668s
        0x267bs
        0x267fs
        0x2692s
        0x2693s
        0x2694s
        0x2696s
        0x2697s
        0x2699s
        0x269bs
        0x269cs
        0x26a0s
        0x26a1s
        0x26aas
        0x26abs
        0x26b0s
        0x26b1s
        0x26bds
        0x26bes
        0x26c4s
        0x26c5s
        0x26c8s
        0x26ces
        0x26cfs
        0x26d1s
        0x26d3s
        0x26d4s
        0x26e9s
        0x26eas
        0x26f0s
        0x26f1s
        0x26f2s
        0x26f3s
        0x26f4s
        0x26f5s
        0x26f7s
        0x26f8s
        0x26f9s
        0x26fas
        0x26fds
        0x2702s
        0x2705s
        0x2708s
        0x2709s
        0x270as
        0x270bs
        0x270cs
        0x270ds
        0x270fs
        0x2712s
        0x2714s
        0x2716s
        0x271ds
        0x2721s
        0x2728s
        0x2733s
        0x2734s
        0x2744s
        0x2747s
        0x274cs
        0x274es
        0x2753s
        0x2754s
        0x2755s
        0x2757s
        0x2763s
        0x2764s
        0x2795s
        0x2796s
        0x2797s
        0x27a1s
        0x27b0s
        0x27bfs
        0x2934s
        0x2935s
        0x2b05s
        0x2b06s
        0x2b07s
        0x2b1bs
        0x2b1cs
        0x2b50s
        0x2b55s
        0x3030s
        0x303ds
        0x3297s
        0x3299s
    .end array-data
.end method

.method public static characterBefore(Ljava/lang/CharSequence;II)I
    .registers 14
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "cursor"    # I
    .param p2, "numOfCodePoints"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/16 v5, 0xb

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "charBefore":I
    :goto_7
    if-lez p2, :cond_173

    .line 1094
    if-eqz p0, :cond_11

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1b

    :cond_11
    move v1, v3

    .line 228
    .local v1, "indexBefore":I
    :goto_12
    if-ltz v1, :cond_173

    .line 229
    sub-int v2, p1, v1

    add-int/2addr v0, v2

    .line 230
    move p1, v1

    .line 231
    add-int/lit8 p2, p2, -0x1

    goto :goto_7

    .line 1098
    .end local v1    # "indexBefore":I
    :cond_1b
    add-int/lit8 v2, p1, -0x1

    move v4, v3

    .line 1101
    :cond_1e
    :goto_1e
    if-ltz v2, :cond_170

    if-eq v4, v5, :cond_170

    .line 1102
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 1103
    packed-switch v4, :pswitch_data_174

    .line 1205
    :goto_29
    :pswitch_29
    if-nez v2, :cond_2c

    move v4, v5

    .line 1209
    :cond_2c
    if-eq v4, v5, :cond_1e

    .line 1210
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1105
    :pswitch_31
    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->isSelector(C)Z

    move-result v4

    if-eqz v4, :cond_39

    move v4, v6

    .line 1106
    goto :goto_29

    .line 2036
    :cond_39
    const/16 v4, 0x20e3

    if-eq v9, v4, :cond_41

    const/16 v4, 0x20e0

    if-ne v9, v4, :cond_47

    :cond_41
    move v4, v8

    .line 1107
    :goto_42
    if-eqz v4, :cond_49

    .line 1108
    const/16 v4, 0x8

    goto :goto_29

    :cond_47
    move v4, v3

    .line 2036
    goto :goto_42

    .line 1109
    :cond_49
    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->isVariant(C)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1110
    const/16 v4, 0x9

    goto :goto_29

    .line 1112
    :cond_52
    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_6e

    .line 1113
    if-lez v2, :cond_6c

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v10, 0x200d

    if-ne v4, v10, :cond_6c

    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->characterIsEmoji(C)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 1114
    const/4 v4, 0x7

    goto :goto_29

    :cond_6c
    move v4, v5

    .line 1117
    goto :goto_29

    :cond_6e
    move v4, v7

    .line 1123
    goto :goto_29

    .line 1128
    :pswitch_70
    const/16 v10, 0x200d

    if-ne v9, v10, :cond_76

    .line 1129
    const/4 v4, 0x4

    goto :goto_29

    .line 1130
    :cond_76
    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->isSelector(C)Z

    move-result v10

    if-eqz v10, :cond_7e

    move v4, v6

    .line 1131
    goto :goto_29

    .line 1132
    :cond_7e
    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_86

    move v4, v7

    .line 1133
    goto :goto_29

    .line 1137
    :cond_86
    const/4 v9, 0x7

    if-eq v4, v9, :cond_8d

    const/16 v9, 0x9

    if-ne v4, v9, :cond_8f

    .line 1138
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    :cond_8f
    move v4, v5

    .line 1142
    goto :goto_29

    .line 1147
    :pswitch_91
    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->isSelector(C)Z

    move-result v4

    if-eqz v4, :cond_99

    move v4, v6

    .line 1148
    goto :goto_29

    .line 2050
    :cond_99
    const/16 v4, 0x270b

    if-ne v9, v4, :cond_a2

    move v4, v8

    .line 1149
    :goto_9e
    if-eqz v4, :cond_a4

    move v4, v5

    .line 1150
    goto :goto_29

    :cond_a2
    move v4, v3

    .line 2050
    goto :goto_9e

    .line 1151
    :cond_a4
    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->characterIsEmoji(C)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 1152
    const/4 v4, 0x7

    goto/16 :goto_29

    .line 1153
    :cond_ad
    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->isVariant(C)Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 1154
    const/16 v4, 0x9

    goto/16 :goto_29

    .line 1155
    :cond_b7
    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_c0

    move v4, v7

    .line 1156
    goto/16 :goto_29

    :cond_c0
    move v4, v5

    .line 1160
    goto/16 :goto_29

    .line 1163
    :pswitch_c3
    invoke-static {v9}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_fc

    .line 1164
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    invoke-static {v4}, Lcom/nuance/swype/util/EmojiUtils;->isToneModifier(I)Z

    move-result v4

    if-eqz v4, :cond_dc

    .line 1165
    const/4 v4, 0x3

    goto/16 :goto_29

    .line 1166
    :cond_dc
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 2073
    const v9, 0x1f1e6

    if-lt v4, v9, :cond_f7

    const v9, 0x1f1ff

    if-gt v4, v9, :cond_f7

    move v4, v8

    .line 1166
    :goto_f1
    if-eqz v4, :cond_f9

    .line 1167
    const/16 v4, 0xa

    goto/16 :goto_29

    :cond_f7
    move v4, v3

    .line 2073
    goto :goto_f1

    :cond_f9
    move v4, v8

    .line 1169
    goto/16 :goto_29

    :cond_fc
    move v4, v5

    .line 1175
    goto/16 :goto_29

    .line 1178
    :pswitch_ff
    const/16 v4, 0x200d

    if-ne v9, v4, :cond_106

    .line 1179
    const/4 v4, 0x4

    goto/16 :goto_29

    .line 1180
    :cond_106
    invoke-static {v9}, Lcom/nuance/swype/util/EmojiUtils;->isSelector(C)Z

    move-result v4

    if-eqz v4, :cond_10f

    move v4, v6

    .line 1181
    goto/16 :goto_29

    .line 1182
    :cond_10f
    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 3054
    invoke-static {v4}, Lcom/nuance/swype/util/EmojiUtils;->isToneModifier(I)Z

    move-result v9

    if-eqz v9, :cond_125

    move v4, v8

    .line 1182
    :goto_120
    if-eqz v4, :cond_15b

    .line 1183
    const/4 v4, 0x3

    goto/16 :goto_29

    .line 3057
    :cond_125
    const v9, 0x1f466

    if-lt v4, v9, :cond_12f

    const v9, 0x1f475

    if-le v4, v9, :cond_157

    :cond_12f
    const v9, 0x1f385

    if-lt v4, v9, :cond_139

    const v9, 0x1f472

    if-le v4, v9, :cond_157

    :cond_139
    const v9, 0x1f483

    if-lt v4, v9, :cond_143

    const v9, 0x1f574

    if-le v4, v9, :cond_157

    :cond_143
    const v9, 0x1f46b

    if-lt v4, v9, :cond_14d

    const v9, 0x1f46d

    if-le v4, v9, :cond_157

    :cond_14d
    const v9, 0x1f6b9

    if-lt v4, v9, :cond_159

    const v9, 0x1f6ba

    if-gt v4, v9, :cond_159

    :cond_157
    move v4, v8

    .line 3061
    goto :goto_120

    :cond_159
    move v4, v3

    .line 3063
    goto :goto_120

    .line 1185
    :cond_15b
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .line 1188
    goto/16 :goto_29

    .line 1192
    :pswitch_160
    invoke-static {v9}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_16b

    .line 1193
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    .line 1194
    goto/16 :goto_29

    .line 1196
    :cond_16b
    add-int/lit8 v2, v2, -0x1

    move v4, v5

    .line 1197
    goto/16 :goto_29

    :cond_170
    move v1, v2

    .line 1214
    goto/16 :goto_12

    .line 234
    :cond_173
    return v0

    .line 1103
    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_31
        :pswitch_ff
        :pswitch_c3
        :pswitch_91
        :pswitch_91
        :pswitch_91
        :pswitch_29
        :pswitch_70
        :pswitch_70
        :pswitch_70
        :pswitch_160
    .end packed-switch
.end method

.method public static characterIsEmoji(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 67
    sget-object v0, Lcom/nuance/swype/util/EmojiUtils;->character_emoji:[C

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    .line 69
    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static isSelector(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 43
    const v0, 0xfe0f

    if-eq p0, v0, :cond_a

    const v0, 0xfe0e

    if-ne p0, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isToneModifier(I)Z
    .registers 2
    .param p0, "codePoint"    # I

    .prologue
    .line 47
    const v0, 0x1f3fb

    if-lt p0, v0, :cond_c

    const v0, 0x1f3ff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static isVariant(C)Z
    .registers 2
    .param p0, "ch"    # C

    .prologue
    .line 40
    const/16 v0, 0x2695

    if-eq p0, v0, :cond_c

    const/16 v0, 0x2640

    if-eq p0, v0, :cond_c

    const/16 v0, 0x2642

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
