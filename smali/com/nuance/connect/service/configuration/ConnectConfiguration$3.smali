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
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/service/configuration/ConnectConfiguration$3;->this$0:Lcom/nuance/connect/service/configuration/ConnectConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/Object;Lcom/nuance/connect/internal/Property$Source;Lcom/nuance/connect/internal/Property;)Z
    .locals 4
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

    if-eqz v3, :cond_2

    :try_start_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p3}, Lcom/nuance/connect/internal/Property;->getVerification()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v3

    move-object p1, v2

    goto :goto_0

    :cond_2
    instance-of v3, p1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    check-cast p1, Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_3
    move-object p1, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
