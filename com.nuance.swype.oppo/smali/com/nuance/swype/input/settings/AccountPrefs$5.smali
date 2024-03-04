.class Lcom/nuance/swype/input/settings/AccountPrefs$5;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "AccountPrefs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$5;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 1
    .param p1, "isConnected"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$5;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 168
    return-void
.end method
