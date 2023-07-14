.class public Lcom/nuance/swype/input/KeyboardManager;
.super Ljava/lang/Object;
.source "KeyboardManager.java"

# interfaces
.implements Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;


# static fields
.field private static final EMPTY_KEYBOARD_ID:I = 0x0

.field private static final ID_CORE_MASK:I = 0xffff

.field private static final ID_DOCK_MODE_SHIFT:I = 0x14

.field private static final ID_EMAIL_MODE:I = 0x40000

.field private static final ID_IM_MODE:I = 0x60000

.field private static final ID_NORMAL_MODE:I = 0x20000

.field private static final ID_NUMBER_MODE:I = 0x80000

.field private static final ID_ORIENTATION_FLAG:I = 0x10000

.field private static final ID_URL_MODE:I = 0xa0000

.field private static final MAX_CACHE_COUNT:I = 0x4

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private accessibility:Z

.field private final context:Landroid/content/Context;

.field private currencyType:I

.field private dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

.field private forceSetKeyboardDatabase:Z

.field private handwritingEnabled:Z

.field private isLanguageSupportingHwr:Z

.field private isOnlyThemeChanged:Z

.field private final keyboardCache:Lcom/nuance/android/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/android/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/swype/input/XT9Keyboard;",
            ">;"
        }
    .end annotation
.end field

.field private keyboardId:I

.field private keyboardScaleLandscape:F

.field private keyboardScalePortrait:F

.field private keyboardSwitchable:Z

.field private locale:Ljava/lang/String;

.field private modeId:I

.field private showVoiceKeyEnabled:Z

.field private swypeThemeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "KeyboardManager"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/KeyboardManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/nuance/swype/input/KeyboardManager$1;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/nuance/swype/input/KeyboardManager$1;-><init>(Lcom/nuance/swype/input/KeyboardManager;I)V

    iput-object v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    .line 48
    iput v2, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    .line 49
    iput v3, p0, Lcom/nuance/swype/input/KeyboardManager;->modeId:I

    .line 57
    iput-boolean v2, p0, Lcom/nuance/swype/input/KeyboardManager;->accessibility:Z

    .line 58
    iput-boolean v3, p0, Lcom/nuance/swype/input/KeyboardManager;->isLanguageSupportingHwr:Z

    .line 70
    iput-object p1, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->checkConfigChanged()Z

    .line 72
    return-void
.end method

.method private checkConfigChanged()Z
    .locals 20

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 250
    .local v4, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v18

    .line 251
    .local v18, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v9

    .line 252
    .local v9, "newHandwritingEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/KeyboardEx;->shouldEnableSpeechKey(Landroid/content/Context;)Z

    move-result v16

    .line 253
    .local v16, "newShowVoiceKeyEnabled":Z
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v12

    .line 254
    .local v12, "newKeyboardScalePortrait":F
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v11

    .line 256
    .local v11, "newKeyboardScaleLandscape":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v19

    if-eqz v19, :cond_0

    const/4 v13, 0x1

    .line 257
    .local v13, "newKeyboardSwitchable":Z
    :goto_0
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getSku()Ljava/lang/String;

    move-result-object v17

    .line 259
    .local v17, "newSwypeThemeName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v14

    .line 261
    .local v14, "newLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    if-nez v14, :cond_1

    .line 263
    const/4 v2, 0x0

    .line 306
    :goto_1
    return v2

    .line 256
    .end local v13    # "newKeyboardSwitchable":Z
    .end local v14    # "newLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v17    # "newSwypeThemeName":Ljava/lang/String;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 266
    .restart local v13    # "newKeyboardSwitchable":Z
    .restart local v14    # "newLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v17    # "newSwypeThemeName":Ljava/lang/String;
    :cond_1
    iget v7, v14, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 267
    .local v7, "newCurrencyType":I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardManager;->accessibility:Z

    .line 268
    .local v6, "newAccessibility":Z
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    .line 269
    .local v3, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v3, :cond_2

    .line 270
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v6

    .line 272
    :cond_2
    invoke-virtual {v14}, Lcom/nuance/swype/input/InputMethods$Language;->supportsHwr()Z

    move-result v10

    .line 273
    .local v10, "newIsLanguageSupportingHwr":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v8

    .line 274
    .local v8, "newDockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 275
    .local v5, "lc":Ljava/util/Locale;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    .line 276
    .local v15, "newLocale":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->handwritingEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->showVoiceKeyEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardSwitchable:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v13, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardManager;->currencyType:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v7, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->accessibility:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v6, v0, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->isLanguageSupportingHwr:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v10, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScalePortrait:F

    move/from16 v19, v0

    cmpl-float v19, v12, v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScaleLandscape:F

    move/from16 v19, v0

    cmpl-float v19, v11, v19

    if-nez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->locale:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 285
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    :cond_3
    const/4 v2, 0x1

    .line 287
    .local v2, "configChanged":Z
    :goto_3
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/nuance/swype/input/KeyboardManager;->handwritingEnabled:Z

    .line 288
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardManager;->showVoiceKeyEnabled:Z

    .line 289
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardSwitchable:Z

    .line 290
    move-object/from16 v0, p0

    iput v7, v0, Lcom/nuance/swype/input/KeyboardManager;->currencyType:I

    .line 291
    move-object/from16 v0, p0

    iput v12, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScalePortrait:F

    .line 292
    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScaleLandscape:F

    .line 294
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/nuance/swype/input/KeyboardManager;->accessibility:Z

    .line 295
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/nuance/swype/input/KeyboardManager;->isLanguageSupportingHwr:Z

    .line 296
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 297
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardManager;->locale:Ljava/lang/String;

    .line 299
    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->swypeThemeName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 300
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardManager;->isOnlyThemeChanged:Z

    .line 301
    const/4 v2, 0x1

    .line 305
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardManager;->swypeThemeName:Ljava/lang/String;

    goto/16 :goto_1

    .line 275
    .end local v2    # "configChanged":Z
    .end local v15    # "newLocale":Ljava/lang/String;
    :cond_4
    const-string/jumbo v15, ""

    goto/16 :goto_2

    .line 285
    .restart local v15    # "newLocale":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    .line 303
    .restart local v2    # "configChanged":Z
    :cond_6
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardManager;->isOnlyThemeChanged:Z

    goto :goto_4
.end method

.method private clearKeyboardViewsCache()V
    .locals 3

    .prologue
    .line 344
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 345
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-nez v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 350
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->clearMiniKeyboardCache()V

    .line 354
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->clearDrawBufferCache()V

    goto :goto_0
.end method

.method public static from(Landroid/content/Context;)Lcom/nuance/swype/input/KeyboardManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-static {p0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getKeyboardManager()Lcom/nuance/swype/input/KeyboardManager;

    move-result-object v0

    return-object v0
.end method

.method private toCoreId(I)I
    .locals 4
    .param p1, "swypeId"    # I

    .prologue
    .line 315
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 316
    .local v0, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 318
    .local v2, "orientation":I
    const v3, 0xffff

    and-int v1, p1, v3

    .line 319
    .local v1, "id":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 320
    const/high16 v3, 0x10000

    or-int/2addr v1, v3

    .line 322
    :cond_0
    iget v3, p0, Lcom/nuance/swype/input/KeyboardManager;->modeId:I

    packed-switch v3, :pswitch_data_0

    .line 336
    :goto_0
    :pswitch_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v3

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v1

    .line 338
    return v3

    .line 324
    :pswitch_1
    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    .line 325
    goto :goto_0

    .line 327
    :pswitch_2
    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    .line 328
    goto :goto_0

    .line 330
    :pswitch_3
    const/high16 v3, 0x60000

    or-int/2addr v1, v3

    .line 331
    goto :goto_0

    .line 333
    :pswitch_4
    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public evictAll()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 361
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->clearKeyboardViewsCache()V

    .line 362
    return-void
.end method

.method public forceSetKeyboardDatabase(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/nuance/swype/input/KeyboardManager;->forceSetKeyboardDatabase:Z

    .line 95
    return-void
.end method

.method public getKeyboard(Lcom/nuance/input/swypecorelib/XT9CoreInput;)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 2
    .param p1, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;

    .prologue
    .line 75
    iget v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    if-eqz v0, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->checkConfigChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 79
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->clearKeyboardViewsCache()V

    .line 80
    iget v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    iget v1, p0, Lcom/nuance/swype/input/KeyboardManager;->modeId:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/nuance/swype/input/KeyboardManager;->setKeyboard(Lcom/nuance/input/swypecorelib/XT9CoreInput;II)Lcom/nuance/swype/input/XT9Keyboard;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    iget v1, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyboardId()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    return v0
.end method

.method public isDockModeChanged()Z
    .locals 3

    .prologue
    .line 309
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    .line 310
    .local v1, "newDockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 311
    .local v0, "configChanged":Z
    :goto_0
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 312
    return v0

    .line 310
    .end local v0    # "configChanged":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadKeyboardDatabase(II)Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;
    .locals 32
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v15

    .line 132
    .local v15, "ime":Lcom/nuance/swype/input/IME;
    if-nez v15, :cond_0

    .line 133
    const/4 v2, 0x0

    .line 235
    :goto_0
    return-object v2

    .line 136
    :cond_0
    invoke-virtual {v15}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v16

    .line 137
    .local v16, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v16, :cond_1

    .line 138
    const/4 v2, 0x0

    goto :goto_0

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nuance/swype/input/XT9Keyboard;

    .line 143
    .local v18, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-nez v18, :cond_2

    .line 144
    sget-object v2, Lcom/nuance/swype/input/KeyboardManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "keyboard return NULL, kdbId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 145
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/XT9Keyboard;->canSwypePopupCharacters()Z

    move-result v29

    .line 149
    .local v29, "usePopupCharacters":Z
    invoke-virtual/range {v16 .. v16}, Lcom/nuance/swype/input/InputView;->getShiftGestureOffset()I

    move-result v28

    .line 150
    .local v28, "topMargin":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v30, "xt9Keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v13, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v25, "shiftCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v21, "multitapChars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/XT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :cond_3
    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 156
    .local v17, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v2, :cond_3

    .line 158
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 159
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 160
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 161
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    array-length v7, v6

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_5

    aget v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 162
    .local v11, "code":Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xfdf

    if-eq v8, v9, :cond_4

    .line 163
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 167
    .end local v11    # "code":Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardManager;->supportsTapCoordinates(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 168
    move-object/from16 v0, v17

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    const/16 v6, 0xfdf

    if-eq v2, v6, :cond_8

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    if-nez v2, :cond_8

    .line 171
    move-object/from16 v0, v17

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_6
    :goto_3
    if-eqz v29, :cond_a

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-nez v2, :cond_a

    .line 182
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v23

    .line 183
    .local v23, "popupCharCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v23

    if-ge v14, v0, :cond_a

    .line 184
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    .line 186
    .local v22, "nextCode":Ljava/lang/Character;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 187
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 172
    .end local v14    # "i":I
    .end local v22    # "nextCode":Ljava/lang/Character;
    .end local v23    # "popupCharCount":I
    :cond_8
    move-object/from16 v0, v17

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v6, 0xfdf

    if-eq v2, v6, :cond_6

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-nez v2, :cond_6

    .line 176
    move-object/from16 v0, v17

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 191
    :cond_9
    move-object/from16 v0, v17

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_a

    .line 192
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v27

    .line 193
    .local v27, "textLength":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    move/from16 v0, v27

    if-ge v14, v0, :cond_a

    .line 194
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 198
    .end local v14    # "i":I
    .end local v27    # "textLength":I
    :cond_a
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-eqz v2, :cond_b

    .line 199
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    array-length v7, v6

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v7, :cond_b

    aget v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 200
    .local v19, "multitapChar":Ljava/lang/Integer;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 203
    .end local v19    # "multitapChar":Ljava/lang/Integer;
    :cond_b
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    if-eqz v2, :cond_c

    .line 204
    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    array-length v7, v6

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v7, :cond_c

    aget v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    .line 205
    .local v24, "shiftChar":Ljava/lang/Integer;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 208
    .end local v24    # "shiftChar":Ljava/lang/Integer;
    :cond_c
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .line 209
    .local v12, "codeCount":I
    new-array v3, v12, [C

    .line 210
    .local v3, "codesArray":[C
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    if-ge v14, v12, :cond_d

    .line 211
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v3, v14

    .line 210
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 214
    :cond_d
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v26

    .line 215
    .local v26, "shiftedCodeCount":I
    move/from16 v0, v26

    new-array v4, v0, [C

    .line 216
    .local v4, "shiftCodesArray":[C
    const/4 v14, 0x0

    :goto_9
    move/from16 v0, v26

    if-ge v14, v0, :cond_e

    .line 217
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v4, v14

    .line 216
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 220
    :cond_e
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-nez v2, :cond_f

    const/16 v20, 0x0

    .line 221
    .local v20, "multitapCharCount":I
    :goto_a
    const/4 v5, 0x0

    .line 222
    .local v5, "multitapCharsArray":[C
    if-lez v20, :cond_10

    .line 223
    move/from16 v0, v20

    new-array v5, v0, [C

    .line 224
    const/4 v14, 0x0

    :goto_b
    move/from16 v0, v20

    if-ge v14, v0, :cond_10

    .line 225
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v5, v14

    .line 224
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 220
    .end local v5    # "multitapCharsArray":[C
    .end local v20    # "multitapCharCount":I
    :cond_f
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    goto :goto_a

    .line 230
    .restart local v5    # "multitapCharsArray":[C
    .restart local v20    # "multitapCharCount":I
    :cond_10
    new-instance v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;

    move-object/from16 v0, v17

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int v8, v8, v28

    move-object/from16 v0, v17

    iget v9, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move-object/from16 v0, v17

    iget v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-direct/range {v2 .. v10}, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;-><init>([C[C[CIIIII)V

    move-object/from16 v0, v30

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 235
    .end local v3    # "codesArray":[C
    .end local v4    # "shiftCodesArray":[C
    .end local v5    # "multitapCharsArray":[C
    .end local v12    # "codeCount":I
    .end local v14    # "i":I
    .end local v17    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v20    # "multitapCharCount":I
    .end local v26    # "shiftedCodeCount":I
    :cond_11
    new-instance v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/XT9Keyboard;->getMinWidth()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/XT9Keyboard;->getHeight()I

    move-result v7

    add-int v7, v7, v28

    const/4 v8, 0x1

    move-object/from16 v0, v30

    invoke-direct {v2, v6, v7, v8, v0}, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;-><init>(IIILjava/util/List;)V

    goto/16 :goto_0
.end method

.method public setKeyboard(Lcom/nuance/input/swypecorelib/XT9CoreInput;II)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 9
    .param p1, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p2, "keyboardResId"    # I
    .param p3, "keyboardModeId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 98
    invoke-virtual {p1, p0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setKeyboardLoadCallback(Lcom/nuance/input/swypecorelib/XT9CoreInput$KeyboardLoadCallback;)V

    .line 101
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->checkConfigChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v3}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 103
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->clearKeyboardViewsCache()V

    .line 106
    :cond_0
    iput p3, p0, Lcom/nuance/swype/input/KeyboardManager;->modeId:I

    .line 107
    invoke-direct {p0, p2}, Lcom/nuance/swype/input/KeyboardManager;->toCoreId(I)I

    move-result v3

    iput v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "forceReload":Z
    iget v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 111
    .local v2, "keyboardIdBoxed":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v3, v2}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/XT9Keyboard;

    .line 112
    .local v1, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-nez v1, :cond_1

    .line 113
    new-instance v1, Lcom/nuance/swype/input/XT9Keyboard;

    .end local v1    # "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-direct {v1, v3, p2, p3}, Lcom/nuance/swype/input/XT9Keyboard;-><init>(Landroid/content/Context;II)V

    .line 114
    .restart local v1    # "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    sget-object v3, Lcom/nuance/swype/input/KeyboardManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Create new keyboardResId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " keyboardIdBoxed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 115
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v3, v2, v1}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    .line 118
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/KeyboardManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v4, v8, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "keyboardCache size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v6}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " keyboardId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-interface {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 119
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardManager;->isOnlyThemeChanged:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardManager;->forceSetKeyboardDatabase:Z

    if-eqz v3, :cond_3

    .line 122
    :cond_2
    iget v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    invoke-virtual {p1, v3, v7, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setKeyboardDatabase(IIZ)Z

    .line 123
    iput-boolean v7, p0, Lcom/nuance/swype/input/KeyboardManager;->forceSetKeyboardDatabase:Z

    .line 125
    :cond_3
    return-object v1
.end method

.method public supportsTapCoordinates(Lcom/nuance/swype/input/KeyboardEx$Key;)Z
    .locals 4
    .param p1, "key"    # Lcom/nuance/swype/input/KeyboardEx$Key;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 241
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 242
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    .line 243
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    iget-object v3, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    aget v3, v3, v1

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
