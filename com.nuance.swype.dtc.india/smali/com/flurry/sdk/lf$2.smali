.class final Lcom/flurry/sdk/lf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lf;
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
        "Lcom/flurry/sdk/ju;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/lf;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/lf;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 67
    check-cast p1, Lcom/flurry/sdk/ju;

    .line 1070
    iget-object v0, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1071
    if-nez v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Activity has been destroyed, can\'t pass ActivityLifecycleEvent to adobject."

    invoke-static {v0, v1}, Lcom/flurry/sdk/kf;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_0
    return-void

    .line 1076
    :cond_0
    sget-object v1, Lcom/flurry/sdk/lf$5;->a:[I

    iget-object v2, p1, Lcom/flurry/sdk/ju;->b:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/ju$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1079
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Automatic onStartSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-static {v1, v0}, Lcom/flurry/sdk/lf;->a(Lcom/flurry/sdk/lf;Landroid/content/Context;)V

    goto :goto_0

    .line 1085
    :pswitch_1
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Automatic onEndSession for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lf;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1092
    :pswitch_2
    invoke-static {}, Lcom/flurry/sdk/lf;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Automatic onEndSession (destroyed) for context:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/flurry/sdk/ju;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v1, p0, Lcom/flurry/sdk/lf$2;->a:Lcom/flurry/sdk/lf;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/lf;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
