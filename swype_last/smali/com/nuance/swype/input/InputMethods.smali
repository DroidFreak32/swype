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

.field public static final KEYBOARD_TRANSLITERATION:Ljava/lang/String; = "hindiTransliteration"

.field public static final KEYPAD_KEYBOARD_LAYOUT:I = 0x600

.field public static final KEYPAD_NARATGUL_KEYBOARD_LAYOUT:I = 0x720

.field public static final KEYPAD_PLUS_KEYBOARD_LAYOUT:I = 0x700

.field public static final KEYPAD_SKY_KEYBOARD_LAYOUT:I = 0x710

.field private static final MAX_RECENT_LANGUAGES:I = 0x4

.field public static final MCC_CODE_RUSSIA:I = 0xfa

.field public static final MULTITAP_INPUT_MODE:Ljava/lang/String; = "multitap"

.field public static final QWERTY_KEYBOARD_BILINGUAL_LAYOUT:I = 0xda0

.field public static final QWERTY_KEYBOARD_LAYOUT:I = 0x900

.field public static final REDUCED_QWERTY_KEYBOARD_LAYOUT:I = 0xa00

.field public static final SAVED_LOCALE_KEY:Ljava/lang/String; = "savedLocale"

.field public static final SETTING_CURRENT_LANGUAGE:Ljava/lang/String; = "current_language"

.field private static final SETTING_HK:Ljava/lang/String; = "Chinese_HK.enabled"

.field private static final SETTING_JA:Ljava/lang/String; = "Japanese.enabled"

.field private static final SETTING_KOREAN:Ljava/lang/String; = "Korean.enabled"

.field private static final SETTING_RECENT_LANGUAGE_DELIMETER:Ljava/lang/String; = ","

.field private static final SETTING_SIMPLIFY:Ljava/lang/String; = "Chinese_CN.enabled"

.field private static final SETTING_TOGGLE_RESTORE_LANGUAGE:Ljava/lang/String; = "toggle_restore_lang"

.field private static final SETTING_TOGGLE_TEMPORARY:Ljava/lang/String; = "toggle_temporary"

.field private static final SETTING_TW:Ljava/lang/String; = "Chinese_TW.enabled"

.field private static final TAG_INPUT_LANGUAGE:Ljava/lang/String; = "Language"

.field private static final TAG_INPUT_LAYOUT:Ljava/lang/String; = "Layout"

.field private static final TAG_INPUT_MODE:Ljava/lang/String; = "InputMode"

.field public static final VIETNAMESE_INPUT_MODE_NATIONAL:Ljava/lang/String; = "national"

.field public static final VIETNAMESE_INPUT_MODE_TELEX:Ljava/lang/String; = "telex"

.field private static isLocaleChanged:Z

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;

.field private static mCurrentLanguageId:Ljava/lang/String;

.field private static recentLanguageCache:[Ljava/lang/String;

.field protected static final trace:Lcom/nuance/swype/util/LogManager$Trace;


# instance fields
.field private checkedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation
.end field

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

.field private mDefaultLanguageId:Ljava/lang/String;

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

.field private final mT9TraceBuildEnabled:Z

.field private final mT9WriteAlphaBuildEnabled:Z

.field private final mT9WriteBuildChineseEnabled:Z

.field private final mXT9ChineseInputBuildEnabled:Z

.field private final showNativeNameForDisplay:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 54
    const-string/jumbo v0, "InputMethods"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 55
    invoke-static {}, Lcom/nuance/swype/util/LogManager;->getTrace()Lcom/nuance/swype/util/LogManager$Trace;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/InputMethods;->trace:Lcom/nuance/swype/util/LogManager$Trace;

    .line 108
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "Chinese_HK.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "Korean.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "Chinese_CN.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "Chinese_TW.enabled"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "Japanese.enabled"

    aput-object v3, v1, v2

    .line 109
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/InputMethods;->CJK_SETTINGS:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    .line 130
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    .line 131
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    .line 132
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 134
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/nuance/swype/input/InputMethods;->checkedList:Ljava/util/ArrayList;

    .line 162
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    .line 163
    new-instance v6, Lcom/nuance/swype/input/LanguageList;

    iget-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/nuance/swype/input/LanguageList;-><init>(Landroid/content/Context;)V

    .line 165
    .local v6, "langList":Lcom/nuance/swype/input/LanguageList;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v1

    .line 167
    .local v1, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteAlphaBuildEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    .line 168
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isWriteChineseBuildEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    .line 169
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isTraceBuildEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/InputMethods;->mT9TraceBuildEnabled:Z

    .line 170
    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isChineseInputBuildEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    .line 171
    iput-boolean v12, p0, Lcom/nuance/swype/input/InputMethods;->mSpeechBuildEnabled:Z

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$bool;->display_native_download_language_name:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    iput-boolean v9, p0, Lcom/nuance/swype/input/InputMethods;->showNativeNameForDisplay:Z

    .line 178
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods;->loadInputMethodConfigurations()Ljava/util/Map;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    .line 181
    iget-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/nuance/swype/input/LanguageList;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 182
    .local v4, "l":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v4, :cond_78

    .line 183
    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {v4}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    .line 186
    :cond_78
    iget-object v9, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v8

    .line 187
    .local v8, "sp":Landroid/content/SharedPreferences;
    invoke-virtual {v6}, Lcom/nuance/swype/input/LanguageList;->getLanguageList()Ljava/util/List;

    move-result-object v3

    .line 188
    .local v3, "inputLangList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8a
    :goto_8a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 189
    .local v5, "lang":Ljava/lang/String;
    iget-object v10, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/InputMethods$Language;

    .line 190
    .local v7, "langObj":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v7, :cond_8a

    .line 192
    iget-object v10, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v11, v7, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/nuance/swype/input/DatabaseConfig;->isPossibleDeprecatedLanguage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f3

    .line 194
    iget v10, v7, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-static {v8, v10, v11}, Lcom/nuance/swype/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 195
    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f3

    .line 198
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_Std"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e8

    iget-object v10, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v11, v7, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/nuance/swype/input/DatabaseConfig;->isUsingDeprecatedLanguageLDB(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 200
    iget-object v10, v7, Lcom/nuance/swype/input/InputMethods$Language;->defaultGlobalInputMode:Ljava/lang/String;

    iput-object v10, v7, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 202
    :cond_e8
    invoke-virtual {v7}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    .line 203
    .local v2, "im":Lcom/nuance/swype/input/InputMethods$InputMode;
    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {v7}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v2}, Lcom/nuance/swype/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    .line 207
    .end local v2    # "im":Lcom/nuance/swype/input/InputMethods$InputMode;
    :cond_f3
    invoke-virtual {p0, v7}, Lcom/nuance/swype/input/InputMethods;->addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    goto :goto_8a

    .line 211
    .end local v5    # "lang":Ljava/lang/String;
    .end local v7    # "langObj":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_f7
    invoke-virtual {v6}, Lcom/nuance/swype/input/LanguageList;->getDefaultLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-static {p1, v9}, Lcom/nuance/swype/input/InputMethods;->initRecentLanguageCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods;->getChineseInputLanguages()Ljava/util/List;

    move-result-object v0

    .line 216
    .local v0, "chineseInputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    if-eqz v0, :cond_12c

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_108
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/InputMethods$Language;

    .line 218
    invoke-virtual {v9}, Lcom/nuance/swype/input/InputMethods$Language;->getAllInputModes()Ljava/util/List;

    move-result-object v9

    .line 219
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_11c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_108

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 220
    invoke-virtual {v9, v12}, Lcom/nuance/swype/input/InputMethods$InputMode;->setEnabled(Z)V

    goto :goto_11c

    .line 224
    :cond_12c
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->detectLocaleChange()V

    .line 227
    return-void
.end method

.method static synthetic access$1000(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/nuance/swype/input/InputMethods;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitLayoutOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitKeypadOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 52
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/InputMethods;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods;->mT9TraceBuildEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/InputMethods;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods;->mSpeechBuildEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/nuance/swype/input/InputMethods;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/InputMethods;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/nuance/swype/input/InputMethods;->showNativeNameForDisplay:Z

    return v0
.end method

.method static synthetic access$800(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->getSavedInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .registers 3
    .param p0, "x0"    # Landroid/content/SharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->saveInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V

    return-void
.end method

.method private static composeIntKey(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 2918
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeKeyForKeyboardLayout(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "languageId"    # Ljava/lang/String;
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 2812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

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
    .registers 5
    .param p0, "languageId"    # Ljava/lang/String;
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 2822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/nuance/swype/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "KeypadOptions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static composeKeyForPortraitLayoutOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .param p0, "languageId"    # Ljava/lang/String;
    .param p1, "inputMode"    # Ljava/lang/String;
    .param p2, "orientation"    # I

    .prologue
    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/nuance/swype/input/InputMethods;->composeIntKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Options"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createInputMode(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/InputMethods$InputMode;
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;

    .prologue
    .line 361
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/R$styleable;->XT9:[I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 362
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/nuance/swype/input/R$styleable;->XT9_inputMode:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "inputMode":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    if-nez v1, :cond_1b

    iget-object v2, p2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 366
    iget-object v1, p2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    .line 369
    :cond_1b
    if-eqz v1, :cond_71

    .line 370
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 371
    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 372
    new-instance v2, Lcom/nuance/swype/input/InputMethods$ChineseHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$ChineseHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    .line 393
    :goto_2e
    return-object v2

    .line 374
    :cond_2f
    new-instance v2, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$ChineseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2e

    .line 376
    :cond_35
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 377
    const-string/jumbo v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 378
    new-instance v2, Lcom/nuance/swype/input/InputMethods$KoreanHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$KoreanHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2e

    .line 380
    :cond_4a
    new-instance v2, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$KoreanAmbigInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2e

    .line 382
    :cond_50
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 383
    const-string/jumbo v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 384
    new-instance v2, Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$JapaneseHandwritingInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2e

    .line 386
    :cond_65
    new-instance v2, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$JapaneseInputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2e

    .line 389
    :cond_6b
    new-instance v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-direct {v2, p1, p2, p3}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V

    goto :goto_2e

    .line 393
    :cond_71
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method private findInputLanguage(Ljava/lang/String;Z)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 11
    .param p1, "languageID"    # Ljava/lang/String;
    .param p2, "returnSingleOnBilingualFail"    # Z

    .prologue
    const/4 v7, 0x1

    .line 783
    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .line 784
    .local v3, "m":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v3, p1}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 805
    .end local v3    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_19
    return-object v3

    .line 789
    :cond_1a
    invoke-static {p1}, Lcom/nuance/swype/input/BilingualLanguage;->getLanguageIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "languageIds":[Ljava/lang/String;
    array-length v5, v2

    if-le v5, v7, :cond_44

    .line 791
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 792
    .local v0, "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    aget-object v5, v2, v7

    invoke-virtual {p0, v5}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v4

    .line 793
    .local v4, "secondLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_40

    .line 794
    if-eqz v4, :cond_3c

    .line 795
    new-instance v1, Lcom/nuance/swype/input/BilingualLanguage;

    invoke-direct {v1, v0, v4}, Lcom/nuance/swype/input/BilingualLanguage;-><init>(Lcom/nuance/swype/input/InputMethods$Language;Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 796
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputMethods;->addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    move-object v3, v1

    .line 797
    goto :goto_19

    .line 798
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_3c
    if-eqz p2, :cond_44

    move-object v3, v0

    .line 799
    goto :goto_19

    .line 801
    :cond_40
    if-eqz p2, :cond_44

    move-object v3, v4

    .line 802
    goto :goto_19

    .line 805
    .end local v0    # "firstLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v4    # "secondLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_44
    const/4 v3, 0x0

    goto :goto_19
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getInputMethods()Lcom/nuance/swype/input/InputMethods;

    move-result-object v0

    return-object v0
.end method

.method private getChineseInputLanguages()Ljava/util/List;
    .registers 5
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
    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v0, "chineseInputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 525
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 526
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 529
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_21
    return-object v0
.end method

.method public static getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 576
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModePinyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 577
    const-string/jumbo v0, "pinyin"

    .line 589
    .local v0, "mode":Ljava/lang/String;
    :goto_9
    return-object v0

    .line 578
    .end local v0    # "mode":Ljava/lang/String;
    :cond_a
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeZhuyin(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 579
    const-string/jumbo v0, "zhuyin"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_9

    .line 580
    .end local v0    # "mode":Ljava/lang/String;
    :cond_14
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 581
    const-string/jumbo v0, "cangjie"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_9

    .line 582
    .end local v0    # "mode":Ljava/lang/String;
    :cond_1e
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeQuickCangjie(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 583
    const-string/jumbo v0, "quick_cangjie"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_9

    .line 584
    .end local v0    # "mode":Ljava/lang/String;
    :cond_28
    invoke-static {p0}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 585
    const-string/jumbo v0, "handwriting"

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_9

    .line 587
    .end local v0    # "mode":Ljava/lang/String;
    :cond_32
    move-object v0, p0

    .restart local v0    # "mode":Ljava/lang/String;
    goto :goto_9
.end method

.method private getChineseModeNameSuffix(I)Ljava/lang/String;
    .registers 4
    .param p1, "layoutId"    # I

    .prologue
    .line 600
    const-string/jumbo v0, ""

    .line 601
    .local v0, "suffix":Ljava/lang/String;
    const/16 v1, 0x900

    if-ne p1, v1, :cond_b

    .line 602
    const-string/jumbo v0, "_qwerty"

    .line 606
    :cond_a
    :goto_a
    return-object v0

    .line 603
    :cond_b
    const/16 v1, 0x600

    if-ne p1, v1, :cond_a

    .line 604
    const-string/jumbo v0, "_nine_keys"

    goto :goto_a
.end method

.method public static getKeyboardLayoutId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "defaulKeyboardtLayoutId"    # I

    .prologue
    .line 2787
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForKeyboardLayout(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2788
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
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "defaulPortaitKeypadOptionsId"    # I

    .prologue
    .line 2799
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitKeypadOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2800
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
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "defaulPortaitLayoutOptionsId"    # I

    .prologue
    .line 2793
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForPortraitLayoutOptions(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2794
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
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultLangId"    # Ljava/lang/String;

    .prologue
    .line 2870
    sget-object v0, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    if-nez v0, :cond_7

    .line 2871
    invoke-static {p0, p1}, Lcom/nuance/swype/input/InputMethods;->initRecentLanguageCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 2873
    :cond_7
    sget-object v0, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    return-object v0
.end method

.method private static getSavedInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "defaultInputMode"    # Ljava/lang/String;

    .prologue
    .line 2770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "handwriting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2771
    .local v0, "handwritingMode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_22

    .line 2775
    .end local v0    # "handwritingMode":Ljava/lang/String;
    :goto_21
    return-object v0

    .restart local v0    # "handwritingMode":Ljava/lang/String;
    :cond_22
    invoke-static {p0, p1, p2}, Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method private static getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "defaultInputMode"    # Ljava/lang/String;

    .prologue
    .line 2780
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSavedLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultLangId"    # Ljava/lang/String;

    .prologue
    .line 2826
    invoke-static {p0, p1}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2827
    .local v0, "recentLanguages":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_a

    const/4 v1, 0x0

    aget-object p1, v0, v1

    .end local p1    # "defaultLangId":Ljava/lang/String;
    :cond_a
    return-object p1
.end method

.method private static initRecentLanguageCache(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultLangId"    # Ljava/lang/String;

    .prologue
    .line 2876
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    const-string/jumbo v4, "current_language"

    const-string/jumbo v5, "%x"

    invoke-virtual {v3, v4, p1, v5}, Lcom/nuance/swype/input/AppPreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2877
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    .line 2878
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_18
    sget-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2c

    .line 2879
    sget-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    aget-object v1, v3, v0

    .line 2880
    .local v1, "langID":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/nuance/swype/input/DatabaseConfig;->mockDeprecatedLanguageID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2881
    .local v2, "supportedId":Ljava/lang/String;
    sget-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 2878
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 2883
    .end local v1    # "langID":Ljava/lang/String;
    .end local v2    # "supportedId":Ljava/lang/String;
    :cond_2c
    return-void
.end method

.method public static isChineseDoublePinyin(Ljava/lang/String;)Z
    .registers 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 551
    const-string/jumbo v0, "doublepinyin"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isChineseInputModeCangjie(Ljava/lang/String;)Z
    .registers 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 565
    const-string/jumbo v0, "cangjie_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "cangjie_qwerty"

    .line 566
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isChineseInputModeHandwriting(Ljava/lang/String;)Z
    .registers 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 560
    const-string/jumbo v0, "handwriting_full_screen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "handwriting_half_screen"

    .line 561
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isChineseInputModePinyin(Ljava/lang/String;)Z
    .registers 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 542
    const-string/jumbo v0, "pinyin_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "pinyin_qwerty"

    .line 543
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isChineseInputModeQuickCangjie(Ljava/lang/String;)Z
    .registers 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 570
    const-string/jumbo v0, "quick_cangjie_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "quick_cangjie_qwerty"

    .line 571
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isChineseInputModeZhuyin(Ljava/lang/String;)Z
    .registers 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 555
    const-string/jumbo v0, "zhuyin_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "zhuyin_qwerty"

    .line 556
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isChineseNineKeyPinyin(Ljava/lang/String;)Z
    .registers 2
    .param p0, "inputMode"    # Ljava/lang/String;

    .prologue
    .line 547
    const-string/jumbo v0, "pinyin_nine_keys"

    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isLocaleChanged()Z
    .registers 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/nuance/swype/input/InputMethods;->isLocaleChanged:Z

    return v0
.end method

.method private loadInputMethodConfigurations()Ljava/util/Map;
    .registers 16
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
    const/4 v13, 0x0

    const/4 v14, 0x1

    .line 272
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v6, "languageConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v12, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 274
    .local v10, "res":Landroid/content/res/Resources;
    sget v12, Lcom/nuance/swype/input/R$xml;->inputmethodsconfig:I

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 276
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v12, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/nuance/swype/input/DatabaseConfig;->getLanguageDBList(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;

    move-result-object v4

    .line 277
    .local v4, "langToDbMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/nuance/swype/input/DatabaseConfig$LanguageDB;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v1, "globalInputModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$InputMode;>;"
    const/4 v5, 0x0

    .line 281
    .local v5, "language":Lcom/nuance/swype/input/InputMethods$Language;
    const/4 v2, 0x0

    .line 282
    .local v2, "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    const/4 v7, 0x0

    .line 284
    .local v7, "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_21
    :goto_21
    :try_start_21
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, "event":I
    if-eq v0, v14, :cond_11b

    .line 285
    const/4 v12, 0x2

    if-ne v0, v12, :cond_a2

    .line 286
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 288
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v12, "Language"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3d

    .line 289
    new-instance v5, Lcom/nuance/swype/input/InputMethods$Language;

    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-direct {v5, v10, p0, v9, v4}, Lcom/nuance/swype/input/InputMethods$Language;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods;Landroid/content/res/XmlResourceParser;Ljava/util/Map;)V

    .restart local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    goto :goto_21

    .line 290
    :cond_3d
    const-string/jumbo v12, "InputMode"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_93

    .line 291
    if-eqz v5, :cond_4d

    .line 292
    invoke-direct {p0, v10, v5, v9}, Lcom/nuance/swype/input/InputMethods;->createInputMode(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v2

    :goto_4c
    goto :goto_21

    :cond_4d
    new-instance v2, Lcom/nuance/swype/input/InputMethods$InputMode;

    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    const/4 v12, 0x0

    invoke-direct {v2, v10, v12, v9}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$Language;Landroid/content/res/XmlResourceParser;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_53} :catch_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_53} :catch_d8
    .catchall {:try_start_21 .. :try_end_53} :catchall_106

    goto :goto_4c

    .line 341
    .end local v0    # "event":I
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .end local v11    # "tag":Ljava/lang/String;
    :catch_54
    move-exception v12

    if-eqz v9, :cond_5a

    .line 342
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 347
    :cond_5a
    :goto_5a
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_62
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_122

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/InputMethods$Language;

    .line 348
    .local v3, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_72
    :goto_72
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_62

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/input/InputMethods$InputMode;

    .line 349
    .local v8, "mode":Lcom/nuance/swype/input/InputMethods$InputMode;
    # getter for: Lcom/nuance/swype/input/InputMethods$InputMode;->encoding:Ljava/lang/String;
    invoke-static {v8}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$300(Lcom/nuance/swype/input/InputMethods$InputMode;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_72

    invoke-virtual {v8, v3}, Lcom/nuance/swype/input/InputMethods$InputMode;->isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v14

    if-eqz v14, :cond_72

    .line 350
    new-instance v14, Lcom/nuance/swype/input/InputMethods$InputMode;

    invoke-direct {v14, v8, v3}, Lcom/nuance/swype/input/InputMethods$InputMode;-><init>(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Language;)V

    invoke-virtual {v3, v14}, Lcom/nuance/swype/input/InputMethods$Language;->addInputMode(Lcom/nuance/swype/input/InputMethods$InputMode;)V

    goto :goto_72

    .line 294
    .end local v3    # "lang":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v8    # "mode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v0    # "event":I
    .restart local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_93
    :try_start_93
    const-string/jumbo v12, "Layout"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 295
    new-instance v7, Lcom/nuance/swype/input/InputMethods$Layout;

    .end local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    invoke-direct {v7, v10, v2, v9}, Lcom/nuance/swype/input/InputMethods$Layout;-><init>(Landroid/content/res/Resources;Lcom/nuance/swype/input/InputMethods$InputMode;Landroid/content/res/XmlResourceParser;)V

    .restart local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    goto :goto_21

    .line 297
    .end local v11    # "tag":Ljava/lang/String;
    :cond_a2
    const/4 v12, 0x3

    if-ne v0, v12, :cond_21

    .line 298
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 300
    .restart local v11    # "tag":Ljava/lang/String;
    const-string/jumbo v12, "Language"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c4

    .line 307
    invoke-virtual {v5}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v12

    if-eqz v12, :cond_bc

    iget-boolean v12, p0, Lcom/nuance/swype/input/InputMethods;->mXT9ChineseInputBuildEnabled:Z

    if-eqz v12, :cond_c1

    .line 309
    :cond_bc
    iget-object v12, v5, Lcom/nuance/swype/input/InputMethods$Language;->mEnglishName:Ljava/lang/String;

    invoke-interface {v6, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_c1
    const/4 v5, 0x0

    goto/16 :goto_21

    .line 315
    :cond_c4
    const-string/jumbo v12, "InputMode"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10d

    .line 316
    if-nez v5, :cond_e0

    .line 318
    const/4 v12, 0x1

    # setter for: Lcom/nuance/swype/input/InputMethods$InputMode;->isGlobal:Z
    invoke-static {v2, v12}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$102(Lcom/nuance/swype/input/InputMethods$InputMode;Z)Z

    .line 319
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_d6} :catch_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_93 .. :try_end_d6} :catch_d8
    .catchall {:try_start_93 .. :try_end_d6} :catchall_106

    goto/16 :goto_21

    .line 341
    .end local v0    # "event":I
    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .end local v11    # "tag":Ljava/lang/String;
    :catch_d8
    move-exception v12

    if-eqz v9, :cond_5a

    .line 342
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_5a

    .line 321
    .restart local v0    # "event":I
    .restart local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_e0
    if-eqz v2, :cond_21

    :try_start_e2
    iget-object v12, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    if-eqz v12, :cond_21

    .line 324
    iget-object v12, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    const-string/jumbo v13, "handwriting"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_101

    iget-object v12, v2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 325
    invoke-static {v12}, Lcom/nuance/swype/input/InputMethods;->isChineseInputModeHandwriting(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_101

    iget-boolean v12, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteAlphaBuildEnabled:Z

    if-nez v12, :cond_101

    iget-boolean v12, p0, Lcom/nuance/swype/input/InputMethods;->mT9WriteBuildChineseEnabled:Z

    if-eqz v12, :cond_21

    .line 328
    :cond_101
    invoke-virtual {v5, v2}, Lcom/nuance/swype/input/InputMethods$Language;->addInputMode(Lcom/nuance/swype/input/InputMethods$InputMode;)V
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_104} :catch_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e2 .. :try_end_104} :catch_d8
    .catchall {:try_start_e2 .. :try_end_104} :catchall_106

    goto/16 :goto_21

    .line 341
    .end local v0    # "event":I
    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .end local v11    # "tag":Ljava/lang/String;
    :catchall_106
    move-exception v12

    if-eqz v9, :cond_10c

    .line 342
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_10c
    throw v12

    .line 331
    .restart local v0    # "event":I
    .restart local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .restart local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    .restart local v11    # "tag":Ljava/lang/String;
    :cond_10d
    :try_start_10d
    const-string/jumbo v12, "Layout"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    .line 332
    # invokes: Lcom/nuance/swype/input/InputMethods$InputMode;->addLayout(Lcom/nuance/swype/input/InputMethods$Layout;)V
    invoke-static {v2, v7}, Lcom/nuance/swype/input/InputMethods$InputMode;->access$200(Lcom/nuance/swype/input/InputMethods$InputMode;Lcom/nuance/swype/input/InputMethods$Layout;)V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_119} :catch_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10d .. :try_end_119} :catch_d8
    .catchall {:try_start_10d .. :try_end_119} :catchall_106

    goto/16 :goto_21

    .line 341
    .end local v11    # "tag":Ljava/lang/String;
    :cond_11b
    if-eqz v9, :cond_5a

    .line 342
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_5a

    .line 355
    .end local v0    # "event":I
    .end local v2    # "inputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    .end local v5    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v7    # "layout":Lcom/nuance/swype/input/InputMethods$Layout;
    :cond_122
    return-object v6
.end method

.method private static matchLocaleToSpecificLanguage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "currentLocale"    # Ljava/util/Locale;
    .param p1, "currentCountryCode"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 874
    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string/jumbo v0, "MO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 875
    const-string/jumbo p1, "hk"

    .line 877
    :cond_1d
    return-object p1
.end method

.method public static removeFromRecents(Ljava/lang/String;)V
    .registers 3
    .param p0, "langId"    # Ljava/lang/String;

    .prologue
    .line 2886
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2887
    .local v0, "recentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2888
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    .line 2889
    return-void
.end method

.method private resetToggleState()V
    .registers 3

    .prologue
    .line 732
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nuance/swype/input/InputMethods;->setToggleState(Lcom/nuance/swype/input/InputMethods$Language;Z)V

    .line 733
    return-void
.end method

.method private static saveInputMode(Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/nuance/swype/input/InputMethods$InputMode;)V
    .registers 8
    .param p0, "sp"    # Landroid/content/SharedPreferences;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Lcom/nuance/swype/input/InputMethods$InputMode;

    .prologue
    .line 2751
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2754
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$InputMode;->isHandwriting()Z

    move-result v2

    .line 2755
    .local v2, "isHandwriting":Z
    if-eqz v2, :cond_2e

    iget-object v1, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 2756
    .local v1, "handwritingMode":Ljava/lang/String;
    :goto_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "handwriting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2759
    if-nez v2, :cond_2a

    .line 2760
    iget-object v3, p2, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    invoke-interface {v0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2762
    :cond_2a
    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 2763
    return-void

    .line 2755
    .end local v1    # "handwritingMode":Ljava/lang/String;
    :cond_2e
    const-string/jumbo v1, ""

    goto :goto_c
.end method

.method public static saveKeyboardLayout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "inputMode"    # Ljava/lang/String;
    .param p3, "orientation"    # I
    .param p4, "KeyboardLayoutId"    # I

    .prologue
    .line 2805
    invoke-static {p1, p2, p3}, Lcom/nuance/swype/input/InputMethods;->composeKeyForKeyboardLayout(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 2806
    .local v0, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2807
    .local v1, "value":Ljava/lang/String;
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2808
    return-void
.end method

.method private static saveLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 2831
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nuance/swype/input/InputMethods;->saveLanguageAt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 2832
    sput-object p1, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguageId:Ljava/lang/String;

    .line 2833
    return-void
.end method

.method private static saveLanguageAt(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "languageId"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    const/4 v9, 0x4

    .line 2837
    if-le p2, v9, :cond_4

    .line 2867
    :goto_3
    return-void

    .line 2842
    :cond_4
    invoke-static {p0, p1}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2843
    .local v7, "recentLanguageList":[Ljava/lang/String;
    array-length v5, v7

    .line 2845
    .local v5, "recentCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2847
    .local v4, "newRecentLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2848
    .local v0, "added":Z
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .local v3, "newRecentCount":I
    move v2, v1

    .line 2849
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_12
    if-ge v2, v5, :cond_2e

    if-gt v3, v9, :cond_2e

    .line 2850
    if-ne v3, p2, :cond_22

    .line 2851
    move-object v6, p1

    .line 2852
    .local v6, "recentLanguage":Ljava/lang/String;
    const/4 v0, 0x1

    move v1, v2

    .line 2860
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_1b
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2861
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_12

    .line 2854
    .end local v6    # "recentLanguage":Ljava/lang/String;
    :cond_22
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-object v6, v7, v2

    .line 2855
    .restart local v6    # "recentLanguage":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_12

    .line 2863
    .end local v6    # "recentLanguage":Ljava/lang/String;
    :cond_2e
    if-nez v0, :cond_33

    .line 2864
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2866
    :cond_33
    invoke-static {p0, v4}, Lcom/nuance/swype/input/InputMethods;->setRecentLanguages(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_3
.end method

.method private setDefaultLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 4
    .param p1, "defaultLangID"    # Ljava/lang/String;

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 766
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_d

    .line 767
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->saveAsCurrent()V

    .line 768
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/InputMethods$Language;->setEnabled(Z)V

    .line 770
    :cond_d
    return-object v0
.end method

.method private setFastSwitchedOffLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 5
    .param p1, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 693
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string/jumbo v2, "toggle_restore_lang"

    if-eqz p1, :cond_15

    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    return-void

    .line 693
    :cond_15
    const-string/jumbo v0, ""

    goto :goto_11
.end method

.method public static setIsLocaleChanged(Z)V
    .registers 1
    .param p0, "isLocaleChanged"    # Z

    .prologue
    .line 148
    sput-boolean p0, Lcom/nuance/swype/input/InputMethods;->isLocaleChanged:Z

    .line 149
    return-void
.end method

.method public static setRecentLanguages(Landroid/content/Context;Ljava/util/List;)V
    .registers 8
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
    .line 2892
    .local p1, "languageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2893
    .local v1, "newRecentLanguages":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2894
    .local v0, "langId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 2897
    .end local v0    # "langId":Ljava/lang/String;
    :cond_1f
    invoke-static {p0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v3

    const-string/jumbo v4, "current_language"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2902
    .local v2, "size":I
    sget-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    if-eqz v3, :cond_3a

    sget-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v2, :cond_3e

    .line 2903
    :cond_3a
    new-array v3, v2, [Ljava/lang/String;

    sput-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    .line 2905
    :cond_3e
    sget-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    sput-object v3, Lcom/nuance/swype/input/InputMethods;->recentLanguageCache:[Ljava/lang/String;

    .line 2906
    return-void
.end method

.method private setToggleState(Lcom/nuance/swype/input/InputMethods$Language;Z)V
    .registers 3
    .param p1, "restoreLang"    # Lcom/nuance/swype/input/InputMethods$Language;
    .param p2, "isTemp"    # Z

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/InputMethods;->setFastSwitchedOffLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V

    .line 728
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/InputMethods;->setToggleTemporary(Z)V

    .line 729
    return-void
.end method

.method private setToggleTemporary(Z)V
    .registers 4
    .param p1, "isTemporary"    # Z

    .prologue
    .line 714
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "toggle_temporary"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/AppPreferences;->setBoolean(Ljava/lang/String;Z)V

    .line 715
    return-void
.end method


# virtual methods
.method addLanguage(Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 7
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 398
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    :goto_d
    return-void

    .line 400
    :cond_e
    sget-object v0, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v1, "Duplicate language (%s) - IGNORED"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {p1}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->w(Ljava/lang/Object;)V

    goto :goto_d
.end method

.method public addTextCategory(Lcom/nuance/input/swypecorelib/T9Write;Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 5
    .param p1, "t9Write"    # Lcom/nuance/input/swypecorelib/T9Write;
    .param p2, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 909
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 935
    :cond_4
    :goto_4
    return-void

    .line 912
    :cond_5
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->clearCategory()V

    .line 913
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addTextCategory()V

    .line 914
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v0

    .line 916
    .local v0, "handWritingInputMode":Lcom/nuance/swype/input/InputMethods$InputMode;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndIntegratedEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 917
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 918
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitChineseEnabled()Z

    move-result v1

    if-nez v1, :cond_39

    .line 919
    :cond_21
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 920
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitEnglishEnabled()Z

    move-result v1

    if-nez v1, :cond_39

    .line 921
    :cond_2d
    invoke-virtual {p2}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 922
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndDigitJapaneseEnabled()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 923
    :cond_39
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addNumberCategory()V

    .line 925
    :cond_3c
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndPunctuationEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 926
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addPunctuationCategory()V

    .line 928
    :cond_45
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndSymbolEnabled()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 929
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addSymbolCategory()V

    .line 931
    :cond_4e
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$InputMode;->isMixLetterAndABCEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 932
    invoke-virtual {p1}, Lcom/nuance/input/swypecorelib/T9Write;->addLatinLetterCategory()V

    goto :goto_4
.end method

.method public countEnabledLanguageMode()I
    .registers 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method final detectLocaleChange()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 236
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    .line 237
    .local v0, "appPrefs":Lcom/nuance/swype/input/AppPreferences;
    const-string/jumbo v4, "savedLocale"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "previousSavedLocale":Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v1, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 239
    .local v1, "currentLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69

    .line 240
    invoke-static {v9}, Lcom/nuance/swype/input/InputMethods;->setIsLocaleChanged(Z)V

    .line 242
    const-string/jumbo v4, "savedLocale"

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/nuance/swype/input/AppPreferences;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-virtual {p0, v1, v4}, Lcom/nuance/swype/input/InputMethods;->findLanguageBestFitsCurrentLocale(Ljava/util/Locale;Ljava/util/List;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 247
    .local v2, "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v2, :cond_40

    .line 249
    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    .line 251
    :cond_40
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/nuance/swype/input/InputMethods;->setDefaultLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v2

    .line 252
    if-eqz v2, :cond_6a

    .line 253
    iget-object v4, v2, Lcom/nuance/swype/input/InputMethods$Language;->mDefaultInputMode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/InputMethods$Language;->setInputMode(Ljava/lang/String;)V

    .line 260
    :goto_4d
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods;->resetToggleState()V

    .line 263
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getAppPreferences()Lcom/nuance/swype/input/AppPreferences;

    move-result-object v4

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/nuance/swype/input/AppPreferences;->resetAccessibilityInfo(Landroid/content/Context;)V

    .line 264
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nuance/swype/connect/Connect;->from(Landroid/content/Context;)Lcom/nuance/swype/connect/Connect;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Lcom/nuance/swype/connect/Connect;->setCurrentLanguage(Lcom/nuance/swype/input/InputMethods$Language;I)V

    .line 268
    .end local v2    # "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_69
    return-void

    .line 255
    .restart local v2    # "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_6a
    sget-object v4, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string/jumbo v5, "Cannot find default language Id %s locale = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    aput-object v8, v6, v7

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_4d
.end method

.method findCoreInputLanguage(I)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 5
    .param p1, "coreLanguageID"    # I

    .prologue
    .line 809
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 810
    .local v0, "m":Lcom/nuance/swype/input/InputMethods$Language;
    iget v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    if-ne v2, p1, :cond_6

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCoreLanguage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 814
    .end local v0    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 3
    .param p1, "languageID"    # Ljava/lang/String;

    .prologue
    .line 774
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;Z)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    return-object v0
.end method

.method public findLanguageBestFitsCurrentLocale(Ljava/util/Locale;Ljava/util/List;)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 14
    .param p1, "currentLocale"    # Ljava/util/Locale;
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
    .line 829
    .local p2, "inputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 830
    .local v2, "currentCountryCode":Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/nuance/swype/input/InputMethods;->matchLocaleToSpecificLanguage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 831
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, "currentLangCode":Ljava/lang/String;
    const/4 v0, 0x0

    .line 836
    .local v0, "bestMatch":Lcom/nuance/swype/input/InputMethods$Language;
    const/4 v8, 0x0

    .line 839
    .local v8, "matchLangCode":Lcom/nuance/swype/input/InputMethods$Language;
    const/4 v4, 0x0

    .line 841
    .local v4, "firstOneMatchLangNotCountry":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1b
    :goto_1b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nuance/swype/input/InputMethods$Language;

    .line 842
    .local v7, "m":Lcom/nuance/swype/input/InputMethods$Language;
    iget-object v6, v7, Lcom/nuance/swype/input/InputMethods$Language;->locale:Ljava/util/Locale;

    .line 843
    .local v6, "locale":Ljava/util/Locale;
    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 844
    .local v5, "langCode":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 848
    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "countryCode":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 850
    move-object v0, v7

    .line 862
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v5    # "langCode":Ljava/lang/String;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_46
    if-eqz v0, :cond_5f

    .line 868
    .end local v0    # "bestMatch":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_48
    return-object v0

    .line 853
    .restart local v0    # "bestMatch":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v1    # "countryCode":Ljava/lang/String;
    .restart local v5    # "langCode":Ljava/lang/String;
    .restart local v6    # "locale":Ljava/util/Locale;
    .restart local v7    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_49
    if-nez v8, :cond_55

    const-string/jumbo v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_55

    .line 855
    move-object v8, v7

    .line 857
    :cond_55
    if-nez v4, :cond_1b

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 859
    move-object v4, v7

    goto :goto_1b

    .line 865
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v5    # "langCode":Ljava/lang/String;
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_5f
    if-eqz v8, :cond_63

    move-object v0, v8

    .line 866
    goto :goto_48

    :cond_63
    move-object v0, v4

    .line 868
    goto :goto_48
.end method

.method public findLanguageFromName(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 3
    .param p1, "languageName"    # Ljava/lang/String;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 779
    return-object v0
.end method

.method forceAddRecentLanguage(Ljava/lang/String;)V
    .registers 7
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "recentLanguageList":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 464
    .local v0, "inList":Z
    array-length v3, v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v3, :cond_14

    aget-object v4, v1, v2

    .line 465
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 466
    const/4 v0, 0x1

    .line 470
    :cond_14
    if-eqz v0, :cond_1a

    .line 474
    :goto_16
    return-void

    .line 464
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 473
    :cond_1a
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3}, Lcom/nuance/swype/input/InputMethods;->saveLanguageAt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_16
.end method

.method public getAllLanguages()Ljava/util/Map;
    .registers 2
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
    .line 492
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    return-object v0
.end method

.method public getCheckedLanguages()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->checkedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompatibleInputLanguages(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/List;
    .registers 6
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
    .line 482
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v1, "compatible":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 484
    .local v0, "checkLang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz p1, :cond_b

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCompatibleLanguage(Lcom/nuance/swype/input/InputMethods$Language;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p1, v0}, Lcom/nuance/swype/input/InputMethods$Language;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isCoreLanguage()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 485
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 488
    .end local v0    # "checkLang":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_2f
    return-object v1
.end method

.method public getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .registers 6

    .prologue
    .line 668
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 669
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 683
    :goto_14
    return-object v2

    .line 671
    :cond_15
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/nuance/swype/input/InputMethods;->getSavedLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "currentLanguageId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 674
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v1, :cond_42

    .line 675
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/InputMethods;->setDefaultLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 676
    if-nez v1, :cond_42

    .line 677
    sget-object v2, Lcom/nuance/swype/input/InputMethods;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot find the current Language with languageId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 678
    const/4 v2, 0x0

    goto :goto_14

    .line 681
    :cond_42
    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 682
    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {v1}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguageId:Ljava/lang/String;

    .line 683
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mCurrentLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    goto :goto_14
.end method

.method getDefaultAlphabeticInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .registers 5

    .prologue
    .line 881
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 882
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    iget v2, v0, Lcom/nuance/swype/input/InputMethods$Language;->mCoreLanguageId:I

    const/16 v3, 0x109

    if-ne v2, v3, :cond_6

    .line 886
    .end local v0    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .registers 6

    .prologue
    .line 702
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    if-nez v1, :cond_1d

    .line 703
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v1

    const-string/jumbo v2, "toggle_restore_lang"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "%x"

    invoke-virtual {v1, v2, v3, v4}, Lcom/nuance/swype/input/AppPreferences;->getUpgradedString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "switchableLanguageId":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    .line 706
    .end local v0    # "switchableLanguageId":Ljava/lang/String;
    :cond_1d
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mFastSwitchedOffLanguage:Lcom/nuance/swype/input/InputMethods$Language;

    return-object v1
.end method

.method public getInputLanguages()Ljava/util/List;
    .registers 2
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
    .line 405
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    return-object v0
.end method

.method public getInputLanguagesCopy()Ljava/util/List;
    .registers 3
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
    .line 519
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getLanguageById(I)Lcom/nuance/swype/input/InputMethods$Language;
    .registers 7
    .param p1, "languageId"    # I

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 508
    .local v2, "languageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    .line 509
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 510
    move-object v0, v1

    .line 515
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_22
    return-object v0
.end method

.method getLanguageIdIntByLanguageName(Ljava/lang/String;)I
    .registers 4
    .param p1, "langName"    # Ljava/lang/String;

    .prologue
    .line 496
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mAllLanguages:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 497
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_f

    .line 498
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->getCoreLanguageId()I

    move-result v1

    .line 500
    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method getLastLanguage()Lcom/nuance/swype/input/InputMethods$Language;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 477
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v0

    .line 478
    .local v0, "recentLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_12

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/InputMethods$Language;

    :goto_11
    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method getNativeLanguageNameForCJK(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;
    .registers 5
    .param p1, "language"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    const/4 v1, 0x0

    .line 892
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_7

    if-nez p1, :cond_8

    .line 904
    :cond_7
    :goto_7
    return-object v1

    .line 895
    :cond_8
    iget-object v2, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 896
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 897
    sget v1, Lcom/nuance/swype/input/R$string;->label_chn_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 898
    :cond_1f
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 899
    sget v1, Lcom/nuance/swype/input/R$string;->label_korean_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 900
    :cond_30
    invoke-virtual {p1}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 901
    sget v1, Lcom/nuance/swype/input/R$string;->label_jp_abc:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method public getRecentLanguages()Ljava/util/List;
    .registers 7
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
    .line 411
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v2, "recentLanguageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 413
    array-length v5, v4

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v5, :cond_1f

    aget-object v1, v4, v3

    .line 414
    .local v1, "languageId":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 415
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_1c

    .line 416
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 420
    .end local v0    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v1    # "languageId":Ljava/lang/String;
    :cond_1f
    return-object v2
.end method

.method getToggleLanguageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->getNativeLanguageNameForCJK(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCJKOnDevice()Z
    .registers 4

    .prologue
    .line 533
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mInputLanguages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 534
    .local v0, "m":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isKoreanLanguage()Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isJapaneseLanguage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 535
    :cond_24
    const/4 v1, 0x1

    .line 538
    .end local v0    # "m":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_25
    return v1

    :cond_26
    const/4 v1, 0x0

    goto :goto_25
.end method

.method public isInputLanguageCurrent(Ljava/lang/String;)Z
    .registers 4
    .param p1, "languageID"    # Ljava/lang/String;

    .prologue
    .line 821
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nuance/swype/input/InputMethods;->getSavedLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isRecentLanguagesBilingualCompatible()Z
    .registers 4

    .prologue
    .line 2909
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/input/InputMethods$Language;

    .line 2910
    .local v0, "language":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->getCompatibleInputLanguages(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 2911
    const/4 v1, 0x1

    .line 2914
    .end local v0    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method isToggleTemporary()Z
    .registers 4

    .prologue
    .line 710
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    const-string/jumbo v1, "toggle_temporary"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/input/AppPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method refreshRecentLanguages()V
    .registers 10

    .prologue
    .line 434
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .local v3, "languageIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/nuance/swype/input/InputMethods;->getRecentLanguages(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 436
    array-length v6, v5

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v6, :cond_47

    aget-object v2, v5, v4

    .line 439
    .local v2, "languageId":Ljava/lang/String;
    const/4 v7, 0x1

    invoke-direct {p0, v2, v7}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;Z)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 440
    .local v1, "language":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v1, :cond_44

    .line 443
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getLanguageId()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "foundId":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_44

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_41

    .line 448
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    .line 449
    invoke-static {v7}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/AppPreferences;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 451
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->getCurrentInputMode()Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v8

    iget-object v8, v8, Lcom/nuance/swype/input/InputMethods$InputMode;->mInputMode:Ljava/lang/String;

    .line 449
    invoke-static {v7, v2, v8}, Lcom/nuance/swype/input/InputMethods;->getSavedInputModeNoHandwriting(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 448
    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/InputMethods$Language;->setInputMode(Ljava/lang/String;)V

    .line 453
    :cond_41
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v0    # "foundId":Ljava/lang/String;
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 457
    .end local v1    # "language":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v2    # "languageId":Ljava/lang/String;
    :cond_47
    iget-object v4, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/nuance/swype/input/InputMethods;->setRecentLanguages(Landroid/content/Context;Ljava/util/List;)V

    .line 458
    return-void
.end method

.method public setCheckedLanguages(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/swype/input/InputMethods$Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nuance/swype/input/InputMethods$Language;>;"
    iput-object p1, p0, Lcom/nuance/swype/input/InputMethods;->checkedList:Ljava/util/ArrayList;

    .line 425
    return-void
.end method

.method public setChineseCyclingKeyboardInputMode(ILjava/lang/String;Lcom/nuance/swype/input/InputMethods$Language;)V
    .registers 7
    .param p1, "layoutId"    # I
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "lang"    # Lcom/nuance/swype/input/InputMethods$Language;

    .prologue
    .line 593
    invoke-static {p2}, Lcom/nuance/swype/input/InputMethods;->getChineseInputModeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
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

    .line 595
    invoke-virtual {p3, v0}, Lcom/nuance/swype/input/InputMethods$Language;->getInputMode(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$InputMode;

    move-result-object v1

    .line 596
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$InputMode;->saveAsCurrent()V

    .line 597
    return-void
.end method

.method public setCurrentLanguage(Ljava/lang/String;)V
    .registers 4
    .param p1, "languageId"    # Ljava/lang/String;

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 754
    .local v0, "lang":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_10

    # getter for: Lcom/nuance/swype/input/InputMethods$Language;->mLanguageId:Ljava/lang/String;
    invoke-static {v0}, Lcom/nuance/swype/input/InputMethods$Language;->access$000(Lcom/nuance/swype/input/InputMethods$Language;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 755
    :cond_10
    invoke-direct {p0}, Lcom/nuance/swype/input/InputMethods;->resetToggleState()V

    .line 757
    :cond_13
    iget-object v1, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/nuance/swype/input/InputMethods;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method public setCurrentLanguage(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "langId"    # Ljava/lang/String;
    .param p2, "langIdFrom"    # Ljava/lang/String;
    .param p3, "isTemp"    # Z

    .prologue
    .line 743
    invoke-virtual {p0, p2}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/nuance/swype/input/InputMethods;->setToggleState(Lcom/nuance/swype/input/InputMethods$Language;Z)V

    .line 744
    iget-object v0, p0, Lcom/nuance/swype/input/InputMethods;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/nuance/swype/input/InputMethods;->saveLanguage(Landroid/content/Context;Ljava/lang/String;)V

    .line 746
    return-void
.end method

.method public setCurrentLanguageById(I)V
    .registers 3
    .param p1, "languageId"    # I

    .prologue
    .line 761
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/InputMethods;->setCurrentLanguage(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method public syncWithCurrentUserConfiguration()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 614
    iget-object v6, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 615
    iget-object v6, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 617
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getInputLanguages()Ljava/util/List;

    move-result-object v5

    .line 623
    .local v5, "inputLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/InputMethods$Language;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/input/InputMethods;->getCurrentInputLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v0

    .line 624
    .local v0, "currentLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 625
    const/4 v2, 0x0

    .line 626
    .local v2, "found":Z
    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 627
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    rem-int v3, v6, v7

    .line 630
    .local v3, "i":I
    :goto_28
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_41

    .line 631
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 632
    .local v4, "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 633
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->saveAsCurrent()V

    .line 634
    invoke-virtual {v4, v8}, Lcom/nuance/swype/input/InputMethods$Language;->setEnabled(Z)V

    .line 635
    const/4 v2, 0x1

    .line 641
    .end local v4    # "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_41
    if-nez v2, :cond_4f

    .line 642
    iget-object v6, p0, Lcom/nuance/swype/input/InputMethods;->mDefaultLanguageId:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/nuance/swype/input/InputMethods;->findInputLanguage(Ljava/lang/String;)Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v1

    .line 643
    .local v1, "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputMethods$Language;->saveAsCurrent()V

    .line 644
    invoke-virtual {v1, v8}, Lcom/nuance/swype/input/InputMethods$Language;->setEnabled(Z)V

    .line 649
    .end local v1    # "defaultLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v2    # "found":Z
    .end local v3    # "i":I
    :cond_4f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_53
    :goto_53
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nuance/swype/input/InputMethods$Language;

    .line 650
    .restart local v4    # "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isChineseLanguage()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 651
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_74

    .line 652
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mChineseInputLanguageCycling:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 630
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 653
    .end local v2    # "found":Z
    .end local v3    # "i":I
    :cond_74
    invoke-virtual {v4}, Lcom/nuance/swype/input/InputMethods$Language;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 654
    iget-object v7, p0, Lcom/nuance/swype/input/InputMethods;->mAlphaInputLanguageCycling:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    .line 657
    .end local v4    # "inputLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    :cond_80
    return-void
.end method
