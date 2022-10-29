.class final Lcom/flurry/sdk/je$2;
.super Lcom/flurry/sdk/lw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/je;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/je;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/je;)V
    .registers 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/flurry/sdk/je$2;->a:Lcom/flurry/sdk/je;

    invoke-direct {p0}, Lcom/flurry/sdk/lw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/je$2;->a:Lcom/flurry/sdk/je;

    invoke-static {v0}, Lcom/flurry/sdk/je;->b(Lcom/flurry/sdk/je;)V

    .line 98
    return-void
.end method
