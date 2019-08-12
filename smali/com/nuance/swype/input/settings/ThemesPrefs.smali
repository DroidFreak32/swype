.class public abstract Lcom/nuance/swype/input/settings/ThemesPrefs;
.super Ljava/lang/Object;
.source "ThemesPrefs.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final CANDIDATES_SIZE:Ljava/lang/String; = "Candidates_Size"

.field private static final CANDIDATES_SIZES_SETTINGS_KEY:Ljava/lang/String; = "candidates_size_setting_preference"

.field private static final CANDIDATE_DISPLAY_SIZE_OFFSET:I = 0x1e

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

.field public static isVisited:Z


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
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/nuance/swype/input/R$xml;->themespreferences:I

    sput v0, Lcom/nuance/swype/input/settings/ThemesPrefs;->PREFERENCES_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getValidDockModes(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validPortraitDockModes:Ljava/util/List;

    .line 61
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getValidDockModes(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validLandscapeDockModes:Ljava/util/List;

    .line 62
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    const-string v1, "themes options"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/IMEApplication;->recordScreenVisited(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/ThemesPrefs;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 32
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    return p1
.end method

.method static synthetic access$200(Lcom/nuance/swype/input/settings/ThemesPrefs;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 32
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    return v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/settings/ThemesPrefs;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/swype/input/settings/ThemesPrefs;)F
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;

    .prologue
    .line 32
    iget v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/swype/input/settings/ThemesPrefs;F)F
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/nuance/swype/input/settings/ThemesPrefs;Ljava/lang/String;F)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/ThemesPrefs;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->saveCandidatesSize(Ljava/lang/String;F)V

    return-void
.end method

.method public static getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F
    .locals 1
    .param p0, "sp"    # Lcom/nuance/swype/input/UserPreferences;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 441
    return v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private getValidDockModes(I)Ljava/util/List;
    .locals 7
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
    .line 199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v5, "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    iget-object v6, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 201
    .local v4, "res":Landroid/content/res/Resources;
    invoke-static {}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->values()[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .local v0, "arr$":[Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 202
    .local v3, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-virtual {v3, v4, p1}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->isEnabled(Landroid/content/res/Resources;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 203
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v3    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    :cond_1
    return-object v5
.end method

.method private final rebuildSettings()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 90
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/nuance/swype/input/settings/ThemesPrefs;->isVisited:Z

    .line 91
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 93
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v3, "candidates_size_setting_preference"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 94
    .local v0, "candidateSizePrefs":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isShowWordChoiceSizePrefEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 110
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v3, "keyboard_height_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 111
    .local v1, "keyboardHeightPrefs":Landroid/preference/Preference;
    if-eqz v1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Lcom/nuance/swype/input/UserPreferences;->isShowKeyboardHeightPrefEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 114
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes()V

    .line 129
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->removeNonAccessibleSettings()V

    .line 132
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 134
    return-void

    .line 99
    .end local v1    # "keyboardHeightPrefs":Landroid/preference/Preference;
    :cond_3
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesPrefs$1;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$1;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    .line 116
    .restart local v1    # "keyboardHeightPrefs":Landroid/preference/Preference;
    :cond_4
    new-instance v2, Lcom/nuance/swype/input/settings/ThemesPrefs$2;

    invoke-direct {v2, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$2;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method private refreshDockModes(Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
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
    .line 154
    .local p2, "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 155
    .local v0, "dockPref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 157
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode(I)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v1, Lcom/nuance/swype/input/settings/ThemesPrefs$3;

    invoke-direct {v1, p0, p3}, Lcom/nuance/swype/input/settings/ThemesPrefs$3;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;I)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private removeNonAccessibleSettings()V
    .locals 4

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/input/IME;->isExploreByTouchOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v3, "portrait_docking_modes"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 141
    .local v1, "portraitDockingMode":Landroid/preference/Preference;
    if-eqz v1, :cond_0

    .line 142
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    const-string v3, "landscape_docking_modes"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 146
    .local v0, "landscapeDockingMode":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 147
    iget-object v2, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    .end local v0    # "landscapeDockingMode":Landroid/preference/Preference;
    .end local v1    # "portraitDockingMode":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private saveCandidatesSize(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "size"    # F

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v0

    .line 446
    invoke-virtual {v0, p1, p2}, Lcom/nuance/swype/input/UserPreferences;->setFloat(Ljava/lang/String;F)V

    .line 447
    return-void
.end method

.method private setupPreferenceHandler(Landroid/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 188
    instance-of v3, p1, Landroid/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 189
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 190
    .local v1, "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 191
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs;->setupPreferenceHandler(Landroid/preference/Preference;)V

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method protected createCandidateSizeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    .line 370
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 371
    .local v2, "display":Landroid/util/DisplayMetrics;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    const-string v9, "layout_inflater"

    invoke-virtual {v7, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    invoke-virtual {v8, v7}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 374
    sget v8, Lcom/nuance/swype/input/R$layout;->candidate_size_dialog:I

    invoke-virtual {v7, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 376
    .local v4, "scrollView":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v6

    .line 377
    .local v6, "sp":Lcom/nuance/swype/input/UserPreferences;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->swype:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, "displayText":Ljava/lang/String;
    sget v7, Lcom/nuance/swype/input/R$id;->candidate_size:I

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;

    .line 379
    .local v1, "cs":Lcom/nuance/swype/input/settings/CandidateSizeSettingView;
    const-string v7, "Candidates_Size"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getCandidatesSize(Lcom/nuance/swype/input/UserPreferences;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    .line 380
    iget v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    invoke-virtual {v1, v7}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setTextSize(F)V

    .line 381
    invoke-virtual {v1, v3}, Lcom/nuance/swype/input/settings/CandidateSizeSettingView;->setDisplayText(Ljava/lang/String;)V

    .line 383
    sget v7, Lcom/nuance/swype/input/R$id;->size_seekbar:I

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 384
    .local v5, "sizeSeekBar":Landroid/widget/SeekBar;
    iget v7, v2, Landroid/util/DisplayMetrics;->density:F

    const v8, 0x3f4ccccd    # 0.8f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v7, v11, v8, v11}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 388
    :cond_0
    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 389
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 390
    iget v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValue:F

    mul-float/2addr v7, v10

    sub-float/2addr v7, v10

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 391
    new-instance v7, Lcom/nuance/swype/input/settings/ThemesPrefs$8;

    invoke-direct {v7, p0, v1, v3}, Lcom/nuance/swype/input/settings/ThemesPrefs$8;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Lcom/nuance/swype/input/settings/CandidateSizeSettingView;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 413
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v8, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->pref_word_choice_title:I

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->cancel_button:I

    invoke-virtual {v7, v8, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget v8, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v9, Lcom/nuance/swype/input/settings/ThemesPrefs$9;

    invoke-direct {v9, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$9;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 433
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 434
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7
.end method

.method protected createKeyboardHeightDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getDisplay()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 267
    .local v1, "display":Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 268
    sget v9, Lcom/nuance/swype/input/R$layout;->keyboard_height_dialog:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 270
    .local v2, "scrollView":Landroid/view/ViewGroup;
    sget v8, Lcom/nuance/swype/input/R$id;->valueTextPortrait:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 271
    .local v7, "valueTextPortrait":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nuance/swype/input/IMEApplication;->getUserPreferences()Lcom/nuance/swype/input/UserPreferences;

    move-result-object v5

    .line 272
    .local v5, "userPrefs":Lcom/nuance/swype/input/UserPreferences;
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScalePortrait()F

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    .line 273
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    sget v8, Lcom/nuance/swype/input/R$id;->portrait_seekbar:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 276
    .local v4, "seekBarPortrait":Landroid/widget/SeekBar;
    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 280
    :cond_0
    const/4 v8, 0x4

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 281
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 282
    iget v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightPortrait:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 283
    new-instance v8, Lcom/nuance/swype/input/settings/ThemesPrefs$5;

    invoke-direct {v8, p0, v7}, Lcom/nuance/swype/input/settings/ThemesPrefs$5;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Landroid/widget/TextView;)V

    invoke-virtual {v4, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 306
    sget v8, Lcom/nuance/swype/input/R$id;->valueTextLandscape:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 307
    .local v6, "valueTextLandscape":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardScaleLandscape()F

    move-result v8

    iput v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    sget v8, Lcom/nuance/swype/input/R$id;->landscape_seekbar:I

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 311
    .local v3, "seekBarLandscape":Landroid/widget/SeekBar;
    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    const v9, 0x3f4ccccd    # 0.8f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

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

    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/nuance/swype/input/R$dimen;->seek_bar_padding:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    const/4 v11, 0x0

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 315
    :cond_1
    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 316
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    .line 317
    iget v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->mValueKeyboardHeightLandscape:F

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/lit8 v8, v8, -0x8

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 318
    new-instance v8, Lcom/nuance/swype/input/settings/ThemesPrefs$6;

    invoke-direct {v8, p0, v6}, Lcom/nuance/swype/input/settings/ThemesPrefs$6;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Landroid/widget/TextView;)V

    invoke-virtual {v3, v8}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 341
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->pref_kb_height_title:I

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->ok_button:I

    new-instance v10, Lcom/nuance/swype/input/settings/ThemesPrefs$7;

    invoke-direct {v10, p0}, Lcom/nuance/swype/input/settings/ThemesPrefs$7;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 365
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 366
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8
.end method

.method protected createKeyboardModeDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    .line 211
    const-string v8, "orientation_bundle"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 212
    .local v6, "orientation":I
    if-ne v6, v10, :cond_1

    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validPortraitDockModes:Ljava/util/List;

    .line 216
    .local v7, "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v5, "modeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 219
    .local v1, "currentModeIndex":I
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/nuance/swype/input/UserPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/UserPreferences;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/nuance/swype/input/UserPreferences;->getKeyboardDockingMode(I)Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    move-result-object v0

    .line 221
    .local v0, "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 222
    .local v4, "modeCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 223
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;

    .line 224
    .local v3, "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    iget-object v8, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;->getName(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    if-ne v3, v0, :cond_0

    .line 226
    move v1, v2

    .line 222
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    .end local v0    # "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v1    # "currentModeIndex":I
    .end local v2    # "i":I
    .end local v3    # "mode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .end local v4    # "modeCount":I
    .end local v5    # "modeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :cond_1
    iget-object v7, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validLandscapeDockModes:Ljava/util/List;

    goto :goto_0

    .line 230
    .restart local v0    # "currentMode":Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;
    .restart local v1    # "currentModeIndex":I
    .restart local v2    # "i":I
    .restart local v4    # "modeCount":I
    .restart local v5    # "modeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "validDockModes":Ljava/util/List;, "Ljava/util/List<Lcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;>;"
    :cond_2
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v9, Lcom/nuance/swype/input/R$drawable;->swype_logo:I

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    if-ne v6, v10, :cond_3

    sget v8, Lcom/nuance/swype/input/R$string;->kb_layout_portrait_title:I

    :goto_2
    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v9, Lcom/nuance/swype/input/R$string;->cancel_button:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    new-instance v10, Lcom/nuance/swype/input/settings/ThemesPrefs$4;

    invoke-direct {v10, p0, v7, v6, v0}, Lcom/nuance/swype/input/settings/ThemesPrefs$4;-><init>(Lcom/nuance/swype/input/settings/ThemesPrefs;Ljava/util/List;ILcom/nuance/swype/input/KeyboardEx$KeyboardDockMode;)V

    invoke-virtual {v9, v8, v1, v10}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 261
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    return-object v8

    .line 230
    :cond_3
    sget v8, Lcom/nuance/swype/input/R$string;->kb_layout_landscape_title:I

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    .line 178
    .local v1, "imeApp":Lcom/nuance/swype/input/IMEApplication;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getIME()Lcom/nuance/swype/input/IME;

    move-result-object v0

    .line 180
    .local v0, "currentIME":Lcom/nuance/swype/input/IME;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/nuance/swype/input/IME;->clearSavedKeyboardState()V

    .line 184
    .end local v0    # "currentIME":Lcom/nuance/swype/input/IME;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/ThemesPrefs;->rebuildSettings()V

    .line 67
    return-void
.end method

.method protected refreshDockModes()V
    .locals 3

    .prologue
    .line 80
    const-string v0, "portrait_docking_modes"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validPortraitDockModes:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes(Ljava/lang/String;Ljava/util/List;I)V

    .line 82
    const-string v0, "landscape_docking_modes"

    iget-object v1, p0, Lcom/nuance/swype/input/settings/ThemesPrefs;->validLandscapeDockModes:Ljava/util/List;

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/nuance/swype/input/settings/ThemesPrefs;->refreshDockModes(Ljava/lang/String;Ljava/util/List;I)V

    .line 84
    return-void
.end method

.method protected abstract showCandidateSizeDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showKeyboardHeightDialog(Landroid/os/Bundle;)V
.end method

.method protected abstract showKeyboardModesDialog(Landroid/os/Bundle;)V
.end method
