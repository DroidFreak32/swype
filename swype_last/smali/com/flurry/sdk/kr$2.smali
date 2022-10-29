.class final Lcom/flurry/sdk/kr$2;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/flurry/sdk/kr;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kr;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    iput-object p1, p0, Lcom/flurry/sdk/kr$2;->b:Lcom/flurry/sdk/kr;

    iput-object p2, p0, Lcom/flurry/sdk/kr$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/flurry/sdk/kr$2;->b:Lcom/flurry/sdk/kr;

    new-instance v1, Lcom/flurry/sdk/kt;

    iget-object v2, p0, Lcom/flurry/sdk/kr$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/flurry/sdk/kt;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/flurry/sdk/kr;->d:Lcom/flurry/sdk/kt;

    .line 68
    return-void
.end method
