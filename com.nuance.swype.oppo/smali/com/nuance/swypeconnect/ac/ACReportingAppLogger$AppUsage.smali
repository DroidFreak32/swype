.class public Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppUsage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;


# direct methods
.method public constructor <init>(Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_1

    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "unexpected null intent"

    invoke-interface {v0, v1}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->access$000()Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onReceive("

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_INSTALLED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    invoke-static {v1, p1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->access$100(Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$AppUsage;->this$0:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;

    sget-object v2, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;->APP_LOGGING_REMOVED:Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;

    invoke-static {v1, p1, v2, v0}, Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;->access$100(Lcom/nuance/swypeconnect/ac/ACReportingAppLogger;Landroid/content/Context;Lcom/nuance/swypeconnect/ac/ACReportingAppLogger$Type;Ljava/lang/String;)V

    goto :goto_0
.end method
