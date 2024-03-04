.class public abstract Lcom/nuance/sns/ScraperService;
.super Landroid/app/IntentService;
.source "ScraperService.java"


# static fields
.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "extra_access_token"

.field public static final EXTRA_APP_ID:Ljava/lang/String; = "extra_app_id"

.field public static final EXTRA_APP_NAME:Ljava/lang/String; = "extra_app_name"

.field public static final EXTRA_EXPIRATION:Ljava/lang/String; = "extra_expiration"

.field public static final EXTRA_SECRET_TOKEN:Ljava/lang/String; = "extra_secret_token"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected getStringDateNow()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method protected updateErrorStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusPreferences"    # Lcom/nuance/sns/ScraperStatus;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "failed"

    invoke-static {v0, p2}, Lcom/nuance/sns/ScraperStatus;->formatStatusValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected updateFinishedStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusPreferences"    # Lcom/nuance/sns/ScraperStatus;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "finished"

    invoke-static {v0, p2}, Lcom/nuance/sns/ScraperStatus;->formatStatusValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method protected updateWorkingStatus(Lcom/nuance/sns/ScraperStatus;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusPreferences"    # Lcom/nuance/sns/ScraperStatus;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "working"

    invoke-static {v0, p2}, Lcom/nuance/sns/ScraperStatus;->formatStatusValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/nuance/sns/ScraperStatus;->setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    return-void
.end method
