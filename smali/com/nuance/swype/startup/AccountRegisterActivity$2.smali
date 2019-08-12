.class final Lcom/nuance/swype/startup/AccountRegisterActivity$2;
.super Lcom/nuance/swype/connect/ConnectedStatus;
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
    .line 59
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method
