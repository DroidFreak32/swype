.class Lcom/nuance/swype/connect/Connect$7;
.super Ljava/lang/Object;
.source "Connect.java"

# interfaces
.implements Lcom/nuance/swypeconnect/ac/ACDLMSyncService$ACDLMSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/Connect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/connect/Connect;


# direct methods
.method constructor <init>(Lcom/nuance/swype/connect/Connect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/connect/Connect;

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private persistUserDatabase()V
    .locals 2

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/nuance/swype/connect/Connect$7;->this$0:Lcom/nuance/swype/connect/Connect;

    invoke-static {v1}, Lcom/nuance/swype/connect/Connect;->access$300(Lcom/nuance/swype/connect/Connect;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getSwypeCoreLibMgr()Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/corelibmgr/SwypeCoreLibManager;->getSwypeCoreLibInstance()Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;

    move-result-object v0

    .line 1344
    .local v0, "corelib":Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isAlphaInputHasContext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getAlphaCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->persistUserDatabase()V

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->isChineseInputHasContext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1349
    invoke-virtual {v0}, Lcom/nuance/input/swypecorelib/SwypeCoreLibrary;->getChineseCoreInstance()Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/input/swypecorelib/XT9CoreChineseInput;->persistUserDatabase()V

    goto :goto_0
.end method


# virtual methods
.method public backupOccurred(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 1355
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 1376
    return-void
.end method

.method public receivedEvents(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 1369
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "restoreOccurred"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1370
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect$7;->persistUserDatabase()V

    .line 1371
    return-void
.end method

.method public restoreOccurred(II)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 1359
    invoke-static {}, Lcom/nuance/swype/connect/Connect;->access$400()Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "restoreOccurred"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 1360
    invoke-direct {p0}, Lcom/nuance/swype/connect/Connect$7;->persistUserDatabase()V

    .line 1361
    return-void
.end method

.method public sentEvents(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .prologue
    .line 1365
    return-void
.end method
