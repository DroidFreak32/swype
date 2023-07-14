.class public Lcom/nuance/sns/ScraperStatus;
.super Ljava/lang/Object;
.source "ScraperStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/sns/ScraperStatus$ScraperStatusFactory;,
        Lcom/nuance/sns/ScraperStatus$StatusObserver;,
        Lcom/nuance/sns/ScraperStatus$IStatusListener;,
        Lcom/nuance/sns/ScraperStatus$StatusValue;,
        Lcom/nuance/sns/ScraperStatus$STATUS;
    }
.end annotation


# static fields
.field private static final CALLLOG_STATUS_PREF:Ljava/lang/String; = "calllog_status_pref"

.field private static final GMAIL_STATUS_PREF:Ljava/lang/String; = "gmail_status_pref"

.field private static final SCRAPING_STATUS:Ljava/lang/String; = "scraping_status"

.field public static final SCRAPING_STATUS_FAILED:Ljava/lang/String; = "failed"

.field public static final SCRAPING_STATUS_FINISHED:Ljava/lang/String; = "finished"

.field public static final SCRAPING_STATUS_NONE:Ljava/lang/String; = "none"

.field public static final SCRAPING_STATUS_WORKING:Ljava/lang/String; = "working"

.field private static final SMS_STATUS_PREF:Ljava/lang/String; = "sms_calllog_status_pref"

.field private static final STATUS_VALUE_SEPERATOR:Ljava/lang/String; = ":"

.field private static final TWITTER_STATUS_PREF:Ljava/lang/String; = "twitter_status_pref"


# instance fields
.field private final pref:Ljava/lang/String;

.field private final statusObserver:Lcom/nuance/sns/ScraperStatus$StatusObserver;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/nuance/sns/ScraperStatus$StatusObserver;

    invoke-direct {v0}, Lcom/nuance/sns/ScraperStatus$StatusObserver;-><init>()V

    iput-object v0, p0, Lcom/nuance/sns/ScraperStatus;->statusObserver:Lcom/nuance/sns/ScraperStatus$StatusObserver;

    .line 44
    iput-object p1, p0, Lcom/nuance/sns/ScraperStatus;->pref:Ljava/lang/String;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nuance/sns/ScraperStatus$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/nuance/sns/ScraperStatus$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nuance/sns/ScraperStatus;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/nuance/sns/ScraperStatus;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus;->clearStatus(Landroid/content/Context;)V

    return-void
.end method

.method private clearStatus(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus;->pref:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 71
    return-void
.end method

.method public static formatStatusValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "status"    # Ljava/lang/String;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatTime(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "millis"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .local v0, "date":Ljava/util/Date;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "EEE, MMM d, yyyy"

    invoke-direct {v1, v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    .end local v0    # "date":Ljava/util/Date;
    :catch_0
    move-exception v1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus;->pref:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static parseStatus(Landroid/content/Context;Ljava/lang/String;)Lcom/nuance/sns/ScraperStatus$StatusValue;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    const-string/jumbo v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "values":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 93
    .local v0, "locale":Ljava/util/Locale;
    const-string/jumbo v2, "finished"

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    new-instance v2, Lcom/nuance/sns/ScraperStatus$StatusValue;

    sget-object v3, Lcom/nuance/sns/ScraperStatus$STATUS;->FINISHED:Lcom/nuance/sns/ScraperStatus$STATUS;

    aget-object v4, v1, v5

    invoke-static {v0, v4}, Lcom/nuance/sns/ScraperStatus;->formatTime(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/sns/ScraperStatus$StatusValue;-><init>(Lcom/nuance/sns/ScraperStatus$STATUS;Ljava/lang/String;)V

    .line 104
    .end local v0    # "locale":Ljava/util/Locale;
    :goto_0
    return-object v2

    .line 96
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_0
    const-string/jumbo v2, "working"

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    new-instance v2, Lcom/nuance/sns/ScraperStatus$StatusValue;

    sget-object v3, Lcom/nuance/sns/ScraperStatus$STATUS;->WORKING:Lcom/nuance/sns/ScraperStatus$STATUS;

    aget-object v4, v1, v5

    invoke-static {v0, v4}, Lcom/nuance/sns/ScraperStatus;->formatTime(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/sns/ScraperStatus$StatusValue;-><init>(Lcom/nuance/sns/ScraperStatus$STATUS;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_1
    const-string/jumbo v2, "failed"

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    new-instance v2, Lcom/nuance/sns/ScraperStatus$StatusValue;

    sget-object v3, Lcom/nuance/sns/ScraperStatus$STATUS;->FAILED:Lcom/nuance/sns/ScraperStatus$STATUS;

    aget-object v4, v1, v5

    invoke-static {v0, v4}, Lcom/nuance/sns/ScraperStatus;->formatTime(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/nuance/sns/ScraperStatus$StatusValue;-><init>(Lcom/nuance/sns/ScraperStatus$STATUS;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_2
    new-instance v2, Lcom/nuance/sns/ScraperStatus$StatusValue;

    sget-object v3, Lcom/nuance/sns/ScraperStatus$STATUS;->NONE:Lcom/nuance/sns/ScraperStatus$STATUS;

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/nuance/sns/ScraperStatus$StatusValue;-><init>(Lcom/nuance/sns/ScraperStatus$STATUS;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/sns/ScraperStatus$IStatusListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus;->statusObserver:Lcom/nuance/sns/ScraperStatus$StatusObserver;

    invoke-static {v0, p1}, Lcom/nuance/sns/ScraperStatus$StatusObserver;->access$100(Lcom/nuance/sns/ScraperStatus$StatusObserver;Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 63
    return-void
.end method

.method public declared-synchronized getScrapStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "scraping_status"

    const-string/jumbo v2, "none"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeStatusListener(Lcom/nuance/sns/ScraperStatus$IStatusListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/nuance/sns/ScraperStatus$IStatusListener;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus;->statusObserver:Lcom/nuance/sns/ScraperStatus$StatusObserver;

    invoke-static {v0, p1}, Lcom/nuance/sns/ScraperStatus$StatusObserver;->access$200(Lcom/nuance/sns/ScraperStatus$StatusObserver;Lcom/nuance/sns/ScraperStatus$IStatusListener;)V

    .line 67
    return-void
.end method

.method public declared-synchronized setScrapStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nuance/sns/ScraperStatus;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "scraping_status"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/android/compat/SharedPreferencesEditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 54
    iget-object v0, p0, Lcom/nuance/sns/ScraperStatus;->statusObserver:Lcom/nuance/sns/ScraperStatus$StatusObserver;

    invoke-static {v0, p0}, Lcom/nuance/sns/ScraperStatus$StatusObserver;->access$000(Lcom/nuance/sns/ScraperStatus$StatusObserver;Lcom/nuance/sns/ScraperStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
