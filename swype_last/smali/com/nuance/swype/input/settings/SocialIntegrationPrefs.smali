.class public abstract Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
.super Ljava/lang/Object;
.source "SocialIntegrationPrefs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;
    }
.end annotation


# static fields
.field private static final APPS_PREFERENCE_KEY:Ljava/lang/String; = "apps_preference_key"

.field private static final CALLLOG_PREFERENCE_KEY:Ljava/lang/String; = "calllog_preference_key"

.field private static final CONTACTS_PREFERENCE_KEY:Ljava/lang/String; = "contacts_preference_key"

.field private static final GMAIL_PREFERENCE_KEY:Ljava/lang/String; = "gmail_preference_key"

.field private static final SMS_PREFERENCE_KEY:Ljava/lang/String; = "sms_preference_key"

.field public static final SOCIAL_INTEGRATION_PREFS_XML:I

.field private static final TWITTER_PREFERENCE_KEY:Ljava/lang/String; = "twitter_preference_key"

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private clScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

.field private gmScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

.field private gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private screen:Landroid/preference/PreferenceScreen;

.field private smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private smsScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

.field private twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

.field private twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    sget v0, Lcom/nuance/swype/input/R$xml;->socialintegrationpreferences:I

    sput v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->SOCIAL_INTEGRATION_PREFS_XML:I

    .line 51
    const-string/jumbo v0, "SocialIntegration"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method private buildSocialNetworkPersonalization()V
    .registers 5

    .prologue
    .line 169
    const-string/jumbo v1, "twitter_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "gmail_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v1, "contacts_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "sms_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "calllog_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "apps_preference_key"

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->registerSnsOnClickListener(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getScraperStatusFactory()Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;

    move-result-object v0

    .line 178
    .local v0, "factory":Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;
    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 179
    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getGmailStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 180
    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getSMSStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 181
    invoke-virtual {v0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getCalllogScraperStatus()Lcom/nuance/sns/ScraperStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 184
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    sget v2, Lcom/nuance/swype/input/R$string;->sns_twitter_sign_on:I

    const-string/jumbo v3, "twitter_preference_key"

    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    .line 186
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    sget v2, Lcom/nuance/swype/input/R$string;->sns_gmail_sign_on:I

    const-string/jumbo v3, "gmail_preference_key"

    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    .line 188
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    sget v2, Lcom/nuance/swype/input/R$string;->sns_sms_sign_on:I

    const-string/jumbo v3, "sms_preference_key"

    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    .line 190
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    sget v2, Lcom/nuance/swype/input/R$string;->sns_calllog_sign_on:I

    const-string/jumbo v3, "calllog_preference_key"

    invoke-direct {v1, p0, v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->clScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    .line 193
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v1, v2}, Lcom/nuance/sns/ScraperStatus;->addStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 194
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v1, v2}, Lcom/nuance/sns/ScraperStatus;->addStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 195
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v1, v2}, Lcom/nuance/sns/ScraperStatus;->addStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 196
    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->clScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v1, v2}, Lcom/nuance/sns/ScraperStatus;->addStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 197
    return-void
.end method

.method private findPreference(Ljava/lang/String;)Landroid/preference/Preference;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private rebuildSettings()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 93
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->addPreferences()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->screen:Landroid/preference/PreferenceScreen;

    .line 95
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->buildSocialNetworkPersonalization()V

    .line 96
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->updateSocialNetworkPersonalizationStatus()V

    .line 97
    return-void
.end method

.method private registerSnsOnClickListener(Ljava/lang/String;)V
    .registers 4
    .param p1, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 144
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_e

    .line 145
    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$1;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    :cond_e
    return-void
.end method

.method private updateSocialNetworkPersonalizationStatus()V
    .registers 15

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 107
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/nuance/swype/input/AppPreferences;->from(Landroid/content/Context;)Lcom/nuance/swype/input/AppPreferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/AppPreferences;->isPersonalizationEnable()Z

    move-result v7

    if-eqz v7, :cond_fa

    .line 108
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V

    .line 109
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V

    .line 110
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Lcom/nuance/sns/ScraperStatus;->getScrapStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "smsStatus":Ljava/lang/String;
    sget-object v7, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "smsStatus:"

    aput-object v9, v8, v10

    aput-object v5, v8, v11

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 112
    sget-object v7, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v8, v12, [Ljava/lang/Object;

    const-string/jumbo v9, "callLogStatus:"

    aput-object v9, v8, v10

    iget-object v9, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v10, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v9, v10}, Lcom/nuance/sns/ScraperStatus;->getScrapStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 113
    const-string/jumbo v7, "finished"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 115
    :try_start_52
    const-string/jumbo v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "strs":[Ljava/lang/String;
    array-length v7, v6

    if-lt v7, v12, :cond_ec

    .line 117
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/input/IMEApplication;->getConnect()Lcom/nuance/swype/connect/Connect;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nuance/swype/connect/Connect;->getScannerService()Lcom/nuance/swypeconnect/ac/ACScannerService;

    move-result-object v7

    sget-object v8, Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;->SMS:Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;

    invoke-virtual {v7, v8}, Lcom/nuance/swypeconnect/ac/ACScannerService;->getScanner(Lcom/nuance/swypeconnect/ac/ACScannerService$ScannerType;)Lcom/nuance/swypeconnect/ac/ACScanner;

    move-result-object v7

    .line 118
    invoke-virtual {v7}, Lcom/nuance/swypeconnect/ac/ACScanner;->getLastRun()Ljava/util/Calendar;

    move-result-object v1

    .line 119
    .local v1, "lastRun":Ljava/util/Calendar;
    sget-object v8, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x4

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v10, "sms lastRun:"

    aput-object v10, v9, v7

    const/4 v10, 0x1

    if-nez v1, :cond_fb

    const-string/jumbo v7, "null"

    :goto_85
    aput-object v7, v9, v10

    const/4 v7, 0x2

    const-string/jumbo v10, "lastRun miliSec:"

    aput-object v10, v9, v7

    const/4 v10, 0x3

    if-nez v1, :cond_100

    const-string/jumbo v7, ""

    :goto_93
    aput-object v7, v9, v10

    invoke-interface {v8, v9}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 120
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 121
    .local v2, "milSec":J
    sget-object v7, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "smsStatus miliSec:"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget-object v10, v6, v10

    aput-object v10, v8, v9

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 122
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 123
    .local v4, "smsCal":Ljava/util/Calendar;
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    if-eqz v1, :cond_c2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ec

    .line 125
    :cond_c2
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8}, Lcom/nuance/sns/ScraperStatus;->getScrapStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "none"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e2

    .line 126
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v10, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-virtual {v9, v10}, Lcom/nuance/sns/ScraperStatus;->getScrapStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 128
    :cond_e2
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    const-string/jumbo v9, "none"

    invoke-virtual {v7, v8, v9}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_ec
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_52 .. :try_end_ec} :catch_109
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_ec} :catch_114

    .line 137
    .end local v1    # "lastRun":Ljava/util/Calendar;
    .end local v2    # "milSec":J
    .end local v4    # "smsCal":Ljava/util/Calendar;
    .end local v6    # "strs":[Ljava/lang/String;
    :cond_ec
    :goto_ec
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V

    .line 138
    iget-object v7, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->clScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    iget-object v8, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    invoke-virtual {v7, v8}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V

    .line 140
    .end local v5    # "smsStatus":Ljava/lang/String;
    :cond_fa
    return-void

    .line 119
    .restart local v1    # "lastRun":Ljava/util/Calendar;
    .restart local v5    # "smsStatus":Ljava/lang/String;
    .restart local v6    # "strs":[Ljava/lang/String;
    :cond_fb
    :try_start_fb
    invoke-virtual {v1}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_85

    :cond_100
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_107
    .catch Lcom/nuance/swypeconnect/ac/ACScannerException; {:try_start_fb .. :try_end_107} :catch_109
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_107} :catch_114

    move-result-object v7

    goto :goto_93

    .line 131
    .end local v1    # "lastRun":Ljava/util/Calendar;
    .end local v6    # "strs":[Ljava/lang/String;
    :catch_109
    move-exception v0

    .line 132
    .local v0, "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    sget-object v7, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Lcom/nuance/swypeconnect/ac/ACScannerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_ec

    .line 133
    .end local v0    # "e":Lcom/nuance/swypeconnect/ac/ACScannerException;
    :catch_114
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/nuance/swype/util/LogManager$Log;->e(Ljava/lang/Object;)V

    goto :goto_ec
.end method


# virtual methods
.method protected abstract addPreferences()Landroid/preference/PreferenceScreen;
.end method

.method public createNoNetworkDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 100
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_available:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->no_network_try_again_msg:I

    .line 101
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->dismiss_button:I

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onStart()V
    .registers 5

    .prologue
    .line 58
    sget-object v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStart()..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 59
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->rebuildSettings()V

    .line 60
    return-void
.end method

.method public onStop()V
    .registers 5

    .prologue
    .line 63
    sget-object v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "onStop()..."

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-eqz v0, :cond_19

    .line 65
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->twScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/ScraperStatus;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 67
    :cond_19
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-eqz v0, :cond_24

    .line 68
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->gmScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/ScraperStatus;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 70
    :cond_24
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-eqz v0, :cond_2f

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->smsScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/ScraperStatus;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 73
    :cond_2f
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-eqz v0, :cond_3a

    .line 74
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->clScraperStatusMonitor:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;

    invoke-virtual {v0, v1}, Lcom/nuance/sns/ScraperStatus;->removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 76
    :cond_3a
    return-void
.end method

.method protected abstract showNoNetworkDialog()V
.end method
