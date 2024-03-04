.class public Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;
.super Lcom/nuance/input/swypecorelib/XT9CoreInput;
.source "XT9CoreChineseInput.java"


# static fields
.field public static final CHINESE_CORRECTION_LEVEL:I = 0x66

.field public static final CHINESE_INPUT_MODE_BPMF:I = 0x1

.field public static final CHINESE_INPUT_MODE_CANGJIE:I = 0x4

.field public static final CHINESE_INPUT_MODE_DOUBLEPINYIN:I = 0x3

.field public static final CHINESE_INPUT_MODE_PINYIN:I = 0x0

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE:I = 0x5

.field public static final CHINESE_INPUT_MODE_STROKE:I = 0x2

.field public static final CHINESE_MOHU_PAIR_AN_ANG:I = 0x40

.field public static final CHINESE_MOHU_PAIR_C_CH:I = 0x2

.field public static final CHINESE_MOHU_PAIR_EN_ENG:I = 0x80

.field public static final CHINESE_MOHU_PAIR_F_H:I = 0x20

.field public static final CHINESE_MOHU_PAIR_IN_ING:I = 0x100

.field public static final CHINESE_MOHU_PAIR_N_L:I = 0x8

.field public static final CHINESE_MOHU_PAIR_R_L:I = 0x10

.field public static final CHINESE_MOHU_PAIR_S_SH:I = 0x4

.field public static final CHINESE_MOHU_PAIR_Z_ZH:I = 0x1

.field public static final CHINESE_MOHU_PINYIN:I = 0x65

.field public static final CHINESE_NAME_INPUT:I = 0x64

.field public static final CHINESE_NAME_INPUT_OFF:I = 0x0

.field public static final CHINESE_NAME_INPUT_ON:I = 0x1

.field public static final CHINESE_PHONETIC_TONE1:I = 0xb1

.field public static final CHINESE_PHONETIC_TONE2:I = 0xb2

.field public static final CHINESE_PHONETIC_TONE3:I = 0xb3

.field public static final CHINESE_PHONETIC_TONE4:I = 0xb4

.field public static final CHINESE_PHONETIC_TONE5:I = 0xb5

.field private static final COMPONENT_MARKER:C = '\u9fff'

.field public static final INPUT_MODE_BPMF:I = 0x1

.field public static final INPUT_MODE_CANGJIE:I = 0x4

.field public static final INPUT_MODE_DOUBLEPINYIN:I = 0x3

.field public static final INPUT_MODE_PINYIN:I = 0x0

.field public static final INPUT_MODE_QUICK_CANGJIE:I = 0x5

.field public static final INPUT_MODE_STROKE:I = 0x2

.field private static final INTERNAL_SEGMENT_DELIMITER:C = '_'

.field public static final MAXACTIVEKEYCOUNT:I = 0x20

.field public static final MAXONEPAGESIZE:I = 0x1e

.field public static final MAXWORDLEN:I = 0x70

.field public static final MAXWORDLIST:I = 0x100

.field private static final mCangjie:[C

.field private static final mCompSimp:[C

.field private static final mCompTrad:[C

.field private static mPhraseBuffer:[C

.field private static mPhraseLength:[I

.field private static mSpellBuffer:[C

.field private static mSpellLength:[I

.field private static final mStrokes:[C

.field private static final mTones:[C


# instance fields
.field private mActiveSpell:Ljava/lang/StringBuilder;

.field private mBopomofoSyllableDelimiter:C

.field private final mChineseDelimiter:C

.field private mChineseSegmentDelimiter:C

.field private mGetStringBufferArray:[Ljava/lang/StringBuilder;

.field private mPinyinInline:Ljava/lang/StringBuilder;

.field private mPopupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupWdSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefixPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mScratchBuffer:[C

.field private mScratchInt:[I

.field private mScratchIntWordSource:[I

.field private mSuffixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuffixPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mTextContext:Ljava/lang/String;

.field private mWdSourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x70

    const/4 v1, 0x1

    .line 245
    const-string v0, "\u4e00\u4e28\u4e3f\u4e36\ufe41\uff1f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mStrokes:[C

    .line 250
    const-string v0, "\u5341\u5382~~\u251c\u2016\u5182\u56d7~\u4ebb~\u516b\u4eba\u4e42\u51e0\u5315~\u52f9\u4e5d\u4ea0\u51ab~\u8ba0\u5196\u961d\u4e86\u5200\u4e43\u53c8\u53b6\u256a\u571f\u58eb\u5de5\u8279\u5927\u624c~\u53e3\u5c71\u5dfe\u5343\u5f73\u72ad\u5902\u5915\u9963\u4e2c\u5e7f\u4ea1\u95e8~\u6c35\u5fc4\u30c4\u5b80\u5c38\u5f13\u5b50\u5973\u9a6c\u7e9f\u5ddb\u4e30\u738b~~\u5eff~\u6728\u4e0d\u6b79\u8f66\u7259\u65e5\u4e2d\u8d1d\u6c14\u6bdb~~\u7247\u7236\u4eca~\u5206\u6708\u6587\u65b9\u706b\u6237\u793b~\u53e4\u77f3\u9f99\u4e1a\u76ee\u7530\u76bf\u77e2\u9485\u79be\u4e18\u767d\u7592\u7acb\u7a74\u8864\u52a0\u77db\u8012\u8033\u4e9a\u897f\u6b64\u864d\u866b\u7f36\u820c\u7af9\u81fc\u81ea\u821f\u5408~~\u7c73\u7fbd\u8d70\u8d64~\u675f\u9149\u8db3\u8eab\u8c78\u89d2\u5176\u96e8\u975e\u9f7f\u96b9\u9c7c\u9769\u9aa8\u9b3c\u6556\u83ab\u9e7f\u9ebb\u655d\u9ed1\u8f9f\u529b\u5e72\u5f50\u5f51\u5e7a\u592b\u5929\u5143\u6bd4\u6b62\u6c34\u723f~\u6c11\u7676\u5409\u81e3\u81f3~\u8840~\u7cf8\u8eca\u752b\u8c46\u8c55\u8c9d\u8a00\u541b~\u9580\u91d1\u98df\u9999\u97cb\u99ac\u9adf\u822c~\u57f7\u9ea5\u9b5a\u9f20\u9f3b\u9f52\u9f8d"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompSimp:[C

    .line 255
    const-string v0, "~\u5341~~\u5382\u5315\u251c\u5182~~\u4ebb~\u4e42\u4eba\u516b\u4e43\u52f9\u4e5d~~\u51e0~\u51ab\u4ea0~\u5196\u4e86\u529b\u5200\u53c8\u53b6~\u5e72~\u571f\u58eb\u5de5\u624c\u5344\u5927\u5140\u5c22\u5f0b~~\u53e3\u5c71\u5dfe\u5343~~\u5f73~\u72ad\u5915\u5902\u5e7f\u4ea1\u5fc4~\u6c35\u5b80~\u5c38\u5df1\u5df3\u5f13\u5b50\u5973\u5f51\u961d\u5e7a\u5ddb\u4e30\u738b~\u5f00\u592b\u5929\u5143~~\u5eff\u6728\u652f\u4e0d\u6b79\u6bd4\u7259\u65e1\u6208\u8279\u6b62~\u5c11\u65e5\u4e2d\u6c34\u624b\u6c14\u6bdb\u58ec\u544a~\u7247\u592d\u65a4\u4eca\u7236\u722b\u5206\u516c\u6708\u6236\u4e39\u6c0f\u52ff~\u6587\u65b9\u706b\u5fc3~\u723f\u4e88~\u672a\u6b63\u7518\u4e16\u53e4\u77f3\u5317\u5360\u4e1a~\u76ee\u7530\u7531\u592e~\u751f\u77e2\u5931\u79be\u4e18~\u767d\u74dc\u76ae~\u5917\u793b\u7592\u7acb\u7384\u534a\u7a74~\u8864\u6c11\u5f17\u758b\u4e1e\u5974\u52a0\u53ec\u53f0\u7676\u77db\u820c\u6b21\u5409\u5de9\u8033\u5171\u81e3\u897f\u673f\u897f\u800c\u5938\u5217\u81f3~\u6b64\u864d\u5149\u866b\u66f2~\u540c\u8012\u7f36\u5148\u7af9\u81fc\u81ea~\u8840\u540e\u821f\u6740\u5408\u5146\u65ec\u591a\u4ea6~\u4ea4~~\u4ea5\u7f8a~\u5e76~\u7c73~\u8278\u5982\u7fbd\u7cf8\u8d70\u8d64~\u514b\u6c42\u5b5b\u8eca\u752b\u66f4\u675f~\u543e\u8c46\u9149\u8fb0\u593e\u8c55\u5de0~~\u8c9d\u8db3\u6bcf\u8eab~\u4f59\u5e0c\u91c6\u8c37\u8c78\u5375\u89d2\u8a00\u4ea8\u8f9b~~\u5f1f\u6c99\u541b\u752c\u73a8\u6b66\u9752\u8005\u5774\u5e78\u4e9e\u5176\u6614\u76f4~\u6797\u4f86~\u4e3d\u5947\u8c56\u96e8\u59bb\u975e\u53d4\u5353\u679c\u9580~\u59d4\u96b9\u5351\u820d\u91d1\u80b4\u98df\u91c7\u5468\u4eac\u4eab\u708e~\u58f4\u751a\u9769~~\u662f\u5192\u79ba\u66f7\u54bc\u54c1\u8011\u9999\u79cb\u76fe\u4fde\u98a8\u6241\u97f3\u914b\u9996\u5179\u8ecd\u97cb~\u5193\u99ac\u9b32~\u6649\u9adf\u9b25~\u9aa8\u8c48\u70cf\u9b3c\u822c\u595a\u82bb\u9ad8\u9f4a\u517c~~\u51a5\u57f6\u6556\u57f7~\u5807~\u5c08\u5340\u7968\u621a\u9ea5\u83ab\u9e75\u5a41\u5f9e\u9b5a\u9ebb\u9e7f\u7ae0\u655d\u5c09\u5c07\u5de2\u559c\u58f9\u53a4\u53a5\u9ef9\u55ae\u9ed1\u756a~~~\u66fe\u77de\u9109\u9f13~\u656c~\u9f20\u50c9\u6703\u4eb6\u96cd\u8f9f\u8207\u53ad\u723e~\u9f3b\u8ce3\u9f52\u757e~\u9f8d\u9fa0\u96da\u8c50~"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompTrad:[C

    .line 260
    const-string v0, "\u65e5\u6708\u91d1\u6728\u6c34\u706b\u571f\u7af9\u6208\u5341\u5927\u4e2d\u4e00\u5f13\u4eba\u5fc3\u624b\u53e3\u5c38\u5eff\u5c71\u5973\u7530\u96e3\u535c\u91cd"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    .line 265
    const-string v0, "\u00af\u02ca\u02c7\u02cb\u02d9"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTones:[C

    .line 1158
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseBuffer:[C

    .line 1159
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellBuffer:[C

    .line 1160
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseLength:[I

    .line 1161
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellLength:[I

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x70

    .line 274
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;-><init>()V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    .line 201
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    .line 203
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    .line 206
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    .line 213
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    .line 220
    const/16 v0, 0x27

    iput-char v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseDelimiter:C

    .line 227
    const/16 v0, 0x20

    iput-char v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseSegmentDelimiter:C

    .line 234
    const/16 v0, 0x5f

    iput-char v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mBopomofoSyllableDelimiter:C

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    .line 275
    return-void
.end method

.method private static native addExplicitKey(JII)Z
.end method

.method private static native addToneForZhuyin(JI)Z
.end method

.method private static native backupWordSymbolInfo(J)V
.end method

.method private static native breakContext(J)Z
.end method

.method private cangjieToInternal(I)I
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 1330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1331
    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 1332
    add-int/lit8 p1, v0, 0x41

    .line 1336
    .end local p1    # "c":I
    :cond_0
    return p1

    .line 1330
    .restart local p1    # "c":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static native clearAllKeys(J)Z
.end method

.method private static native clearCommonChar(J)I
.end method

.method private static native clearFullSentence(J)I
.end method

.method private componentToExternal(C)C
    .locals 3
    .param p1, "c"    # C

    .prologue
    const v2, 0xef88

    const v1, 0xeeb8

    .line 1348
    if-gt v1, p1, :cond_0

    const v0, 0xef7f

    if-gt p1, v0, :cond_0

    .line 1349
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompSimp:[C

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    .line 1353
    :goto_0
    return v0

    .line 1350
    :cond_0
    if-gt v2, p1, :cond_1

    const v0, 0xf120

    if-gt p1, v0, :cond_1

    .line 1351
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCompTrad:[C

    sub-int v1, p1, v2

    aget-char v0, v0, v1

    goto :goto_0

    .line 1353
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native create_context(Ljava/lang/String;)J
.end method

.method private static native cycleTone(J)Z
.end method

.method private static native deleteOneKeyAndRefresh(J)Z
.end method

.method private static native destroy_context(J)V
.end method

.method private static native finish(J)V
.end method

.method private static native getActivePrefixIndex(J)I
.end method

.method private static native getActiveSuffixIndex(J)I
.end method

.method private static native getCharSpell(JIII[C)I
.end method

.method private static native getExactWord(J[C)I
.end method

.method private static native getInputMode(J)I
.end method

.method private static native getKeyCount(J)I
.end method

.method private getPrefix(ILjava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "index"    # I
    .param p2, "prefix"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 1058
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1060
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefix(JI[C[II)Z

    move-result v6

    .line 1063
    .local v6, "success":Z
    if-eqz v6, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v7

    invoke-virtual {p2, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1065
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1067
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 1071
    :cond_0
    return v6
.end method

.method private static native getPrefix(JI[C[II)Z
.end method

.method private static native getPrefixCount(J)I
.end method

.method private getPrefixesInternal()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 793
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_2

    .line 796
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 798
    .local v2, "prefixPoolSize":I
    if-lez v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 801
    .local v1, "prefix":Ljava/lang/StringBuilder;
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefix(ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 802
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    .end local v1    # "prefix":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x70

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1

    .line 804
    .restart local v1    # "prefix":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    .end local v1    # "prefix":Ljava/lang/StringBuilder;
    .end local v2    # "prefixPoolSize":I
    :cond_2
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    return-object v3
.end method

.method private static native getSelection(J[C[II)Z
.end method

.method private static native getSpell(JI[C[II)Z
.end method

.method private getSpellInternal(ILjava/lang/StringBuilder;)Z
    .locals 10
    .param p1, "index"    # I
    .param p2, "spell"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v9, 0x0

    .line 954
    if-lez p1, :cond_1

    move v8, v9

    .line 990
    :cond_0
    :goto_0
    return v8

    .line 960
    :cond_1
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 962
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpell(JI[C[II)Z

    move-result v8

    .line 965
    .local v8, "success":Z
    if-eqz v8, :cond_0

    .line 966
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v9

    if-ge v6, v0, :cond_4

    .line 967
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_3

    .line 968
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-char v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseSegmentDelimiter:C

    aput-char v1, v0, v6

    .line 966
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 969
    :cond_3
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0xb1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0xb5

    if-gt v0, v1, :cond_2

    .line 971
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTones:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v2, v2, v6

    add-int/lit16 v2, v2, -0xb1

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    goto :goto_2

    .line 975
    :cond_4
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v9

    invoke-virtual {p2, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 977
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v7

    .line 978
    .local v7, "mode":I
    const/4 v0, 0x1

    if-ne v0, v7, :cond_5

    .line 979
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 980
    :cond_5
    const/4 v0, 0x2

    if-ne v0, v7, :cond_6

    .line 981
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeStroke(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 982
    :cond_6
    const/4 v0, 0x4

    if-eq v0, v7, :cond_7

    const/4 v0, 0x5

    if-ne v0, v7, :cond_8

    .line 984
    :cond_7
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeCangjie(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 985
    :cond_8
    if-nez v7, :cond_0

    .line 986
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizePinyin(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private getSuffix(ILjava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "index"    # I
    .param p2, "suffix"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 1089
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1091
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffix(JI[C[II)Z

    move-result v6

    .line 1094
    .local v6, "success":Z
    if-eqz v6, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v7

    invoke-virtual {p2, v0, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1096
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1098
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 1102
    :cond_0
    return v6
.end method

.method private static native getSuffix(JI[C[II)Z
.end method

.method private static native getSuffixCount(J)I
.end method

.method private getSuffixesInternal()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 817
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x100

    if-ge v0, v3, :cond_2

    .line 820
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 822
    .local v2, "suffixPoolSize":I
    if-lez v2, :cond_0

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    move-object v1, v3

    .line 825
    .local v1, "suffix":Ljava/lang/StringBuilder;
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffix(ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 826
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 819
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 822
    .end local v1    # "suffix":Ljava/lang/StringBuilder;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x70

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1

    .line 828
    .restart local v1    # "suffix":Ljava/lang/StringBuilder;
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    .end local v1    # "suffix":Ljava/lang/StringBuilder;
    .end local v2    # "suffixPoolSize":I
    :cond_2
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    return-object v3
.end method

.method private static native getTailDoublePinyinUnicode(J[I)Z
.end method

.method private static native getWord(JI[C[II[I)Z
.end method

.method private static native hasBilingualPrefix(J)Z
.end method

.method private static native initTrace(JIII)V
.end method

.method private static native initialize(J)I
.end method

.method private static native isFullSentenceActive(J)Z
.end method

.method private static native isHasTraceInfo(J)Z
.end method

.method private static native isPrefixBufferActive(J)Z
.end method

.method private static native isSuffixBufferActive(J)Z
.end method

.method private normalizeBPMF(Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1451
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 1452
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1453
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1454
    .local v0, "c":C
    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->tolowerBPMF(C)C

    move-result v1

    .line 1455
    .local v1, "cLower":C
    if-eq v0, v1, :cond_0

    .line 1456
    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1457
    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    iget-char v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseSegmentDelimiter:C

    if-eq v4, v5, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_0

    .line 1459
    iget-char v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mBopomofoSyllableDelimiter:C

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1460
    add-int/lit8 v2, v2, 0x1

    .line 1461
    add-int/lit8 v3, v3, 0x1

    .line 1452
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1465
    .end local v0    # "c":C
    .end local v1    # "cLower":C
    :cond_1
    return-void
.end method

.method private normalizeCangjie(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1375
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1376
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1377
    .local v0, "c":C
    const/16 v2, 0x41

    if-gt v2, v0, :cond_0

    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    .line 1378
    sget-object v2, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mCangjie:[C

    add-int/lit8 v3, v0, -0x41

    aget-char v2, v2, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1375
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method private normalizeComponents(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 1363
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->componentToExternal(C)C

    move-result v0

    .line 1364
    .local v0, "comp":C
    if-eqz v0, :cond_0

    .line 1365
    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1366
    const v1, 0x9fff

    invoke-virtual {p1, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1368
    :cond_0
    return-void
.end method

.method private normalizePinyin(Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/16 v8, 0x27

    const/16 v7, 0x5a

    const/16 v6, 0x41

    .line 1384
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 1430
    :goto_0
    return-void

    .line 1388
    :cond_0
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_f

    .line 1390
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 1391
    .local v3, "previousChar":C
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1392
    .local v2, "nextChar":C
    if-gt v6, v3, :cond_3

    if-gt v3, v7, :cond_3

    if-gt v6, v2, :cond_1

    if-le v2, v7, :cond_2

    :cond_1
    iget-char v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseSegmentDelimiter:C

    if-ne v2, v4, :cond_3

    .line 1395
    :cond_2
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1396
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1398
    :cond_3
    if-gt v6, v3, :cond_5

    if-gt v3, v7, :cond_5

    if-gt v9, v2, :cond_5

    if-gt v2, v10, :cond_5

    .line 1399
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1389
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1400
    :cond_5
    if-gt v9, v3, :cond_8

    if-gt v3, v10, :cond_8

    if-gt v6, v2, :cond_6

    if-le v2, v7, :cond_7

    :cond_6
    iget-char v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseSegmentDelimiter:C

    if-ne v2, v4, :cond_8

    .line 1403
    :cond_7
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1404
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1405
    :cond_8
    if-gt v9, v3, :cond_9

    if-gt v3, v10, :cond_9

    if-ne v2, v8, :cond_9

    .line 1406
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1407
    :cond_9
    if-gt v6, v3, :cond_a

    if-gt v3, v7, :cond_a

    if-ne v2, v8, :cond_a

    .line 1408
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1409
    :cond_a
    if-gt v6, v2, :cond_b

    if-le v2, v7, :cond_c

    :cond_b
    iget-char v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseSegmentDelimiter:C

    if-ne v2, v4, :cond_d

    :cond_c
    if-ne v3, v8, :cond_d

    .line 1411
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1412
    :cond_d
    if-gt v9, v3, :cond_e

    if-gt v3, v10, :cond_e

    if-gt v9, v2, :cond_e

    if-gt v2, v10, :cond_e

    .line 1414
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1415
    :cond_e
    const/16 v4, 0x30

    if-gt v4, v3, :cond_4

    const/16 v4, 0x39

    if-gt v3, v4, :cond_4

    .line 1416
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1417
    iget-char v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mChineseSegmentDelimiter:C

    if-ne v2, v4, :cond_4

    .line 1418
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1422
    .end local v2    # "nextChar":C
    .end local v3    # "previousChar":C
    :cond_f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1423
    .local v1, "lastChar":C
    if-gt v6, v1, :cond_10

    if-gt v1, v7, :cond_10

    .line 1424
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x20

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1428
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1429
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1426
    :cond_10
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPinyinInline:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private normalizeStroke(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1471
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1472
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1473
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 1474
    .local v0, "c":C
    if-lez v0, :cond_0

    const/4 v3, 0x6

    if-gt v0, v3, :cond_0

    .line 1475
    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mStrokes:[C

    add-int/lit8 v4, v0, -0x1

    aget-char v3, v3, v4

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1472
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1478
    .end local v0    # "c":C
    :cond_1
    return-void
.end method

.method private static native processKey(JIJI)Z
.end method

.method private static native processKeyBySymbol(JI)Z
.end method

.method private static native processTap(JIIJI)Z
.end method

.method private recyclePrefixPool()V
    .locals 5

    .prologue
    .line 909
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 910
    .local v2, "prefixPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 912
    .local v1, "prefixListSize":I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 913
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 914
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 915
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    add-int/lit8 v2, v2, 0x1

    .line 918
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 919
    goto :goto_0

    .line 920
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 921
    return-void
.end method

.method private recycleSuffixPool()V
    .locals 5

    .prologue
    .line 927
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 928
    .local v2, "suffixPoolSize":I
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 930
    .local v1, "suffixListSize":I
    :goto_0
    const/16 v3, 0x100

    if-ge v2, v3, :cond_1

    if-lez v1, :cond_1

    .line 931
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 932
    .local v0, "collect":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 933
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    add-int/lit8 v2, v2, 0x1

    .line 936
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 937
    goto :goto_0

    .line 938
    .end local v0    # "collect":Ljava/lang/CharSequence;
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 939
    return-void
.end method

.method private static native resetUserDictionary(J)Z
.end method

.method private static native restoreWordSymbolInfo(J)V
.end method

.method private static native selectWord(JI[C[II)Z
.end method

.method private static native setActivePrefixIndex(JI)Z
.end method

.method private static native setActiveSuffixIndex(JI)Z
.end method

.method private static native setAttribute(JII)Z
.end method

.method private static native setBilingual(JZ)Z
.end method

.method private static native setCategoryDb(JIII)I
.end method

.method private static native setCommonChar(J)I
.end method

.method private static native setContext(J[CI)Z
.end method

.method private static native setFullSentence(J)I
.end method

.method private static native setInputMode(JI)Z
.end method

.method private static native setLanguage(JI)I
.end method

.method private static native setShiftState(JI)V
.end method

.method private static native start(J)Z
.end method

.method private tolowerBPMF(C)C
    .locals 3
    .param p1, "c"    # C

    .prologue
    const v2, 0xf205

    .line 1439
    move v0, p1

    .line 1440
    .local v0, "cRet":C
    if-lt p1, v2, :cond_0

    const v1, 0xf22a

    if-gt p1, v1, :cond_0

    .line 1441
    sub-int v1, p1, v2

    add-int/lit16 v1, v1, 0x3105

    int-to-char v0, v1

    .line 1442
    :cond_0
    return v0
.end method

.method private static native udbAdd(J[CI[CI)Z
.end method

.method private static native udbCount(J)I
.end method

.method private static native udbDelete(J[CI)Z
.end method

.method private static native udbGetNext(JI[C[II[C[II)Z
.end method

.method private static native udbGetRemainingMemory(J)I
.end method

.method private static native udbGetSize(J)I
.end method


# virtual methods
.method public addAllContextWord()V
    .locals 3

    .prologue
    .line 1501
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1502
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1503
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x100

    if-ge v0, v2, :cond_1

    .line 1504
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 1505
    .local v1, "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    invoke-virtual {p0, v0, v2, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1506
    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1503
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1509
    .end local v1    # "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_1
    return-void
.end method

.method public addExplicitKey(ILcom/nuance/input/swypecorelib/Shift$ShiftState;)Z
    .locals 3
    .param p1, "key"    # I
    .param p2, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 373
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p2}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, p1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addExplicitKey(JII)Z

    move-result v0

    return v0
.end method

.method public addToneForZhuyin(I)Z
    .locals 2
    .param p1, "tone"    # I

    .prologue
    .line 505
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addToneForZhuyin(JI)Z

    move-result v0

    return v0
.end method

.method public backupWordSymbolInfo()V
    .locals 2

    .prologue
    .line 453
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->backupWordSymbolInfo(J)V

    .line 454
    return-void
.end method

.method public breakContext()Z
    .locals 2

    .prologue
    .line 640
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->breakContext(J)Z

    move-result v0

    return v0
.end method

.method public chineseDelimiter()C
    .locals 1

    .prologue
    .line 1578
    const/16 v0, 0x27

    return v0
.end method

.method public clearAllKeys()Z
    .locals 2

    .prologue
    .line 483
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearAllKeys(J)Z

    move-result v0

    return v0
.end method

.method public clearCommonChar()I
    .locals 2

    .prologue
    .line 1275
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearCommonChar(J)I

    move-result v0

    return v0
.end method

.method public clearFullSentence()I
    .locals 2

    .prologue
    .line 1291
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->clearFullSentence(J)I

    move-result v0

    return v0
.end method

.method protected create_native_context(Ljava/lang/String;)J
    .locals 2
    .param p1, "databaseConfigFile"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->create_context(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public cycleTone()Z
    .locals 2

    .prologue
    .line 497
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cycleTone(J)Z

    move-result v0

    return v0
.end method

.method public deleteOneKeyAndRefresh()Z
    .locals 2

    .prologue
    .line 473
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->deleteOneKeyAndRefresh(J)Z

    move-result v0

    return v0
.end method

.method protected destroy_native_context(J)V
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 289
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->destroy_context(J)V

    .line 290
    return-void
.end method

.method protected exportDlmAsEvents()Z
    .locals 1

    .prologue
    .line 1523
    const/4 v0, 0x0

    return v0
.end method

.method public finishSession()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 310
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 311
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 313
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 314
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->finish(J)V

    .line 316
    return-void
.end method

.method public getActivePrefixIndex()I
    .locals 2

    .prologue
    .line 1113
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex(J)I

    move-result v0

    return v0
.end method

.method public getActiveSuffixIndex()I
    .locals 2

    .prologue
    .line 1124
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActiveSuffixIndex(J)I

    move-result v0

    return v0
.end method

.method public getCandidates()Lcom/nuance/input/swypecorelib/Candidates;
    .locals 2

    .prologue
    .line 1533
    sget-object v0, Lcom/nuance/input/swypecorelib/Candidates$Source;->TRACE:Lcom/nuance/input/swypecorelib/Candidates$Source;

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCandidates(Lcom/nuance/input/swypecorelib/Candidates$Source;I)Lcom/nuance/input/swypecorelib/Candidates;

    move-result-object v0

    return-object v0
.end method

.method public getCharSpell(IIILjava/lang/StringBuffer;)I
    .locals 7
    .param p1, "baseChar"    # I
    .param p2, "altNum"    # I
    .param p3, "bGetTone"    # I
    .param p4, "spell"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1312
    const/16 v0, 0x14

    new-array v5, v0, [C

    .line 1313
    .local v5, "spellArray":[C
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getCharSpell(JIII[C)I

    move-result v6

    .line 1315
    .local v6, "status":I
    if-nez v6, :cond_0

    .line 1316
    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 1318
    :cond_0
    return v6
.end method

.method public getExactInputText(Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "spell"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x0

    .line 1217
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    .line 1218
    if-eqz v0, :cond_0

    .line 1235
    :goto_0
    return v2

    .line 1222
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1224
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpell(JI[C[II)Z

    move-result v7

    .line 1227
    .local v7, "success":Z
    if-eqz v7, :cond_2

    .line 1228
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v2

    if-ge v6, v0, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1228
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v6    # "i":I
    :cond_2
    move v2, v7

    .line 1235
    goto :goto_0
.end method

.method public getExactWord(Ljava/lang/StringBuffer;)I
    .locals 6
    .param p1, "exactWord"    # Ljava/lang/StringBuffer;

    .prologue
    .line 1554
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v4, v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v0

    .line 1555
    .local v0, "mode":I
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1556
    if-eqz v0, :cond_1

    const/4 v4, 0x1

    if-eq v4, v0, :cond_1

    .line 1557
    const/4 v1, -0x1

    .line 1568
    :cond_0
    :goto_0
    return v1

    .line 1561
    :cond_1
    const/16 v4, 0x70

    new-array v3, v4, [C

    .line 1562
    .local v3, "wordArray":[C
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v4, v5, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getExactWord(J[C)I

    move-result v1

    .line 1564
    .local v1, "status":I
    if-nez v1, :cond_0

    .line 1565
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .line 1566
    .local v2, "word":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getInlineString(Landroid/text/SpannableStringBuilder;)Z
    .locals 9
    .param p1, "inlineString"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v8, 0x0

    .line 529
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 531
    iget-wide v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v7, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v7, v7

    invoke-static {v4, v5, v3, v6, v7}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSelection(J[C[II)Z

    move-result v2

    .line 534
    .local v2, "success":Z
    if-eqz v2, :cond_2

    .line 535
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v3, v3, v8

    if-ge v1, v3, :cond_0

    .line 536
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 539
    :cond_0
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpellInternal(ILjava/lang/StringBuilder;)Z

    .line 541
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 542
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->componentToExternal(C)C

    move-result v0

    .line 543
    .local v0, "comp":C
    if-eqz v0, :cond_1

    .line 544
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 546
    :cond_1
    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 550
    .end local v0    # "comp":C
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method public getInputCoreCategory()I
    .locals 1

    .prologue
    .line 1515
    const/4 v0, 0x2

    return v0
.end method

.method public getKeyCount()I
    .locals 2

    .prologue
    .line 515
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getKeyCount(J)I

    move-result v0

    return v0
.end method

.method protected getKeyboardDatabaseCallback(II)[C
    .locals 1
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 1616
    invoke-super {p0, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyboardDatabaseCallback(II)[C

    move-result-object v0

    return-object v0
.end method

.method public getMoreWords(ZI)Ljava/util/List;
    .locals 6
    .param p1, "isExactKeyboardInputShowable"    # Z
    .param p2, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 884
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p2

    const/16 v5, 0x100

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 885
    .local v0, "getMax":I
    if-eqz p1, :cond_0

    .line 886
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p2

    const/16 v5, 0x101

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 889
    :cond_0
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 890
    const/4 v4, 0x0

    .line 902
    :goto_0
    return-object v4

    .line 892
    :cond_1
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 893
    move v3, v1

    .line 894
    .local v3, "wordIndex":I
    if-eqz p1, :cond_2

    .line 895
    add-int/lit8 v3, v1, -0x1

    .line 897
    :cond_2
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 898
    .local v2, "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-virtual {p0, v3, v4, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 899
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v4, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 892
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 902
    .end local v2    # "wdSource":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v3    # "wordIndex":I
    :cond_4
    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    goto :goto_0
.end method

.method public getPopupList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1485
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->addAllContextWord()V

    .line 1486
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupList:Ljava/util/List;

    return-object v0
.end method

.method public getPopupWordSourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPopupWdSourceList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .locals 1
    .param p1, "defaultPrefixIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActivePrefixIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 739
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->recyclePrefixPool()V

    .line 741
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixesInternal()Ljava/util/List;

    .line 743
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPrefixList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefixesCount()I
    .locals 2

    .prologue
    .line 773
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getPrefixCount(J)I

    move-result v0

    return v0
.end method

.method public getSuffixes(Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/List;
    .locals 1
    .param p1, "defaultSuffixIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getActiveSuffixIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 759
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->recycleSuffixPool()V

    .line 761
    invoke-direct {p0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffixesInternal()Ljava/util/List;

    .line 763
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSuffixList:Ljava/util/List;

    return-object v0
.end method

.method public getSuffixesCount()I
    .locals 2

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSuffixCount(J)I

    move-result v0

    return v0
.end method

.method public getTailDoublePinyinUnicode(Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 5
    .param p1, "unicode"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v4, 0x0

    .line 1005
    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1006
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    invoke-static {v2, v3, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getTailDoublePinyinUnicode(J[I)Z

    move-result v0

    .line 1009
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v4

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1013
    :cond_0
    return v0
.end method

.method public getWord(ILjava/lang/StringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 9
    .param p1, "index"    # I
    .param p2, "word"    # Ljava/lang/StringBuilder;
    .param p3, "wordSource"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v8, 0x0

    .line 710
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 711
    invoke-virtual {p3, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 713
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(JI[C[II[I)Z

    move-result v7

    .line 717
    .local v7, "success":Z
    if-eqz v7, :cond_0

    .line 718
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v8

    invoke-static {p2, v0, v8, v1}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CII)Ljava/lang/StringBuilder;

    .line 719
    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeComponents(Ljava/lang/StringBuilder;)V

    .line 720
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    aget v0, v0, v8

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 723
    :cond_0
    return v7
.end method

.method public getWord(ILjava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 11
    .param p1, "index"    # I
    .param p3, "wdSource"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "wordList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v10, 0x0

    .line 665
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    iget-object v6, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    move v2, p1

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getWord(JI[C[II[I)Z

    move-result v9

    .line 669
    .local v9, "success":Z
    if-eqz v9, :cond_1

    if-ltz p1, :cond_1

    const/16 v0, 0x100

    if-ge p1, v0, :cond_1

    .line 670
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 671
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v2, v2, v10

    invoke-virtual {v0, v1, v10, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 673
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v10

    if-lez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v10

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->componentToExternal(C)C

    move-result v8

    .line 675
    .local v8, "comp":C
    if-eqz v8, :cond_2

    .line 677
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0, v10, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 678
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    const v1, 0x9fff

    invoke-virtual {v0, v10, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 680
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 681
    .local v7, "bufferString":Ljava/lang/String;
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 682
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v10, v2}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CII)Ljava/lang/StringBuilder;

    .line 683
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeComponents(Ljava/lang/StringBuilder;)V

    .line 684
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v1, v1, p1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 692
    .end local v7    # "bufferString":Ljava/lang/String;
    .end local v8    # "comp":C
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchIntWordSource:[I

    aget v0, v0, v10

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 695
    :cond_1
    return v9

    .line 686
    .restart local v8    # "comp":C
    :cond_2
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 687
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v2, v2, v10

    invoke-static {v0, v1, v10, v2}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CII)Ljava/lang/StringBuilder;

    .line 688
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->normalizeComponents(Ljava/lang/StringBuilder;)V

    .line 689
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    aget-object v1, v1, p1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Ljava/util/concurrent/atomic/AtomicInteger;I)Ljava/util/List;
    .locals 2
    .param p1, "defaultWord"    # Landroid/text/SpannableStringBuilder;
    .param p2, "defaultWordIndex"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p3, "countToGet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 851
    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 853
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 854
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 856
    invoke-virtual {p0, v1, p3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getMoreWords(ZI)Ljava/util/List;

    .line 858
    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 860
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public getWordsSource()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mWdSourceList:Ljava/util/List;

    return-object v0
.end method

.method public hasBilingualPrefix()Z
    .locals 2

    .prologue
    .line 1594
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->hasBilingualPrefix(J)Z

    move-result v0

    return v0
.end method

.method protected initialize_native_core(J)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 1
    .param p1, "inputContext"    # J

    .prologue
    .line 284
    invoke-static {p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->initialize(J)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public isFullSentenceActive()Z
    .locals 2

    .prologue
    .line 1299
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isFullSentenceActive(J)Z

    move-result v0

    return v0
.end method

.method public isHasSegmentDelimiter()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1024
    const/4 v6, 0x0

    .line 1026
    .local v6, "hasDelimiter":Z
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v5, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getSpell(JI[C[II)Z

    move-result v0

    .line 1028
    if-eqz v0, :cond_1

    .line 1029
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v0, v0, v2

    if-ge v7, v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v7

    const/16 v1, 0x5f

    if-ne v0, v1, :cond_0

    .line 1031
    const/4 v6, 0x1

    .line 1029
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1036
    .end local v7    # "i":I
    :cond_1
    return v6
.end method

.method public isHasTraceInfo()Z
    .locals 2

    .prologue
    .line 442
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->isHasTraceInfo(J)Z

    move-result v0

    return v0
.end method

.method protected onDlmEvent([BIZ)V
    .locals 0
    .param p1, "event"    # [B
    .param p2, "len"    # I
    .param p3, "highPriority"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1611
    invoke-super {p0, p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->onDlmEvent([BIZ)V

    .line 1612
    return-void
.end method

.method public processKey(Landroid/graphics/Point;ILcom/nuance/input/swypecorelib/Shift$ShiftState;J)Z
    .locals 8
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "key"    # I
    .param p3, "shiftState"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;
    .param p4, "eventTime"    # J

    .prologue
    .line 416
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->getInputMode(J)I

    move-result v7

    .line 417
    .local v7, "mode":I
    const/4 v0, 0x3

    if-eq v0, v7, :cond_0

    if-eqz v7, :cond_0

    const/4 v0, 0x1

    if-ne v0, v7, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 420
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v6

    move-wide v4, p4

    invoke-static/range {v0 .. v6}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processTap(JIIJI)Z

    move-result v0

    .line 422
    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-direct {p0, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->cangjieToInternal(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v5

    move-wide v3, p4

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKey(JIJI)Z

    move-result v0

    goto :goto_0
.end method

.method public processKeyBySymbol(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKeyBySymbol(JI)Z

    move-result v0

    return v0
.end method

.method public processUpperLetterPress(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 361
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->processKeyBySymbol(JI)Z

    move-result v0

    return v0
.end method

.method protected registerDlmEventCallback()V
    .locals 0

    .prologue
    .line 1601
    return-void
.end method

.method public resetUserDictionary()Z
    .locals 2

    .prologue
    .line 649
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->resetUserDictionary(J)Z

    move-result v0

    return v0
.end method

.method public restoreWordSymbolInfo()V
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->restoreWordSymbolInfo(J)V

    .line 465
    return-void
.end method

.method public selectWord(ILjava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "index"    # I
    .param p2, "insertText"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v7, 0x0

    .line 572
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 574
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    array-length v5, v2

    move v2, p1

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->selectWord(JI[C[II)Z

    move-result v6

    .line 577
    .local v6, "success":Z
    if-eqz v6, :cond_0

    .line 578
    iget-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchBuffer:[C

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mScratchInt:[I

    aget v1, v1, v7

    invoke-static {p2, v0, v7, v1}, Lcom/nuance/input/swypecorelib/HKSCSConvertionUtil;->appendWithTransform(Ljava/lang/StringBuilder;[CII)Ljava/lang/StringBuilder;

    .line 581
    :cond_0
    return v6
.end method

.method public setActivePrefixIndex(I)Z
    .locals 2
    .param p1, "prefixIndex"    # I

    .prologue
    .line 1137
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActivePrefixIndex(JI)Z

    move-result v0

    return v0
.end method

.method public setActiveSuffixIndex(I)Z
    .locals 2
    .param p1, "suffixIndex"    # I

    .prologue
    .line 1151
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setActiveSuffixIndex(JI)Z

    move-result v0

    return v0
.end method

.method public setAttribute(II)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 344
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1, p2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(JII)Z

    move-result v0

    return v0
.end method

.method public setAttribute(IZ)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "value"    # Z

    .prologue
    .line 327
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setAttribute(JII)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBilingual(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1586
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setBilingual(JZ)Z

    .line 1587
    return-void
.end method

.method public setCategoryDb(IIZ)I
    .locals 4
    .param p1, "languageId"    # I
    .param p2, "categoryId"    # I
    .param p3, "isEnable"    # Z

    .prologue
    .line 1545
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, p1, p2, v0}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setCategoryDb(JIII)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCommonChar()I
    .locals 2

    .prologue
    .line 1267
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setCommonChar(J)I

    move-result v0

    return v0
.end method

.method public setContext(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "newContext"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 592
    if-nez p1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v0

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    .line 601
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    iget-object v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(J[CI)Z

    move-result v0

    goto :goto_0
.end method

.method public setContext(Ljava/lang/CharSequence;Z)Z
    .locals 2
    .param p1, "newContext"    # Ljava/lang/CharSequence;
    .param p2, "update"    # Z

    .prologue
    .line 615
    if-nez p1, :cond_0

    .line 616
    const/4 v0, 0x0

    .line 627
    :goto_0
    return v0

    .line 619
    :cond_0
    const/4 v0, 0x0

    .line 621
    .local v0, "result":Z
    if-eqz p2, :cond_1

    .line 622
    invoke-virtual {p0, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setContext(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 624
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    goto :goto_0
.end method

.method public setFullSentence()I
    .locals 2

    .prologue
    .line 1283
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setFullSentence(J)I

    move-result v0

    return v0
.end method

.method public setInputMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 399
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setInputMode(JI)Z

    move-result v0

    return v0
.end method

.method public setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 2
    .param p1, "langId"    # I

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setLanguage(JI)I

    move-result v0

    invoke-static {v0}, Lcom/nuance/input/swypecorelib/XT9Status;->from(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setShiftState(Lcom/nuance/input/swypecorelib/Shift$ShiftState;)V
    .locals 3
    .param p1, "shift"    # Lcom/nuance/input/swypecorelib/Shift$ShiftState;

    .prologue
    .line 352
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/Shift$ShiftState;->getIndex()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->setShiftState(JI)V

    .line 353
    return-void
.end method

.method public startSession()V
    .locals 4

    .prologue
    .line 297
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mTextContext:Ljava/lang/String;

    .line 298
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mGetStringBufferArray:[Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-wide v2, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->start(J)Z

    .line 302
    return-void
.end method

.method public udbAdd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "phrase"    # Ljava/lang/String;
    .param p2, "spell"    # Ljava/lang/String;

    .prologue
    .line 1170
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbAdd(J[CI[CI)Z

    move-result v0

    return v0
.end method

.method public udbCount()I
    .locals 2

    .prologue
    .line 1243
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbCount(J)I

    move-result v0

    return v0
.end method

.method public udbDelete(Ljava/lang/String;)Z
    .locals 4
    .param p1, "phrase"    # Ljava/lang/String;

    .prologue
    .line 1181
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbDelete(J[CI)Z

    move-result v0

    return v0
.end method

.method public udbGetNext(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 10
    .param p1, "index"    # I
    .param p2, "phrase"    # Ljava/lang/StringBuilder;
    .param p3, "spell"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v5, 0x70

    const/4 v9, 0x0

    .line 1194
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1195
    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1197
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    sget-object v3, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseBuffer:[C

    sget-object v4, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseLength:[I

    sget-object v6, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellBuffer:[C

    sget-object v7, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellLength:[I

    move v2, p1

    move v8, v5

    invoke-static/range {v0 .. v8}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbGetNext(JI[C[II[C[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseBuffer:[C

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mPhraseLength:[I

    aget v1, v1, v9

    invoke-virtual {p2, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1202
    sget-object v0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellBuffer:[C

    sget-object v1, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->mSpellLength:[I

    aget v1, v1, v9

    invoke-virtual {p3, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1203
    const/4 v0, 0x1

    .line 1206
    :goto_0
    return v0

    :cond_0
    move v0, v9

    goto :goto_0
.end method

.method public udbGetRemainingMemory()I
    .locals 2

    .prologue
    .line 1259
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbGetRemainingMemory(J)I

    move-result v0

    return v0
.end method

.method public udbGetSize()I
    .locals 2

    .prologue
    .line 1251
    iget-wide v0, p0, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->inputContext:J

    invoke-static {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->udbGetSize(J)I

    move-result v0

    return v0
.end method

.method protected unregisterDlmEventCallback()V
    .locals 0

    .prologue
    .line 1606
    return-void
.end method
