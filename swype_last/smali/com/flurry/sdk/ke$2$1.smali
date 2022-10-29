.class final Lcom/flurry/sdk/ke$2$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ke$2;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lx;

.field final synthetic b:Lcom/flurry/sdk/ke$2;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ke$2;Lcom/flurry/sdk/lx;)V
    .registers 3

    .prologue
    .line 123
    iput-object p1, p0, Lcom/flurry/sdk/ke$2$1;->b:Lcom/flurry/sdk/ke$2;

    iput-object p2, p0, Lcom/flurry/sdk/ke$2$1;->a:Lcom/flurry/sdk/lx;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method
