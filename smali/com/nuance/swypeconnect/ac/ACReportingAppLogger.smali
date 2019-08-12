.class Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$1;,
        Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;,
        Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;
    }
.end annotation


# static fields
.field private static final APPLIST_LOGGING_INTERVAL:J = 0x278d00L

.field private static final LAST_APPLIST_TIMESTAMP_PREF_KEY:Ljava/lang/String; = "APP_LIST_LOG_TS"

.field private static final oemLog:Lcom/nuance/connect/util/Logger$Log;


# instance fields
.field private final context:Landroid/content/Context;

.field private final filter:Landroid/content/IntentFilter;

.field private final receiver:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;

.field private registered:Z

.field private final store:Lcom/nuance/connect/store/PersistentDataStore;

.field private final writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcom/nuance/connect/util/Logger$LoggerType;->OEM:Lcom/nuance/connect/util/Logger$LoggerType;

    const-class v1, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/connect/util/Logger;->getLog(Lcom/nuance/connect/util/Logger$LoggerType;Ljava/lang/String;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/nuance/connect/store/PersistentDataStore;Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->store:Lcom/nuance/connect/store/PersistentDataStore;

    iput-object p3, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->filter:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->filter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->filter:Landroid/content/IntentFilter;

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;

    invoke-direct {v0, p0}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;-><init>(Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;)V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->receiver:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;

    return-void
.end method

.method static synthetic access$000()Lcom/nuance/connect/util/Logger$Log;
    .locals 1

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private getAppsInstalled(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private logAppListIfNeeded(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v1, "APP_LIST_LOG_TS"

    invoke-interface {v0, v1, v6, v7}, Lcom/nuance/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    sub-long v0, v2, v0

    const-wide/32 v4, 0x278d00

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->store:Lcom/nuance/connect/store/PersistentDataStore;

    const-string v1, "APP_LIST_LOG_TS"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->getAppsInstalled(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_LIST:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->logAppStatInternal(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private logAppStat(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private logAppStatInternal(Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$1;->$SwitchMap$com$nuance$swypeconnect$ac$ACReportingAppLogger$Type:[I

    invoke-virtual {p2}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    move-object v2, v4

    :goto_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->writer:Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;

    sget-object v1, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->R_AND_D_DATA1:Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;

    invoke-virtual {v1}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACDataPoints;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/nuance/swypeconnect/ac/ACReportingService$ACReportingWriter;->logPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-void

    :pswitch_0
    const-string v2, "a"

    goto :goto_0

    :pswitch_1
    const-string v2, "i"

    goto :goto_0

    :pswitch_2
    const-string v2, "r"

    goto :goto_0

    :pswitch_3
    const-string v2, "s"

    goto :goto_0

    :pswitch_4
    const-string v2, "x"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method onShutdown()V
    .locals 2

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onShutdown"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->registered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->receiver:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->registered:Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->context:Landroid/content/Context;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->SDK_SHUTDOWN:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    return-void
.end method

.method onStart()V
    .locals 3

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->oemLog:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onStart"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->registered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->receiver:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;

    iget-object v2, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->registered:Z

    :cond_0
    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->context:Landroid/content/Context;

    sget-object v0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->SDK_STARTUP:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    return-void
.end method
