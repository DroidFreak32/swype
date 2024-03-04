.class public abstract Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
.super Ljava/lang/Object;
.source "SocialIntegrationPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$2;,
        Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;
    }
.end annotation


# static fields
.field public static final FACEBOOK_PREFERENCE_KEY:Ljava/lang/String; = "facebook_preference_key"

.field public static final PERSONALIZATION_CAT:Ljava/lang/String; = "pref_social_networks_persionalization"

.field public static final SOCIAL_INTEGRATION_PREFS_XML:I

.field public static final TWITTER_PREFERENCE_KEY:Ljava/lang/String; = "twitter_preference_key"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private fbScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

.field private screen:Landroid/preference/PreferenceScreen;

.field private twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

.field private twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/nuance/swype/input/R$xml;->socialintegrationpreferences:I

    sput v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->SOCIAL_INTEGRATION_PREFS_XML:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private buildSocialNetworkPersonalization()V
    .locals 4

    .prologue
    .line 139
    const-string v1, "facebook_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 140
    const-string v1, "twitter_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v0

    .line 144
    .local v0, "factory":Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;
    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getFacebookStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 145
    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 147
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    sget v2, Lcom/nuance/swype/input/R$string;->sns_facebook_sign_on:I

    const-string v3, "facebook_preference_key"

    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->fbScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    .line 149
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    sget v2, Lcom/nuance/swype/input/R$string;->sns_twitter_sign_on:I

    const-string v3, "twitter_preference_key"

    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    .line 152
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->fbScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v1, v2}, Lcom/nuance/sns/ScraperStatus;->addStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 153
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v1, v2}, Lcom/nuance/sns/ScraperStatus;->addStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 155
    return-void
.end method

.method private registerSnsOnClickListener(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 116
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    :cond_0
    return-void
.end method

.method private updateSocialNetworkPersonalizationStatus()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/input/AppPreferences;->isPersionalizationEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->fbScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V

    .line 110
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public createNoNetworkDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected final findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->rebuildSettings()V

    .line 46
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->fbScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/ScraperStatus;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/ScraperStatus;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 55
    :cond_1
    return-void
.end method

.method protected final rebuildSettings()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 95
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->buildSocialNetworkPersonalization()V

    .line 96
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->updateSocialNetworkPersonalizationStatus()V

    .line 98
    return-void
.end method

.method protected final removeCategorySubPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "categoryName"    # Ljava/lang/String;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 77
    .local v0, "category":Landroid/preference/PreferenceCategory;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0, p2}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected final removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 1
    .param p1, "group"    # Landroid/preference/PreferenceGroup;
    .param p2, "prefName"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    :cond_0
    return-void
.end method

.method protected final removePreference(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final removePreference(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 68
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->removePreference(Landroid/preference/Preference;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract showNoNetworkDialog()V
.end method
