.class Lcom/nuance/swype/input/settings/AccountPrefs$6;
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
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AccountPrefs;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$6;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .registers 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$6;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->rebuildSettings()V

    .line 202
    return-void
.end method
