.class final Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;


# direct methods
.method constructor <init>(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2a

    :goto_5
    return-void

    :pswitch_6
    :try_start_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V
    :try_end_b
    .catch Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_5

    :catch_c
    move-exception v0

    iget-object v1, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v1, v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$AudioSystemException;)V

    goto :goto_5

    :pswitch_13
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->b(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;)V

    goto :goto_5

    :pswitch_19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_22
    iget-object v0, p0, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a$1;->a:Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;->a(Lcom/nuance/nmsp/client/sdk/oem/AudioSystemOEM$a;Z)Z

    goto :goto_5

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_13
        :pswitch_19
    .end packed-switch
.end method
