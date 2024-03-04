.class Lcom/nuance/swype/input/settings/LanguageUpdate$5;
.super Lcom/nuance/swype/connect/ConnectedStatus;
.source "LanguageUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/LanguageUpdate;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/LanguageUpdate;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/ConnectedStatus;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onConnectionChanged(Z)V
    .locals 4
    .param p1, "isConnected"    # Z

    .prologue
    .line 156
    invoke-static {}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$100()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const-string v1, "onConnectionChanged("

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/util/LogManager$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$300(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/input/settings/LanguageUpdate$5;->this$0:Lcom/nuance/swype/input/settings/LanguageUpdate;

    invoke-static {v1}, Lcom/nuance/swype/input/settings/LanguageUpdate;->access$600(Lcom/nuance/swype/input/settings/LanguageUpdate;)Lcom/nuance/swype/connect/ConnectedStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectedStatus;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/settings/LanguageUpdate$LanguageListAdapter;->onConnectionChanged(Z)V

    .line 160
    :cond_0
    return-void
.end method
