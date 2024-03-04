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
    const-string v0, "KeyboardManager"

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
    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v4

    .line 279
    .local v4, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v18

    .line 280
    .local v18, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v9

    .line 281
    .local v9, "newHandwritingEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/KeyboardEx;->shouldEnableSpeechKey(Landroid/content/Context;)Z

    move-result v16

    .line 282
    .local v16, "newShowVoiceKeyEnabled":Z
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v12

    .line 283
    .local v12, "newKeyboardScalePortrait":F
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v11

    .line 285
    .local v11, "newKeyboardScaleLandscape":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/InputMethods;->getFastSwitchedOffLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v19

    if-eqz v19, :cond_2

    const/4 v13, 0x1

    .line 286
    .local v13, "newKeyboardSwitchable":Z
    :goto_0
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCurrentTheme()Lcom/nuance/swype/input/ThemeManager$SwypeTheme;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/ThemeManager$SwypeTheme;->getId()Ljava/lang/String;

    move-result-object v17

    .line 288
    .local v17, "newSwypeThemeName":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getCurrentLanguage()Lcom/nuance/swype/input/InputMethods$Language;

    move-result-object v14

    .line 289
    .local v14, "newLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    iget v7, v14, Lcom/nuance/swype/input/InputMethods$Language;->currencyType:I

    .line 290
    .local v7, "newCurrencyType":I
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/nuance/swype/input/KeyboardManager;->accessibility:Z

    .line 291
    .local v6, "newAccessibility":Z
    invoke-virtual {v4}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v3

    .line 292
    .local v3, "ime":Lcom/nuance/swype/input/IME;
    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {v3}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v6

    .line 295
    :cond_0
    invoke-virtual {v14}, Lcom/nuance/swype/input/InputMethods$Language;->supportsHwr()Z

    move-result v10

    .line 296
    .local v10, "newIsLanguageSupportingHwr":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v8

    .line 297
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

    .line 298
    .local v5, "lc":Ljava/util/Locale;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    .line 299
    .local v15, "newLocale":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->handwritingEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->showVoiceKeyEnabled:Z

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardSwitchable:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v13, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardManager;->currencyType:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v7, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->accessibility:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v6, v0, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nuance/swype/input/KeyboardManager;->isLanguageSupportingHwr:Z

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v10, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScalePortrait:F

    move/from16 v19, v0

    cmpl-float v19, v12, v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScaleLandscape:F

    move/from16 v19, v0

    cmpl-float v19, v11, v19

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    if-ne v8, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->locale:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    :cond_1
    const/4 v2, 0x1

    .line 310
    .local v2, "configChanged":Z
    :goto_2
    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/nuance/swype/input/KeyboardManager;->handwritingEnabled:Z

    .line 311
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardManager;->showVoiceKeyEnabled:Z

    .line 312
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardSwitchable:Z

    .line 313
    move-object/from16 v0, p0

    iput v7, v0, Lcom/nuance/swype/input/KeyboardManager;->currencyType:I

    .line 314
    move-object/from16 v0, p0

    iput v12, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScalePortrait:F

    .line 315
    move-object/from16 v0, p0

    iput v11, v0, Lcom/nuance/swype/input/KeyboardManager;->keyboardScaleLandscape:F

    .line 317
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/nuance/swype/input/KeyboardManager;->accessibility:Z

    .line 318
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/nuance/swype/input/KeyboardManager;->isLanguageSupportingHwr:Z

    .line 319
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 320
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/nuance/swype/input/KeyboardManager;->locale:Ljava/lang/String;

    .line 322
    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/input/KeyboardManager;->swypeThemeName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 323
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardManager;->isOnlyThemeChanged:Z

    .line 324
    const/4 v2, 0x1

    .line 328
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nuance/swype/input/KeyboardManager;->swypeThemeName:Ljava/lang/String;

    .line 329
    return v2

    .line 285
    .end local v2    # "configChanged":Z
    .end local v3    # "ime":Lcom/nuance/swype/input/IME;
    .end local v5    # "lc":Ljava/util/Locale;
    .end local v6    # "newAccessibility":Z
    .end local v7    # "newCurrencyType":I
    .end local v8    # "newDockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v10    # "newIsLanguageSupportingHwr":Z
    .end local v13    # "newKeyboardSwitchable":Z
    .end local v14    # "newLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .end local v15    # "newLocale":Ljava/lang/String;
    .end local v17    # "newSwypeThemeName":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 298
    .restart local v3    # "ime":Lcom/nuance/swype/input/IME;
    .restart local v5    # "lc":Ljava/util/Locale;
    .restart local v6    # "newAccessibility":Z
    .restart local v7    # "newCurrencyType":I
    .restart local v8    # "newDockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .restart local v10    # "newIsLanguageSupportingHwr":Z
    .restart local v13    # "newKeyboardSwitchable":Z
    .restart local v14    # "newLanguage":Lcom/nuance/swype/input/InputMethods$Language;
    .restart local v17    # "newSwypeThemeName":Ljava/lang/String;
    :cond_3
    const-string v15, ""

    goto/16 :goto_1

    .line 299
    .restart local v15    # "newLocale":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 326
    .restart local v2    # "configChanged":Z
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nuance/swype/input/KeyboardManager;->isOnlyThemeChanged:Z

    goto :goto_3
.end method

.method private clearMiniKeyboardCache()V
    .locals 3

    .prologue
    .line 370
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 371
    .local v0, "ime":Lcom/nuance/swype/input/IME;
    if-nez v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v1

    .line 376
    .local v1, "inputView":Lcom/nuance/swype/input/InputView;
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {v1}, Lcom/nuance/swype/input/InputView;->clearMiniKeyboardCache()V

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
    .line 338
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 339
    .local v0, "dockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 341
    .local v2, "orientation":I
    const v3, 0xffff

    and-int v1, p1, v3

    .line 342
    .local v1, "id":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 343
    const/high16 v3, 0x10000

    or-int/2addr v1, v3

    .line 345
    :cond_0
    iget v3, p0, Lcom/nuance/swype/input/KeyboardManager;->modeId:I

    sparse-switch v3, :sswitch_data_0

    .line 362
    :goto_0
    invoke-virtual {v0}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->ordinal()I

    move-result v3

    shl-int/lit8 v3, v3, 0x14

    or-int/2addr v3, v1

    .line 364
    return v3

    .line 347
    :sswitch_0
    const/high16 v3, 0x20000

    or-int/2addr v1, v3

    .line 348
    goto :goto_0

    .line 350
    :sswitch_1
    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    .line 351
    goto :goto_0

    .line 353
    :sswitch_2
    const/high16 v3, 0x60000

    or-int/2addr v1, v3

    .line 354
    goto :goto_0

    .line 356
    :sswitch_3
    const/high16 v3, 0x80000

    or-int/2addr v1, v3

    .line 357
    goto :goto_0

    .line 359
    :sswitch_4
    const/high16 v3, 0xa0000

    or-int/2addr v1, v3

    goto :goto_0

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public evictAll()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v0}, Lcom/nuance/android/util/LruCache;->evictAll()V

    .line 386
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->clearMiniKeyboardCache()V

    .line 387
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

.method public getKeyIndexByTap(Lcom/nuance/input/swypecorelib/XT9CoreInput;II)I
    .locals 7
    .param p1, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 241
    const/4 v1, -0x1

    .line 243
    .local v1, "index":I
    iget v6, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 244
    .local v4, "keyboardIdBoxed":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v6, v4}, Lcom/nuance/android/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/XT9Keyboard;

    .line 246
    .local v3, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-eqz v3, :cond_1

    .line 247
    invoke-virtual {p1, p2, p3}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->getKeyIndexByTap(II)I

    move-result v1

    .line 249
    invoke-virtual {v3}, Lcom/nuance/swype/input/XT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 250
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 252
    .local v2, "keyCount":I
    if-ltz v1, :cond_1

    if-ge v1, v2, :cond_1

    .line 255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-gt v0, v1, :cond_1

    if-ge v1, v2, :cond_1

    .line 257
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nuance/swype/input/KeyboardEx$Key;

    iget-boolean v6, v6, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-nez v6, :cond_0

    .line 258
    add-int/lit8 v1, v1, 0x1

    .line 255
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "i":I
    .end local v2    # "keyCount":I
    .end local v5    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$Key;>;"
    :cond_1
    return v1
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
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->clearMiniKeyboardCache()V

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
    .line 367
    iget v0, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    return v0
.end method

.method public isDockModeChanged()Z
    .locals 3

    .prologue
    .line 332
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode()Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    .line 333
    .local v1, "newDockMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    iget-object v2, p0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 334
    .local v0, "configChanged":Z
    :goto_0
    iput-object v1, p0, Lcom/nuance/swype/input/KeyboardManager;->dockMode:Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 335
    return v0

    .line 333
    .end local v0    # "configChanged":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadKeyboardDatabase(II)Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;
    .locals 35
    .param p1, "kbdId"    # I
    .param p2, "pageNum"    # I

    .prologue
    .line 131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardManager;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v18

    .line 132
    .local v18, "ime":Lcom/nuance/swype/input/IME;
    if-nez v18, :cond_0

    .line 133
    const/4 v2, 0x0

    .line 236
    :goto_0
    return-object v2

    .line 136
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/nuance/swype/input/IME;->getCurrentInputView()Lcom/nuance/swype/input/InputView;

    move-result-object v19

    .line 137
    .local v19, "inputView":Lcom/nuance/swype/input/InputView;
    if-nez v19, :cond_1

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

    move-result-object v21

    check-cast v21, Lcom/nuance/swype/input/XT9Keyboard;

    .line 143
    .local v21, "keyboard":Lcom/nuance/swype/input/XT9Keyboard;
    if-nez v21, :cond_2

    .line 144
    sget-object v2, Lcom/nuance/swype/input/KeyboardManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "keyboard return NULL, kdbId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    .line 145
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/XT9Keyboard;->canSwypePopupCharacters()Z

    move-result v33

    .line 149
    .local v33, "usePopupCharacters":Z
    invoke-virtual/range {v19 .. v19}, Lcom/nuance/swype/input/InputView;->getShiftGestureOffset()I

    move-result v32

    .line 151
    .local v32, "topMargin":I
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v34, "xt9Keys":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v14, "codes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v29, "shiftCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v25, "multitapChars":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Character;>;"
    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/XT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/nuance/swype/input/KeyboardEx$Key;

    .line 157
    .local v20, "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    move-object/from16 v0, v20

    iget-boolean v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->visible:Z

    if-eqz v2, :cond_3

    .line 159
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->clear()V

    .line 160
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->clear()V

    .line 161
    invoke-interface {v14}, Ljava/util/List;->clear()V

    .line 162
    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->codes:[I

    .local v11, "arr$":[I
    array-length v0, v11

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    aget v2, v11, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 163
    .local v12, "code":Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xfdf

    if-eq v2, v6, :cond_4

    .line 164
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 168
    .end local v12    # "code":Ljava/lang/Integer;
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/KeyboardManager;->supportsTapCoordinates(Lcom/nuance/swype/input/KeyboardEx$Key;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 169
    move-object/from16 v0, v20

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    const/16 v6, 0xfdf

    if-eq v2, v6, :cond_8

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    if-nez v2, :cond_8

    .line 172
    move-object/from16 v0, v20

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftCode:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_6
    :goto_3
    if-eqz v33, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-nez v2, :cond_a

    .line 183
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v27

    .line 184
    .local v27, "popupCharCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_4
    move/from16 v0, v27

    if-ge v15, v0, :cond_a

    .line 185
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v26

    .line 187
    .local v26, "nextCode":Ljava/lang/Character;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 188
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 173
    .end local v15    # "i":I
    .end local v26    # "nextCode":Ljava/lang/Character;
    .end local v27    # "popupCharCount":I
    :cond_8
    move-object/from16 v0, v20

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    const/16 v6, 0xfdf

    if-eq v2, v6, :cond_6

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-nez v2, :cond_6

    .line 177
    move-object/from16 v0, v20

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->altCode:I

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 192
    :cond_9
    move-object/from16 v0, v20

    iget v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_a

    .line 193
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v31

    .line 194
    .local v31, "textLength":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    move/from16 v0, v31

    if-ge v15, v0, :cond_a

    .line 195
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 199
    .end local v15    # "i":I
    .end local v31    # "textLength":I
    :cond_a
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-eqz v2, :cond_b

    .line 200
    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    array-length v0, v11

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    aget v2, v11, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 201
    .local v23, "multitapChar":Ljava/lang/Integer;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 204
    .end local v23    # "multitapChar":Ljava/lang/Integer;
    :cond_b
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    if-eqz v2, :cond_c

    .line 205
    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->shiftChars:[I

    array-length v0, v11

    move/from16 v22, v0

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    aget v2, v11, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    .line 206
    .local v28, "shiftChar":Ljava/lang/Integer;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 209
    .end local v28    # "shiftChar":Ljava/lang/Integer;
    :cond_c
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 210
    .local v13, "codeCount":I
    new-array v3, v13, [C

    .line 211
    .local v3, "codesArray":[C
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    if-ge v15, v13, :cond_d

    .line 212
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v3, v15

    .line 211
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 215
    :cond_d
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v30

    .line 216
    .local v30, "shiftedCodeCount":I
    move/from16 v0, v30

    new-array v4, v0, [C

    .line 217
    .local v4, "shiftCodesArray":[C
    const/4 v15, 0x0

    :goto_9
    move/from16 v0, v30

    if-ge v15, v0, :cond_e

    .line 218
    move-object/from16 v0, v29

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v4, v15

    .line 217
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 221
    :cond_e
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->multitapChars:[I

    if-nez v2, :cond_f

    const/16 v24, 0x0

    .line 222
    .local v24, "multitapCharCount":I
    :goto_a
    const/4 v5, 0x0

    .line 223
    .local v5, "multitapCharsArray":[C
    if-lez v24, :cond_10

    .line 224
    move/from16 v0, v24

    new-array v5, v0, [C

    .line 225
    const/4 v15, 0x0

    :goto_b
    move/from16 v0, v24

    if-ge v15, v0, :cond_10

    .line 226
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    aput-char v2, v5, v15

    .line 225
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 221
    .end local v5    # "multitapCharsArray":[C
    .end local v24    # "multitapCharCount":I
    :cond_f
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v24

    goto :goto_a

    .line 231
    .restart local v5    # "multitapCharsArray":[C
    .restart local v24    # "multitapCharCount":I
    :cond_10
    new-instance v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;

    move-object/from16 v0, v20

    iget v6, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->type:I

    move-object/from16 v0, v20

    iget v7, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->x:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->y:I

    add-int v8, v8, v32

    move-object/from16 v0, v20

    iget v9, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->width:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/nuance/swype/input/KeyboardEx$Key;->height:I

    invoke-direct/range {v2 .. v10}, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase$Key;-><init>([C[C[CIIIII)V

    move-object/from16 v0, v34

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 236
    .end local v3    # "codesArray":[C
    .end local v4    # "shiftCodesArray":[C
    .end local v5    # "multitapCharsArray":[C
    .end local v11    # "arr$":[I
    .end local v13    # "codeCount":I
    .end local v15    # "i":I
    .end local v17    # "i$":I
    .end local v20    # "key":Lcom/nuance/swype/input/KeyboardEx$Key;
    .end local v22    # "len$":I
    .end local v24    # "multitapCharCount":I
    .end local v30    # "shiftedCodeCount":I
    :cond_11
    new-instance v2, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/XT9Keyboard;->getMinWidth()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Lcom/nuance/swype/input/XT9Keyboard;->getHeight()I

    move-result v7

    add-int v7, v7, v32

    const/4 v8, 0x1

    move-object/from16 v0, v34

    invoke-direct {v2, v6, v7, v8, v0}, Lcom/nuance/input/swypecorelib/XT9KeyboardDatabase;-><init>(IIILjava/util/List;)V

    goto/16 :goto_0
.end method

.method public setKeyboard(Lcom/nuance/input/swypecorelib/XT9CoreInput;II)Lcom/nuance/swype/input/XT9Keyboard;
    .locals 7
    .param p1, "xt9coreinput"    # Lcom/nuance/input/swypecorelib/XT9CoreInput;
    .param p2, "keyboardResId"    # I
    .param p3, "keyboardModeId"    # I

    .prologue
    const/4 v6, 0x0

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
    invoke-direct {p0}, Lcom/nuance/swype/input/KeyboardManager;->clearMiniKeyboardCache()V

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

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Create new keyboardResId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keyboardIdBoxed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 115
    iget-object v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v3, v2, v1}, Lcom/nuance/android/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v0, 0x1

    .line 118
    :cond_1
    sget-object v3, Lcom/nuance/swype/input/KeyboardManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "keyboardCache size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardCache:Lcom/nuance/android/util/LruCache;

    invoke-virtual {v5}, Lcom/nuance/android/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " keyboardId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 119
    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardManager;->isOnlyThemeChanged:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/nuance/swype/input/KeyboardManager;->forceSetKeyboardDatabase:Z

    if-eqz v3, :cond_3

    .line 122
    :cond_2
    iget v3, p0, Lcom/nuance/swype/input/KeyboardManager;->keyboardId:I

    invoke-virtual {p1, v3, v6, v0}, Lcom/nuance/input/swypecorelib/XT9CoreInput;->setKeyboardDatabase(IIZ)Lcom/nuance/input/swypecorelib/XT9Status;

    .line 123
    iput-boolean v6, p0, Lcom/nuance/swype/input/KeyboardManager;->forceSetKeyboardDatabase:Z

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

    .line 270
    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p1, Lcom/nuance/swype/input/KeyboardEx$Key;->label:Ljava/lang/CharSequence;

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
