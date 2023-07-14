.class final Lcom/flurry/sdk/jq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ka;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jq;
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
.field final synthetic a:Lcom/flurry/sdk/jq;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jq;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/flurry/sdk/jq$1;->a:Lcom/flurry/sdk/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/jz;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 26
    check-cast p1, Lcom/flurry/sdk/le;

    .line 1029
    iget-object v0, p0, Lcom/flurry/sdk/jq$1;->a:Lcom/flurry/sdk/jq;

    invoke-static {v0}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/jq;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    iget-object v1, p0, Lcom/flurry/sdk/jq$1;->a:Lcom/flurry/sdk/jq;

    invoke-static {v1}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/jq;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1033
    :cond_0
    sget-object v0, Lcom/flurry/sdk/jq$4;->a:[I

    iget v1, p1, Lcom/flurry/sdk/le;->c:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1044
    :cond_1
    :goto_0
    return-void

    .line 1035
    :pswitch_0
    iget-object v1, p0, Lcom/flurry/sdk/jq$1;->a:Lcom/flurry/sdk/jq;

    iget-object v2, p1, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    iget-object v0, p1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1085
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lcom/flurry/sdk/jq;->b:Ljava/lang/ref/WeakReference;

    .line 1087
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/flurry/sdk/jq;->c:J

    .line 1088
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/flurry/sdk/jq;->d:J

    .line 1102
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    .line 1103
    :cond_2
    sget-object v0, Lcom/flurry/sdk/jq;->a:Ljava/lang/String;

    const-string/jumbo v2, "Flurry session id cannot be created."

    invoke-static {v8, v0, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1093
    :goto_1
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v2, Lcom/flurry/sdk/jq$3;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/jq$3;-><init>(Lcom/flurry/sdk/jq;)V

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1107
    :cond_3
    sget-object v3, Lcom/flurry/sdk/jq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Flurry session id started:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v1, Lcom/flurry/sdk/jq;->c:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v3, v4}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1109
    new-instance v3, Lcom/flurry/sdk/le;

    invoke-direct {v3}, Lcom/flurry/sdk/le;-><init>()V

    .line 1110
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    .line 1111
    iput-object v2, v3, Lcom/flurry/sdk/le;->b:Lcom/flurry/sdk/ld;

    .line 1112
    sget v0, Lcom/flurry/sdk/le$a;->b:I

    iput v0, v3, Lcom/flurry/sdk/le;->c:I

    .line 1113
    invoke-virtual {v3}, Lcom/flurry/sdk/le;->b()V

    goto :goto_1

    .line 1039
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/jq$1;->a:Lcom/flurry/sdk/jq;

    iget-object v1, p1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/jq;->a()V

    goto :goto_0

    .line 1043
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/jq$1;->a:Lcom/flurry/sdk/jq;

    iget-object v1, p1, Lcom/flurry/sdk/le;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 1126
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/flurry/sdk/jq;->d:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/flurry/sdk/jq;->e:J

    goto/16 :goto_0

    .line 1047
    :pswitch_3
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/jq$1;->a:Lcom/flurry/sdk/jq;

    invoke-static {v2}, Lcom/flurry/sdk/jq;->b(Lcom/flurry/sdk/jq;)Lcom/flurry/sdk/ka;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->b(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 1049
    invoke-static {}, Lcom/flurry/sdk/jq;->b()V

    goto/16 :goto_0

    .line 1033
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
