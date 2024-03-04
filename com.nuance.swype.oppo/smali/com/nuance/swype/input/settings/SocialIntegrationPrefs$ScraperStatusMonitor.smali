.class Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;
.super Ljava/lang/Object;
.source "SocialIntegrationPrefs.java"

# interfaces
.implements Lcom/nuance/sns/ScraperStatus$IStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScraperStatusMonitor"
.end annotation


# instance fields
.field private final signInStringResId:I

.field private final summaryPrefKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;ILjava/lang/String;)V
    .locals 0
    .param p2, "signInStringResId"    # I
    .param p3, "summaryPrefKey"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p3, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->summaryPrefKey:Ljava/lang/String;

    .line 164
    iput p2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->signInStringResId:I

    .line 165
    return-void
.end method

.method private getFinishedStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->sns_personalize_finished:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSignOnStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->signInStringResId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatusSummary(Lcom/nuance/sns/ScraperStatus$StatusValue;)Ljava/lang/String;
    .locals 2
    .param p1, "status"    # Lcom/nuance/sns/ScraperStatus$StatusValue;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/nuance/sns/ScraperStatus$StatusValue;->status:Lcom/nuance/sns/ScraperStatus$STATUS;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$2;->$SwitchMap$com$nuance$sns$ScraperStatus$STATUS:[I

    iget-object v1, p1, Lcom/nuance/sns/ScraperStatus$StatusValue;->status:Lcom/nuance/sns/ScraperStatus$STATUS;

    invoke-virtual {v1}, Lcom/nuance/sns/ScraperStatus$STATUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getSignOnStatus()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 194
    :pswitch_0
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getSignOnStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-direct {p0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getWorkingStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v0, p1, Lcom/nuance/sns/ScraperStatus$StatusValue;->time:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getFinishedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStatusValue(Lcom/nuance/sns/ScraperStatus;)Lcom/nuance/sns/ScraperStatus$StatusValue;
    .locals 2
    .param p1, "scraperStatus"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/sns/ScraperStatus;->getScrapStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/sns/ScraperStatus;->parseStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/sns/ScraperStatus$StatusValue;

    move-result-object v0

    return-object v0
.end method

.method private getWorkingStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$string;->sns_personalizing:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onStatusChange(Lcom/nuance/sns/ScraperStatus;)V
    .locals 2
    .param p1, "status"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->access$000(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;

    invoke-direct {v1, p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor$1;-><init>(Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;Lcom/nuance/sns/ScraperStatus;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method

.method public updateScraperStatus(Lcom/nuance/sns/ScraperStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/nuance/sns/ScraperStatus;

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getStatusValue(Lcom/nuance/sns/ScraperStatus;)Lcom/nuance/sns/ScraperStatus$StatusValue;

    move-result-object v1

    .line 183
    .local v1, "statusValue":Lcom/nuance/sns/ScraperStatus$StatusValue;
    iget-object v2, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->this$0:Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;

    iget-object v3, p0, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->summaryPrefKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs;->findPreference(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    .line 184
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 185
    invoke-direct {p0, v1}, Lcom/nuance/swype/input/settings/SocialIntegrationPrefs$ScraperStatusMonitor;->getStatusSummary(Lcom/nuance/sns/ScraperStatus$StatusValue;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    return-void
.end method
