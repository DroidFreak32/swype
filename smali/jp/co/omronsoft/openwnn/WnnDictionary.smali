.class public interface abstract Ljp/co/omronsoft/openwnn/WnnDictionary;
.super Ljava/lang/Object;
.source "WnnDictionary.java"


# static fields
.field public static final APPROX_PATTERN_EN_QWERTY_NEAR:I = 0x2

.field public static final APPROX_PATTERN_EN_QWERTY_NEAR_UPPER:I = 0x3

.field public static final APPROX_PATTERN_EN_TOLOWER:I = 0x1

.field public static final APPROX_PATTERN_EN_TOUPPER:I = 0x0

.field public static final APPROX_PATTERN_JAJP_12KEY_NORMAL:I = 0x4

.field public static final INDEX_LEARN_DICTIONARY:I = -0x2

.field public static final INDEX_USER_DICTIONARY:I = -0x1

.field public static final ORDER_BY_FREQUENCY:I = 0x0

.field public static final ORDER_BY_KEY:I = 0x1

.field public static final POS_TYPE_BUNTOU:I = 0x3

.field public static final POS_TYPE_CHIMEI:I = 0x8

.field public static final POS_TYPE_JINMEI:I = 0x7

.field public static final POS_TYPE_KIGOU:I = 0x9

.field public static final POS_TYPE_MEISI:I = 0x6

.field public static final POS_TYPE_SUUJI:I = 0x5

.field public static final POS_TYPE_TANKANJI:I = 0x4

.field public static final POS_TYPE_V1:I = 0x0

.field public static final POS_TYPE_V2:I = 0x1

.field public static final POS_TYPE_V3:I = 0x2

.field public static final SEARCH_EXACT:I = 0x0

.field public static final SEARCH_LINK:I = 0x2

.field public static final SEARCH_PREFIX:I = 0x1


# virtual methods
.method public abstract addWordToUserDictionary(Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract addWordToUserDictionary([Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract clearApproxPattern()V
.end method

.method public abstract clearDictionary()I
.end method

.method public abstract clearLearnDictionary()I
.end method

.method public abstract clearUserDictionary()I
.end method

.method public abstract getConnectMatrix()[[B
.end method

.method public abstract getNextWord()Ljp/co/omronsoft/openwnn/WnnWord;
.end method

.method public abstract getNextWord(I)Ljp/co/omronsoft/openwnn/WnnWord;
.end method

.method public abstract getPOS(I)Ljp/co/omronsoft/openwnn/WnnPOS;
.end method

.method public abstract getUserDictionaryWords()[Ljp/co/omronsoft/openwnn/WnnWord;
.end method

.method public abstract isActive()Z
.end method

.method public abstract learnWord(Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract learnWord(Ljp/co/omronsoft/openwnn/WnnWord;Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract removeWordFromUserDictionary(Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract removeWordFromUserDictionary([Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract searchWord(IILjava/lang/String;)I
.end method

.method public abstract searchWord(IILjava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;)I
.end method

.method public abstract setApproxPattern(I)I
.end method

.method public abstract setApproxPattern(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setDictionary(III)I
.end method

.method public abstract setInUseState(Z)Z
.end method
