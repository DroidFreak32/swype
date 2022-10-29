.class Lcom/nuance/connect/service/configuration/ConnectConfiguration$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/Property$Verifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/connect/internal/Property$Verifier",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$5;->this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/nuance/connect/internal/Property$Source;",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_21

    :try_start_9
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_12} :catch_1e

    move-result-object p1

    :goto_13
    if-eqz p1, :cond_1c

    invoke-interface {p3}, Lcom/nuance/connect/internal/Property;->getVerification()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    :cond_1c
    :pswitch_1c
    move v0, v1

    :cond_1d
    :goto_1d
    return v0

    :catch_1e
    move-exception v3

    move-object p1, v2

    goto :goto_13

    :cond_21
    instance-of v3, p1, Ljava/lang/Long;

    if-eqz v3, :cond_52

    check-cast p1, Ljava/lang/Long;

    goto :goto_13

    :pswitch_28
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_1d

    move v0, v1

    goto :goto_1d

    :pswitch_32
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gez v2, :cond_1d

    move v0, v1

    goto :goto_1d

    :pswitch_3c
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1d

    move v0, v1

    goto :goto_1d

    :pswitch_46
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_1d

    move v0, v1

    goto :goto_1d

    :cond_52
    move-object p1, v2

    goto :goto_13

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_28
        :pswitch_1c
        :pswitch_3c
        :pswitch_32
        :pswitch_46
    .end packed-switch
.end method
