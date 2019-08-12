.class abstract Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACDLMConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ACAbstractDlmEventCallback"
.end annotation


# instance fields
.field protected observers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;


# direct methods
.method private constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V
    .locals 1

    iput-object p1, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->this$0:Lcom/nuance/swypeconnect/ac/ACDLMConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->observers:Ljava/util/HashSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;Lcom/nuance/swypeconnect/ac/ACDLMConnector$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;-><init>(Lcom/nuance/swypeconnect/ac/ACDLMConnector;)V

    return-void
.end method


# virtual methods
.method public registerObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->observers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterObserver(Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACDlmEventCallbackObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->observers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterObservers()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/swypeconnect/ac/ACDLMConnector$ACAbstractDlmEventCallback;->observers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method
