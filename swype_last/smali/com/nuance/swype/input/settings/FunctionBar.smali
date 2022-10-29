.class public abstract Lcom/nuance/swype/input/settings/FunctionBar;
.super Ljava/lang/Object;
.source "FunctionBar.java"


# static fields
.field private static final ADDONDICTIONARIES_CATEGORY:Ljava/lang/String; = "addondictionaries"

.field private static final CHINESESETTINGS_CATEGORY:Ljava/lang/String; = "chinesesettings"

.field private static final EDITKEYBOARD_CATEGORY:Ljava/lang/String; = "edit_layer"

.field private static final EMOJISETTING_CATEGORY:Ljava/lang/String; = "function_bar_emoji"

.field private static final FUNCTION_BAR_CATEGORY:Ljava/lang/String; = "functionitem_category"

.field private static final INPUTMODE_CATEGORY:Ljava/lang/String; = "inputmode"

.field private static final LANGUAGE_OPTION_CATEGORY:Ljava/lang/String; = "language_option"

.field private static final MAX_FUNCTION_ITEM:I = 0x4

.field private static final NUMBERKEYBOARD_CATEGORY:Ljava/lang/String; = "number_keyboard"

.field private static final QUICKTOGGLE_CATEGORY:Ljava/lang/String; = "quicktoggle"

.field private static final SETTINGS_CATEGORY:Ljava/lang/String; = "settings"

.field private static final THEMES_CATEGORY:Ljava/lang/String; = "themes"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final screen:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/preference/PreferenceScreen;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    .line 40
    iput-object p2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/FunctionBar;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/FunctionBar;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->getFunctionItemSelectedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/FunctionBar;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/FunctionBar;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private buildFunctionBarScreen()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/nuance/swype/input/InputMethods;->from(Landroid/content/Context;)Lcom/nuance/swype/input/InputMethods;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/nuance/swype/input/InputMethods;->syncWithCurrentUserConfiguration()V

    .line 52
    iget-object v2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/BuildInfo;->from(Landroid/content/Context;)Lcom/nuance/swype/input/BuildInfo;

    move-result-object v1

    .line 53
    .local v1, "buildInfo":Lcom/nuance/swype/input/BuildInfo;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "addondictionaries"

    .line 54
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 55
    .local v0, "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Lcom/nuance/swype/input/BuildInfo;->isConnectEnabled()Z

    move-result v2

    if-nez v2, :cond_3b

    if-eqz v0, :cond_3b

    .line 56
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 57
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 58
    iget-object v2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "functionitem_category"

    .line 59
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 60
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 62
    :cond_3b
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->setFuctionItemClickEvent()V

    .line 63
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->getFunctionItemSelectedCount()I

    .line 64
    return-void
.end method

.method private getFunctionItemSelectedCount()I
    .registers 14

    .prologue
    .line 306
    const/4 v8, 0x0

    .line 307
    .local v8, "selectedCount":I
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "settings"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 308
    .local v9, "settings":Landroid/preference/CheckBoxPreference;
    if-eqz v9, :cond_16

    invoke-virtual {v9}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 309
    add-int/lit8 v8, v8, 0x1

    .line 311
    :cond_16
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "language_option"

    .line 312
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 313
    .local v5, "languageOption":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_2b

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 314
    add-int/lit8 v8, v8, 0x1

    .line 316
    :cond_2b
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "inputmode"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 317
    .local v4, "inputMode":Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_40

    .line 318
    add-int/lit8 v8, v8, 0x1

    .line 320
    :cond_40
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v11

    if-eqz v11, :cond_61

    .line 321
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "quicktoggle"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 322
    .local v7, "quickToggle":Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_61

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_61

    .line 323
    add-int/lit8 v8, v8, 0x1

    .line 326
    .end local v7    # "quickToggle":Landroid/preference/CheckBoxPreference;
    :cond_61
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "edit_layer"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 327
    .local v2, "editKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_76

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_76

    .line 328
    add-int/lit8 v8, v8, 0x1

    .line 330
    :cond_76
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "number_keyboard"

    .line 331
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 332
    .local v6, "numberKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_8b

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_8b

    .line 333
    add-int/lit8 v8, v8, 0x1

    .line 335
    :cond_8b
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "themes"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 336
    .local v10, "themes":Landroid/preference/CheckBoxPreference;
    if-eqz v10, :cond_a0

    invoke-virtual {v10}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 337
    add-int/lit8 v8, v8, 0x1

    .line 339
    :cond_a0
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "function_bar_emoji"

    .line 340
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 341
    .local v3, "emojiOnFunctionBar":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_b5

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_b5

    .line 342
    add-int/lit8 v8, v8, 0x1

    .line 344
    :cond_b5
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "addondictionaries"

    .line 345
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 346
    .local v0, "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_ca

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_ca

    .line 347
    add-int/lit8 v8, v8, 0x1

    .line 349
    :cond_ca
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "chinesesettings"

    .line 350
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 351
    .local v1, "chineseSettings":Landroid/preference/CheckBoxPreference;
    if-eqz v1, :cond_df

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_df

    .line 352
    add-int/lit8 v8, v8, 0x1

    .line 354
    :cond_df
    return v8
.end method

.method private setFuctionItemClickEvent()V
    .registers 14

    .prologue
    .line 67
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "settings"

    .line 68
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    .line 69
    .local v9, "settings":Landroid/preference/CheckBoxPreference;
    if-eqz v9, :cond_15

    .line 70
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$1;

    invoke-direct {v11, p0, v9}, Lcom/nuance/swype/input/settings/FunctionBar$1;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 90
    :cond_15
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "language_option"

    .line 91
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 92
    .local v6, "languageOption":Landroid/preference/CheckBoxPreference;
    if-eqz v6, :cond_2a

    .line 93
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$2;

    invoke-direct {v11, p0, v6}, Lcom/nuance/swype/input/settings/FunctionBar$2;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v6, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 113
    :cond_2a
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "inputmode"

    .line 114
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    .line 115
    .local v5, "inputMode":Landroid/preference/CheckBoxPreference;
    if-eqz v5, :cond_3f

    .line 116
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$3;

    invoke-direct {v11, p0, v5}, Lcom/nuance/swype/input/settings/FunctionBar$3;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v5, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 137
    :cond_3f
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "quicktoggle"

    .line 138
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 139
    .local v8, "qucikToggle":Landroid/preference/CheckBoxPreference;
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-static {v11}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nuance/swype/input/UserPreferences;->isHandwritingEnabled()Z

    move-result v11

    if-eqz v11, :cond_df

    .line 141
    if-eqz v8, :cond_60

    .line 142
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$4;

    invoke-direct {v11, p0, v8}, Lcom/nuance/swype/input/settings/FunctionBar$4;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v8, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 167
    :cond_60
    :goto_60
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "number_keyboard"

    .line 168
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 169
    .local v7, "numberKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_75

    .line 170
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$5;

    invoke-direct {v11, p0, v7}, Lcom/nuance/swype/input/settings/FunctionBar$5;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v7, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 190
    :cond_75
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "edit_layer"

    .line 191
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 192
    .local v3, "editKeyboard":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_8a

    .line 193
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$6;

    invoke-direct {v11, p0, v3}, Lcom/nuance/swype/input/settings/FunctionBar$6;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v3, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 213
    :cond_8a
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "themes"

    .line 214
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    .line 215
    .local v10, "themes":Landroid/preference/CheckBoxPreference;
    if-eqz v10, :cond_9f

    .line 216
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$7;

    invoke-direct {v11, p0, v10}, Lcom/nuance/swype/input/settings/FunctionBar$7;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v10, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 235
    :cond_9f
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "function_bar_emoji"

    .line 236
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 237
    .local v4, "emojiOnFunctionBar":Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_b4

    .line 238
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$8;

    invoke-direct {v11, p0, v4}, Lcom/nuance/swype/input/settings/FunctionBar$8;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v4, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 258
    :cond_b4
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "addondictionaries"

    .line 259
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 260
    .local v0, "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_c9

    .line 261
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$9;

    invoke-direct {v11, p0, v0}, Lcom/nuance/swype/input/settings/FunctionBar$9;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 281
    :cond_c9
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "chinesesettings"

    .line 282
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 283
    .local v2, "chineseSettings":Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_de

    .line 284
    new-instance v11, Lcom/nuance/swype/input/settings/FunctionBar$10;

    invoke-direct {v11, p0, v2}, Lcom/nuance/swype/input/settings/FunctionBar$10;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v2, v11}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 303
    :cond_de
    return-void

    .line 161
    .end local v0    # "addOnDictionaries":Landroid/preference/CheckBoxPreference;
    .end local v2    # "chineseSettings":Landroid/preference/CheckBoxPreference;
    .end local v3    # "editKeyboard":Landroid/preference/CheckBoxPreference;
    .end local v4    # "emojiOnFunctionBar":Landroid/preference/CheckBoxPreference;
    .end local v7    # "numberKeyboard":Landroid/preference/CheckBoxPreference;
    .end local v10    # "themes":Landroid/preference/CheckBoxPreference;
    :cond_df
    iget-object v11, p0, Lcom/nuance/swype/input/settings/FunctionBar;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v12, "functionitem_category"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 162
    .local v1, "category":Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_60

    if-eqz v8, :cond_60

    .line 163
    invoke-virtual {v1, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_60
.end method


# virtual methods
.method public createMaxItemDlg()Landroid/app/Dialog;
    .registers 6

    .prologue
    .line 358
    iget-object v1, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    sget v2, Lcom/nuance/swype/input/R$string;->max_function_item_count_content:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 359
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "maxContentMsg":Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/FunctionBar;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/nuance/swype/input/R$string;->max_function_item_count_title:I

    .line 361
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 362
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 363
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v3, Lcom/nuance/swype/input/settings/FunctionBar$11;

    invoke-direct {v3, p0}, Lcom/nuance/swype/input/settings/FunctionBar$11;-><init>(Lcom/nuance/swype/input/settings/FunctionBar;)V

    .line 364
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 371
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/FunctionBar;->buildFunctionBarScreen()V

    .line 47
    return-void
.end method

.method protected abstract showMaxCountdialog()V
.end method
