.class final Lcom/flurry/sdk/ja$13;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;)V
    .registers 2

    .prologue
    .line 259
    iput-object p1, p0, Lcom/flurry/sdk/ja$13;->a:Lcom/flurry/sdk/ja;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/flurry/sdk/ja$13;->a:Lcom/flurry/sdk/ja;

    invoke-static {v0}, Lcom/flurry/sdk/ja;->d(Lcom/flurry/sdk/ja;)V

    .line 263
    return-void
.end method
