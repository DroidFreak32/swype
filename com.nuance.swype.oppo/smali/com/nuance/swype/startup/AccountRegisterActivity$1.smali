.class final Lcom/nuance/swype/startup/AccountRegisterActivity$1;
.super Lcom/nuance/swype/preference/ConnectionAwarePreferences;
.source "AccountRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/startup/AccountRegisterActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 54
    invoke-direct {p0, p1}, Lcom/nuance/swype/preference/ConnectionAwarePreferences;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final showConnectDialog()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method
