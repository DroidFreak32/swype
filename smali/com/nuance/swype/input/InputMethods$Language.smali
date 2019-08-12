.class public Lcom/nuance/swype/input/InputMethods$Language;
.super Ljava/lang/Object;
.source "InputMethods.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nuance/swype/input/InputMethods$Language;",
        ">;"
    }
.end annotation


# static fields
.field public static final AUTO_CORRECT:Ljava/lang/String; = "auto_correction"

.field public static final CHINESE_HONGKONG_LANGUAGEID:I = 0xe2

.field private static final CHINESE_HONGKONG_LANGUAGE_ABBR:Ljava/lang/String; = "HK"

.field public static final CHINESE_SIMP_LANGUAGEID:I = 0xe1

.field private static final CHINESE_SIMP_LANGUAGE_ABBR:Ljava/lang/String; = "CN"

.field public static final CHINESE_SINGAPORE_LANGUAGEID:I = 0xe3

.field public static final CHINESE_TRAD_LANGUAGEID:I = 0xe0

.field private static final CHINESE_TRAD_LANGUAGE_ABBR:Ljava/lang/String; = "TW"

.field public static final CORRECTION_LEVEL:Ljava/lang/String; = "correction_level"

.field public static final ENGLISH_LANGUAGEID:I = 0x109

.field public static final GERMAN_LANGUAGEID:I = 0x107

.field public static final JAPANESE_LANGUAGEID:I = 0x111

.field public static final KOREAN_CJI_LANGUAGEID:I = 0x712

.field public static final KOREAN_LANGUAGEID:I = 0x112

.field public static final LANG_ENCODING:I = 0x7

.field public static final LANG_INDEX_ANDROID_LANG_ID:I = 0x2

.field public static final LANG_INDEX_ENGLISH_NAME:I = 0x8

.field public static final LANG_INDEX_ISO_2LETTER_CODE:I = 0x0

.field public static final LANG_INDEX_ISO_FULL_CODE:I = 0x1

.field public static final LANG_INDEX_NATIVE_NAME:I = 0x9

.field public static final LANG_INDEX_XT9_LANG_ID:I = 0x3

.field public static final LANG_SUPPORT_AUTO_SPACE:I = 0x5

.field public static final LANG_SUPPORT_CAPS:I = 0x4

.field public static final LANG_TERM_PUNC:I = 0x6

.field public static final NEXT_WORD_PREDICTION:Ljava/lang/String; = "next_word_prediction"

.field private static final SPEECH:Ljava/lang/String; = "nmsp_speech"

.field public static final THAI_LANGUAGEID:I = 0x11e

.field private static final TRACE:Ljava/lang/String; = "trace"

.field public static final TRACE_AUTO_ACCEPT:Ljava/lang/String; = "trace_auto_accept"

.field public static final VIETNAMESE_LANGUAGEID:I = 0x12a

.field private static final WORD_COMPLETION:Ljava/lang/String; = "word_completion"


# instance fields
.field public final currencyType:I

.field public defaultGlobalInputMode:Ljava/lang/String;

.field private final dictionaryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final displayModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation
.end field

.field public final locale:Ljava/util/Locale;

.field public final mCoreLanguageId:I

.field private mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

.field private mDefaultEnabled:Z

.field public mDefaultInputMode:Ljava/lang/String;

.field private final mEnabledPrefKey:Ljava/lang/String;

.field private final mEnabledTrace:Z

.field public final mEncoding:Ljava/lang/String;

.field public final mEnglishName:Ljava/lang/String;

.field private final mInputModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsTraceFeatureSupport:Z

.field public final mLangRegionCode:Ljava/lang/String;

.field public final mLanguageAbbr:Ljava/lang/String;

.field private final mLanguageId:Ljava/lang/String;

.field public final mNativeLanguageName:Ljava/lang/String;

.field private mParent:Lcom/nuance/swype/input/InputMethods;

.field public final mSupportsAutoSpace:Z

.field public final mSupportsCaps:Z

.field private mSupportsHwr:Z

.field private mTermPunc:Ljava/lang/CharSequence;

.field private subtype:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods;Landroid/content/res/XmlResourceParser;Ljava/util/Map;)V
    .locals 18
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lcom/nuance/swype/input/InputMethods;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1273
    .local p4, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    .line 1260
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    .line 1270
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    .line 1274
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    .line 1275
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    sget-object v14, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1277
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/nuance/swype/input/R$styleable;->XT9_defaultInputMode:I

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1278
    sget v13, Lcom/nuance/swype/input/R$styleable;->XT9_defaultGlobalInputMode:I

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->defaultGlobalInputMode:Ljava/lang/String;

    .line 1279
    sget v13, Lcom/nuance/swype/input/R$styleable;->XT9_currencyType:I

    sget-object v14, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_EURO:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    iget v14, v14, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->value:I

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 1281
    sget v13, Lcom/nuance/swype/input/R$styleable;->XT9_language:I

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 1282
    .local v10, "langValues":[Ljava/lang/CharSequence;
    const/4 v13, 0x3

    aget-object v13, v10, v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 1284
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    .line 1285
    const/16 v13, 0x9

    aget-object v13, v10, v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    .line 1287
    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageAbbr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1288
    .local v7, "langAbbr":Ljava/lang/String;
    const/16 v13, 0x8

    aget-object v13, v10, v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 1289
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    .line 1290
    const/4 v13, 0x4

    aget-object v13, v10, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/input/InputMethods$Language;->parseBool(Ljava/lang/CharSequence;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    .line 1291
    const/4 v13, 0x5

    aget-object v13, v10, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nuance/swype/input/InputMethods$Language;->parseBool(Ljava/lang/CharSequence;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    .line 1292
    const/4 v13, 0x7

    aget-object v13, v10, v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    .line 1293
    const/4 v13, 0x6

    aget-object v13, v10, v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mTermPunc:Ljava/lang/CharSequence;

    .line 1294
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v13

    const-string v14, "Language() creation of object for english name: "

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    const-string v16, " coreLanguageId:"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v13 .. v17}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1298
    .local v11, "parts":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1299
    .local v12, "region":Ljava/lang/String;
    array-length v13, v11

    const/4 v14, 0x1

    if-le v13, v14, :cond_9

    .line 1300
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    .line 1301
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_8

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 1303
    const-string v13, "GB"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1304
    const-string v12, "UK"

    .line 1314
    :cond_0
    :goto_0
    if-eqz v12, :cond_1

    .line 1315
    const-string v13, "%s(%s)"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1318
    :cond_1
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    .line 1320
    sget v13, Lcom/nuance/swype/input/R$styleable;->XT9_enabled:I

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultEnabled:Z

    .line 1321
    sget v13, Lcom/nuance/swype/input/R$styleable;->XT9_TraceFeatureSupport:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iget-boolean v14, v14, Lcom/nuance/swype/input/InputMethods;->mT9TraceBuildEnabled:Z

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    .line 1323
    sget v13, Lcom/nuance/swype/input/R$styleable;->XT9_enableTrace:I

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    .line 1324
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v13}, Lcom/nuance/swype/input/LanguageList;->composeLanguageEnabledSPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    .line 1327
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1329
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nuance/swype/input/BuildInfo;->getHandwritingType()Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v5

    .line 1331
    .local v5, "hwType":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    sget-object v13, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->NONE:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    if-ne v5, v13, :cond_a

    .line 1332
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1336
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    if-eqz v13, :cond_5

    .line 1337
    const/4 v4, 0x0

    .line 1338
    .local v4, "hasHDB":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    .line 1339
    .local v9, "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v9, :cond_4

    .line 1340
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1341
    invoke-virtual {v13}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1342
    const/4 v4, 0x1

    .line 1348
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    if-nez v4, :cond_5

    .line 1349
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1353
    .end local v4    # "hasHDB":Z
    .end local v9    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    .line 1354
    .restart local v9    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v9, :cond_b

    .line 1355
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1356
    .local v8, "langDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v8}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v13

    if-nez v13, :cond_7

    invoke-virtual {v8}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1357
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    invoke-virtual {v8}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1307
    .end local v5    # "hwType":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "langDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v9    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1309
    :cond_9
    const-string v13, "PT"

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1311
    const-string v12, "BR"

    goto/16 :goto_0

    .line 1333
    .restart local v5    # "hwType":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    :cond_a
    sget-object v13, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->CJK_ONLY:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    if-ne v5, v13, :cond_2

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    goto/16 :goto_1

    .line 1362
    .restart local v9    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_b
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1363
    .local v3, "androidQualifier":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 1364
    invoke-static {v3}, Lcom/nuance/swype/util/LocalizationUtils;->forAndroidQualifier(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 1369
    :goto_3
    return-void

    .line 1366
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    invoke-static {v13}, Lcom/nuance/swype/util/LocalizationUtils;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    goto :goto_3
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 7
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1405
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    iget-object v5, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v6, p1, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/InputMethods$Language;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 1407
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1408
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1409
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "displayAbbr"    # Ljava/lang/String;
    .param p5, "englishName"    # Ljava/lang/String;
    .param p6, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    .line 1270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    .line 1381
    iput-object p2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    .line 1382
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    iput v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 1383
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    .line 1384
    iput-object p3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    .line 1385
    iput-object p4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    .line 1386
    iput-object p5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 1387
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    .line 1388
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    .line 1389
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    .line 1390
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    .line 1391
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultEnabled:Z

    .line 1392
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    .line 1393
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    .line 1394
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    .line 1395
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1396
    iput-object p6, p0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 1397
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    iput v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 1398
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1087
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    return-object p1
.end method

.method private createSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1486
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->createLocale()Ljava/util/Locale;

    move-result-object v8

    .line 1487
    .local v8, "loc":Ljava/util/Locale;
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0, v8}, Lcom/nuance/swype/input/InputMethods$Language;->getSubtypeResId(Ljava/util/Locale;)I

    move-result v1

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "keyboard"

    const-string v5, ""

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "langRegionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1507
    const-string v0, ""

    .line 1509
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move-object v1, v0

    .line 1530
    .end local v0    # "countryCode":Ljava/lang/String;
    .local v1, "countryCode":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1513
    .end local v1    # "countryCode":Ljava/lang/String;
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_1
    const-string v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1514
    .local v2, "two":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1515
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1516
    aget-object v0, v2, v5

    .line 1524
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1525
    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1526
    const-string v0, "us"

    :cond_3
    move-object v1, v0

    .line 1530
    .end local v0    # "countryCode":Ljava/lang/String;
    .restart local v1    # "countryCode":Ljava/lang/String;
    goto :goto_0

    .line 1517
    .end local v1    # "countryCode":Ljava/lang/String;
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_4
    array-length v3, v2

    if-ne v3, v5, :cond_2

    const-string v3, "en"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1519
    const-string v0, "us"

    goto :goto_1
.end method

.method private getDefaultBoolean(I)Z
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1821
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private getLanguageAbbr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "languageAbbr"    # Ljava/lang/String;

    .prologue
    .line 1535
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    .line 1536
    const-string p1, "TW"

    .line 1542
    .end local p1    # "languageAbbr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 1537
    .restart local p1    # "languageAbbr":Ljava/lang/String;
    :cond_1
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_2

    .line 1538
    const-string p1, "CN"

    goto :goto_0

    .line 1539
    :cond_2
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0xe2

    if-ne v0, v1, :cond_0

    .line 1540
    const-string p1, "HK"

    goto :goto_0
.end method

.method private getSubtypeResId(Ljava/util/Locale;)I
    .locals 5
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 1479
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string/ime_subtype_"

    sget v0, Lcom/nuance/swype/input/R$string;->ime_subtype:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isAlphabetic(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1146
    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe2

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x111

    if-eq p0, v0, :cond_0

    const/16 v0, 0x112

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCJK(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1193
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseLanguage(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1169
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseSimplified(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1159
    const/16 v0, 0xe1

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseTraditional(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1164
    const/16 v0, 0xe0

    if-eq p0, v0, :cond_0

    const/16 v0, 0xe2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnglishLanguage(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1181
    const/16 v0, 0x109

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJapaneseLanguage(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1173
    const/16 v0, 0x111

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKoreanCompatible(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .locals 1
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1956
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isEnglishLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKoreanLanguage(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1177
    const/16 v0, 0x112

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isThaiLanguage(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1185
    const/16 v0, 0x11e

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVietnameseLanguage(I)Z
    .locals 1
    .param p0, "languageId"    # I

    .prologue
    .line 1189
    const/16 v0, 0x12a

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseBool(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1905
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1906
    const/4 v0, 0x0

    .line 1908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addInputMode(Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .locals 1
    .param p1, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1699
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1700
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1701
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1702
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1704
    :cond_0
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1709
    :cond_1
    return-void
.end method

.method public compareTo(Lcom/nuance/swype/input/InputMethods$Language;)I
    .locals 2
    .param p1, "another"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1087
    check-cast p1, Lcom/nuance/swype/input/InputMethods$Language;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->compareTo(Lcom/nuance/swype/input/InputMethods$Language;)I

    move-result v0

    return v0
.end method

.method public createLocale()Ljava/util/Locale;
    .locals 3

    .prologue
    .line 1446
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1448
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1449
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "zh"

    :goto_0
    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    .local v1, "loc":Ljava/util/Locale;
    :goto_1
    return-object v1

    .line 1449
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    goto :goto_0

    .line 1452
    :cond_1
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "zh"

    :goto_2
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v1    # "loc":Ljava/util/Locale;
    goto :goto_1

    .end local v1    # "loc":Ljava/util/Locale;
    :cond_2
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    goto :goto_2
.end method

.method public enableTrace(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1859
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1860
    return-void
.end method

.method public enableTraceAutoAccept(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1875
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1876
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1717
    instance-of v0, p1, Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/nuance/swype/input/InputMethods$Language;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;)Z
    .locals 1
    .param p1, "langId"    # Ljava/lang/String;

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllInputModes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1564
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAmbigousInputModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1551
    .local v0, "ambigousModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1552
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v3, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "multitap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1555
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1559
    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_1
    return-object v0
.end method

.method public getAutoCorrectPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1812
    const-string v0, "auto_correction"

    return-object v0
.end method

.method public getChineseInputModes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1571
    .local v0, "ambigousModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iget-object v4, v4, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v1

    .line 1573
    .local v1, "handwritingEnabled":Z
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1574
    .local v3, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "zhuyin_nine_keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "zhuyin_qwerty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_1

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "handwriting_full_screen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    if-eqz v1, :cond_2

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "handwriting_half_screen"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "cangjie_nine_keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "cangjie_qwerty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "pinyin_nine_keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "pinyin_qwerty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "quick_cangjie_nine_keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "quick_cangjie_qwerty"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "stroke"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v5, "doublepinyin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1586
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1590
    .end local v3    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_4
    return-object v0
.end method

.method public getChineseKoreanInputModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1605
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getKoreanInputModes()Ljava/util/List;

    move-result-object v0

    .line 1610
    :goto_0
    return-object v0

    .line 1607
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1608
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 1610
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoreLanguageId()I
    .locals 1

    .prologue
    .line 1420
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    return v0
.end method

.method public getCorrectionLevel()I
    .locals 3

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string v1, "correction_level"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 6

    .prologue
    .line 1637
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1638
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1657
    :goto_0
    return-object v4

    .line 1640
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1642
    .local v2, "sp":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-static {v2, v4, v5}, Lcom/nuance/swype/input/InputMethods;->access$700(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 1643
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-nez v1, :cond_1

    .line 1644
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 1646
    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1647
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1648
    .local v3, "swapInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1649
    move-object v1, v3

    .line 1653
    .end local v3    # "swapInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_3
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-static {v2, v4, v1}, Lcom/nuance/swype/input/InputMethods;->access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    .line 1656
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1657
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    goto :goto_0
.end method

.method public getCurrentInputModeNoHandwriting()Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 4

    .prologue
    .line 1661
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1663
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/InputMethods;->access$900(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1664
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-nez v0, :cond_0

    .line 1665
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1667
    :cond_0
    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1668
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    return-object v2
.end method

.method public getDictionaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayModes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1626
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1627
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v0

    .line 1629
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    goto :goto_0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iget-boolean v0, v0, Lcom/nuance/swype/input/InputMethods;->showNativeNameForDisplay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getLocalizedDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method public getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 4

    .prologue
    .line 1614
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1615
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v3, "handwriting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1622
    .end local v1    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIETFLanguageTag()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1922
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 1924
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1927
    .end local v0    # "parts":[Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 3
    .param p1, "inputModeName"    # Ljava/lang/String;

    .prologue
    .line 1685
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1686
    .local v1, "m":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1690
    .end local v1    # "m":Lcom/nuance/swype/input/InputMethods$InputMode;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKoreanInputModes()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$InputMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1594
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    .local v2, "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1596
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v3, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v4, "multitap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1597
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1601
    .end local v1    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_1
    return-object v2
.end method

.method public getLanguageAbbreviation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocalizedDisplayName()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1469
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public getSpeechEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1863
    const-string v0, "nmsp_speech"

    return-object v0
.end method

.method public getSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->subtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_0

    .line 1495
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$Language;->createSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->subtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->subtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public getTerminalPunctuation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mTermPunc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1867
    const-string v0, "trace_auto_accept"

    return-object v0
.end method

.method public getTraceEnabledPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1851
    const-string v0, "trace"

    return-object v0
.end method

.method public getWordCompletionPoint()I
    .locals 3

    .prologue
    .line 1840
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWordCompletionPrefKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1830
    const-string v0, "word_completion"

    return-object v0
.end method

.method public hasCompatibleLanguage(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1960
    .local p1, "languages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 1961
    .local v1, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1962
    const/4 v2, 0x1

    .line 1965
    .end local v1    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1730
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAutoCorrectEnabled()Z
    .locals 3

    .prologue
    .line 1816
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getAutoCorrectPrefKey()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$bool;->auto_correction_default:I

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getDefaultBoolean(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isAutoSpaceSupported()Z
    .locals 1

    .prologue
    .line 1901
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    return v0
.end method

.method public isCJ()Z
    .locals 1

    .prologue
    .line 1229
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCJK()Z
    .locals 1

    .prologue
    .line 1217
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCK()Z
    .locals 1

    .prologue
    .line 1225
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCapitalizationSupported()Z
    .locals 1

    .prologue
    .line 1893
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    return v0
.end method

.method public isChineseLanguage()Z
    .locals 1

    .prologue
    .line 1198
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isChineseSimplified()Z
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    return v0
.end method

.method public isChineseTraditional()Z
    .locals 1

    .prologue
    .line 1206
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    return v0
.end method

.method public isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .locals 2
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1950
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanCompatible(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoreLanguage()Z
    .locals 1

    .prologue
    .line 1725
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1681
    const/4 v0, 0x1

    return v0
.end method

.method public isEnglishLanguage()Z
    .locals 1

    .prologue
    .line 1233
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isEnglishLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isGermanLanguage()Z
    .locals 2

    .prologue
    .line 1155
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0x107

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGestureTipSupported()Z
    .locals 2

    .prologue
    .line 1940
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "pinyin_qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v1, "doublepinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isJK()Z
    .locals 1

    .prologue
    .line 1221
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isJapaneseHandwritingSupport()Z
    .locals 1

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->access$600(Lcom/nuance/swype/input/InputMethods;)Z

    move-result v0

    return v0
.end method

.method public isJapaneseLanguage()Z
    .locals 1

    .prologue
    .line 1210
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isKoreanLanguage()Z
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isLatinLanguage()Z
    .locals 2

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    const-string v1, "Latin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRecaptureEnabled()Z
    .locals 1

    .prologue
    .line 1808
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeechFeatureEnabled()Z
    .locals 1

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->access$500(Lcom/nuance/swype/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThaiLanguage()Z
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isTraceAutoAcceptEnabled()Z
    .locals 3

    .prologue
    .line 1871
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getTraceAutoAcceptEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 3

    .prologue
    .line 1855
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isTraceFeatureSupport()Z
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iget-boolean v0, v0, Lcom/nuance/swype/input/InputMethods;->mT9TraceBuildEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVietnameseLanguage()Z
    .locals 1

    .prologue
    .line 1241
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isVietnameseLanguage(I)Z

    move-result v0

    return v0
.end method

.method public matches(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 3
    .param p1, "other"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 1503
    .local v0, "st":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected saveAsCurrent()V
    .locals 2

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/InputMethods;->access$1000(Landroid/content/Context;Ljava/lang/String;)V

    .line 1673
    return-void
.end method

.method protected setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1677
    return-void
.end method

.method protected setInputMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 1734
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1735
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_0

    .line 1736
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1738
    :cond_0
    return-void
.end method

.method public setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;
    .locals 8
    .param p1, "input"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    const/4 v7, -0x1

    .line 1969
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1970
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1971
    .local v0, "coreId":I
    if-eq v0, v7, :cond_1

    .line 1972
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setLanguage...deprecated languge id.."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1973
    invoke-virtual {p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v3

    .line 2000
    .end local v0    # "coreId":I
    :cond_0
    :goto_0
    return-object v3

    .line 1977
    :cond_1
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setLanguage...core languge id.."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 1979
    iget v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {p1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(I)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v3

    .line 1981
    .local v3, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1982
    .local v1, "deprecatedLanguageId":I
    if-eq v1, v7, :cond_0

    .line 1983
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dlm.already.swap."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1985
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1986
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "swap dlm language from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 1988
    iget v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {p1, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmSwapLanguage(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1989
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const-string v5, "backup dlm"

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 1995
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public setWordCompletionPoint(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 1847
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getWordCompletionPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/UserPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    return-void
.end method

.method public supportsHwr()Z
    .locals 1

    .prologue
    .line 1437
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    return v0
.end method

.method public switchToHandwritingModeCJK()Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1762
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1763
    .local v2, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    move-object v3, v2

    .line 1765
    .local v3, "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1766
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1767
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 1768
    .local v0, "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1769
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1770
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .end local v0    # "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    :cond_0
    :goto_0
    move-object v4, v3

    .line 1804
    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .local v4, "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :goto_1
    return-object v4

    .line 1773
    .end local v4    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 1774
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_0

    .line 1776
    :cond_2
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1777
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v4, v3

    .line 1779
    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v4    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    goto :goto_1

    .line 1781
    .end local v4    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_3
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 1782
    .local v1, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fullscreen.enabled."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultFullscreenHandwriting()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1785
    if-eqz v5, :cond_4

    .line 1786
    iget-object v5, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    const-string v6, "handwriting_full_screen"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 1790
    :goto_2
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_0

    .line 1788
    :cond_4
    iget-object v5, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    const-string v6, "handwriting_half_screen"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    goto :goto_2

    .line 1791
    .end local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1792
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1793
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 1794
    .restart local v0    # "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1795
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1796
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_0

    .line 1799
    .end local v0    # "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 1800
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method public toggleHandwritingAndInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 6

    .prologue
    .line 1742
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1743
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1746
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/InputMethods;->access$900(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1747
    .local v2, "savedMode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 1755
    .end local v2    # "savedMode":Ljava/lang/String;
    .local v1, "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :goto_0
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1757
    return-object v1

    .line 1748
    .end local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1749
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .restart local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    goto :goto_0

    .line 1752
    .end local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_1
    move-object v1, v0

    .restart local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    goto :goto_0
.end method

.method public usesLanguage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
