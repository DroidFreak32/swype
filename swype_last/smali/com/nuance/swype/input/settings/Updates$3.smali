.class Lcom/nuance/swype/input/settings/Updates$3;
.super Ljava/lang/Object;
.source "Updates.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/Updates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Updates;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Updates;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Updates;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Updates$3;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 114
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$3;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # getter for: Lcom/nuance/swype/input/settings/Updates;->connectedStatus:Lcom/nuance/swype/connect/ConnectedStatus;
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$400(Lcom/nuance/swype/input/settings/Updates;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13

    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$3;->this$0:Lcom/nuance/swype/input/settings/Updates;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/Updates;->showConnectDialog()V

    .line 122
    :cond_12
    :goto_12
    return v1

    .line 118
    :cond_13
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$3;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # getter for: Lcom/nuance/swype/input/settings/Updates;->isUpgrading:Z
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$500(Lcom/nuance/swype/input/settings/Updates;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 121
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Updates$3;->this$0:Lcom/nuance/swype/input/settings/Updates;

    # invokes: Lcom/nuance/swype/input/settings/Updates;->installUpgrade()V
    invoke-static {v0}, Lcom/nuance/swype/input/settings/Updates;->access$600(Lcom/nuance/swype/input/settings/Updates;)V

    goto :goto_12
.end method
