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

.field static final BURMESE_LANGUAGEID:I = 0x16e

.field static final BURMESE_ZAWGYI_LANGUAGEID:I = 0x1c4

.field public static final CHINESE_HONGKONG_LANGUAGEID:I = 0xe2

.field private static final CHINESE_HONGKONG_LANGUAGE_ABBR:Ljava/lang/String; = "HK"

.field public static final CHINESE_SIMP_LANGUAGEID:I = 0xe1

.field private static final CHINESE_SIMP_LANGUAGE_ABBR:Ljava/lang/String; = "CN"

.field static final CHINESE_SINGAPORE_LANGUAGEID:I = 0xe3

.field public static final CHINESE_TRAD_LANGUAGEID:I = 0xe0

.field private static final CHINESE_TRAD_LANGUAGE_ABBR:Ljava/lang/String; = "TW"

.field public static final CORRECTION_LEVEL:Ljava/lang/String; = "correction_level"

.field public static final ENGLISH_LANGUAGEID:I = 0x109

.field static final GERMAN_LANGUAGEID:I = 0x107

.field static final HEBREW_LANGUAGEID:I = 0x10d

.field static final HINGLISH_LANGUAGEID:I = 0x1d0

.field static final JAPANESE_KANA_LANGUAGEID:I = 0x511

.field static final JAPANESE_ROMAJI_LANGUAGEID:I = 0x111

.field static final KHMER_LANGUAGEID:I = 0x12c

.field public static final KOREAN_CJI_LANGUAGEID:I = 0x712

.field static final KOREAN_LANGUAGEID:I = 0x112

.field static final LANG_ENCODING:I = 0x7

.field static final LANG_INDEX_ANDROID_LANG_ID:I = 0x2

.field static final LANG_INDEX_ENGLISH_NAME:I = 0x8

.field static final LANG_INDEX_ISO_2LETTER_CODE:I = 0x0

.field static final LANG_INDEX_ISO_FULL_CODE:I = 0x1

.field static final LANG_INDEX_NATIVE_NAME:I = 0x9

.field static final LANG_INDEX_XT9_LANG_ID:I = 0x3

.field static final LANG_SUPPORT_AUTO_SPACE:I = 0x5

.field static final LANG_SUPPORT_CAPS:I = 0x4

.field static final LANG_TERM_PUNC:I = 0x6

.field static final LAO_LANGUAGEID:I = 0x12b

.field public static final NEXT_WORD_PREDICTION:Ljava/lang/String; = "next_word_prediction"

.field private static final SPEECH:Ljava/lang/String; = "nmsp_speech"

.field static final THAI_LANGUAGEID:I = 0x11e

.field static final TIBETAN_LANGUAGEID:I = 0x14c

.field private static final TRACE:Ljava/lang/String; = "trace"

.field public static final TRACE_AUTO_ACCEPT:Ljava/lang/String; = "trace_auto_accept"

.field static final VIETNAMESE_LANGUAGEID:I = 0x12a

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

.field final mEncoding:Ljava/lang/String;

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

.field final mLangRegionCode:Ljava/lang/String;

.field public final mLanguageAbbr:Ljava/lang/String;

.field private final mLanguageId:Ljava/lang/String;

.field public final mNativeLanguageName:Ljava/lang/String;

.field private mParent:Lcom/nuance/swype/input/InputMethods;

.field final mSupportsAutoSpace:Z

.field final mSupportsCaps:Z

.field private mSupportsHwr:Z

.field private mTermPunc:Ljava/lang/CharSequence;

.field private subtype:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods;Landroid/content/res/XmlResourceParser;Ljava/util/Map;)V
    .registers 20
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
    .line 1176
    .local p4, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    .line 1163
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    .line 1173
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    .line 1177
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    .line 1178
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    sget-object v12, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1180
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v11, Lcom/nuance/swype/input/R$styleable;->XT9_defaultInputMode:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1181
    sget v11, Lcom/nuance/swype/input/R$styleable;->XT9_defaultGlobalInputMode:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->defaultGlobalInputMode:Ljava/lang/String;

    .line 1182
    sget v11, Lcom/nuance/swype/input/R$styleable;->XT9_currencyType:I

    sget-object v12, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->CURRENCY_EURO:Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;

    iget v12, v12, Lcom/nuance/swype/input/KeyboardEx$KeyboardSettings;->value:I

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 1184
    sget v11, Lcom/nuance/swype/input/R$styleable;->XT9_language:I

    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v8

    .line 1185
    .local v8, "langValues":[Ljava/lang/CharSequence;
    const/4 v11, 0x3

    aget-object v11, v8, v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 1187
    iget v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    .line 1188
    const/16 v11, 0x9

    aget-object v11, v8, v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    .line 1190
    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageAbbr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1191
    .local v5, "langAbbr":Ljava/lang/String;
    const/16 v11, 0x8

    aget-object v11, v8, v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 1192
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    .line 1193
    const/4 v11, 0x4

    aget-object v11, v8, v11

    invoke-direct {p0, v11}, Lcom/nuance/swype/input/InputMethods$Language;->parseBool(Ljava/lang/CharSequence;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    .line 1194
    const/4 v11, 0x5

    aget-object v11, v8, v11

    invoke-direct {p0, v11}, Lcom/nuance/swype/input/InputMethods$Language;->parseBool(Ljava/lang/CharSequence;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    .line 1195
    const/4 v11, 0x7

    aget-object v11, v8, v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    .line 1196
    const/4 v11, 0x6

    aget-object v11, v8, v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mTermPunc:Ljava/lang/CharSequence;

    .line 1197
    # getter for: Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "Language() creation of object for english name: "

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, " coreLanguageId:"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget v14, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-interface {v11, v12}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1200
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    const-string/jumbo v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1201
    .local v9, "parts":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 1203
    .local v10, "region":Ljava/lang/String;
    array-length v11, v9

    const/4 v12, 0x1

    if-le v11, v12, :cond_e4

    .line 1204
    const/4 v11, 0x1

    aget-object v11, v9, v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    .line 1206
    :cond_e4
    if-eqz v10, :cond_114

    iget v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v12, 0xe1

    if-eq v11, v12, :cond_114

    iget v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v12, 0xe0

    if-eq v11, v12, :cond_114

    iget v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v12, 0xe2

    if-eq v11, v12, :cond_114

    .line 1210
    const-string/jumbo v11, "GB"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 1211
    const-string/jumbo v10, "UK"

    .line 1213
    :cond_104
    const-string/jumbo v11, "%s(%s)"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1216
    :cond_114
    iput-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    .line 1218
    sget v11, Lcom/nuance/swype/input/R$styleable;->XT9_enabled:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultEnabled:Z

    .line 1219
    sget v11, Lcom/nuance/swype/input/R$styleable;->XT9_TraceFeatureSupport:I

    iget-object v12, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    .line 1220
    # getter for: Lcom/nuance/swype/input/InputMethods;->mT9TraceBuildEnabled:Z
    invoke-static {v12}, Lcom/nuance/swype/input/InputMethods;->access$500(Lcom/nuance/swype/input/InputMethods;)Z

    move-result v12

    .line 1219
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    .line 1221
    sget v11, Lcom/nuance/swype/input/R$styleable;->XT9_enableTrace:I

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    .line 1222
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1224
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v11}, Lcom/nuance/swype/input/LanguageList;->composeLanguageEnabledSPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    .line 1225
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1227
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    .line 1228
    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getBuildInfo()Lcom/nuance/swype/input/BuildInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/BuildInfo;->getHandwritingType()Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    move-result-object v4

    .line 1229
    .local v4, "hwType":Lcom/nuance/swype/input/BuildInfo$HandwritingType;
    sget-object v11, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->NONE:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    if-ne v4, v11, :cond_1ba

    .line 1230
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1234
    :cond_15b
    :goto_15b
    iget-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    if-eqz v11, :cond_188

    .line 1235
    const/4 v3, 0x0

    .line 1236
    .local v3, "hasHDB":Z
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 1237
    .local v7, "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v7, :cond_183

    .line 1238
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_170
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_183

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1239
    invoke-virtual {v11}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isHDB()Z

    move-result v11

    if-eqz v11, :cond_170

    .line 1240
    const/4 v3, 0x1

    .line 1246
    :cond_183
    if-nez v3, :cond_188

    .line 1247
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1251
    .end local v3    # "hasHDB":Z
    .end local v7    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_188
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 1252
    .restart local v7    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    if-eqz v7, :cond_1c5

    .line 1253
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_198
    :goto_198
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;

    .line 1254
    .local v6, "langDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    invoke-virtual {v6}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isALMLDB()Z

    move-result v12

    if-nez v12, :cond_1b0

    invoke-virtual {v6}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->isLDB()Z

    move-result v12

    if-eqz v12, :cond_198

    .line 1255
    :cond_1b0
    iget-object v12, p0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    invoke-virtual {v6}, Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_198

    .line 1231
    .end local v6    # "langDb":Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;
    .end local v7    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_1ba
    sget-object v11, Lcom/nuance/swype/input/BuildInfo$HandwritingType;->CJK_ONLY:Lcom/nuance/swype/input/BuildInfo$HandwritingType;

    if-ne v4, v11, :cond_15b

    .line 1232
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    goto :goto_15b

    .line 1260
    .restart local v7    # "langDbs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;"
    :cond_1c5
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1261
    .local v2, "androidQualifier":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_1dd

    .line 1262
    invoke-static {v2}, Lcom/nuance/swype/util/LocalizationUtils;->forAndroidQualifier(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 1267
    :goto_1dc
    return-void

    .line 1264
    :cond_1dd
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    invoke-static {v11}, Lcom/nuance/swype/util/LocalizationUtils;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    goto :goto_1dc
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 9
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1304
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    iget-object v5, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    iget-object v6, p1, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/input/InputMethods$Language;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    .line 1306
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1307
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1308
    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/input/InputMethods$Language;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    .registers 8
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .param p4, "displayAbbr"    # Ljava/lang/String;
    .param p5, "englishName"    # Ljava/lang/String;
    .param p6, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    .line 1163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    .line 1173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    .line 1279
    iput-object p2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    .line 1280
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    iput v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    .line 1281
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    .line 1282
    iput-object p3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    .line 1283
    iput-object p4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    .line 1284
    iput-object p5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    .line 1285
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    .line 1286
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    .line 1287
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    .line 1288
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    .line 1289
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultEnabled:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultEnabled:Z

    .line 1290
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    .line 1291
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    .line 1292
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    .line 1293
    iget-boolean v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    iput-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    .line 1294
    iput-object p6, p0, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 1295
    iget v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    iput v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 1296
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mTermPunc:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mTermPunc:Ljava/lang/CharSequence;

    .line 1297
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 940
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledTrace:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$InputMode;)Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p1, "x1"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 940
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    return-object p1
.end method

.method private createSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1385
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->createLocale()Ljava/util/Locale;

    move-result-object v8

    .line 1386
    .local v8, "loc":Ljava/util/Locale;
    new-instance v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-direct {p0, v8}, Lcom/nuance/swype/input/InputMethods$Language;->getSubtypeResId(Ljava/util/Locale;)I

    move-result v1

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keyboard"

    const-string/jumbo v5, ""

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/InputMethodSubtype;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method private getCountryCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "langRegionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 1406
    const-string/jumbo v0, ""

    .line 1408
    .local v0, "countryCode":Ljava/lang/String;
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_c
    move-object v1, v0

    .line 1429
    .end local v0    # "countryCode":Ljava/lang/String;
    .local v1, "countryCode":Ljava/lang/String;
    :goto_d
    return-object v1

    .line 1412
    .end local v1    # "countryCode":Ljava/lang/String;
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_e
    const-string/jumbo v3, "-"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1413
    .local v2, "two":[Ljava/lang/String;
    if-eqz v2, :cond_1d

    .line 1414
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_31

    .line 1415
    aget-object v0, v2, v5

    .line 1423
    :cond_1d
    :goto_1d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1424
    const-string/jumbo v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1425
    const-string/jumbo v0, "us"

    :cond_2f
    move-object v1, v0

    .line 1429
    .end local v0    # "countryCode":Ljava/lang/String;
    .restart local v1    # "countryCode":Ljava/lang/String;
    goto :goto_d

    .line 1416
    .end local v1    # "countryCode":Ljava/lang/String;
    .restart local v0    # "countryCode":Ljava/lang/String;
    :cond_31
    array-length v3, v2

    if-ne v3, v5, :cond_1d

    const-string/jumbo v3, "en"

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1418
    const-string/jumbo v0, "us"

    goto :goto_1d
.end method

.method private getLanguageAbbr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "languageAbbr"    # Ljava/lang/String;

    .prologue
    .line 1434
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_a

    .line 1435
    const-string/jumbo p1, "TW"

    .line 1441
    .end local p1    # "languageAbbr":Ljava/lang/String;
    :cond_9
    :goto_9
    return-object p1

    .line 1436
    .restart local p1    # "languageAbbr":Ljava/lang/String;
    :cond_a
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0xe1

    if-ne v0, v1, :cond_14

    .line 1437
    const-string/jumbo p1, "CN"

    goto :goto_9

    .line 1438
    :cond_14
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0xe2

    if-ne v0, v1, :cond_9

    .line 1439
    const-string/jumbo p1, "HK"

    goto :goto_9
.end method

.method private getSubtypeResId(Ljava/util/Locale;)I
    .registers 7
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 1378
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "string/ime_subtype_"

    sget v0, Lcom/nuance/swype/input/R$string;->ime_subtype:I

    .line 2045
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2046
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2047
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

    .line 2048
    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2049
    if-nez v1, :cond_32

    .line 1378
    :goto_31
    return v0

    :cond_32
    move v0, v1

    goto :goto_31
.end method

.method static isBurmeseLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1041
    const/16 v0, 0x16e

    if-eq p0, v0, :cond_8

    const/16 v0, 0x1c4

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isCJK(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1064
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1065
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage(I)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isChineseLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1021
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static isChineseSimplified(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1011
    const/16 v0, 0xe1

    if-eq p0, v0, :cond_8

    const/16 v0, 0xe3

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isChineseTraditional(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1016
    const/16 v0, 0xe0

    if-eq p0, v0, :cond_8

    const/16 v0, 0xe2

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isEnglishLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1033
    const/16 v0, 0x109

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isHebrewLanguage(I)Z
    .registers 2
    .param p0, "langaugeId"    # I

    .prologue
    .line 1049
    const/16 v0, 0x10d

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isHindiLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1069
    const/16 v0, 0x139

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isHinglishLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1073
    const/16 v0, 0x1d0

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isJapaneseLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1025
    const/16 v0, 0x111

    if-eq p0, v0, :cond_8

    const/16 v0, 0x511

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static isKhmerLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1045
    const/16 v0, 0x12c

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private isKoreanCompatible(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .registers 3
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1776
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isEnglishLanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isKoreanLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1029
    const/16 v0, 0x112

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isLaoLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1052
    const/16 v0, 0x12b

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isThaiLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1037
    const/16 v0, 0x11e

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isTibetanLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1056
    const/16 v0, 0x14c

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static isVietnameseLanguage(I)Z
    .registers 2
    .param p0, "languageId"    # I

    .prologue
    .line 1060
    const/16 v0, 0x12a

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private parseBool(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1729
    const-string/jumbo v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1730
    const/4 v0, 0x0

    .line 1732
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method addInputMode(Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .registers 3
    .param p1, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1582
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1584
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    if-nez v0, :cond_1b

    .line 1585
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 1587
    :cond_1b
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$InputMode;->getDisplayInputMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1588
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    :cond_2a
    return-void
.end method

.method public compareTo(Lcom/nuance/swype/input/InputMethods$Language;)I
    .registers 4
    .param p1, "another"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 940
    check-cast p1, Lcom/nuance/swype/input/InputMethods$Language;

    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->compareTo(Lcom/nuance/swype/input/InputMethods$Language;)I

    move-result v0

    return v0
.end method

.method createLocale()Ljava/util/Locale;
    .registers 4

    .prologue
    .line 1345
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1347
    .local v0, "countryCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1348
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "zh"

    :goto_17
    invoke-direct {v1, v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    .local v1, "loc":Ljava/util/Locale;
    :goto_1a
    return-object v1

    .line 1348
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_1b
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    goto :goto_17

    .line 1351
    :cond_1e
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string/jumbo v2, "zh"

    :goto_29
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .restart local v1    # "loc":Ljava/util/Locale;
    goto :goto_1a

    .end local v1    # "loc":Ljava/util/Locale;
    :cond_2d
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    goto :goto_29
.end method

.method public enableTrace(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1699
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getTraceEnabledPrefKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/UserPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1700
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1600
    instance-of v0, p1, Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/nuance/swype/input/InputMethods$Language;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public equals(Ljava/lang/String;)Z
    .registers 3
    .param p1, "langId"    # Ljava/lang/String;

    .prologue
    .line 1604
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAllInputModes()Ljava/util/List;
    .registers 3
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
    .line 1460
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAmbigousInputModes()Ljava/util/List;
    .registers 6
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
    .line 1446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1447
    .local v0, "ambigousModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1448
    .local v1, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v3, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "multitap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "handwriting"

    .line 1449
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, v1, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1450
    invoke-static {v3}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1451
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1455
    .end local v1    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_39
    return-object v0
.end method

.method public getChineseInputModes()Ljava/util/List;
    .registers 7
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
    .line 1466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1467
    .local v0, "ambigousModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iget-object v3, v3, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v1

    .line 1469
    .local v1, "handwritingEnabled":Z
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1470
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "zhuyin_nine_keys"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "zhuyin_qwerty"

    .line 1471
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    if-eqz v1, :cond_46

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "handwriting_full_screen"

    .line 1472
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    :cond_46
    if-eqz v1, :cond_53

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "handwriting_half_screen"

    .line 1473
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    :cond_53
    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "cangjie_nine_keys"

    .line 1474
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "cangjie_qwerty"

    .line 1475
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "pinyin_nine_keys"

    .line 1476
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "pinyin_qwerty"

    .line 1477
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "quick_cangjie_nine_keys"

    .line 1478
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "quick_cangjie_qwerty"

    .line 1479
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "stroke"

    .line 1480
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ab

    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v5, "doublepinyin"

    .line 1481
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1482
    :cond_ab
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    .line 1486
    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_b0
    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCoreLanguageId()I
    .registers 2

    .prologue
    .line 1319
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    return v0
.end method

.method public getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 6

    .prologue
    .line 1524
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1525
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1544
    :goto_e
    return-object v3

    .line 1527
    :cond_f
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1529
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v3, v4}, Lcom/nuance/swype/input/InputMethods;->access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1530
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-nez v0, :cond_2f

    .line 1531
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1533
    :cond_2f
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_59

    .line 1534
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1535
    .local v2, "swapInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1536
    move-object v0, v2

    .line 1540
    .end local v2    # "swapInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_54
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    invoke-static {v1, v3, v0}, Lcom/nuance/swype/input/InputMethods;->access$900(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    .line 1543
    :cond_59
    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1544
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    goto :goto_e
.end method

.method public getCurrentInputModeNoHandwriting()Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 5

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1550
    .local v1, "sp":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3}, Lcom/nuance/swype/input/InputMethods;->access$1000(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1551
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-nez v0, :cond_20

    .line 1552
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1554
    :cond_20
    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1555
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCurrentInputMode:Lcom/nuance/swype/input/InputMethods$InputMode;

    return-object v2
.end method

.method public getDictionaryList()Ljava/util/List;
    .registers 2
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
    .line 1340
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->dictionaryList:Ljava/util/List;

    return-object v0
.end method

.method public getDisplayModes()Ljava/util/List;
    .registers 2
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
    .line 1513
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1514
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getChineseInputModes()Ljava/util/List;

    move-result-object v0

    .line 1516
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->displayModes:Ljava/util/List;

    goto :goto_a
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1357
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    # getter for: Lcom/nuance/swype/input/InputMethods;->showNativeNameForDisplay:Z
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->access$700(Lcom/nuance/swype/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    .line 1358
    :goto_a
    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getLocalizedDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 5

    .prologue
    .line 1501
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1502
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v3, "handwriting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 1503
    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1509
    .end local v0    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_25
    :goto_25
    return-object v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method getIETFLanguageTag()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 1746
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-le v1, v3, :cond_36

    .line 1748
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, "parts":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1751
    .end local v0    # "parts":[Ljava/lang/String;
    :goto_35
    return-object v1

    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLangRegionCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageAbbr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_35
.end method

.method public getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 5
    .param p1, "inputModeName"    # Ljava/lang/String;

    .prologue
    .line 1572
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1573
    .local v0, "m":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v2, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1577
    .end local v0    # "m":Lcom/nuance/swype/input/InputMethods$InputMode;
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getKoreanInputModes()Ljava/util/List;
    .registers 6
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
    .line 1490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    .local v1, "inputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods$Language;->mInputModes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1492
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    iget-object v3, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v4, "multitap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1493
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1497
    .end local v0    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_26
    return-object v1
.end method

.method public getLanguageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLocalizedDisplayName()Ljava/lang/String;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1368
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1369
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1368
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method getSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 2

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->subtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-nez v0, :cond_a

    .line 1394
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods$Language;->createSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->subtype:Landroid/view/inputmethod/InputMethodSubtype;

    .line 1396
    :cond_a
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->subtype:Landroid/view/inputmethod/InputMethodSubtype;

    return-object v0
.end method

.method public getTerminalPunctuation()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mTermPunc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTraceEnabledPrefKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1695
    const-string/jumbo v0, "trace"

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAutoSpaceSupported()Z
    .registers 2

    .prologue
    .line 1725
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsAutoSpace:Z

    return v0
.end method

.method public isBilingualLanguage()Z
    .registers 2

    .prologue
    .line 1780
    const/4 v0, 0x0

    return v0
.end method

.method isBurmeseLanguage()Z
    .registers 2

    .prologue
    .line 1112
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isBurmeseLanguage(I)Z

    move-result v0

    return v0
.end method

.method public final isCJK()Z
    .registers 2

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isCK()Z
    .registers 2

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isCapitalizationSupported()Z
    .registers 2

    .prologue
    .line 1717
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsCaps:Z

    return v0
.end method

.method public isChineseLanguage()Z
    .registers 2

    .prologue
    .line 1077
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isChineseSimplified()Z
    .registers 2

    .prologue
    .line 1081
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseSimplified(I)Z

    move-result v0

    return v0
.end method

.method public isChineseTraditional()Z
    .registers 2

    .prologue
    .line 1085
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseTraditional(I)Z

    move-result v0

    return v0
.end method

.method isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z
    .registers 4
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1770
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_c
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    iget-object v1, p1, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    .line 1771
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isCJK()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1772
    :cond_1c
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanCompatible(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_22
    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public isCoreLanguage()Z
    .registers 2

    .prologue
    .line 1608
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 1568
    const/4 v0, 0x1

    return v0
.end method

.method isEnglishLanguage()Z
    .registers 2

    .prologue
    .line 1108
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isEnglishLanguage(I)Z

    move-result v0

    return v0
.end method

.method isGermanLanguage()Z
    .registers 3

    .prologue
    .line 1007
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v1, 0x107

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method isGestureTipSupported()Z
    .registers 3

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isLatinLanguage()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1761
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1762
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1763
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "pinyin_qwerty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 1764
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v1, "doublepinyin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_30
    const/4 v0, 0x1

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    goto :goto_31
.end method

.method public isHindiLanguage()Z
    .registers 2

    .prologue
    .line 1136
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isHindiLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isHinglishLanguage()Z
    .registers 2

    .prologue
    .line 1140
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isHinglishLanguage(I)Z

    move-result v0

    return v0
.end method

.method public final isJK()Z
    .registers 2

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isJapaneseLanguage()Z
    .registers 2

    .prologue
    .line 1089
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage(I)Z

    move-result v0

    return v0
.end method

.method isKhmerLanguage()Z
    .registers 2

    .prologue
    .line 1116
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKhmerLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isKoreanLanguage()Z
    .registers 2

    .prologue
    .line 1093
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage(I)Z

    move-result v0

    return v0
.end method

.method isLaoLanguage()Z
    .registers 2

    .prologue
    .line 1120
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isLaoLanguage(I)Z

    move-result v0

    return v0
.end method

.method public isLatinLanguage()Z
    .registers 3

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEncoding:Ljava/lang/String;

    const-string/jumbo v1, "Latin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNonSpacedLanguage()Z
    .registers 2

    .prologue
    .line 1132
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isBurmeseLanguage()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKhmerLanguage()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isLaoLanguage()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isTibetanLanguage()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method isRecaptureEnabled()Z
    .registers 2

    .prologue
    .line 1691
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isAutoSpaceSupported()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isNonSpacedLanguage()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isSpeechFeatureEnabled()Z
    .registers 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    # getter for: Lcom/nuance/swype/input/InputMethods;->mSpeechBuildEnabled:Z
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->access$600(Lcom/nuance/swype/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method isThaiLanguage()Z
    .registers 2

    .prologue
    .line 1128
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isThaiLanguage(I)Z

    move-result v0

    return v0
.end method

.method isTibetanLanguage()Z
    .registers 2

    .prologue
    .line 1124
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isTibetanLanguage(I)Z

    move-result v0

    return v0
.end method

.method isTraceFeatureSupport()Z
    .registers 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mParent:Lcom/nuance/swype/input/InputMethods;

    # getter for: Lcom/nuance/swype/input/InputMethods;->mT9TraceBuildEnabled:Z
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods;->access$500(Lcom/nuance/swype/input/InputMethods;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mIsTraceFeatureSupport:Z

    if-eqz v0, :cond_14

    .line 1332
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method isVietnameseLanguage()Z
    .registers 2

    .prologue
    .line 1144
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isVietnameseLanguage(I)Z

    move-result v0

    return v0
.end method

.method public matches(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 5
    .param p1, "other"    # Landroid/view/inputmethod/InputMethodSubtype;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 1401
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v0

    .line 1402
    .local v0, "st":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method saveAsCurrent()V
    .registers 3

    .prologue
    .line 1559
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/input/InputMethods;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nuance/swype/input/InputMethods;->access$1100(Landroid/content/Context;Ljava/lang/String;)V

    .line 1560
    return-void
.end method

.method protected setEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1563
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnabledPrefKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 1564
    return-void
.end method

.method protected setInputMode(Ljava/lang/String;)V
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 1617
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1618
    .local v0, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    if-eqz v0, :cond_9

    .line 1619
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1621
    :cond_9
    return-void
.end method

.method public setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 3
    .param p1, "input"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 1819
    iget v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {p1, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getDefaultInputMode(I)Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/InputMethods$Language;->setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v0

    return-object v0
.end method

.method public setLanguage(Lcom/nuance/input/swypecorelib/XT9CoreInput;Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;
    .registers 14
    .param p1, "input"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p2, "xt9InputMode"    # Lcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1784
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1785
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1786
    .local v0, "coreId":I
    if-eq v0, v10, :cond_3b

    .line 1787
    # getter for: Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setLanguage...deprecated languge id.."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1788
    invoke-virtual {p1, v0, v8, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(IILcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v3

    .line 1815
    .end local v0    # "coreId":I
    :cond_3a
    :goto_3a
    return-object v3

    .line 1792
    :cond_3b
    # getter for: Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setLanguage...core languge id.."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1794
    iget v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {p1, v4, v8, p2}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setLanguage(IILcom/nuance/input/swypecorelib/XT9CoreInput$XT9InputMode;)Lcom/nuance/input/swypecorelib/XT9Status;

    move-result-object v3

    .line 1796
    .local v3, "status":Lcom/nuance/input/swypecorelib/XT9Status;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/DatabaseConfig;->getDeprecatedLanguageLDBID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1797
    .local v1, "deprecatedLanguageId":I
    if-eq v1, v10, :cond_3a

    .line 1798
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "dlm.already.swap."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1800
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 1801
    # getter for: Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "swap dlm language from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 1803
    iget v4, p0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-virtual {p1, v1, v4}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->dlmSwapLanguage(II)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 1804
    # getter for: Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;
    invoke-static {}, Lcom/nuance/swype/input/InputMethods;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v4

    const-string/jumbo v5, "backup dlm"

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->i(Ljava/lang/Object;)V

    .line 1810
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    invoke-virtual {v4, v2, v9}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_3a
.end method

.method supportsHwr()Z
    .registers 2

    .prologue
    .line 1336
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mSupportsHwr:Z

    return v0
.end method

.method switchToHandwritingModeCJK()Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1645
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 1646
    .local v2, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    move-object v3, v2

    .line 1648
    .local v3, "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1649
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1650
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 1651
    .local v0, "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_25

    .line 1652
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1653
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .end local v0    # "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    :cond_25
    :goto_25
    move-object v4, v3

    .line 1687
    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .local v4, "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :goto_26
    return-object v4

    .line 1656
    .end local v4    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_27
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 1657
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_25

    .line 1659
    :cond_2f
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 1660
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v4, v3

    .line 1662
    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v4    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    goto :goto_26

    .line 1664
    .end local v4    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_3d
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    .line 1665
    .local v1, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "fullscreen.enabled."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    .line 1666
    invoke-virtual {v6}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1667
    invoke-virtual {v1}, Lcom/nuance/swype/input/AppPreferences;->getDefaultFullscreenHandwriting()Z

    move-result v6

    .line 1665
    invoke-virtual {v1, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 1668
    if-eqz v5, :cond_72

    .line 1669
    iget-object v5, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    const-string/jumbo v6, "handwriting_full_screen"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 1673
    :goto_6e
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_25

    .line 1671
    :cond_72
    iget-object v5, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mParent:Lcom/nuance/swype/input/InputMethods$Language;

    const-string/jumbo v6, "handwriting_half_screen"

    invoke-virtual {v5, v6}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    goto :goto_6e

    .line 1674
    .end local v1    # "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    :cond_7c
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1675
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 1676
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getAmbigousInputModes()Ljava/util/List;

    move-result-object v0

    .line 1677
    .restart local v0    # "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_25

    .line 1678
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    check-cast v3, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 1679
    .restart local v3    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_25

    .line 1682
    .end local v0    # "ambigInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    :cond_9c
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    .line 1683
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    goto :goto_25
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mNativeLanguageName:Ljava/lang/String;

    return-object v0
.end method

.method toggleHandwritingAndInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 7

    .prologue
    .line 1625
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1628
    .local v0, "currentInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1629
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    # invokes: Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/nuance/swype/input/InputMethods;->access$1000(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1630
    .local v2, "savedMode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 1638
    .end local v2    # "savedMode":Ljava/lang/String;
    .local v1, "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :goto_24
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 1640
    return-object v1

    .line 1631
    .end local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_28
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1632
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods$Language;->getHandwritingMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .restart local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    goto :goto_24

    .line 1635
    .end local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_3d
    move-object v1, v0

    .restart local v1    # "nextMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    goto :goto_24
.end method

.method public usesLanguage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
