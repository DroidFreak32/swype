.class Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;
.super Ljava/lang/Object;
.source "RecognizerProxyBase.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->createEnergyListener()Lcom/nuance/nmdp/speechkit/transaction/recognize/ISignalEnergyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)V
    .registers 2

    .prologue
    .line 87
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.2;"
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public energyUpdate(F)V
    .registers 4
    .param p1, "level"    # F

    .prologue
    .line 90
    .local p0, "this":Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;, "Lcom/nuance/nmdp/speechkit/RecognizerProxyBase.2;"
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    # getter for: Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_levelSync:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$500(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 92
    :try_start_7
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase$2;->this$0:Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;

    # setter for: Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->_level:F
    invoke-static {v0, p1}, Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;->access$602(Lcom/nuance/nmdp/speechkit/RecognizerProxyBase;F)F

    .line 93
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
