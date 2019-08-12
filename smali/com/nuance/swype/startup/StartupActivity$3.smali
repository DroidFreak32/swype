.class final Lcom/nuance/swype/startup/StartupActivity$3;
.super Ljava/lang/Object;
.source "StartupActivity.java"

# interfaces
.implements Lcom/nuance/connect/util/ActionDelegateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/StartupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/nuance/swype/startup/StartupActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/startup/StartupActivity;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/nuance/swype/startup/StartupActivity$3;->this$0:Lcom/nuance/swype/startup/StartupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handle(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;
    .locals 1
    .param p1, "actionPack"    # Lcom/nuance/connect/util/ConnectAction;

    .prologue
    .line 765
    iget-object v0, p0, Lcom/nuance/swype/startup/StartupActivity$3;->this$0:Lcom/nuance/swype/startup/StartupActivity;

    invoke-static {p1}, Lcom/nuance/swype/startup/StartupActivity;->access$000$4a008768(Lcom/nuance/connect/util/ConnectAction;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
