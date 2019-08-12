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
.field facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field smsCalllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

.field twitteerScraperStatus:Lcom/nuance/sns/ScraperStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized getFacebookStatusPreference()Lcom/nuance/sns/ScraperStatus;
    .locals 3

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lcom/nuance/sns/ScraperStatus;

    const-string v1, "facebook_status_pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->facebookScraperStatus:Lcom/nuance/sns/ScraperStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSMSCalllogStatusPreference()Lcom/nuance/sns/ScraperStatus;
    .locals 3

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->smsCalllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Lcom/nuance/sns/ScraperStatus;

    const-string v1, "sms_calllog_status_pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->smsCalllogScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->smsCalllogScraperStatus:Lcom/nuance/sns/ScraperStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;
    .locals 3

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->twitteerScraperStatus:Lcom/nuance/sns/ScraperStatus;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/nuance/sns/ScraperStatus;

    const-string v1, "twitter_status_pref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->twitteerScraperStatus:Lcom/nuance/sns/ScraperStatus;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->twitteerScraperStatus:Lcom/nuance/sns/ScraperStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reset(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getFacebookStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/sns/ScraperStatus;->clearStatus(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getTwitterStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/sns/ScraperStatus;->clearStatus(Landroid/content/Context;)V

    .line 186
    invoke-virtual {p0}, Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;->getSMSCalllogStatusPreference()Lcom/nuance/sns/ScraperStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nuance/sns/ScraperStatus;->clearStatus(Landroid/content/Context;)V

    .line 187
    return-void
.end method
