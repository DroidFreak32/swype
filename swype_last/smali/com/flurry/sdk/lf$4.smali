.class final Lcom/flurry/sdk/lf$4;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lf;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ld;

.field final synthetic b:Lcom/flurry/sdk/lf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lf;Lcom/flurry/sdk/ld;)V
    .registers 3

    .prologue
    .line 318
    iput-object p1, p0, Lcom/flurry/sdk/lf$4;->b:Lcom/flurry/sdk/lf;

    iput-object p2, p0, Lcom/flurry/sdk/lf$4;->a:Lcom/flurry/sdk/ld;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/flurry/sdk/lf$4;->b:Lcom/flurry/sdk/lf;

    iget-object v1, p0, Lcom/flurry/sdk/lf$4;->a:Lcom/flurry/sdk/ld;

    invoke-static {v0, v1}, Lcom/flurry/sdk/lf;->a(Lcom/flurry/sdk/lf;Lcom/flurry/sdk/ld;)V

    .line 322
    return-void
.end method
