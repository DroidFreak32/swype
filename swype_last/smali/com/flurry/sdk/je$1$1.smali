.class final Lcom/flurry/sdk/je$1$1;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/je$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/je$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/je$1;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/flurry/sdk/je$1$1;->a:Lcom/flurry/sdk/je$1;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/flurry/sdk/je$1$1;->a:Lcom/flurry/sdk/je$1;

    iget-object v0, v0, Lcom/flurry/sdk/je$1;->a:Lcom/flurry/sdk/je;

    invoke-static {v0}, Lcom/flurry/sdk/je;->a(Lcom/flurry/sdk/je;)V

    .line 80
    return-void
.end method
