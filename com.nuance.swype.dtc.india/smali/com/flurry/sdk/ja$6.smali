.class final Lcom/flurry/sdk/ja$6;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ja;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/flurry/sdk/ja;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ja;J)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/flurry/sdk/ja$6;->b:Lcom/flurry/sdk/ja;

    iput-wide p2, p0, Lcom/flurry/sdk/ja$6;->a:J

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/ja$6;->b:Lcom/flurry/sdk/ja;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/flurry/sdk/ja$6;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/ja;->a(Lcom/flurry/sdk/ja;ZJ)V

    .line 403
    return-void
.end method
