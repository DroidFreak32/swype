.class public final Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# direct methods
.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_5a

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    :pswitch_1a
    const-string/jumbo v0, "SUCCESS_CACHE"

    goto :goto_19

    :pswitch_1e
    const-string/jumbo v0, "SUCCESS"

    goto :goto_19

    :pswitch_22
    const-string/jumbo v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_19

    :pswitch_26
    const-string/jumbo v0, "SERVICE_DISABLED"

    goto :goto_19

    :pswitch_2a
    const-string/jumbo v0, "SIGN_IN_REQUIRED"

    goto :goto_19

    :pswitch_2e
    const-string/jumbo v0, "INVALID_ACCOUNT"

    goto :goto_19

    :pswitch_32
    const-string/jumbo v0, "RESOLUTION_REQUIRED"

    goto :goto_19

    :pswitch_36
    const-string/jumbo v0, "NETWORK_ERROR"

    goto :goto_19

    :pswitch_3a
    const-string/jumbo v0, "INTERNAL_ERROR"

    goto :goto_19

    :pswitch_3e
    const-string/jumbo v0, "DEVELOPER_ERROR"

    goto :goto_19

    :pswitch_42
    const-string/jumbo v0, "ERROR"

    goto :goto_19

    :pswitch_46
    const-string/jumbo v0, "INTERRUPTED"

    goto :goto_19

    :pswitch_4a
    const-string/jumbo v0, "TIMEOUT"

    goto :goto_19

    :pswitch_4e
    const-string/jumbo v0, "CANCELED"

    goto :goto_19

    :pswitch_52
    const-string/jumbo v0, "API_NOT_CONNECTED"

    goto :goto_19

    :pswitch_56
    const-string/jumbo v0, "DEAD_CLIENT"

    goto :goto_19

    :pswitch_data_5a
    .packed-switch -0x1
        :pswitch_1a
        :pswitch_1e
        :pswitch_3
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3
        :pswitch_3e
        :pswitch_3
        :pswitch_3
        :pswitch_42
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
    .end packed-switch
.end method
