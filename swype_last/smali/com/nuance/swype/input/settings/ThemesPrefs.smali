.class public abstract Lcom/nuance/swype/input/settings/ThemesPrefs;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final CANDIDATES_SIZE:Ljava/lang/String; = "Candidates_Size"

.field private static final CANDIDATES_SIZES_SETTINGS_KEY:Ljava/lang/String; = "candidates_size_setting_preference"

.field private static final CANDIDATE_SIZE_BAR_MAX:I = 0xa

.field private static final CANDIDATE_SIZE_BAR_OFFSET:I = 0x64

.field private static final KEYBOARD_HEIGHT_BAR_MAX:I = 0x4

.field private static final KEYBOARD_HEIGHT_BAR_OFFSET:I = 0x8

.field private static final KEYBOARD_HEIGHT_SETTINGS_KEY:Ljava/lang/String; = "keyboard_height_settings"

.field private static final LANDSCAPE_DOCKING_MODE_KEY:Ljava/lang/String; = "landscape_docking_modes"

.field private static final ORIENTATION_BUNDLE_KEY:Ljava/lang/String; = "orientation_bundle"

.field private static final PORTRAIT_DOCKING_MODE_KEY:Ljava/lang/String; = "portrait_docking_modes"

.field public static final PREFERENCES_XML:I

.field private static final QVGA_DEVICE:F = 0.8f


# instance fields
.field private final activity:Landroid/app/Activity;

.field private mValue:F

.field private mValueKeyboardHeightLandscape:F

.field private mValueKeyboardHeightPortrait:F

.field private screen:Landroid/preference/PreferenceScreen;

.field private final validLandscapeDockModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;"
        }
    .end annotation
.end field

.field private final validPortraitDockModes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    sget v0, Lcom/nuance/swype/input/R$xml;->themespreferences:I

    sput v0, Lcom/nuance/swype/input/settings/ThemesPrefs;->PREFERENCES_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getValidDockModes(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validPortraitDockModes:Ljava/util/List;

    .line 64
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getValidDockModes(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validLandscapeDockModes:Ljava/util/List;

    .line 65
    sget-object v0, Lcom/nuance/swype/usagedata/UsageData$Screen;->THEMES_OPTIONS:Lcom/nuance/swype/usagedata/UsageData$Screen;

    invoke-static {v0}, Lcom/nuance/swype/usagedata/UsageData;->recordScreenVisited(Lcom/nuance/swype/usagedata/UsageData$Screen;)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ThemesPrefs;)V
    .registers 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes()V

    return-void
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/ThemesPrefs;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 37
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/ThemesPrefs;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 37
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/ThemesPrefs;)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 37
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    return v0
.end method

.method static synthetic access$502(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 37
    iput p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    return p1
.end method

.method static synthetic access$600(Lcom/nuance/swype/input/settings/ThemesPrefs;Ljava/lang/String;F)V
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->saveCandidatesSize(Ljava/lang/String;F)V

    return-void
.end method

.method public static getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F
    .registers 4
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getValidDockModes(I)Ljava/util/List;
    .registers 9
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    iget-object v3, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 233
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v5, :cond_21

    aget-object v0, v4, v3

    .line 234
    .local v0, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 235
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 238
    .end local v0    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_21
    return-object v2
.end method

.method private rebuildSettings()V
    .registers 5

    .prologue
    .line 90
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_9

    .line 91
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 93
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 95
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "candidates_size_setting_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 96
    .local v0, "candidateSizePrefs":Landroid/preference/Preference;
    if-eqz v0, :cond_2d

    .line 97
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isShowWordChoiceSizePrefEnabled()Z

    move-result v2

    if-nez v2, :cond_57

    .line 99
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    .end local v0    # "candidateSizePrefs":Landroid/preference/Preference;
    :cond_2d
    :goto_2d
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "keyboard_height_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 125
    .local v1, "keyboardHeightPrefs":Landroid/preference/Preference;
    if-eqz v1, :cond_4b

    .line 126
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isShowKeyboardHeightPrefEnabled()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 128
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    .end local v1    # "keyboardHeightPrefs":Landroid/preference/Preference;
    :cond_4b
    :goto_4b
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes()V

    .line 153
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->removeNonAccessibleSettings()V

    .line 156
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 158
    return-void

    .line 101
    .restart local v0    # "candidateSizePrefs":Landroid/preference/Preference;
    :cond_57
    instance-of v2, v0, Lcom/nuance/swype/preference/ViewClickPreference;

    if-eqz v2, :cond_66

    .line 102
    check-cast v0, Lcom/nuance/swype/preference/ViewClickPreference;

    .end local v0    # "candidateSizePrefs":Landroid/preference/Preference;
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesPrefs$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$1;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v0, v2}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    goto :goto_2d

    .line 112
    .restart local v0    # "candidateSizePrefs":Landroid/preference/Preference;
    :cond_66
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesPrefs$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$2;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_2d

    .line 130
    .end local v0    # "candidateSizePrefs":Landroid/preference/Preference;
    .restart local v1    # "keyboardHeightPrefs":Landroid/preference/Preference;
    :cond_6f
    instance-of v2, v1, Lcom/nuance/swype/preference/ViewClickPreference;

    if-eqz v2, :cond_7e

    .line 131
    check-cast v1, Lcom/nuance/swype/preference/ViewClickPreference;

    .end local v1    # "keyboardHeightPrefs":Landroid/preference/Preference;
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesPrefs$3;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$3;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v1, v2}, Lcom/nuance/swype/preference/ViewClickPreference;->setListener(Lcom/nuance/swype/preference/ViewClickPreference$ViewClickPreferenceListener;)V

    goto :goto_4b

    .line 139
    .restart local v1    # "keyboardHeightPrefs":Landroid/preference/Preference;
    :cond_7e
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesPrefs$4;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$4;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_4b
.end method

.method private refreshDockModes()V
    .registers 4

    .prologue
    .line 83
    const-string/jumbo v0, "portrait_docking_modes"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validPortraitDockModes:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes(Ljava/lang/String;Ljava/util/List;I)V

    .line 85
    const-string/jumbo v0, "landscape_docking_modes"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validLandscapeDockModes:Ljava/util/List;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes(Ljava/lang/String;Ljava/util/List;I)V

    .line 87
    return-void
.end method

.method private refreshDockModes(Ljava/lang/String;Ljava/util/List;I)V
    .registers 7
    .param p1, "prefKey"    # Ljava/lang/String;
    .param p3, "config"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 181
    .local v0, "dockPref":Landroid/preference/Preference;
    if-eqz v0, :cond_14

    .line 182
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_15

    .line 183
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_14
    :goto_14
    return-void

    .line 185
    :cond_15
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    .line 186
    invoke-virtual {v1, p3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode(I)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v1, Lcom/nuance/swype/input/settings/ThemesPrefs$5;

    invoke-direct {v1, p0, p3}, Lcom/nuance/swype/input/settings/ThemesPrefs$5;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_14
.end method

.method private removeNonAccessibleSettings()V
    .registers 5

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 162
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isAccessibilitySupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 165
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "portrait_docking_modes"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 166
    .local v1, "portraitDockingMode":Landroid/preference/Preference;
    if-eqz v1, :cond_30

    .line 167
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_30
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v3, "landscape_docking_modes"

    .line 171
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 172
    .local v0, "landscapeDockingMode":Landroid/preference/Preference;
    if-eqz v0, :cond_40

    .line 173
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    .end local v0    # "landscapeDockingMode":Landroid/preference/Preference;
    .end local v1    # "portraitDockingMode":Landroid/preference/Preference;
    :cond_40
    return-void
.end method

.method private saveCandidatesSize(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # F

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 502
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setFloat(Ljava/lang/String;F)V

    .line 503
    return-void
.end method

.method private setupPreferenceHandler(Landroid/preference/Preference;)V
    .registers 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 220
    instance-of v3, p1, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_18

    move-object v1, p1

    .line 221
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 222
    .local v1, "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, "count":I
    :goto_c
    if-ge v2, v0, :cond_1b

    .line 223
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 226
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v2    # "i":I
    :cond_18
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    :cond_1b
    return-void
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method protected createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 17
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 420
    .local v3, "display":Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v10, "layout_inflater"

    .line 421
    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 422
    .local v8, "systemInflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/nuance/swype/input/R$layout;->candidate_size_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 425
    .local v5, "scrollView":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 426
    sget v10, Lcom/nuance/swype/input/R$layout;->candidate_size_setting_view:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 427
    .local v1, "candidateView":Landroid/view/View;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$attr;->keyboardSuggestStrip:I

    invoke-virtual {v9, v10}, Lcom/nuance/swype/input/IMEApplication;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    sget v9, Lcom/nuance/swype/input/R$id;->candidate_size_group:I

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 430
    const/4 v10, 0x0

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    .line 432
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nuance/swype/input/R$dimen;->candidates_list_height:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v13, v13

    invoke-direct {v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 430
    invoke-virtual {v9, v1, v10, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 434
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v7

    .line 435
    .local v7, "sp":Lcom/nuance/swype/input/UserPreferences;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->swype:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "displayText":Ljava/lang/String;
    move-object v2, v1

    .line 436
    check-cast v2, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    .line 437
    .local v2, "cs":Lcom/nuance/swype/input/settings/CandidateSizeSettingView;
    const-string/jumbo v9, "Candidates_Size"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v10}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v9

    iput v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    .line 438
    iget v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    invoke-virtual {v2, v9}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setTextSize(F)V

    .line 439
    invoke-virtual {v2, v4}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setDisplayText(Ljava/lang/String;)V

    .line 441
    sget v9, Lcom/nuance/swype/input/R$id;->size_seekbar:I

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    .line 442
    .local v6, "sizeSeekBar":Landroid/widget/SeekBar;
    iget v9, v3, Landroid/util/DisplayMetrics;->density:F

    const v10, 0x3f4ccccd    # 0.8f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_c5

    .line 443
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    .line 444
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const/4 v12, 0x0

    .line 443
    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 446
    :cond_c5
    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 447
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 448
    iget v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    sub-float/2addr v9, v10

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 449
    new-instance v9, Lcom/nuance/swype/input/settings/ThemesPrefs$10;

    invoke-direct {v9, p0, v2, v4}, Lcom/nuance/swype/input/settings/ThemesPrefs$10;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Lcom/nuance/swype/input/settings/CandidateSizeSettingView;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 471
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v10, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 472
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->pref_word_choice_title:I

    .line 473
    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v11, 0x0

    .line 474
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    sget v10, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v11, Lcom/nuance/swype/input/settings/ThemesPrefs$11;

    invoke-direct {v11, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$11;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    .line 475
    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 491
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 492
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9
.end method

.method protected createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 15
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 299
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v9, "layout_inflater"

    .line 300
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 301
    sget v9, Lcom/nuance/swype/input/R$layout;->keyboard_height_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 303
    .local v2, "scrollView":Landroid/view/ViewGroup;
    sget v8, Lcom/nuance/swype/input/R$id;->valueTextPortrait:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 304
    .local v7, "valueTextPortrait":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 305
    .local v5, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    .line 306
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->percent:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 307
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 306
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    sget v8, Lcom/nuance/swype/input/R$id;->portrait_seekbar:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 310
    .local v4, "seekBarPortrait":Landroid/widget/SeekBar;
    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_93

    .line 312
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 313
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    .line 311
    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 315
    :cond_93
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 316
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 317
    iget v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 318
    new-instance v8, Lcom/nuance/swype/input/settings/ThemesPrefs$7;

    invoke-direct {v8, p0, v7}, Lcom/nuance/swype/input/settings/ThemesPrefs$7;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Landroid/widget/TextView;)V

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 342
    sget v8, Lcom/nuance/swype/input/R$id;->valueTextLandscape:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 343
    .local v6, "valueTextLandscape":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    .line 344
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->percent:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    sget v8, Lcom/nuance/swype/input/R$id;->landscape_seekbar:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 347
    .local v3, "seekBarLandscape":Landroid/widget/SeekBar;
    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_115

    .line 348
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    .line 349
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    .line 350
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    .line 348
    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 352
    :cond_115
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 353
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 354
    iget v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 356
    new-instance v8, Lcom/nuance/swype/input/settings/ThemesPrefs$8;

    invoke-direct {v8, p0, v6}, Lcom/nuance/swype/input/settings/ThemesPrefs$8;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Landroid/widget/TextView;)V

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 380
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 381
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->pref_kb_height_title:I

    .line 382
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v10, 0x0

    .line 383
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v10, Lcom/nuance/swype/input/settings/ThemesPrefs$9;

    invoke-direct {v10, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$9;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    .line 384
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 414
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method protected createKeyboardModeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 13
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 243
    const-string/jumbo v8, "orientation_bundle"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 244
    .local v6, "orientation":I
    if-ne v6, v10, :cond_3c

    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validPortraitDockModes:Ljava/util/List;

    .line 248
    .local v7, "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :goto_c
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v5, "modeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 251
    .local v1, "currentModeIndex":I
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    .line 252
    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode(I)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 253
    .local v0, "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 254
    .local v4, "modeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    if-ge v2, v4, :cond_3f

    .line 255
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 256
    .local v3, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    if-ne v3, v0, :cond_39

    .line 258
    move v1, v2

    .line 254
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 244
    .end local v0    # "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v1    # "currentModeIndex":I
    .end local v2    # "i":I
    .end local v3    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v4    # "modeCount":I
    .end local v5    # "modeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :cond_3c
    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validLandscapeDockModes:Ljava/util/List;

    goto :goto_c

    .line 262
    .restart local v0    # "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .restart local v1    # "currentModeIndex":I
    .restart local v2    # "i":I
    .restart local v4    # "modeCount":I
    .restart local v5    # "modeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :cond_3f
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    .line 263
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    if-ne v6, v10, :cond_75

    sget v8, Lcom/nuance/swype/input/R$string;->kb_layout_portrait_title:I

    .line 264
    :goto_50
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v10, 0x0

    .line 267
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    .line 269
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v10, Lcom/nuance/swype/input/settings/ThemesPrefs$6;

    invoke-direct {v10, p0, v7, v6, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs$6;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Ljava/util/List;ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    .line 268
    invoke-virtual {v9, v8, v1, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 293
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 263
    :cond_75
    sget v8, Lcom/nuance/swype/input/R$string;->kb_layout_landscape_title:I

    goto :goto_50
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 203
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 204
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v1, :cond_36

    .line 205
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 206
    .local v0, "currentIME":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_36

    .line 207
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->clearSavedKeyboardState()V

    .line 209
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/stats/StatisticsManager;->getSessionStatsScribe(Landroid/content/Context;)Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;

    move-result-object v2

    .line 210
    .local v2, "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    if-eqz v2, :cond_36

    .line 211
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 212
    .local v3, "value":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    if-nez v3, :cond_37

    move v4, v5

    :goto_2f
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v6, v7, v4}, Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;->recordSettingsChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    .end local v0    # "currentIME":Lcom/nuance/swype/input/IME;
    .end local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .end local v3    # "value":Z
    :cond_36
    return v5

    .line 212
    .restart local v0    # "currentIME":Lcom/nuance/swype/input/IME;
    .restart local v2    # "sessionScribe":Lcom/nuance/swype/stats/StatisticsManager$SessionStatsScribe;
    .restart local v3    # "value":Z
    :cond_37
    const/4 v4, 0x0

    goto :goto_2f
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->rebuildSettings()V

    .line 70
    return-void
.end method

.method protected abstract showCandidateSizeDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showKeyboardHeightDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showKeyboardModesDialog(Landroid/os/Bundle;)V
.end method
