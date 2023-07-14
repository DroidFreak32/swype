.class final Lcom/flurry/sdk/je$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ka",
        "<",
        "Lcom/flurry/sdk/le;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/je;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/je;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/flurry/sdk/je$1;->a:Lcom/flurry/sdk/je;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 2

    .prologue
    .line 69
    check-cast p1, Lcom/flurry/sdk/le;

    .line 1072
    sget-object v0, Lcom/flurry/sdk/je$4;->a:[I

    iget v1, p1, Lcom/flurry/sdk/le;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 1075
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/je$1;->a:Lcom/flurry/sdk/je;

    invoke-virtual {v0}, Lcom/flurry/sdk/je;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/je$1$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/je$1$1;-><init>(Lcom/flurry/sdk/je$1;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1072
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
