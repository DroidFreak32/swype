.class Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "ChinesePrefsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/ChinesePrefsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/ChinesePrefsFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/ChinesePrefsFragment;
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/nuance/swype/input/settings/ChinesePrefsFragment$2;->this$0:Lcom/nuance/swype/input/settings/ChinesePrefsFragment;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 0
    .param p1, "isConnected"    # Z

    .prologue
    .line 72
    return-void
.end method
