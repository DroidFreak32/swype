.class Lcom/nuance/swype/input/settings/AccountPrefs$2;
.super Ljava/lang/Object;
.source "AccountPrefs.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AccountPrefs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AccountPrefs;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AccountPrefs;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AccountPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backupOccurred(II)V
    .locals 3
    .param p1, "core"    # I
    .param p2, "sentEvents"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "backupOccurred # events: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "onError() type: "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, " message: "

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public receivedEvents(II)V
    .locals 3
    .param p1, "core"    # I
    .param p2, "receivedEvents"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "received events: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    return-void
.end method

.method public restoreOccurred(II)V
    .locals 3
    .param p1, "core"    # I
    .param p2, "receivedEvents"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "restoreOccurred # events: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public sentEvents(II)V
    .locals 3
    .param p1, "core"    # I
    .param p2, "sentEvents"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AccountPrefs$2;->this$0:Lcom/nuance/swype/input/settings/AccountPrefs;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/AccountPrefs;->access$000(Lcom/nuance/swype/input/settings/AccountPrefs;)Lcom/nuance/connect/util/Logger$Log;

    move-result-object v0

    const-string v1, "sent events: "

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    return-void
.end method
