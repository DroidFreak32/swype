.class public Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SettingsSoftResetBroadcastReceiver.java"


# static fields
.field private static final ACTION_SETTINGS_SOFT_RESET:Ljava/lang/String; = "android.intent.action.SETTINGS_SOFT_RESET"

.field protected static final log:Lcom/nuance/swype/util/LogManager$Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "SettingsSoftResetBroadcastReceiver"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 28
    const-string v1, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    sget-object v1, Lcom/nuance/swype/input/SettingsSoftResetBroadcastReceiver;->log:Lcom/nuance/swype/util/LogManager$Log;

    const-string v2, "onReceive(): performing soft reset..."

    invoke-virtual {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;)V

    .line 36
    invoke-static {p1}, Lcom/nuance/swype/input/settings/SettingsPrefs;->resetSettings(Landroid/content/Context;)V

    .line 40
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    return-void
.end method
