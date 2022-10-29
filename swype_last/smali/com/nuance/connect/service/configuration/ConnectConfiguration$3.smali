.class Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/connect/internal/Property$Verifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/connect/internal/Property$Verifier",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;


# direct methods
.method constructor <init>(Lcom/nuance/connect/service/configuration/ConnectConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;->this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/nuance/connect/internal/Property$Source;",
            "Lcom/nuance/connect/internal/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1f

    :try_start_7
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_10} :catch_1c

    move-result-object p1

    :goto_11
    if-eqz p1, :cond_1a

    invoke-interface {p3}, Lcom/nuance/connect/internal/Property;->getVerification()I

    move-result v2

    packed-switch v2, :pswitch_data_4a

    :cond_1a
    :pswitch_1a
    move v0, v1

    :cond_1b
    :goto_1b
    return v0

    :catch_1c
    move-exception v3

    move-object p1, v2

    goto :goto_11

    :cond_1f
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_47

    check-cast p1, Ljava/lang/Integer;

    goto :goto_11

    :pswitch_26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1b

    move v0, v1

    goto :goto_1b

    :pswitch_2e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1b

    move v0, v1

    goto :goto_1b

    :pswitch_36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1b

    move v0, v1

    goto :goto_1b

    :pswitch_3e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1b

    move v0, v1

    goto :goto_1b

    :cond_47
    move-object p1, v2

    goto :goto_11

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_1a
        :pswitch_36
        :pswitch_2e
        :pswitch_3e
    .end packed-switch
.end method
