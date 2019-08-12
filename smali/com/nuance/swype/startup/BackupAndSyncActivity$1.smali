.class final Lcom/nuance/swype/startup/BackupAndSyncActivity$1;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "BackupAndSyncActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/BackupAndSyncActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final showConnectDialog()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
