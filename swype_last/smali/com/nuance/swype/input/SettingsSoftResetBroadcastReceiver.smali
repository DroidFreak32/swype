.class public Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSoftResetBroadcastReceiver.java"


# static fields
.field private static final ACTION_SETTINGS_SOFT_RESET:Ljava/lang/String; = "android.intent.action.SETTINGS_SOFT_RESET"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "SettingsSoftResetBroadcastReceiver"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 25
    if-eqz p2, :cond_39

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onReceive(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 28
    const-string/jumbo v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 29
    sget-object v1, Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, "onReceive(): performing soft reset..."

    aput-object v3, v2, v5

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 36
    invoke-static {p1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->resetSettings(Landroid/content/Context;)V

    .line 40
    .end local v0    # "action":Ljava/lang/String;
    :cond_39
    return-void
.end method
