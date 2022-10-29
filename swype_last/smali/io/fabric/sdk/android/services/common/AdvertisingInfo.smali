.class final Lio/fabric/sdk/android/services/common/AdvertisingInfo;
.super Ljava/lang/Object;
.source "AdvertisingInfo.java"


# instance fields
.field public final advertisingId:Ljava/lang/String;

.field public final limitAdTrackingEnabled:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "advertisingId"    # Ljava/lang/String;
    .param p2, "limitAdTrackingEnabled"    # Z

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    .line 9
    iput-boolean p2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->limitAdTrackingEnabled:Z

    .line 10
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    if-ne p0, p1, :cond_5

    .line 24
    :cond_4
    :goto_4
    return v1

    .line 15
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 17
    check-cast v0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;

    .line 19
    .local v0, "infoToCompare":Lio/fabric/sdk/android/services/common/AdvertisingInfo;
    iget-boolean v3, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->limitAdTrackingEnabled:Z

    iget-boolean v4, v0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->limitAdTrackingEnabled:Z

    if-eq v3, v4, :cond_1e

    move v1, v2

    goto :goto_4

    .line 20
    :cond_1e
    iget-object v3, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    iget-object v4, v0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2c
    move v1, v2

    .line 22
    goto :goto_4

    .line 20
    :cond_2e
    iget-object v3, v0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_2c
.end method

.method public final hashCode()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 29
    iget-object v2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->advertisingId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 30
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lio/fabric/sdk/android/services/common/AdvertisingInfo;->limitAdTrackingEnabled:Z

    if-eqz v3, :cond_12

    const/4 v1, 0x1

    :cond_12
    add-int/2addr v1, v2

    .line 31
    return v1

    .end local v0    # "result":I
    :cond_14
    move v0, v1

    .line 29
    goto :goto_b
.end method
