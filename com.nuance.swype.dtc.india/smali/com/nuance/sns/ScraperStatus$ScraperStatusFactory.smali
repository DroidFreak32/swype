.class public Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;
.super Ljava/lang/Object;
.source "ScraperStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/sns/ScraperStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScraperStatusFactory"
.end annotation


# instance fields
.field private calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field private twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getCalllogScraperStatus()Lcom/nuance/sns/ScraperStatus;
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/nuance/sns/ScraperStatus;

    const-string/jumbo v1, "calllog_status_pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->calllogScraperStatus:Lcom/nuance/sns/ScraperStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getGmailStatusPreference()Lcom/nuance/sns/ScraperStatus;
    .locals 3

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/nuance/sns/ScraperStatus;

    const-string/jumbo v1, "gmail_status_pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->gmailScraperStatus:Lcom/nuance/sns/ScraperStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSMSStatusPreference()Lcom/nuance/sns/ScraperStatus;
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/nuance/sns/ScraperStatus;

    const-string/jumbo v1, "sms_calllog_status_pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->smsScraperStatus:Lcom/nuance/sns/ScraperStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;
    .locals 3

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/nuance/sns/ScraperStatus;

    const-string/jumbo v1, "twitter_status_pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->twitterScraperStatus:Lcom/nuance/sns/ScraperStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/sns/ScraperStatus;->access$400(Lcom/nuance/sns/ScraperStatus;Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getSMSStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/nuance/sns/ScraperStatus;->access$400(Lcom/nuance/sns/ScraperStatus;Landroid/content/Context;)V

    .line 195
    return-void
.end method
