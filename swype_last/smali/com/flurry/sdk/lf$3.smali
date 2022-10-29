.class final Lcom/flurry/sdk/lf$3;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/lf;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lf;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/flurry/sdk/lf$3;->a:Lcom/flurry/sdk/lf;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/flurry/sdk/lf$3;->a:Lcom/flurry/sdk/lf;

    invoke-static {v0}, Lcom/flurry/sdk/lf;->a(Lcom/flurry/sdk/lf;)V

    .line 212
    return-void
.end method
