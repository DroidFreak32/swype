.class public Lcom/nuance/swype/input/InputMethods;
.super Ljava/lang/Object;
.source "InputMethods.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/InputMethods$Layout;,
        Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;,
        Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;,
        Lcom/nuance/swype/input/InputMethods$ChineseHandwritingInputMode;,
        Lcom/nuance/swype/input/InputMethods$ChineseInputMode;,
        Lcom/nuance/swype/input/InputMethods$KoreanHandwritingInputMode;,
        Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;,
        Lcom/nuance/swype/input/InputMethods$InputMode;,
        Lcom/nuance/swype/input/InputMethods$Language;
    }
.end annotation


# static fields
.field public static final AWORDSOURCE_ASDB:I = 0x5

.field public static final AWORDSOURCE_AUTOAPPEND:I = 0x7

.field public static final AWORDSOURCE_CDB:I = 0x4

.field public static final AWORDSOURCE_CONSTRUCTED:I = 0x9

.field public static final AWORDSOURCE_CUSTOM:I = 0x1

.field public static final AWORDSOURCE_LDB:I = 0x2

.field public static final AWORDSOURCE_MDB:I = 0x3

.field public static final AWORDSOURCE_NEWWORD:I = 0xa

.field public static final AWORDSOURCE_STEM:I = 0x6

.field public static final AWORDSOURCE_TERMPUNCT:I = 0x8

.field public static final CHINESE_INPUT_MODE_CANGJIE_NINE_KEYS:Ljava/lang/String; = "cangjie_nine_keys"

.field public static final CHINESE_INPUT_MODE_CANGJIE_QWERTY:Ljava/lang/String; = "cangjie_qwerty"

.field public static final CHINESE_INPUT_MODE_CANGJIE_TYPE:Ljava/lang/String; = "cangjie"

.field public static final CHINESE_INPUT_MODE_DOUBLEPINYIN:Ljava/lang/String; = "doublepinyin"

.field public static final CHINESE_INPUT_MODE_HANDWRITING_FULL_SCREEN:Ljava/lang/String; = "handwriting_full_screen"

.field public static final CHINESE_INPUT_MODE_HANDWRITING_HALF_SCREEN:Ljava/lang/String; = "handwriting_half_screen"

.field public static final CHINESE_INPUT_MODE_PINYIN_NINE_KEYS:Ljava/lang/String; = "pinyin_nine_keys"

.field public static final CHINESE_INPUT_MODE_PINYIN_QWERTY:Ljava/lang/String; = "pinyin_qwerty"

.field public static final CHINESE_INPUT_MODE_PINYIN_TYPE:Ljava/lang/String; = "pinyin"

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE_NINE_KEYS:Ljava/lang/String; = "quick_cangjie_nine_keys"

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE_QWERTY:Ljava/lang/String; = "quick_cangjie_qwerty"

.field public static final CHINESE_INPUT_MODE_QUICK_CANGJIE_TYPE:Ljava/lang/String; = "quick_cangjie"

.field public static final CHINESE_INPUT_MODE_STROKE:Ljava/lang/String; = "stroke"

.field public static final CHINESE_INPUT_MODE_ZHUYIN_NINE_KEYS:Ljava/lang/String; = "zhuyin_nine_keys"

.field public static final CHINESE_INPUT_MODE_ZHUYIN_QWERTY:Ljava/lang/String; = "zhuyin_qwerty"

.field public static final CHINESE_INPUT_MODE_ZHUYIN_TYPE:Ljava/lang/String; = "zhuyin"

.field public static final CJK_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LANGUAGE_ENABLED:Z = true

.field private static final GLOBAL_LANG_ID:Ljava/lang/String; = "GLOBAL"

.field public static final HANDWRITING_INPUT_MODE:Ljava/lang/String; = "handwriting"

.field public static final HANDWRITING_LAYOUT:I = 0xbea

.field public static final KEYPAD_KEYBOARD_LAYOUT:I = 0x600

.field private static final MAX_RECENT_LANGUAGES:I = 0x4

.field public static final MULTITAP_INPUT_MODE:Ljava/lang/String; = "multitap"

.field public static final QWERTY_KEYBOARD_BILINGUAL_LAYOUT:I = 0xda0

.field public static final QWERTY_KEYBOARD_LAYOUT:I = 0x900

.field public static final REDUCED_QWERTY_KEYBOARD_LAYOUT:I = 0xa00

.field private static final SAVED_LOCALE_KEY:Ljava/lang/String; = "savedLocale"

.field public static final SETTING_CURRENT_LANGUAGE:Ljava/lang/String; = "current_language"

.field public static final SETTING_ENGLISH:Ljava/lang/String; = "English.enabled"

.field public static final SETTING_HK:Ljava/lang/String; = "Chinese_HK.enabled"

.field public static final SETTING_JA:Ljava/lang/String; = "Japanese.enabled"

.field public static final SETTING_KOREAN:Ljava/lang/String; = "Korean.enabled"

.field private static final SETTING_RECENT_LANGUAGE_DELIMETER:Ljava/lang/String; = ","

.field public static final SETTING_SIMPLIFY:Ljava/lang/String; = "Chinese_CN.enabled"

.field public static final SETTING_TOGGLE_RESTORE_LANGUAGE:Ljava/lang/String; = "toggle_restore_lang"

.field protected static final SETTING_TOGGLE_TEMPORARY:Ljava/lang/String; = "toggle_temporary"

.field public static final SETTING_TW:Ljava/lang/String; = "Chinese_TW.enabled"

.field private static final TAG_INPUT_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final TAG_INPUT_LAYOUT:Ljava/lang/String; = "Layout"

.field private static final TAG_INPUT_MODE:Ljava/lang/String; = "InputMode"

.field public static final VIETNAMESE_INPUT_MODE_NATIONAL:Ljava/lang/String; = "national"

.field public static final VIETNAMESE_INPUT_MODE_TELEX:Ljava/lang/String; = "telex"

.field public static final WD_SOURCE_AUDB:I = 0x5

.field public static final WD_SOURCE_CATDB:I = 0x2

.field public static final WD_SOURCE_LDB:I = 0x1

.field public static final WD_SOURCE_MDB:I = 0x3

.field public static final WD_SOURCE_MSDB:I = 0x7

.field public static final WD_SOURCE_NONUDB_PREDICTION:I = 0x9

.field public static final WD_SOURCE_RDB:I = 0x4

.field public static final WD_SOURCE_SENTENCE:I = 0xa

.field public static final WD_SOURCE_UDB:I = 0x6

.field public static final WD_SOURCE_UDB_PREDICTION:I = 0x8

.field public static final WD_SOURCE_UNKNOWN:I = 0x0

.field public static final WORD_IS_REMOVALBE:I = 0x100

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mCurrentLanguageId:Ljava/lang/String;

.field private static recentLanguageCache:[Ljava/lang/String;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private mAllLanguages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlphaInputLanguageCycling:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private final mChineseInputLanguageCycling:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field mDefaultLanguageId:Ljava/lang/String;

.field private mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

.field private final mInputLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpeechBuildEnabled:Z

.field final mT9TraceBuildEnabled:Z

.field private final mT9WriteAlphaBuildEnabled:Z

.field private final mT9WriteBuildChineseEnabled:Z

.field private final mT9WriteBuildJapaneseEnabled:Z

.field private final mXT9ChineseInputBuildEnabled:Z

.field protected final showNativeNameForDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 52
    const-string v0, "InputMethods"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 53
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/InputMethods;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 105
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Chinese_HK.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Korean.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Chinese_CN.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Chinese_TW.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Japanese.enabled"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/nuance/swype/input/InputMethods;->CJK_SETTINGS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    .line 168
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    .line 169
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    .line 170
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 189
    sget-object v11, Lcom/nuance/swype/input/InputMethods;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 191
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    .line 192
    new-instance v8, Lcom/nuance/swype/input/LanguageList;

    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-direct {v8, v11}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 194
    .local v8, "langList":Lcom/nuance/swype/input/LanguageList;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v1

    .line 196
    .local v1, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteAlphaBuildEnabled()Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    .line 197
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    .line 198
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteJapaneseBuildEnabled()Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteBuildJapaneseEnabled:Z

    .line 199
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods;->mT9TraceBuildEnabled:Z

    .line 200
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isChineseInputBuildEnabled()Z

    move-result v11

    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    .line 201
    iput-boolean v12, p0, Lcom/nuance/swype/input/InputMethods;->mSpeechBuildEnabled:Z

    .line 204
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xe

    if-lt v11, v13, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lcom/nuance/swype/input/R$bool;->display_native_download_language_name:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    :goto_0
    iput-boolean v11, p0, Lcom/nuance/swype/input/InputMethods;->showNativeNameForDisplay:Z

    .line 210
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods;->loadInputMethodConfigurations()Ljava/util/Map;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    .line 213
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-virtual {v8}, Lcom/nuance/swype/input/LanguageList;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    .line 214
    .local v6, "l":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v6, :cond_0

    .line 215
    invoke-static {v6}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    .line 218
    :cond_0
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v10

    .line 219
    .local v10, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v8}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v5

    .line 220
    .local v5, "inputLangList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 221
    .local v7, "lang":Ljava/lang/String;
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v11, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/InputMethods$Language;

    .line 222
    .local v9, "langObj":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v9, :cond_1

    .line 224
    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v13, v9, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v11, v13}, Lcom/nuance/swype/input/DatabaseConfig;->isPossibleDeprecatedLanguage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 226
    iget v11, v9, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, ""

    invoke-static {v10, v11, v13}, Lcom/nuance/swype/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 227
    const-string v13, ""

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 230
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "_Std"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v13, v9, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v11, v13}, Lcom/nuance/swype/input/DatabaseConfig;->isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 232
    iget-object v11, v9, Lcom/nuance/swype/input/InputMethods$Language;->defaultGlobalInputMode:Ljava/lang/String;

    iput-object v11, v9, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 234
    :cond_2
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v4

    .line 235
    .local v4, "im":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Lcom/nuance/swype/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    .line 239
    .end local v4    # "im":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_3
    invoke-virtual {p0, v9}, Lcom/nuance/swype/input/InputMethods;->addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    goto :goto_1

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "inputLangList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "l":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "lang":Ljava/lang/String;
    .end local v9    # "langObj":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v10    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    move v11, v12

    .line 204
    goto/16 :goto_0

    .line 245
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "inputLangList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "l":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v10    # "sp":Landroid/content/SharedPreferences;
    :cond_5
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getChineseInputLanguages()Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "chineseInputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    if-eqz v0, :cond_7

    .line 247
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/InputMethods$Language;

    .line 248
    invoke-virtual {v11}, Lcom/nuance/swype/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v11

    .line 249
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 250
    invoke-virtual {v11, v12}, Lcom/nuance/swype/input/InputMethods$InputMode;->setEnabled(Z)V

    goto :goto_2

    .line 254
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->detectLocaleChange()V

    .line 256
    sget-object v11, Lcom/nuance/swype/input/InputMethods;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 257
    return-void
.end method

.method static synthetic access$1000(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/nuance/swype/input/InputMethods;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitLayoutOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitKeypadOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 50
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/nuance/swype/util/LogManager$Log;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/InputMethods;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods;->mSpeechBuildEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/InputMethods;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteBuildJapaneseEnabled:Z

    return v0
.end method

.method static synthetic access$700(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    return-void
.end method

.method static synthetic access$900(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeIntKey(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 3239
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeKeyForKeyboardLayout(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "languageId"    # Ljava/lang/String;
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 3149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/nuance/swype/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeKeyForPortraitKeypadOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "languageId"    # Ljava/lang/String;
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 3159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/nuance/swype/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KeypadOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeKeyForPortraitLayoutOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "languageId"    # Ljava/lang/String;
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 3154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/nuance/swype/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Options"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createInputMode(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/InputMethods$InputMode;
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 390
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 391
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/nuance/swype/input/R$styleable;->XT9_inputMode:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "inputMode":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 394
    if-nez v1, :cond_0

    iget-object v2, p2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 395
    iget-object v1, p2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 398
    :cond_0
    if-eqz v1, :cond_7

    .line 399
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    new-instance v2, Lcom/nuance/swype/input/InputMethods$ChineseHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$ChineseHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 422
    :goto_0
    return-object v2

    .line 403
    :cond_1
    new-instance v2, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 406
    const-string v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 407
    new-instance v2, Lcom/nuance/swype/input/InputMethods$KoreanHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$KoreanHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 409
    :cond_3
    new-instance v2, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 411
    :cond_4
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 412
    const-string v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 413
    new-instance v2, Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 415
    :cond_5
    new-instance v2, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 418
    :cond_6
    new-instance v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    .line 422
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static findLanguageBestFitsCurrentLocale(Ljava/util/Locale;Ljava/util/List;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 11
    .param p0, "currentLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;)",
            "Lcom/nuance/swype/input/InputMethods$Language;"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, "inputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 977
    .local v2, "currentCountryCode":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/nuance/swype/input/InputMethods;->matchLocaleToSpecificLanguage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 978
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 980
    .local v3, "currentLangCode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 983
    .local v0, "bestMatch":Lcom/nuance/swype/input/InputMethods$Language;
    const/4 v9, 0x0

    .line 986
    .local v9, "matchLangCode":Lcom/nuance/swype/input/InputMethods$Language;
    const/4 v4, 0x0

    .line 988
    .local v4, "firstOneMatchLangNotCountry":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/InputMethods$Language;

    .line 989
    .local v8, "m":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v7, v8, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 990
    .local v7, "locale":Ljava/util/Locale;
    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 991
    .local v6, "langCode":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 992
    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 996
    .local v1, "countryCode":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 997
    move-object v0, v8

    .line 1009
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v6    # "langCode":Ljava/lang/String;
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v8    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    if-eqz v0, :cond_4

    .line 1015
    .end local v0    # "bestMatch":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_1
    return-object v0

    .line 1000
    .restart local v0    # "bestMatch":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v6    # "langCode":Ljava/lang/String;
    .restart local v7    # "locale":Ljava/util/Locale;
    .restart local v8    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2
    if-nez v9, :cond_3

    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1002
    move-object v9, v8

    .line 1004
    :cond_3
    if-nez v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1006
    move-object v4, v8

    goto :goto_0

    .line 1012
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v6    # "langCode":Ljava/lang/String;
    .end local v7    # "locale":Ljava/util/Locale;
    .end local v8    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_4
    if-eqz v9, :cond_5

    move-object v0, v9

    .line 1013
    goto :goto_1

    :cond_5
    move-object v0, v4

    .line 1015
    goto :goto_1
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    return-object v0
.end method

.method public static getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 663
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    const-string v0, "pinyin"

    .line 677
    .local v0, "mode":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 666
    .end local v0    # "mode":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeZhuyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 667
    const-string v0, "zhuyin"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 668
    .end local v0    # "mode":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 669
    const-string v0, "cangjie"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 670
    .end local v0    # "mode":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    const-string v0, "quick_cangjie"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 672
    .end local v0    # "mode":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 673
    const-string v0, "handwriting"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0

    .line 675
    .end local v0    # "mode":Ljava/lang/String;
    :cond_4
    move-object v0, p0

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_0
.end method

.method private getChineseModeNameSuffix(I)Ljava/lang/String;
    .locals 2
    .param p1, "layoutId"    # I

    .prologue
    .line 694
    const-string v0, ""

    .line 695
    .local v0, "suffix":Ljava/lang/String;
    const/16 v1, 0x900

    if-ne p1, v1, :cond_1

    .line 696
    const-string v0, "_qwerty"

    .line 700
    :cond_0
    :goto_0
    return-object v0

    .line 697
    :cond_1
    const/16 v1, 0x600

    if-ne p1, v1, :cond_0

    .line 698
    const-string v0, "_nine_keys"

    goto :goto_0
.end method

.method public static getChineseQwertyModeHardKeyboard(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    const-string p0, "pinyin_qwerty"

    .line 659
    .end local p0    # "inputMode":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 651
    .restart local p0    # "inputMode":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeZhuyin(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 652
    const-string p0, "zhuyin_qwerty"

    goto :goto_0

    .line 653
    :cond_2
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    const-string p0, "cangjie_qwerty"

    goto :goto_0

    .line 655
    :cond_3
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const-string p0, "quick_cangjie_qwerty"

    goto :goto_0
.end method

.method public static getKeyboardLayoutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "defaulKeyboardtLayoutId"    # I

    .prologue
    .line 3124
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForKeyboardLayout(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3125
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getPortraitKeypadOptions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "defaulPortaitKeypadOptionsId"    # I

    .prologue
    .line 3136
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitKeypadOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3137
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getPortraitLayoutOptions(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "defaulPortaitLayoutOptionsId"    # I

    .prologue
    .line 3130
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitLayoutOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3131
    .local v0, "key":Ljava/lang/String;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultLangId"    # Ljava/lang/String;

    .prologue
    .line 3207
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 3208
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const-string v5, "current_language"

    const-string v6, "%x"

    invoke-virtual {v4, v5, p1, v6}, Lcom/nuance/swype/input/AppPreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3209
    .local v2, "languageSetting":Ljava/lang/String;
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getRecentLanguages...languageSetting..."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3210
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    .line 3211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 3212
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    aget-object v1, v4, v0

    .line 3213
    .local v1, "langID":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->mockDeprecatedLanguageID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3214
    .local v3, "supportedId":Ljava/lang/String;
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    aput-object v3, v4, v0

    .line 3215
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getRecentLanguages..old langID.."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "...new langID.."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 3211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3218
    .end local v0    # "i":I
    .end local v1    # "langID":Ljava/lang/String;
    .end local v2    # "languageSetting":Ljava/lang/String;
    .end local v3    # "supportedId":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    return-object v4
.end method

.method private static getSavedInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "defaultInputMode"    # Ljava/lang/String;

    .prologue
    .line 3107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3108
    .local v0, "handwritingMode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 3112
    .end local v0    # "handwritingMode":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "handwritingMode":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "defaultInputMode"    # Ljava/lang/String;

    .prologue
    .line 3117
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultLangId"    # Ljava/lang/String;

    .prologue
    .line 3163
    invoke-static {p0, p1}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3164
    .local v0, "recentLanguages":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object p1, v0, v1

    .end local p1    # "defaultLangId":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static isChineseInputModeCangjie(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 639
    const-string v0, "cangjie_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cangjie_qwerty"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseInputModeHandwriting(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 634
    const-string v0, "handwriting_full_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "handwriting_half_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseInputModePinyin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 620
    const-string v0, "pinyin_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pinyin_qwerty"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseInputModeQuickCangjie(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 644
    const-string v0, "quick_cangjie_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "quick_cangjie_qwerty"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseInputModeZhuyin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 629
    const-string v0, "zhuyin_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "zhuyin_qwerty"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChineseNineKeyPinyin(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 625
    const-string v0, "pinyin_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadInputMethodConfigurations()Ljava/util/Map;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 302
    .local v9, "languageConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 303
    .local v13, "res":Landroid/content/res/Resources;
    sget v15, Lcom/nuance/swype/input/R$xml;->inputmethodsconfig:I

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 305
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 306
    .local v7, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "globalInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    const/4 v8, 0x0

    .line 310
    .local v8, "language":Lcom/nuance/swype/input/InputMethods$Language;
    const/4 v5, 0x0

    .line 311
    .local v5, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    const/4 v10, 0x0

    .line 313
    .local v10, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "event":I
    const/4 v15, 0x1

    if-eq v1, v15, :cond_f

    .line 314
    const/4 v15, 0x2

    if-ne v1, v15, :cond_7

    .line 315
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 317
    .local v14, "tag":Ljava/lang/String;
    const-string v15, "Language"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 318
    new-instance v8, Lcom/nuance/swype/input/InputMethods$Language;

    .end local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    move-object/from16 v0, p0

    invoke-direct {v8, v13, v0, v12, v7}, Lcom/nuance/swype/input/InputMethods$Language;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods;Landroid/content/res/XmlResourceParser;Ljava/util/Map;)V

    .restart local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    goto :goto_0

    .line 319
    :cond_1
    const-string v15, "InputMode"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 320
    if-eqz v8, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8, v12}, Lcom/nuance/swype/input/InputMethods;->createInputMode(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v5

    :goto_1
    goto :goto_0

    :cond_2
    new-instance v5, Lcom/nuance/swype/input/InputMethods$InputMode;

    .end local v5    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    const/4 v15, 0x0

    invoke-direct {v5, v13, v15, v12}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 370
    .end local v1    # "event":I
    .end local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .end local v14    # "tag":Ljava/lang/String;
    :catch_0
    move-exception v15

    if-eqz v12, :cond_3

    .line 371
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 376
    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/InputMethods$Language;

    .line 377
    .local v6, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 378
    .local v11, "mode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-static {v11}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$300(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v11, v6}, Lcom/nuance/swype/input/InputMethods$InputMode;->isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 379
    new-instance v15, Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-direct {v15, v11, v6}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v6, v15}, Lcom/nuance/swype/input/InputMethods$Language;->addInputMode(Lcom/nuance/swype/input/InputMethods$InputMode;)V

    goto :goto_3

    .line 323
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v11    # "mode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v1    # "event":I
    .restart local v5    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .restart local v14    # "tag":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v15, "Layout"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 324
    new-instance v10, Lcom/nuance/swype/input/InputMethods$Layout;

    .end local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-direct {v10, v13, v5, v12}, Lcom/nuance/swype/input/InputMethods$Layout;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$InputMode;Landroid/content/res/XmlResourceParser;)V

    .restart local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    goto/16 :goto_0

    .line 326
    .end local v14    # "tag":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x3

    if-ne v1, v15, :cond_0

    .line 327
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 329
    .restart local v14    # "tag":Ljava/lang/String;
    const-string v15, "Language"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 336
    invoke-virtual {v8}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v15

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/nuance/swype/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    if-eqz v15, :cond_9

    .line 338
    :cond_8
    iget-object v15, v8, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v9, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 344
    :cond_a
    const-string v15, "InputMode"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 345
    if-nez v8, :cond_b

    .line 347
    const/4 v15, 0x1

    invoke-static {v5, v15}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$102(Lcom/nuance/swype/input/InputMethods$InputMode;Z)Z

    .line 348
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 370
    .end local v1    # "event":I
    .end local v5    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .end local v14    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v15

    if-eqz v12, :cond_3

    .line 371
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_2

    .line 350
    .restart local v1    # "event":I
    .restart local v5    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .restart local v14    # "tag":Ljava/lang/String;
    :cond_b
    if-eqz v5, :cond_0

    :try_start_2
    iget-object v15, v5, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 353
    iget-object v15, v5, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string v16, "handwriting"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    iget-object v15, v5, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v15}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/nuance/swype/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    if-nez v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/nuance/swype/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    if-eqz v15, :cond_0

    .line 357
    :cond_c
    invoke-virtual {v8, v5}, Lcom/nuance/swype/input/InputMethods$Language;->addInputMode(Lcom/nuance/swype/input/InputMethods$InputMode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 370
    .end local v1    # "event":I
    .end local v5    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .end local v14    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v15

    if-eqz v12, :cond_d

    .line 371
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d
    throw v15

    .line 360
    .restart local v1    # "event":I
    .restart local v5    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .restart local v14    # "tag":Ljava/lang/String;
    :cond_e
    :try_start_3
    const-string v15, "Layout"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 361
    invoke-static {v5, v10}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$200(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Layout;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 370
    .end local v14    # "tag":Ljava/lang/String;
    :cond_f
    if-eqz v12, :cond_3

    .line 371
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_2

    .line 384
    .end local v1    # "event":I
    .end local v5    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v8    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v10    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_10
    return-object v9
.end method

.method private static matchLocaleToSpecificLanguage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "currentLocale"    # Ljava/util/Locale;
    .param p1, "currentCountryCode"    # Ljava/lang/String;

    .prologue
    .line 1020
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1021
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const-string p1, "hk"

    .line 1024
    :cond_0
    return-object p1
.end method

.method private static saveInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .locals 5
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 3088
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3091
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    .line 3092
    .local v2, "isHandwriting":Z
    if-eqz v2, :cond_1

    iget-object v1, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 3093
    .local v1, "handwritingMode":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3096
    if-nez v2, :cond_0

    .line 3097
    iget-object v3, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3099
    :cond_0
    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 3100
    return-void

    .line 3092
    .end local v1    # "handwritingMode":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static saveKeyboardLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "KeyboardLayoutId"    # I

    .prologue
    .line 3142
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForKeyboardLayout(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3143
    .local v0, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3144
    .local v1, "value":Ljava/lang/String;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    return-void
.end method

.method private static saveLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 3168
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nuance/swype/input/InputMethods;->saveLanguageAt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3169
    sput-object p1, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguageId:Ljava/lang/String;

    .line 3170
    return-void
.end method

.method private static saveLanguageAt(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v9, 0x4

    .line 3174
    if-le p2, v9, :cond_0

    .line 3204
    :goto_0
    return-void

    .line 3179
    :cond_0
    invoke-static {p0, p1}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 3180
    .local v7, "recentLanguageList":[Ljava/lang/String;
    array-length v5, v7

    .line 3182
    .local v5, "recentCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3184
    .local v4, "newRecentLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 3185
    .local v0, "added":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "newRecentCount":I
    move v2, v1

    .line 3186
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_3

    if-gt v3, v9, :cond_3

    .line 3187
    if-ne v3, p2, :cond_2

    .line 3188
    move-object v6, p1

    .line 3189
    .local v6, "recentLanguage":Ljava/lang/String;
    const/4 v0, 0x1

    move v1, v2

    .line 3193
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3198
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 3191
    .end local v6    # "recentLanguage":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v6, v7, v2

    .line 3192
    .restart local v6    # "recentLanguage":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 3200
    .end local v6    # "recentLanguage":Ljava/lang/String;
    :cond_3
    if-nez v0, :cond_4

    .line 3201
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3203
    :cond_4
    invoke-static {p0, v4}, Lcom/nuance/swype/input/InputMethods;->setRecentLanguages(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0
.end method

.method private setDefaultLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 2
    .param p1, "defaultLangID"    # Ljava/lang/String;

    .prologue
    .line 884
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 885
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->saveAsCurrent()V

    .line 887
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputMethods$Language;->setEnabled(Z)V

    .line 889
    :cond_0
    return-object v0
.end method

.method private setFastSwitchedOffLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 3
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 811
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 812
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string v2, "toggle_restore_lang"

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    return-void

    .line 812
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static setRecentLanguages(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3222
    .local p1, "languageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3223
    .local v2, "newRecentLanguages":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3224
    .local v1, "langId":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3225
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3227
    .end local v1    # "langId":Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    const-string v5, "current_language"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 3232
    .local v3, "size":I
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v3, :cond_2

    .line 3233
    :cond_1
    new-array v4, v3, [Ljava/lang/String;

    sput-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    .line 3235
    :cond_2
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sput-object v4, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    .line 3236
    return-void
.end method


# virtual methods
.method public CycleRecentLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 2

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v0

    .line 801
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 802
    return-object v0
.end method

.method public addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 5
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    :goto_0
    return-void

    .line 429
    :cond_0
    sget-object v0, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v1, "Duplicate language (%s) - IGNORED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 2
    .param p1, "t9Write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p2, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 1056
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1082
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->clearCategory()V

    .line 1060
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addTextCategory()V

    .line 1061
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 1063
    .local v0, "handWritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitChineseEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_2
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitEnglishEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitJapaneseEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1070
    :cond_4
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addNumberCategory()V

    .line 1072
    :cond_5
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1073
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addPunctuationCategory()V

    .line 1075
    :cond_6
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1076
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addSymbolCategory()V

    .line 1078
    :cond_7
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndABCEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1079
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addLatinLetterCategory()V

    goto :goto_0
.end method

.method public countEnabledLanguageMode()I
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final detectLocaleChange()V
    .locals 9

    .prologue
    .line 264
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 266
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 267
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string v4, "savedLocale"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "previousSavedLocale":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 269
    .local v1, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    const-string v4, "savedLocale"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-static {v1, v4}, Lcom/nuance/swype/input/InputMethods;->findLanguageBestFitsCurrentLocale(Ljava/util/Locale;Ljava/util/List;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 276
    .local v2, "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v2, :cond_0

    .line 278
    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/InputMethods;->setDefaultLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_2

    .line 282
    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setInputMode(Ljava/lang/String;)V

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->resetToggleState()V

    .line 292
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/AppPreferences;->resetAccessibilityInfo(Landroid/content/Context;)V

    .line 293
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 296
    .end local v2    # "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 297
    return-void

    .line 284
    .restart local v2    # "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v5, "Cannot find default language Id %s locale = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 3
    .param p1, "coreLanguageID"    # I

    .prologue
    .line 938
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 939
    .local v1, "m":Lcom/nuance/swype/input/InputMethods$Language;
    iget v2, v1, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isCoreLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 943
    .end local v1    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1
    .param p1, "languageID"    # Ljava/lang/String;

    .prologue
    .line 893
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;Z)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    return-object v0
.end method

.method public findInputLanguage(Ljava/lang/String;Z)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 8
    .param p1, "languageID"    # Ljava/lang/String;
    .param p2, "returnSingleOnBilingualFail"    # Z

    .prologue
    const/4 v7, 0x1

    .line 912
    iget-object v6, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 913
    .local v4, "m":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v4, p1}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 934
    .end local v4    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return-object v4

    .line 918
    :cond_1
    invoke-static {p1}, Lcom/nuance/swype/input/BilingualLanguage;->getLanguageIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 919
    .local v3, "languageIds":[Ljava/lang/String;
    array-length v6, v3

    if-le v6, v7, :cond_4

    .line 920
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 921
    .local v0, "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    aget-object v6, v3, v7

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v5

    .line 922
    .local v5, "secondLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_3

    .line 923
    if-eqz v5, :cond_2

    .line 924
    new-instance v2, Lcom/nuance/swype/input/BilingualLanguage;

    invoke-direct {v2, v0, v5}, Lcom/nuance/swype/input/BilingualLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 925
    .local v2, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {p0, v2}, Lcom/nuance/swype/input/InputMethods;->addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    move-object v4, v2

    .line 926
    goto :goto_0

    .line 927
    .end local v2    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2
    if-eqz p2, :cond_4

    move-object v4, v0

    .line 928
    goto :goto_0

    .line 930
    :cond_3
    if-eqz p2, :cond_4

    move-object v4, v5

    .line 931
    goto :goto_0

    .line 934
    .end local v0    # "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v5    # "secondLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public findLanguageFromCoreId(I)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 4
    .param p1, "coreId"    # I

    .prologue
    .line 902
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 903
    .local v1, "languageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/swype/input/InputMethods$Language;

    .line 904
    .local v2, "m":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 908
    .end local v1    # "languageName":Ljava/lang/String;
    .end local v2    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 1
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 897
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 898
    return-object v0
.end method

.method public forceAddRecentLanguage(Ljava/lang/String;)V
    .locals 7
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 483
    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "recentLanguageList":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 485
    .local v2, "inList":Z
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v4

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v5, v0, v1

    .line 486
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 487
    const/4 v2, 0x1

    .line 491
    :cond_0
    if-eqz v2, :cond_2

    .line 495
    :goto_1
    return-void

    .line 485
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_2
    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, p1, v6}, Lcom/nuance/swype/input/InputMethods;->saveLanguageAt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public getAllLanguages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    return-object v0
.end method

.method public getAlphaInputLanguageCyclingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    return-object v0
.end method

.method public getAlphabeticInputLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "alphaInputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

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

    check-cast v2, Lcom/nuance/swype/input/InputMethods$Language;

    .line 548
    .local v2, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-nez v3, :cond_0

    .line 549
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 552
    .end local v2    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    return-object v0
.end method

.method public getChineseInputLanguageCyclingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    return-object v0
.end method

.method public final getChineseInputLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v0, "chineseInputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

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

    check-cast v2, Lcom/nuance/swype/input/InputMethods$Language;

    .line 574
    .local v2, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 575
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 578
    .end local v2    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    return-object v0
.end method

.method public getChineseInputModeLayoutID(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "langId"    # Ljava/lang/String;

    .prologue
    .line 681
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods;->getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "mode":Ljava/lang/String;
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/16 v3, 0x900

    invoke-static {v1, p2, v0, v2, v3}, Lcom/nuance/swype/input/InputMethods;->getKeyboardLayoutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method public getCompatibleInputLanguages(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/List;
    .locals 4
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v1, "compatible":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 505
    .local v0, "checkLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCoreLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 509
    .end local v0    # "checkLang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    return-object v1
.end method

.method public getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 5

    .prologue
    .line 782
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 796
    :goto_0
    return-object v2

    .line 785
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/swype/input/InputMethods;->getSavedLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "currentLanguageId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 788
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v1, :cond_1

    .line 789
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/InputMethods;->setDefaultLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 790
    if-nez v1, :cond_1

    .line 791
    sget-object v2, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot find the current Language with languageId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 794
    :cond_1
    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 795
    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguageId:Ljava/lang/String;

    .line 796
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    goto :goto_0
.end method

.method public getDefaultAlphabeticInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 4

    .prologue
    .line 1028
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 1029
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget v2, v1, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v3, 0x109

    if-ne v2, v3, :cond_0

    .line 1033
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnabledLanguages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 952
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 953
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

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

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 954
    .local v1, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 955
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 958
    .end local v1    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_1
    return-object v2
.end method

.method public getEnglishLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 3

    .prologue
    .line 714
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 715
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isEnglishLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 720
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 5

    .prologue
    .line 821
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string v2, "toggle_restore_lang"

    const-string v3, ""

    const-string v4, "%x"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, "switchableLanguageId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 825
    .end local v0    # "switchableLanguageId":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v1
.end method

.method public getInputLanguageCount()I
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    return-object v0
.end method

.method public getInputLanguagesCopy()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getJapaneseInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 3

    .prologue
    .line 704
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 705
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 710
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLanguageById(I)Lcom/nuance/swype/input/InputMethods$Language;
    .locals 4
    .param p1, "languageId"    # I

    .prologue
    .line 534
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "languageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 537
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 542
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLanguageIdByLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 525
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 526
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    .line 529
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getLanguageIdIntByLanguageName(Ljava/lang/String;)I
    .locals 2
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 517
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 518
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 521
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 498
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v0

    .line 499
    .local v0, "recentLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNativeLanguageNameForCJK(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .locals 3
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v1, 0x0

    .line 1039
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-object v1

    .line 1042
    :cond_1
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1043
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1044
    sget v1, Lcom/nuance/swype/input/R$string;->label_chn_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1045
    :cond_2
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1046
    sget v1, Lcom/nuance/swype/input/R$string;->label_korean_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1047
    :cond_3
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    sget v1, Lcom/nuance/swype/input/R$string;->label_jp_abc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getRecentLanguages()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v5, "recentLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v6, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v3, v0, v1

    .line 443
    .local v3, "languageId":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 444
    .local v2, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v2, :cond_0

    .line 445
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v2    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v3    # "languageId":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public getToggleLanguageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->getNativeLanguageNameForCJK(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCJKLanguageEnabled()Z
    .locals 3

    .prologue
    .line 601
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 602
    .local v1, "m":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    const/4 v2, 0x1

    .line 607
    .end local v1    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isCJKOnDevice()Z
    .locals 3

    .prologue
    .line 611
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 612
    .local v1, "m":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 613
    :cond_1
    const/4 v2, 0x1

    .line 616
    .end local v1    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isChineseKoreanOnDevice()Z
    .locals 3

    .prologue
    .line 591
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 592
    .local v1, "m":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    :cond_1
    const/4 v2, 0x1

    .line 597
    .end local v1    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isChineseOnDevice()Z
    .locals 2

    .prologue
    .line 582
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 583
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 584
    const/4 v1, 0x1

    .line 587
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInputLanguageCurrent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "languageID"    # Ljava/lang/String;

    .prologue
    .line 965
    if-eqz p1, :cond_0

    .line 966
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/InputMethods;->getSavedLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 968
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToggleTemporary()Z
    .locals 3

    .prologue
    .line 829
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string v1, "toggle_temporary"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public refreshRecentLanguages()V
    .locals 9

    .prologue
    .line 455
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v5, "languageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v6, :cond_2

    aget-object v4, v0, v2

    .line 460
    .local v4, "languageId":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-virtual {p0, v4, v7}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;Z)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v3

    .line 461
    .local v3, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "foundId":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 468
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 469
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-virtual {v3}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v8

    iget-object v8, v8, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-static {v7, v4, v8}, Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/nuance/swype/input/InputMethods$Language;->setInputMode(Ljava/lang/String;)V

    .line 474
    :cond_0
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v1    # "foundId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v3    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "languageId":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v7, v5}, Lcom/nuance/swype/input/InputMethods;->setRecentLanguages(Landroid/content/Context;Ljava/util/List;)V

    .line 479
    return-void
.end method

.method public resetToggleState()V
    .locals 2

    .prologue
    .line 851
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nuance/swype/input/InputMethods;->setToggleState(Lcom/nuance/swype/input/InputMethods$Language;Z)V

    .line 852
    return-void
.end method

.method public setChineseCyclingKeyboardInputMode(ILjava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;)V
    .locals 3
    .param p1, "layoutId"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 687
    invoke-static {p2}, Lcom/nuance/swype/input/InputMethods;->getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "mode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputMethods;->getChineseModeNameSuffix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-virtual {p3, v0}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 690
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 691
    return-void
.end method

.method public setCurrentLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 873
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v1

    if-eq p1, v1, :cond_1

    .line 874
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->resetToggleState()V

    .line 876
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/nuance/swype/input/InputMethods;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public setCurrentLanguage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "langId"    # Ljava/lang/String;
    .param p2, "langIdFrom"    # Ljava/lang/String;
    .param p3, "isTemp"    # Z

    .prologue
    .line 862
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/nuance/swype/input/InputMethods;->setToggleState(Lcom/nuance/swype/input/InputMethods$Language;Z)V

    .line 863
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/InputMethods;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public setCurrentLanguageById(I)V
    .locals 1
    .param p1, "languageId"    # I

    .prologue
    .line 880
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method protected setToggleState(Lcom/nuance/swype/input/InputMethods$Language;Z)V
    .locals 0
    .param p1, "restoreLang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "isTemp"    # Z

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputMethods;->setFastSwitchedOffLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 847
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/InputMethods;->setToggleTemporary(Z)V

    .line 848
    return-void
.end method

.method protected setToggleTemporary(Z)V
    .locals 2
    .param p1, "isTemporary"    # Z

    .prologue
    .line 833
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string v1, "toggle_temporary"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 834
    return-void
.end method

.method public syncWithCurrentUserConfiguration()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 728
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 729
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 731
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v6

    .line 737
    .local v6, "inputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 738
    .local v0, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 739
    const/4 v2, 0x0

    .line 740
    .local v2, "found":Z
    invoke-interface {v6, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    rem-int v3, v7, v8

    .line 744
    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 745
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Language;

    .line 746
    .local v5, "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 747
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->saveAsCurrent()V

    .line 748
    invoke-virtual {v5, v9}, Lcom/nuance/swype/input/InputMethods$Language;->setEnabled(Z)V

    .line 749
    const/4 v2, 0x1

    .line 755
    .end local v5    # "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_0
    if-nez v2, :cond_1

    .line 756
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 757
    .local v1, "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->saveAsCurrent()V

    .line 758
    invoke-virtual {v1, v9}, Lcom/nuance/swype/input/InputMethods$Language;->setEnabled(Z)V

    .line 763
    .end local v1    # "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v2    # "found":Z
    .end local v3    # "i":I
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/input/InputMethods$Language;

    .line 764
    .restart local v5    # "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 766
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 744
    .end local v4    # "i$":Ljava/util/Iterator;
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 767
    .end local v2    # "found":Z
    .end local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 768
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 771
    .end local v5    # "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_5
    return-void
.end method
